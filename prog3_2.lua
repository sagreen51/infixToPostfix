local stack = {}
local list = {}

local precedence = {["+"] = 2;["-"] = 2; ["*"] =3;["/"]=3}

local function push(value) return table.insert(stack,value) end
local function pop() return table.remove(stack,size()) end
local function size() return #stack end--table.maxn(stack)end
local function peek() return stack[size()] end

local function InfixToPostfix(str)
--	print("Assignment 3-2, Steven Green, s.a.green51@gmail.com")	
    i = 1

	for v in string.gmatch(str, "[^%s]")do 
	    if v=="+"or v=="-"or v=="*"or v=="/" then 
            if size() == 0 then stack[1] = v
            elseif (size() ~= 0 and precedence[v] <= precedence[peek()])then 
                 while(size() ~= 0 and precedence[v] <= precedence[peek()])do 
                        table[i] = pop()
                        i = i+1
                 end 
                    --table.insert(list,pop())end
                 push(v)
            else list[i] = v
                i = i +1
            end    
        elseif v == "%d" or v == "%a" then
            list[i] = v
            i = i +1
        end 
	end

	while (size()~= 0) do
            list[i] = pop()
            i = i+1
    end
        -- table.insert(list,pop())end 
    string = table.concat(list, " ")
	return string
end 







