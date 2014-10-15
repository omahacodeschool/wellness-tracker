class Metric < ActiveRecord::Base
  attr_accessible :day, :energy, :fulfillment, :happiness, :productivity
  
  belongs_to :user
  
  # Averages each of the wellness metrics.
  def average
    (energy + happiness + productivity + fulfillment + day)/5
  end
  
end
