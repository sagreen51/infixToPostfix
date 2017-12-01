list 
stack = {}

local precedence = {["+"] = 2;["-"] = 2; ["*"] =3;["/"]=3}

local function push(value)table.insert(stack,value) end
local function pop()
	temp = peek()
	table.remove(stack,size())
	return temp 
	end
local function size()return #stack end
local function peek()return stack[#stack] end

local function InfixToPostfix(str)
--	print("Assignment 3-2, Steven Green, s.a.green51@gmail.com")	
	list[1] = " "
--	stack[1] = " "
	for char in string.gmatch(str, "[^%s]")do 
	if char:match("%d") or char:match("%a") then table.insert(list,char)
	else if char:match("[%+%-%*%/]") then 
	
	while(peek()~= nil and precedence[char] <= precedence[peek()]) do
		table.insert(list,pop())end

		push(char)
	else push(char) 	
	end 
	end
	while (peek() ~=nil) do	table.insert(list,pop())end 
	return table.concat(list," ")
end 
