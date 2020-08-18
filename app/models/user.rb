class User < ActiveRecord::Base
    has_many :userbanks
    has_many :banks, through: :userbanks

    def self.user_logging_in
        prompt =  TTY::Prompt.new
        user_name = prompt.ask("Please input your username -->")
        found_user = User.find_by(user_name: user_name)
        puts "Hello #{found_user.user_name}, you are logged in."
    end

    def self.register_user
        prompt =  TTY::Prompt.new
        user_name = prompt.ask("Please input your username -->")

        sleep 1

        puts "Your user id is unique to you and it's --#{User.create_unique_id}--."
        puts "Please commit it to your memory."

        User.create(user_name: user_name)
        # thinking about adding another column to users table just for fun, assigning a 6 digit "unique_id" to each user.
    end

    def self.create_unique_id
        rand.to_s[2..7]
    end

end
