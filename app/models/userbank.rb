class Userbank < ActiveRecord::Base
  has_many :users
  has_many :banks
end
