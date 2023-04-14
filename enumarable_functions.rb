module MyEnumerables
  def all?
    each do |pattern|
      return false unless yield(pattern)
    end
    true
  end

  def any?
    each do |pattern|
      return true if yield(pattern)
    end
    false
  end

  def filter
    matching = []
    each { |e| matching.push(e) if yield(e) }
    matching
  end
end
