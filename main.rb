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
  print "#{p} " if p%2 == 0
end

puts "\nend"
