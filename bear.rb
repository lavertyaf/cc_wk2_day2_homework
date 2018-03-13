class Bear
  attr_accessor :name, :stomach, :river

  def initialize(name)
    @name = name
    @stomach = []
  end

  def stomach_count()
    return @stomach.length()
  end

  def eat_a_fish(new_fish)
     @stomach << new_fish
  end

  def stomach_is_empty
    @stomach.empty? # true
    return true
  end

  def bear_gets_fed(river)
    for fish in @river
      if @river == "Trout"
        eat_a_fish(@fish1)
      end
    end
    return stomach_count
  end

end
