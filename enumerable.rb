module Enumerable

  def my_each
    if block_given?
      for elem in self
        yield elem
      end
      return self
    else
      return to_enum
    end
  end

  def my_each_with_index
    i = 0
    if block_given?
      for elem in self
        yield elem, i
        i += 1
      end
      return self
    else
      return to_enum
    end
  end

  def my_select
    return to_enum(:select) unless block_given?
    result = is_a?(Hash) ? {} : []
    my_each { |elem| result << elem if yield elem }
    result
  end
  
  def my_all?
    if block_given?
      my_each { |elem| return false unless yield elem }
    else
      for elem in self 
        return false unless elem
      end
    end
    true
  end

  def my_any?
    if block_given?
      my_each { |elem| return true if yield elem }
    else
      for elem in self
        return true if elem
      end
    end      
    false
  end

  def my_none?
    if block_given?
      my_each { |elem| return false if yield elem }
    else
      for elem in self
        return false if elem
      end
    end      
    true
  end

  def my_count
    return size unless block_given?
    counter = 0
    my_each { |elem| counter += 1 if yield elem }
    counter
  end

  def my_map proc=nil
    return to_enum(:map) unless block_given? || proc
    result = []
    my_each do |elem|
      result << (proc ? proc.call(elem) : yield(elem))
    end
    result
  end

  def my_inject initial_value=nil
    accum = initial_value ? initial_value : self.first
    if initial_value
      my_each { |elem| accum = yield(accum, elem) }
    else
      shifted = is_a?(Hash) ? slice(keys[1], keys[-1]) : self[1..-1]
      shifted.my_each { |elem| accum = yield(accum, elem) }
    end
    accum
  end

end
