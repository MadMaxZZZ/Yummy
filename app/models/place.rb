class Place < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  
  def last_comment
    self.comments.order("id ASC").last
  end
  
  geocoded_by :address
  after_validation :geocode
  validates :name, presence: true, length: {minimum: 3}, uniqueness: true
  validates :address, presence: true, length: {minimum: 5}
  validates :description, presence: true, length: {minimum: 10}
end
