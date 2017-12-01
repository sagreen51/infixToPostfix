list  = {}
temp = {}

local precendence = {["+"] = 2;["-"] = 2; ["*"] =3;["/"]=3}

function InfixToPostfix(str)
--	print("Assignment 3-2, Steven Green, s.a.green51@gmail.com")	
	list[1]= " "
	temp[1] = " "
	for char in string.gmatch(str, "[^%s]")do 
	if char=="*"or char=="/"or char=="+"or char=="-" then
		if temp[1] == nil then table.insert(temp,char)
		else if (char=="+"or char=="-")then
			while(temp[1]=="*"or temp[1]=="/") do
				table.insert(list,temp[1])
				table.remove(temp,1)
			end
		table.insert(temp,char)
		else if (temp[1]=="+"or temp[1]=="-")then 
			table.insert(temp,char)
		else table.insert(list,char)
		end
	else table.insert(list,char)
	end 
	end
	return table.concat(list, " ")
end






	else 
		while (#temp ~= 0  and precendence[char] <= precendence[temp[#temp]])do
			table.insert(list,temp[#temp])
			table.remove(temp,#temp)
		end
		table.insert(temp,char)
	end
	end
	while(#temp ~= 0) do 
		table.insert(list,temp[#temp])
		table.remove(temp,#temp]
	end
--	print("%s",table.concat(list," ")
	return table.concat(list," ")
end
