class Profile < ActiveRecord::Base
  # attr_accessible :title, :body

  attr_accessible :Full_name, :permanent_address,:business_address,:company_address,:contact_number, :avatar


  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"

  belongs_to :user

  def has_attached_file(name, options = {})
    HasAttachedFile.define_on(self, name, options)
  end

end
