module MyEnumerable
  def my_each
    for i in 0..self.size-1
      yield(self[i])
    end
  end
end

class MyList
  include MyEnumerable

  def initialize
    @list = []
  end

  def each
    @list.my_each { |item| yield item }
  end
end

