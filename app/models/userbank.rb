class Userbank < ActiveRecord::Base
  belongs_to :user
  belongs_to :bank
end
