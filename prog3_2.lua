list  = {}
temp = {}

--local function push(value)table.insert(temp,value)end

function InfixToPostfix(str)
--	print("Assignment 3-2, Steven Green, s.a.green51@gmail.com")
	list[0] = " "
	temp[0] = " "
	i = 1
	j = 1
	for char in string.gmatch(str, "[^%s]")do 
	if (char == "+" or char == "-") then 
		temp[j]= char
		j = j+1
		
	else
		list[i] = char
		i = i+1
	end
	end
	table.concat(list,table.concat(temp," "))
	return table.concat(list," ")
end
