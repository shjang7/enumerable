require "./enumerable.rb"

def multiply_else(arr)
  return arr.my_inject{|stable,new_num| stable*=new_num}
end

#puts multiply_else([2,4,5])
sample_arr = [9,6,3,2]

print "My_each : "
sample_arr.my_each{ |p| print "#{p} " }

print "\nMy_each_with_index : "
sample_arr.my_each_with_index do |p,i|
  print "#{p}:#{i} "
end

print "\nMy_select : "
sample_arr.my_select do |p|
  print "#{p} " if 0 == p%2
end

print "\nMy_all(even?) : "
all_true = sample_arr.my_all? do |p|
  0 == p%2
end
print (true==all_true)?true:false

print "\nMy_all(smaller than 10?) : "
all_true = sample_arr.my_all? do |p|
  p<10
end
print (true==all_true)?true:false

puts "\nend"
