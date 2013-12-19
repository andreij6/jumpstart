class Page < ActiveRecord::Base
  attr_accessible :title, :slug, :blurb, :content
  
  #------------       Validations          ----------------
  validates :title, presence: true, length: {minimum: 5 }
  validates :content, presence: true, length: { minimum: 100 }
  validates :slug, presence: true, format: { with: /\A[a-zA-Z]+\z/, 
                                                message: "Only letters allowed" }
                                                
end
