local list  = {}
temp = {}
newList = {}

local function push(value) table.insert(list,value) end
local function remove(index) table.remove(index)end 

local InfixToPostfix(str)
i = 0  
for temp in string.gmatch(str,"[^%s]")do 
newList[i] = temp
push(list,temp)
i = i+1
end
return list, i
end 
