#問３
a = 500
b = 100
c = 50

aA = gets.to_i
bB = gets.to_i
cC = gets.to_i
sum = gets.to_i
cnt = 0
for x in 0..aA
 for y in 0..bB
   for z  in 0..cC
    if(((x*a)+(y*b)+(z*c))- sum )== 0
     cnt += 1
    end
   end
 end
end

puts cnt
sum = 0


問４
sum = 0
z = gets.split(" ").map(&:to_i)
for x in 1..(z[0])
   if x > 9
   y = x.to_s.chars.map(&:to_i)
   s = y.sum
   else
   s = x
   end
     if  s >= z[1] && s <= z[2]
      sum += x
      
     end
end

puts sum

bob = 0
alice = 0
n = gets.to_i
a = gets.split(" ").map(&:to_i)
no = 1
a = a.sort!.reverse!
while n >= 1 do
   if no.odd?
    alice = alice + a.max
    a.shift()
   else
    bob += a.max
    a.shift()
   end
 no += 1
 n -= 1
 a = a.sort!.reverse!
end

 puts alice - bob