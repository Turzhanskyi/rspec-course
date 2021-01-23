# frozen_string_literal: true

# 03.10_have_attributes_matcher_spec.rb
class ProfessionalWrestler
  attr_reader :name, :finishing_move

  def initialize(name, finishing_move)
    @name = name
    @finishing_move = finishing_move
  end
end
