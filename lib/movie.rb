# frozen_string_literal: true

# 04.2_movie_spec.rb
class Movie
  attr_reader :actor

  def initialize(actor)
    @actor = actor
  end

  def start_shooting
    return unless actor.ready?

    actor.act
    actor.fall_off_ladder
    actor.light_on_fire
    actor.act
  end
end
