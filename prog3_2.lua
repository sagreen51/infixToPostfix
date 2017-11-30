list  = {}
temp = {}

local precendence = {["+"] = 2;["-"] = 2; ["*"] =3;["/"]=3}

function InfixToPostfix(str)
--	print("Assignment 3-2, Steven Green, s.a.green51@gmail.com")
	for char in string.gmatch(str, "[^%s]")do 
	if char== ("%d") or char == ("%a") then table.insert(list,char)
	else if char ==("+")or char == "-" or char =="*" or char == "/" then
		while (#temp ~= 0  and precendence[char] <= precendence[temp[#temp]]do
			table.insert(list,temp[#temp])
			table.remove(temp,#temp)
		end
		table.insert(temp,char)
		end
	end
	end
	while(#temp ~= 0) do 
		table.insert(list,temp[#temp])
		table.remove(temp,#temp]
	end
	print(table.concat(list," ")
	return table.concat(list," ")
end
