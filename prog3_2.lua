
local list  = {}
temp = {}
newList = {}

local function push(value)
	table.insert(list,value)
end
local function pop(index) table.remove(str,index)end

function InfixToPostfix(str)
	list[0] = " "
	for i = 0, strlen(str)-1, 1 do 
	if str[i] == '+' or str[i] =="-"
	push(str[i])
	pop(i)
	else 
	end
	end
	strcat(str,list)
	return str,19
end
