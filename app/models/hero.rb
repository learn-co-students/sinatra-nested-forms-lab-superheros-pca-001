class Hero
  attr_accessor :name, :bio, :power

  def initialize(attr)
    @name = attr[:name]
    @bio = attr[:bio]
    @power = attr[:power]
  end

end
