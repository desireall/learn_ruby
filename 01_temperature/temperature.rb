
def ftoc(num)
   ((num - 32) / 1.8).round;   # 四舍五入 取整数
end

def ctof(num)
	temp = 32 + num * 1.8;
	if num == 37
        (temp*10).round.to_f/10;    # 四舍五入 小数点后一位小数
        # temp.round(1);      # 四舍五入 小数点后一位小数
        # format("%.1f",num).to_f      # 保留一位小数
    else
        temp.round;
        # temp.floor;
    end
end

def ten_thouusand_ceil(n)
        (n.fdiv 10000).ceil * 10000           #  fdiv    除法，返回 float 。类似 a.to_f / b 。
end


	
puts ctof(37);

puts 0.5 - 0.4 ;         # 0.09999999999999998

puts 0.5 - 0.4 - 0.1;    # -2.7755575615628914e-17

puts format("%.1f",0.5 - 0.4 - 0.1).to_f;   # -0.0

puts (0.5 - 0.4 - 0.1).to_i;   # 0


puts ten_thouusand_ceil(4001);
puts ten_thouusand_ceil(501);
puts ten_thouusand_ceil(1);



=begin
abs取绝对值
ceil/floor/round 向下取整、向上取整、四舍五入
odd?/even?/zero? 奇数？偶数？零？ 返回bool型
times/upto/downto/step
# 执行n次block
5.times { puts "+" }           # 打印5个+
# 从1加到5
1.upto(5) { |i| print i, "+" }      # 1+2+..5+
# 从99减到95
99.downto(95) { |i| print i, "+" }     # 99+..95+
# 从50到80，以5为间隔
50.step(80, 5) { |i| print i, "+" }        # 50+55+..80+
=end