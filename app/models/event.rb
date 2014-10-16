class Event < ActiveRecord::Base
  attr_accessible :content, :name
  
  belongs_to :user
  
  scope :today?, lambda { where(:created_at => Chronic.parse('today 0:00')..Chronic.parse('today 23:59')) }
  scope :this_week, where(:created_at => Chronic.parse('a week ago 0:00')..Chronic.parse('today 23:59'))
  
  # Formats created_at into a prettier date.
  def prettydate
    created_at.localtime.try(:strftime, "%a, %e %b %Y")
  end
  
  # Formats created_at into something morris.js likes more.
  def morrisdate
    created_at.localtime.try(:strftime, "%Y-%m-%d")
  end
  
end
