class Admin::DashboardController < ApplicationController
  layout 'admin'

  def index
    @events = Event.all
  end
end
