local list  = {}
temp = {}
newList = {}

local function push(value) table.insert(list,value) end
local function remove(index) table.remove(index)end 

local infixToPostfix(str)  
for temp in string.gmatch(str,"[^%s]")do 
newList[i] = temp
i = i+1
end
return newList, i
end 
