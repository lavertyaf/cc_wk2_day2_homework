class Bear
attr_accessor :name, :stomach

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
end
