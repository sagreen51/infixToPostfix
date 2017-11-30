list  = {}
temp = {}

local precendence = {["+"] = 2;["-"] = 2; ["*"] =3;["/"]=3}

function InfixToPostfix(str)
--	print("Assignment 3-2, Steven Green, s.a.green51@gmail.com")
	list[0] = " "
	temp[0] = " "
	for char in string.gmatch(str, "[^%s]")do 
	if char== ("%d") or char == ("%a") then table.insert(list,char)
	else if char ==("[%+%-%*%/]") then
		while (temp[#temp-1] ~= 0 and precendence[char] <= precendence[temp[#temp-1]]do
			table.insert(list,temp[#temp+1])
			table.remove(temp,#temp+1)
		end
		table.insert(temp,char)
		end
	end
	end
	while(temp[#temp+1]~=nil) do 
		table.insert(list,temp[#temp+1])
		table.remove(temp,#temp+1]
	end
	return table.concat(list," ")
end
