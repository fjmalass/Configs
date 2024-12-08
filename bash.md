# Bash

## Run without stop when loggin out

### `nohup script.sh &> /dev/null &`

### Or

```bash
script.sh &
disown

```

## Functions (Check examples in kafka)

### Declaration

```bash
print_debug() {
  if [[ "$VERBOSE" == "true" ]]; then
    echo -e "VERBOSE:" *?  >&2
  fi
}
```

```bash
multiply() {
   val="${1}"
    val=((${val}*2)) 
    echo $val
}
```

### Call

```bash
print_debug
```

```bash
  v=1
  v=$(multiply ${v})

```

## Library

### Loading

`source director/lib.sh`


## FORMAT

* use google (with .editorconfig), 2 spacing, no tab, 
 

## Valuable refernece
* [advanced bash guide](https://tldp.org/LDP/abs/html/)
