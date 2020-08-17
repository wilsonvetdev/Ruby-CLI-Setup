class User < ActiveRecord::Base
    has_many :userbanks
    has_many :banks, through: :userbanks
end
