class WelcomeController < ApplicationController

  def index
  end

  def landingpage
    render layout: "layouts/landingpage"
  end
end
