

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

stack = {" "}
list = {" "}
    
	for c in string.gmatch(str, "[^%s]")do 
	    if c=="+"or c=="-"or c=="*"or c=="/" then 
            if stack[1] == nil then push(c) end
            if stack[1] ~= nil and precedence[c] <= precedence[peek()]then 
                 while(stack[1] ~= nil and precedence[c] <= precedence[peek()]do 
                    table.insert(list,pop())end
                    push(c)
            else push(c)
            end    
        else 
            table.insert(list,c)
	    end 
	end

	while (stack[1] ~= nil) do table.insert(list,pop())end 
	return table.concat(list," ")
end 







