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
    0 == cnt
  end
  def my_any?
    possible = false
    for i in 0...self.length
      if true == yield(self[i])
        possible = true
        break
      end
    end
    possible
  end
  def my_none?
    none = true
    for i in 0...self.length
      if true == yield(self[i])
        none = false
        break
      end
    end
    none
  end
  def my_count
    cnt=0
    for i in 0...self.length
      if true == yield(self[i])
        cnt+=1
      end
    end
    cnt
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
