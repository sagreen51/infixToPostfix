
local list  = {}
temp = {}
newList = {}

local function push(value)
	table.insert(list,value)
end
local function pop(index) table.remove(str,index)end

function InfixToPostfix(str)
--	print("Assignment 3-2, Steven Green, s.a.green51@gmail.com")
	list[0] = " "
	for i = 0, string.len(str)-1, 1 do 
	if str[i] == "+" or str[i] =='-'then 
	push(str[i])
	pop(i)
	end
	end
	table.concat(str,list)
	return str
end
