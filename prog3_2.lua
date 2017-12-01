list  = {}
stack = {}

local precedance = {["+"] = 2;["-"] = 2; ["*"] =3;["/"]=3}

local function push(value)stack[#stack+1] = value end
local function pop()
	local temp = stack[#stack]
	stack[#stack] = nil
	return temp 
	end
local function size() return #stack end
local function peek() return stack[size()] end

function InfixToPostfix(str)
--	print("Assignment 3-2, Steven Green, s.a.green51@gmail.com")	
	list[1]= ""
	stack[1] = ""
	for char in string.gmatch(str, "[^%s]")do 
	if char=="*"or char=="/"or char=="+"or char=="-" then
		if size() ==0 then stack[1] = char 
		else if size() > 0 and precedance[char] <= precedance[peek()]
			table.insert(list,pop())
			push(char)
		else list[#list+1] = char 
		end
	else table.insert(list,char)
	end 
	end
	string = table.concat(list," ")
	print("%s",string)
--	return table.concat(list, " ")
end 
