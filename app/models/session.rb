class Session < ApplicationRecord
  belongs_to :karaoke
  belongs_to :user
end
