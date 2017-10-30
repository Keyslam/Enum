Example:

```lua
local Enum = require("enum") -- Require the library

-- Create an enum either with variable amount of variables, or a table holding it.
local Directions = Enum("Up", "Down", "Left", "Right")
local Directions = Enum({"Up", "Down", "Left", "Right"})

-- Access a enum simply with the key.
local myDirection = Directions.Up
local myDirection = Directions["Up"]

-- Perform logic with them
if myDirection == Directions.Up then
   print("Were moving up, boss!")
elseif myDirection == Directions.Down then
   print("Ship is going down!")
end

-- Printing enums
print(myDirection.Up) -- 'Up'
print(Directions.Down) -- 'Down'

for key, value in pairs(Directions) do
  print(key.. " : " ..value)
end
--[[ -- In no predefined order:
'Up : Up'
'Down : Down'
'Left : Left'
'Right : Right'
]]

-- Some nice to knows
local Directions = Directions.Sideways -- Error: Attempt to index non-existant enum 'Sideways'.
Directions.foo = "bar" -- Error: "Attempt to write to static enum"
```
