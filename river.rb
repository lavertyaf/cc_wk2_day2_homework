class River
  attr_reader :name, :fishes

  def initialize(name, fishes)
    @name = name
    @fish = fishes
  end

  def fish_count
    return @fish.count
  end
end
