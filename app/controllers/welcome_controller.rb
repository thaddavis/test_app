class WelcomeController < ApplicationController
  def home
    @message = "Fuck Tad"
  end

  def about
    @message = "About Nothing"
  end
end
