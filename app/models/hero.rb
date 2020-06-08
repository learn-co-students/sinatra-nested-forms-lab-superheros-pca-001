class Hero
  attr_accessor :name, :power, :bio

  def initialize(attr)
    @name = attr[:name]
    @power = attr[:power]
    @bio = attr[:bio]
  end
end