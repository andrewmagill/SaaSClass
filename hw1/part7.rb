class CartesianProduct
  include Enumerable
  @seq_a = []
  @seq_b = []
  def initialize(seq_a, seq_b)
    @seq_a, @seq_b = seq_a, seq_b
  end 
  def each(&block)
    @seq_a.product(@seq_b).each(&block)
  end
end
