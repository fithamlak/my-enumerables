require_relative 'enumarable_functions'
class MyList
  include MyEnumerables

  def initialize(*elements)
    @list = elements
  end

  def each(&block)
    @list.each(&block)
  end
end

