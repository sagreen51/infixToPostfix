local stack = {}
local list = {}

local precedence = {["+"] = 2;["-"] = 2; ["*"] =3;["/"]=3}

local function push(value)table.insert(stack,value) end
local function pop()
	temp = peek()
	table.remove(stack,size())
	return temp end
local function size() return #stack end--table.maxn(stack) end
local function peek() return stack[size()] end

local function InfixToPostfix(str)
--	print("Assignment 3-2, Steven Green, s.a.green51@gmail.com")	

	for v in str.gmatch(str, "[^%s]")do 
	    if v=="+"or v=="-"or v=="*"or v=="/" then 
            if size() == 0 then push(v)
            if size() ~= 0 and precedence[v] <= precedence[peek()]then 
                 while(size() ~= 0 and precedence[v] <= precedence[peek()]do 
                    table.insert(list,pop())end
                 push(v)
            else table.insert(list,v) end    
        else table.insert(list,v) end 
	end

	while (size()~= 0) do table.insert(list,pop())end 
    string = table.concat(list, " ")
	return string
end 







