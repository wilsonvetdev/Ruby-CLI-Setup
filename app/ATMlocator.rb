class ATMlocator
  # here will be your CLI!
  # it is not an AR class so you need to add attr

  attr_accessor :prompt, :user

  def initialize
    @prompt = TTY::Prompt.new
  end

  def welcome
    puts "-----------------------------------------"
    puts "Hi Friend, Welcome to our ATM locator app!"
  end

  def login_or_register
    puts "-----------------------------------------"
    user_choice = self.prompt.select("Logging in or Registering?",
    [
      "Logging-in",
      "Register"
    ]
    )

    if user_choice == "Logging-in"
      puts "-----------------------------------------"
      puts "Alright, let's get you logged in!"
      User.user_logging_in
    elsif user_choice == "Register"
      puts "-----------------------------------------"
      puts "Alright, let's get you registered!"
      User.register_user
    end
  end

  def main_menu
    puts "-----------------------------------------"
    puts "Hello #{self.user.user_name}, this is the main menu."

    self.prompt.select("What would you like to accomplish today?") do |menu|
      menu.choice "Find banks by zipcode", -> { puts "--find banks by zipcode method here--" }
      menu.choice "Add your bank to a list", -> { puts "--Userbank.create here to associate user and bank--" }
      menu.choice "Delete a bank from from your list", -> { puts "--Userbank find associated row and .destroy here to disassociate--" }
      menu.choice "Delete your user account", -> { puts "--Delete user instance and userbank rows associated with user here--" }
    end
  end

  def run
    self.welcome

    user_instance = self.login_or_register
    self.user = user_instance
    self.main_menu # frankenstine code from watching one of Eric's lecture

    # wanna_see_favs?
    # get_joke(what_subject)
  end

  private


end

