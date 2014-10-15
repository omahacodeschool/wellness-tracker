class Event < ActiveRecord::Base
  attr_accessible :content, :name
  
  belongs_to :user
  
  scope :today?, lambda { where(:created_at => Chronic.parse('today 0:00')..Chronic.parse('today 23:59')) }
end
