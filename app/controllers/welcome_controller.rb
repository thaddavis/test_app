class WelcomeController < ApplicationController
  def home
    @message = "Fuck Tad"

    redirect_to articles_path if logged_in?
  end

  def about
    @message = "About Nothing"
  end
end
