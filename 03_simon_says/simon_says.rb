#write your code here

def echo(var)
	var
end

def shout(var)
	var.upcase
end

def repeat(var, num=2)
	a = ""
	for i in 1..num do
		a.concat(var)
		if(i != num)
			a.concat(" ")
		end
	end
	a
end

def start_of_word(var, num =1)
	var[0..num-1]
end

def first_word(var)
	words = var.split(/\W+/)
	words[0]
end

def titleize(var)
	var[0] = var[0].upcase
	var
end
