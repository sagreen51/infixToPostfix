local stack = {}

local precedence = {["+"] = 2;["-"] = 2; ["*"] =3;["/"]=3}

local function push(value)table.insert(stack,value) end
local function pop() return table.remove(stack,size())
local function size() return #stack end--table.maxn(stack)end
local function peek() return tostring.stack[size()] end

local function InfixToPostfix(str)
--	print("Assignment 3-2, Steven Green, s.a.green51@gmail.com")	
    i = 1

	for v in string.gmatch(str, "[^%S]")do 
	    if v=="+"or v=="-"or v=="*"or v=="/" then 
            if size() == 0 then push(v)
            else if (size() ~= 0 and precedence[v] <= precedence[peek()])then 
                 while(size() ~= 0 and precedence[v] <= precedence[peek()])do 
                    table.insert(list,pop())end
                 push(v)
            else list[i] = v
                i = i +1
            end    
        else 
            list[i] = v
            i = i +1
        end 
	end

	while (size()~= 0) do table.insert(list,pop())end 
    string = table.concat(list, " ")
	return string
end 







