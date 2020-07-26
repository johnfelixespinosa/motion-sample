class MyComponent < ViewComponent::Base
  include Motion::Component

  attr_reader :total

  def initialize(total: 0)
    @total = 0
  end

  # map_motion :add, :reset    WHY THIS DONT WORK DREW ¯\_(ツ)_/¯
  map_motion :add
  map_motion :reset

  def add
    @total += 1
  end

  def reset
    @total = 0
  end

end
