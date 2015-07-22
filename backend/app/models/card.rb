class Card < ActiveRecord::Base
  has_many :clues
  attr_accessor :points

  def add_clue(clue)
    self.clues.create(content: clue)
  end
end
