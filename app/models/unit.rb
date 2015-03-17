class Unit < ActiveRecord::Base
  has_many :subjects
  validates :title, :presence => true

end
