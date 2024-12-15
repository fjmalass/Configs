# Lua

## Keymaps

- `:noremap <keys>` -> will output mapping

## functions

```lua
function hello(name)
  print("hello!", name)
end

greet = function(name)
  -- .. is string concatenation
  print("Greetings " .. name .. "!")
end

higher_order = function(value)
  return function(another)
    return value + another
  end
end
```

## List - Maps (Tables)

```lua
-- strings, numbers, bool, functions
local list = { "first", 2, false, function() print("Four!") end}
print("Index with 1", list[1])

local new_map = {
  literal_key = "a string",
  ["an expression"] = "also works"
}

```

## Threads and Userdata (for c library interactions)

## For loops
```lua
favorites = { "fjm", "other", "new"}
for index = 1, #favorites do
  print(index, favorites[index])
end
-- similar to items in python

for index, value in ipairs(favorites) do
  print(index, value)
end

readings = { fjm=9.5, other="N/A"}
for key, value in pairs(readings) do
  print(key, value)
end
```

## If..else
beware if 0 will return true!
only falsey is nil or false
```lua
function action(loves_coffee)
  if loves_coffee then
    print(loves_coffee, "Loves Coffee")
  else
    print(loves_coffee, "Sorry you don't like coffee")
  end
end

action()
action(false)
action(0)
action(1)
action({})
```

## Modules (return tables typically)

```lua
-- foo.lua file
local M = {}
M.cool_function = function() print("I am cool") end
return M

```

```lua
-- bar.lua file
local foo = require('foo')
fool.cool_function()
return M

```

## Functions multiple returns

```lua
variable_args = function( ... )
  local args = { ... }
  for i, v in ipairs({...}) do print(i, v) end
  return unpack(args)
end

print(variable_args("hello", "world", "!"))
```

## Functions Calling

- Can drop the () when calling a function if the argument is a literal string
or a list of literals

```lua
function setup(opts)
  if opts.default == nil then
    opts.default = 16
  end
  print(opts.default, opts.other)
end

setup({default=12})
setup {default=12}
setup {other=true}
```

## Functions Column function

- avoid `(self, ...)` with `:`
```lua
local MyTable = {}
function MyTable.something(self, ...) end
-- equivalent
function MyTable:something(...) end
```

## Metatables (like dunder methods in python)

```lua
vector_mt = {}
vector_mt.__add = function(left, right)
  return setmetatable({
    left[1] + right[1],
    left[2] + right[2],
    left[3] + right[3],
  }, vector_mt)
end

v1 = setmetatable({3, 1, 2}, vector_mt)
v2 = setmetatable({-3, 1, -2}, vector_mt)
v3 = v1 + v2
vim.print(v3[1], v3[2], v3[3])
vim.print(v3 + v3)
```

- the `__index = function(self, key )` is how to get the `i-th` element of a table
- the `__new_index = function(self, key, value)`  when creating a new index
- the `__call = function(self, ...)`  when using a function
