local list  = {}
temp = {}
newList = {}

local function push(value)
	list[0] = ' '
	table.insert(list,value)
	strcat(list, " ")
end

function InfixToPostfix(str)
	newList[0] = ' '
	for temp in string.gmatch(str,"[^%s]+")do 

	if temp == "+" or temp == "-" then
		push(temp)  
	else
		 strcat(newList,temp)
		 strcat(newList, " ") 
	end
	end
	total = 19
	strcat(newList, list)
	return newList, total
end 
