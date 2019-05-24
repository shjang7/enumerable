require "./enumerable.rb"

def multiply_else(arr)
  return arr.my_inject{|stable,new_num| stable*=new_num}
end

#puts multiply_else([2,4,5])
sample_arr = [9,6,3,2]
sample_arr.my_each{ |p| puts p}
sample_arr.my_each_with_index do |p,i|
  puts "#{p}:#{i}"
end
