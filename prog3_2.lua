
local list  = {}
temp = {}

local function push(value)table.insert(list,value)end

function InfixToPostfix(str)
--	print("Assignment 3-2, Steven Green, s.a.green51@gmail.com")
	list[0] = " "
	i = 1
	for string in string.gmatch(str, "[^%s]+")do 
	if string == '+' or string == '-' then 
		push(string)
	else then
		list[i] = string
		i = i+1
	print(list[i])
	end
	end
	return table.tostring(list)
end
