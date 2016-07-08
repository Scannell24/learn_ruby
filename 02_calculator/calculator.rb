#write your code here
def add(a, b)
	a+b
end

def subtract(a, b)
	a-b
end

def sum(items)
	a=0;
	items.inject(0){|a,x| a + x }
end

def multiply(items)
	a=items[0];
	items.inject(1){|a,x| a * x }
end

def power(val, power)
	val ** power
end

def factorial(n)
	if n == 0
    1
  else
    n * factorial(n-1)
  end
end