list  = {}
temp = {}

local precendence = {["+"] = 2;["-"] = 2; ["*"] =3;["/"]=3}

function InfixToPostfix(str)
--	print("Assignment 3-2, Steven Green, s.a.green51@gmail.com")
	list[0] = " "
	temp[0] = " "
	for char in string.gmatch(str, "[^%s]")do 
	if char:match("%d") or char:match("%a") then table.insert(list,char)
	else then 
		if char:match("[%+%-%*%/]") then
	while (temp[#temp] ~= 0 and precendence[char] <= precendence[temp[#temp]]do
			table.insert(list,temp[#temp])
			table.remove(temp,#temp)
		end
		table.insert(temp,char)
		end
	end
	end
	while(temp[#temp]~=nil) do 
		table.insert(list,temp[#temp])
		table.remove(temp,#temp]
	end
	return table.concat(list," ")
end
