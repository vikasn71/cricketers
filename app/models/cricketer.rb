class Cricketer < ActiveRecord::Base
  validates :fullname, :country, :description, :posted_from, presence: true
end
