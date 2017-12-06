local function push(value)table.insert(stack,value) end
local function pop() return table.remove(stack,#stack) end 
local function peek() return stack[#stack] end

function InfixToPostfix(str)
--	print("Assignment 3-2, Steven Green, s.a.green51@gmail.com")	
stack = {}
list = {}
precedence = {["+"] = 2;["-"] = 2; ["*"] =3;["/"]=3}

	for v in string.gmatch(str, "[^%s]")do 
	    if v=="+"or v=="-"or v=="*"or v=="/" then
            if #stack == 0 then push(v) 
            elseif #stack ~= 0 and precedence[v] <= precedence[peek()]then 
                 while(#stack ~= 0 and precedence[v] <= precedence[stack[#stack]])do 
                    table.insert(list,pop())end
                 push(v)
            else table.insert(list,v)end    
        elseif v =="%d" or v =="%a" then table.insert(list,v)
        else table.insert(list,v) end
    end
if (#stack ~= 0) then 
	while (#stack ~= 0) do table.insert(list,pop())end 
end
    string = table.concat(list, " ")
	return string
end 

print(InfixToPostfix("3 + 5 * 6 / 2 + 1"))
print("test")







