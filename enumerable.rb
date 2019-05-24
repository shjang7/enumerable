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
  def my_map(proc=nil)
    new_arr=[]
    for i in 0...self.length
      if nil != proc
        new_arr << proc.call(self[i])
      else
        new_arr << yield(self[i])
      end
    end
    new_arr
  end
  def my_inject(stable)
    for i in 0...self.length
      stable = yield(stable,self[i])
    end
    stable
  end
end
