list  = {}
temp = {}

local function push(value)table.insert(temp,value)end

function InfixToPostfix(str)
--	print("Assignment 3-2, Steven Green, s.a.green51@gmail.com")
	list[0] = " "
	temp[0] = " "
	i = 1
	for string in string.gmatch(str, "[^%s+]")do 
	if string == '+' or string == '-' then 
		push(string)
	else
		list[i] = string
		i = i+1
	end
	end
	for i = 1 , #temp do list[#list+1] = temp[i] end
	string = table.concat(list," ")
--	string = table.tostring(list[, -1])
	return string
end
