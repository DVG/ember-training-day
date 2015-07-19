class Appearance < ActiveRecord::Base
  belongs_to :actor
  belongs_to :character
  belongs_to :movie
end
