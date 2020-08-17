class Bank < ActiveRecord::Base
  belongs_to :user_bank
  has_many :users, through: :userbanks
end
