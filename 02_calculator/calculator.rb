
def add(a,b)
   a+b;
end

def subtract(a,b)
   a-b;
end

def sum(a)
   temp = 0;
=begin   
    a.each do |i|
      temp += i;
    end
=end

=begin 
a.each { |i| temp += i}
temp;
=end
a.inject(0) { |sum,e| sum += e }      
end

def multiply(*numbers)
    numbers.inject(1) { |sum,e| sum *= e }      
end

def power(a, b)
    a ** b;    
end

def factorial(n)
	if n < 0
       0
    elsif n == 0
       1
    else
       n*factorial(n-1)
    end
end


 puts factorial(5.0);