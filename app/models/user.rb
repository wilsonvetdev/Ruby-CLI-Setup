class User < ActiveRecord::Base
    belongs_to :userbank
    has_many :banks, throug: :userbanks
end
