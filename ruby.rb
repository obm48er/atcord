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

 puts alice - 