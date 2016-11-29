class Like < ActiveRecord::Base

  belongs_to :user
  belongs_to :photo

  ##VALIDATIONS
  validates :user_id,  :presence => true, :uniqueness => { :scope => :photo_id}

  validates :photo_id,  :presence => true
end
