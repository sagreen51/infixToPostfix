local list  = {}
local stack = {}

local precedence = {["+"] = 2;["-"] = 2; ["*"] =3;["/"]=3}

local function push(value) table.insert(stack,value) end
local function pop()
	local temp = table.remove(stack,size())
	return temp 
	end
local function size() return #stack end
local function peek() return stack[size()] end

local function InfixToPostfix(str)
--	print("Assignment 3-2, Steven Green, s.a.green51@gmail.com")	
	list[1] = " "
	stack[1] = " "
	for char in string.gmatch(str, "."")do 
	if char:match("%d") or char:match("a") then table.insert(list,char)
	else if char:match("[%+%-%*%/]") then 
	
	while(peek()~= nil and precedence[char] <= precedence[peek()]) do
		table.insert(list,pop())
		end		

	end 
	end
	while (peek() ~=nil) table.insert(list,pop())end 
	string = table.concat(list," ")
	print("%s",string)
	return string
end 
