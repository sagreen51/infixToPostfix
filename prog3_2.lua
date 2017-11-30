list  = {}
temp = {}

--local function push(value)table.insert(temp,value)end

function InfixToPostfix(str)
--	print("Assignment 3-2, Steven Green, s.a.green51@gmail.com")
	list[0] = " "
	temp[0] = " "
	i = 1
	j = 0
	for string in string.gmatch(str, "[^%s+]")do 
	if string == "+" or string == "-" then 
		temp[j]= string
		j = j+1
	else
		list[i] = string
		i = i+1
	end
	end
	z=1
	while (z < j) do
	list[i] = temp[z]
	z =z +1
	i = i+1
	end
--	table.concat(list,table.concat(temp," "))
	print(temp[1])
	return table.concat(temp," ")
end
