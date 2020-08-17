class User < ActiveRecord::Base
    belongs_to :userbank
    has_many :banks, through: :userbanks
end
