class Card < ActiveRecord::Base
  has_many :clues

  def add_clue(clue)
    self.clues.create(content: clue)
  end
end
