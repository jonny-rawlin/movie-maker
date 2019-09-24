class Movie < ActiveRecord::Base
  has_many :actors
  belongs_to :director
end
