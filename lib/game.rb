class Game
  def self.collision?(char, objects)
    Array(objects).any? do |object|
      horizontal = char.x + char.width > object.x && char.x < object.x + object.width
      vertical = object.y + object.height > char.y && object.y < char.y + char.height
      horizontal && vertical
    end
  end

  def initialize
    @over = false
  end

  def over!
    @over = true
  end

  def over?
    @over
  end
end
