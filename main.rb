require "./enumerable.rb"

def multiply_else(arr)
  return arr.my_inject{|stable,new_num| stable*=new_num}
end

#puts multiply_else([2,4,5])
[1,2,3].my_each{ |p| puts p}
