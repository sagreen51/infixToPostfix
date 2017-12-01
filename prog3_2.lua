list ={}
stack ={}

local precedence = {["+"] = 2;["-"] = 2; ["*"] =3;["/"]=3}

local function push(value)table.insert(stack,value) end
local function pop()
	temp = peek()
	table.remove(stack,size())
	return temp 
	end
local function size()return table.maxn(stack)-1 end
local function peek()return stack[size()] end

local function InfixToPostfix(str)
--	print("Assignment 3-2, Steven Green, s.a.green51@gmail.com")	
    list[1] = " "
    
	for c in string.gmatch(str, "[^%s]")do 
	    if c=="+"or c=="-"or c=="*"or c=="/" then 
            if size() == 0 then push(c)
            while(size()>0 and precedence[c] <= precedence[peek()]do 
                 table.insert(list,pop())end
            else push(c)
            end    
        else 
            table.insert(list,c)
	    end 
	end

	while (peek() ~= nil) do table.insert(list,pop())end 
	return table.concat(list," ")
end 







