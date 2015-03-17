class Subject < ActiveRecord::Base
  belongs_to :unit
  has_many :lessons
  validates :title, :presence => true

end
