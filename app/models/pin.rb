

class Pin < ActiveRecord::Base
  attr_accessible :description, :image, :image_remote_url, :name, :price, :phone, :email

  validates :name, presence: true
	validates :description, presence: true
  validates :price, presence: true
  validates :phone, presence: true
  validates :email, presence: true
  
  validates :user_id, presence: true
  has_attached_file :image, styles: { medium: "320x240>"}
  validates_attachment :image, presence: true,
                            content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] },
                            size: { less_than: 5.megabytes }
  belongs_to :user
  has_attached_file :image, styles: { medium: "320x240>" }

  def image_remote_url=(url_value)
  	self.image = URI.parse(url_value) unless url_value.blank?
  	super
  end
end
