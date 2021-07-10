class HomeController < ApplicationController
  skip_before_action :check_logged
  def index
  end
end
