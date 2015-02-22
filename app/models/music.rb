class Music < ActiveRecord::Base

  validates :song, presence: true, length:
    {minimum: 3, message: "must have at least 3 characters in it"}

  validates :artist, presence: true, length:
    {minimum: 4, message: "must have at least 4 characters in it"}


end
