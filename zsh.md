# [`Zsh](https://zsh.sourceforge.io/Doc/zsh_us.pdf)

## Nomenclature

`<list>` commands to be executed
`<term>` either `new line` or `;;`

## Running with arguments

- `-x` running with output of each command `zsh -x script`

- **Pipes**
  - `|&` , equivalent to `2>&1 |` connects the standard output and error to the
  next standard input.
  - `&&` second command is only executed if the first one is successful (zero status)
  - `||` second command is always executed.
  - `;` Wait for last command of list to be executed before running the next
  - `&`, `&|`, `&!`  Run the last command of list in the background. (other
  shell apply background to the entire list)

- **Executes**

1. Execute `<list>`: ` { <list> } `
2. Execute `<list>` in subshell: `( <list> )`
3. Try Always `<trylist> always <alwayslist>` in `subshell`: `( <list> )`

- **Complex Commands**

  1. **`if`**

  ``` zsh
  if <iflist> then 
    <dolist1> 
  [elif <iflist2> then 
    <dolist2>] 
  [else <iflist3>
    <dolist3>] 
  fi
  ```

  2. **`for`**

  ``` zsh
  for <name> [in <words>] <term> do 
    <dolist>
  done
  ``` zsh
  for (( [<start_expr>]; [<until_zero_expr>];[<next_expr>])) do 
    <dolist>
  done
  ```

  Example

  ``` zsh
  for (( f = 0; f < 10; f += 1 )); 
  do 
     echo $f
  done
  ```

  3. **`case`**

  ``` zsh
  case <word> { 
    [ [(] <pattern1> [ | <pattern2> ] ... ) 
    <list> (;;|;&|;|) 
    ] 
  } 
  ```

  An alternative form of case.

## Files

- `<` open file for reading as standard input
- `<>` open file for reading and writing standard input
- `>` open file for writing standard output
- `>|` if file already exists, truncate it to zero
- `>>` append to file for writing standard output
- `>>|` if file does not exist, create it, otherwise append to file for writing standard output
- `<< <word>` shell input is read up to a line that is same as `<word>` 
- `<<- <word>` Same as `<<` but strips leading tabs
- `<<< <word>` perform shell expansion on `<word>`

- `<& <number>` and `>& <number>` duplicated standard input (`<number>` = 1) error (`<number>` = 2)
- `<& -`
- `<& p`


## MultIOs

- ` cat foo fubar | sort` is similar to `cat f{oo,ubar} | sort`

## Evaluations

- `[[ exp ]]` Evaluates the conditional expression exp and return a zero exit status if it is true

- In scripts use `function` instead of `alias` (as loading priority make them unwieldy)

- Arithmetic

  - `(( val = 1 + 2 ))` is equivalent to `let "val = 1 + 2"` or `var=$((1+1))`
  - `${value}` use the value with formatted with `typeset`
  - `$((value))` uses the generic format

## Conditional Expressions

Use the following with the `[[ ]]` command to return true

### File Manipulation

 See [Page 37](https://zsh.sourceforge.io/Doc/zsh_us.pdf)

- `-f <file>` File exists and is a regular file
- `-h <file>` File exists and is a symbolic link file
- `-L <file>` File exists and is a symbolic link file
- `-d <file>` File exists and is a directory
- `-r <file>` File exists and is readable
- `-w <file>` File exists and is writable
- `-x <file>` File exists and is executable
- `-v <variable>` Shell variable `<variable>` is set

- `<file1> -nt <file2>` `<file1>` is newer than `<file2>`
- `<file1> -ot <file2>` `<file1>` is older than `<file2>`
- `<file1> -ef <file2>`  files refer to the same file

- `-n <string>` string is not equal to zero
- `<string> = <pattern>` or `<string> == <pattern>` both forms are ok
- `<string> != <pattern>` not equal
- `<exp1> -exp <exp2>` equal expressions
- `<exp1> -ne <exp2>` different expressions
- `<exp1> -gt <exp2>` greater then expressions
- `<exp1> -ge <exp2>` greater or equal then expressions
- `<exp1> -lt <exp2>` less then expressions
- `<exp1> -le <exp2>` less or equal then expressions
- `( <exp> )` `<exp>` is true
- `! <exp>` `<exp>` is false
- `<exp1> && <exp2>` both are true
- `<exp1> || <exp2>` at least one is true

Examples:

- `[[ -n $var ]]` if variable exists
- `[[ -n file*(#qN) ]]` if there is at least one file starting with string `file`
Rem: `N` makes sure is that expression is empty if there is not matching file

### Expansion

- `${name}`
- `${+name}` 1 if variable `<name>` exists, 0 otherwise
- `${name#pattern}` remove the beginning that matches pattern if `name=more` `${name$mo}`  -> `re`
- `${name%pattern}` remove the end that matches pattern if `name=more` `${name$re}`  -> `mo`
- `{name:-word}` use `${name}` if `name` exists otherwise use `${word}`
- `{name:+word}` use `${word}` if `name` does not exist otherwise use nothing
- `{name:=word}` set `name` to `${word}` if `name` is not set
- `{name/pattern/repl}` substitute in `name`

#### Arrays

- `array=("one", "two", "one")`
- `array+=("three)` to append
- `typeset -a array` or `typeset -A array` for associative array (dictionary)

- Elements: use `$array[1]` -> `one` or `"$array[@]"`
- Count: `${#array}` -> `2`
- Expansion: `${(o)array}` sort in ascending order, `-> "one" "one" two"`
- Expansion: `${(O)array}` sort in descending order, `-> "two" "one" "one"`
- Expansion: `${(u)array}` unique, `-> "one" "two"`
- Expansion: `${(U)array}` change to upper case, `-> "ONE" "ONE" TWO"`
- Expansion: `${(j:;:)array}` join with ; separation, `-> "one;one;two"`
- Expansion: `${(r:;:)array}` split with ; separation, `"one;one;two"` -> `one one two`

Examples:

- `${(f)"#(<file)"}` Converts the content of file `file` and returns an array divided per line

### Variables

- `OLDPWD`: Previous working directory
- `PWD`: Current working directory
- `USERNAME <S>` Can change username `(USERNAME=new_user_if_allowed; command)`
- `fpath` search path for shell function
- `path` search path

### Filename

- `~` = `$HOME`
- `~+` = Current working directory
- `~-` = Previous working directory
- `~N` = Nth previous directory in stack

## Check OS
```
if [[ "$OSTYPE" == "darwin"* ]]; then
    open $1.pdf
else
    xdg-open $1.pdf
fi
```

