require_relative './and'

class And16
  attr_accessor :a, :b

  def initialize(a, b)
    self.a = a[0..15]
    self.b = b[0..15]
  end

  def out
    (0..15).map { |i| And.new(a[i], b[i]).out }
  end
end
