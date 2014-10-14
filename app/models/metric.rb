class Metric < ActiveRecord::Base
  attr_accessible :day, :energy, :fulfillment, :happiness, :productivity
  
  belongs_to :user
end
