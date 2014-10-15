class User < ActiveRecord::Base
  authenticates_with_sorcery!
  attr_accessible :email, :password, :password_confirmation, :metrics_attributes, :events_attributes

  validates :password, length: { minimum: 3 }
  validates :password, confirmation: true
  validates :password_confirmation, presence: true

  validates :email, uniqueness: true
  
  has_many :metrics
  has_many :events
  
  accepts_nested_attributes_for :metrics, :allow_destroy => true, :reject_if => proc { |obj| obj.blank? }
  accepts_nested_attributes_for :events, :allow_destroy => true, :reject_if => proc { |obj| obj.blank? }

  
end
