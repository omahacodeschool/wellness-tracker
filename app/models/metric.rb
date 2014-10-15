class Metric < ActiveRecord::Base
  attr_accessible :day, :energy, :fulfillment, :happiness, :productivity
  
  belongs_to :user
  
  # Checks if a metric record has been added today.
  scope :today?, lambda { where(:created_at => Chronic.parse('today 0:00')..Chronic.parse('today 23:59')) }
  
  # Averages each of the wellness metrics.
  def average
    (energy + happiness + productivity + fulfillment + day)/5
  end
  
  def prettydate
    created_at.localtime.try(:strftime, "%a, %e %b %Y")
  end
  
  def morrisdate
    created_at.localtime.try(:strftime, "%Y-%m-%d")
  end
  
end
