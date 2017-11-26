list  = {}
temp = {}

local function push(value)table.insert(temp,value)end

function InfixToPostfix(str)
--	print("Assignment 3-2, Steven Green, s.a.green51@gmail.com")
	list[0] = ' '
	temp[0] = ' '
	i = 0
	for string in string.gmatch(str, "[^%s+]")do 
	if string == '+' or string == '-' then 
		push(string)
	else
		list[i] = string
		i = i+1
	end
	end
	return table.concat(list," ")
end
