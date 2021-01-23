# frozen_string_literal: true

# 04.8_spies_other_spec.rb
class Garage
  attr_reader :storage

  def initialize
    @storage = []
  end

  def add_to_collection(model)
    @storage << Car.new(model)
  end
end
