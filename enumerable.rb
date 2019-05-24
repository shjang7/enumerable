module Enumerable
  def my_each
    for i in 0...self.length
      yield(self[i])
    end
  end
  def my_each_with_index
    for i in 0...self.length
      yield(self[i],i)
    end
  end
  def my_select
    for i in 0...self.length
      yield(self[i])
    end
  end
  def my_all?
    cnt = self.length
    for i in 0...self.length
      if true == yield(self[i])
        cnt-=1
      end
    end
    cnt==0
  end
  def my_any?
    for i in 0...arr.length
      yield
    end
  end
  def my_none?
    for i in 0...arr.length
      yield
    end
  end
  def my_count
    for i in 0...arr.length
      yield
    end
  end
  def my_map
    for i in 0...arr.length
      yield
    end
  end
  def my_inject
    curr = self[0]
    self.my_each_with_index do |element, index|
      if 0==index
        next
      end
      curr = yield(curr,element)
    end
  end
end
