
local list  = {}
temp = {}

local function push(value)table.insert(list,value)end
local function pop(index) table.remove(list,index)end

function InfixToPostfix(str)
--	print("Assignment 3-2, Steven Green, s.a.green51@gmail.com")
	list[0] = " "
	for string in string.gmatch(str, "[^%s]+")do 
	if string == "+" or string == "-"then 
		push(string)
		pop(i)
	else then
		list[i] = str
		i = i+1
	end 
	return list
	end
end
