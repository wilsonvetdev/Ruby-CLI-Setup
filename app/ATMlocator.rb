class ATMlocator
  # here will be your CLI!
  # it is not an AR class so you need to add attr

  attr_accessor :prompt, :user

  def initialize
    @prompt = TTY::Prompt.new
  end

  def welcome
    puts "Welcome to our app!"
  end

  def login_or_register
    puts "---------------------------"
    self.prompt.select("Logging in or Registering?",
    [
      "Logging-in",
      "Register"
    ]
    )
  end

  def run
    self.welcome
    self.login_or_register
    # wanna_see_favs?
    # get_joke(what_subject)
  end

  private

  
end
