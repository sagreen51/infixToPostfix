local precedence = {["+"] = 2;["-"] = 2; ["*"] =3;["/"]=3}
function InfixToPostfix(str)
opStack = {}
retStack = {}
tempList = {}
for k,v in string.gmatch(str, "[^%s]") do 
    tempList[k] = v
end 
for i, #tempList do 
    if tempList[i] == "+" or tempList[i] == "-" or tempList[i] == "/" or tempList[i] == "*" then 
        if #opStack ~= 0 and precedence[tempList[i]] <= precedence[opStack[#opStack]] then
            table.insert(retStack,table.remove(opStack[#opStack]))        
        elseif         
        else
        table.insert(retStack,tempList[i]) 
        end
        end    
    end



end
        
