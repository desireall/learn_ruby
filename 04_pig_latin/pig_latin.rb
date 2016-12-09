

$vowelSound = Array.[]("a","e","i","o","u");
def translateWord(str)  
    index = 0
    i = 0;
    if str.include?("qu")
      index = str.index("qu") + 2
    else
     while i < str.size do
       if $vowelSound.include?(str[i])
         index = i
         break
       end
       i += 1
     end
    end
    # 正则
    if index == 0
       str +"ay"
    else
       str[index,str.length] + str[0,index] +"ay"
    end
end

def translate(str)
    temp = str.split(" ");
    # temp.each { |i| i = translateWord(i)}
     i = 0;
     while i < temp.size do
       temp[i] = translateWord(temp[i])
       i += 1
    end
    temp.join(" ");
end

puts translate("the quick brown fox")
puts translate("quiet")

puts "asdasd"[0]

#puts "quiet".include?("qu");

puts "quiet"["quiet".index("qu") + 2 , 4]