class HomeController < ApplicationController
  skip_before_action :authenticate_organization!, only: :index
  def index
  end
end
