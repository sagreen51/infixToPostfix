list  = {}
temp = {}

--local function push(value)table.insert(temp,value)end

function InfixToPostfix(str)
--	print("Assignment 3-2, Steven Green, s.a.green51@gmail.com")
	list[0] = " "
	temp[0] = " "
	i = 0
	j = 0
	for string in string.gmatch(str, "[^%s+]")do 
	if string == '+' or string == '-' then 
		temp[j]=string
		j = j+1
	else
		list[i] = string
		i = i+1
	end
	end
	z=0
	while z < j do
	table.insert(list,temp[z])
	z =z +1
	end
	return table.concat(list," ")
end
