class Yarn
  attr_accessor :fiber, :color, :number

  def initialize(fiber, color, number)
    @fiber = fiber
    @color = color
    @number = number
  end

  def to_s
    "#{@number} skeins of #{@color} #{@fiber} yarn"
  end
end
