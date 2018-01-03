local Enum = {}
local Meta = {
   __index    = function(_, k) error("Attempt to index non-existant enum '"..tostring(k).."'.", 2) end,
   __newindex = function()     error("Attempt to write to static enum", 2) end,
}

function Enum.new(...)
   local values = {...}

   if type(values[1]) == "table" then
      values = values[1]
   end

   local enum = {}

   for i = 1, #values do
      enum[values[i]] = values[i]
   end

   return setmetatable(enum, Meta)
end

return setmetatable(Enum, {
   __call  = function(_, ...) return Enum.new(...) end,
})
