class Report < ActiveRecord::Base
  attr_accessible :comment_id, :user_id

  belongs_to :comment
  belongs_to :user

  validates :user_id, uniqueness: {scope: :comment_id}
  
end
