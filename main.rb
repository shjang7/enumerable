require "./enumerable.rb"

sample_arr = [9,6,3,2,5,4,7]

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

#sample_arr = [9,6,3,2,5,4,7]
print "\nMy_any(%5==0) : "
any_true = sample_arr.my_any? do |p|
  0 == p%5
end
print (true==any_true)?true:false

print "\nMy_none(greater than 10?) : "
none_true = sample_arr.my_none? do |p|
  p > 10
end
print (true==none_true)?true:false

puts "\nend"
