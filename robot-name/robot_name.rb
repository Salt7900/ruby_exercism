class Robot

  attr_reader :name

  def initialize
    @name = create_name
  end

  def reset
    @name = create_name
  end

  private

  def create_name
    robot_name = []
    robot_name << ('A'..'Z').to_a.sample(2)
    robot_name << (1..9).to_a.sample(3)
    robot_name.join
  end

end
