local list  = {}
local stack = {}

local precedence = {["+"] = 2;["-"] = 2; ["*"] =3;["/"]=3}

local function push(value)stack[size()+1]=value end
local function pop()
	local temp = peek()
	table.remove(stack,size())
	return temp 
	end
local function size()return #stack end
local function peek()return stack[size()] end

local function InfixToPostfix(str)
--	print("Assignment 3-2, Steven Green, s.a.green51@gmail.com")	
	list[1] = " "
	stack[1] = " "
	i = 1
	for char in string.gmatch(str, "[^%s]"")do 
	if char:match("%d") or char:match("%a") then
		list[i] = char
		i = i+1 
	else if char:match("[%+%-%*%/]") then 
	
	while(peek()~= nil and precedence[char] <= precedence[peek()]) do
		list[i] = pop()
		i = i+1
		end	
		push(char)
	else then push(char) 	
	end 
	end
	while (peek() ~=nil) do
		list[i]= pop() 
		i = i+1
	end 
	return table.concat(list," ")
end 
