class Metric < ActiveRecord::Base
  attr_accessible :day, :energy, :fulfillment, :happiness, :productivity
  
  belongs_to :user
  
  # Checks if a metric record has been added today.
  scope :today?, lambda { where(:created_at => Chronic.parse('today 0:00')..Chronic.parse('today 23:59')) }
  
  validates :day, presence: true
  validates :energy, presence: true
  validates :fulfillment, presence: true
  validates :happiness, presence: true
  validates :productivity, presence: true
  
  # Averages each of the wellness metrics.
  def average
    (energy + happiness + productivity + fulfillment + day)/5
  end
  
  # Formats created_at into a prettier date.
  def prettydate
    created_at.localtime.try(:strftime, "%a, %e %b %Y")
  end
  
  # Formats created_at into something morris.js likes more.
  def morrisdate
    created_at.localtime.try(:strftime, "%Y-%m-%d")
  end
  
end
