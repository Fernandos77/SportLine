class Ticket < ApplicationRecord
  belongs_to :game
  belongs_to :cart
end
