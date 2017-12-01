list  = {}
stack = {}

local precendence = {["+"] = 2;["-"] = 2; ["*"] =3;["/"]=3}

local function push(value)stack[#stack+1] = value end
local function pop()
	local temp = stack[#stack]
	stack[#stack] = nil
	return temp 
	end

function InfixToPostfix(str)
--	print("Assignment 3-2, Steven Green, s.a.green51@gmail.com")	
	list[1]= " "
	temp[1] = " "
	for char in string.gmatch(str, "[^%s]")do 
	if char=="*"or char=="/"or char=="+"or char=="-" then
		if stack[1] == nil then stack[1] = char 
		else if stack[1] ~= nil and precendence[char] <=precendence[stack[1]] then
			list[#list+1] = pop()
			push(char)
		end
	else list[#list+1] = char
	end 
	end
	return table.concat(list, " ")
end 
