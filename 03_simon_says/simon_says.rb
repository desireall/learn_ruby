

def echo(something)
      "#{something}"
end

def shout(something)
      something.upcase
end 

def repeat(something , num = 2)
     if num < 2
        return something
     end
    i = 1;
    temp = something;
    while i < num do
     temp+=" #{something}"
     i += 1
    end
    return temp
end

def start_of_word(something , length)
    if length >= something.length
       something
    end
    something[0,length]
end

def first_word(something)
	temp = something.index(" ")
    something[0,temp]
end


# TODO http://www.titlecase.com/titlecase   titlecase中不需要装换成大写的介词
$preposition = Array.[]("and","over","the")


def worldsCase(i , world)
	tempStr=""
    #  标题转换 需要处理介词
	#  忽略大小写判断
    # if i != 0 and (world.casecmp("and") == 0 || world.casecmp("over") == 0 || world.casecmp("the") == 0)
    if i != 0 and $preposition.include?(world.downcase)
       	return world.downcase;
    end
        tempStr += world[0,1].upcase
        if world.length > 1
        tempStr += world[1,world.length].downcase
        end
end

def titleize(something)
    temp = something.split(" ")
    tempStr=""
=begin
    temp.each do |i|
    	# 添加句中的介词处理
        tempStr += i[0,1].upcase
        if i.length > 1
        tempStr += i[1,i.length].downcase
        end
        tempStr += " "
    end
=end

=begin
    i = 0;
    while i < temp.size do
       tempStr += worldsCase(i,temp[i])
      if i + 1 != temp.size
         tempStr += " "
      end
     i += 1
    end
=end

# TODO 使用 array.join(sep=$,)   返回一个字符串，通过把数组的每个元素转换为字符串，并使用 sep 分隔进行创建的。
# 大小写转换的时候直接替换原来的
     i = 0;
     while i < temp.size do
       temp[i] = worldsCase(i,temp[i])
       i += 1
    end
    #tempStr
    temp.join(" ")
end

=begin
puts repeat("hello",3)
puts start_of_word("exercise" , 12)
puts first_word("exercise hello ")
puts titleize("jaws")
puts titleize("david copperfield")
puts titleize("war and peace")
def test(world)
    if world.casecmp("and")
    	puts "#{world}"
    else
    	puts "error";
    end

end


puts worldsCase(2, "bridge");

puts "bridge".casecmp("and")


test("anD");

puts 1==true;

=end

puts ("bridge".casecmp("BRidge") == 0 || "bridge".casecmp("and") == 0)

puts titleize("the bridge over the river kwai")


puts worldsCase(1, "ANDd");
