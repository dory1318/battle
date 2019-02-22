class Player
attr_reader :name, :hit_points

DEFAULT_HIT_POINTS = 60

def initialize(name, hit_points = DEFAULT_HIT_POINTS)
  @name = name
  @hit_points = hit_points
end

def is_attacked
  @hit_points -= 10
end

def attack(player)
  player.is_attacked
end
end
