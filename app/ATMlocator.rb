class ATMlocator
  # here will be your CLI!
  # it is not an AR class so you need to add attr

  attr_accessor :prompt, :user

  def initialize
    @prompt = TTY::Prompt.new
  end

  def welcome
    puts "-----------------------------------------"
    puts "Welcome to our ATM locator app!"
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
      # log-in logic here - def user_logging_in
      puts "-----------------------------------------"
      puts "Log in you shall!"
    elsif user_choice == "Register"
      # register logic here - def register_user
      puts "-----------------------------------------"
      puts "Register you shall!"
    end
  end

  def run
    self.welcome
    self.login_or_register
    # wanna_see_favs?
    # get_joke(what_subject)
  end

  private

  
end

