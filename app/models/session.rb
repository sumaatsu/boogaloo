class Session < ApplicationRecord
  belongs_to :karaoke
  belongs_to :user
  belongs_to :track
end
