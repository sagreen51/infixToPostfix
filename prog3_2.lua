local function push(value)table.insert(stack,value) end
local function pop() return table.remove(stack,#stack) end 
local function peek() return stack[#stack] end

function InfixToPostfix(str)
--	print("Assignment 3-2, Steven Green, s.a.green51@gmail.com")	
stack = {}
list = {}
precedence = {["+"] = 2;["-"] = 2; ["*"] =3;["/"]=3}

	for v in string.gmatch(str, "[^%s]")do --scan string input tokenized by spaces 
	    if v=="+"or v=="-"or v=="*"or v=="/" then -- check if operand
            if #stack == 0 then push(v) 
            elseif #stack ~= 0 and precedence[v] <= precedence[peek()]then --check its priority vs the top of stack
                 while(#stack ~= 0 and precedence[v] <= precedence[peek()])do 
                    table.insert(list,pop())end--while its less pop the top of stack  
                 push(v) --then push character on the stack
            else push(v)end    
        elseif v =="%d" or v =="%a" then table.insert(list,v) --if an integer or a character insert in list
        else table.insert(list,v) end 
    end
if (#stack ~= 0) then --empty rest of operators on the  list
	while (#stack ~= 0) do table.insert(list,pop())end 
end
    string = table.concat(list, " ") --convert list into a string concated by spaces
	return string
end 








