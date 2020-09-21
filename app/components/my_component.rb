class MyComponent < ViewComponent::Base
  include Motion::Component

  attr_reader :total

  COUNTRIES = ["USA", "France", "Canada"]

  def initialize(country: "")
    @country = ""
  end

  # map_motion :add, :reset    WHY THIS DONT WORK DREW ¯\_(ツ)_/¯
  map_motion :born
  map_motion :reset

  def born
    @country = COUNTRIES.sample
  end

  def reset
    @country = ""
  end

end
