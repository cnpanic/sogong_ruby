class WelcomController < ApplicationController
  def index
    @message = "Hello! It is me!!!"
    @count = 3
    @explanation = "This message came from the controller."
  end
end
