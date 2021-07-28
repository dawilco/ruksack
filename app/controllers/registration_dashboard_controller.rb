class RegistrationDashboardController < ApplicationController
  layout 'registration'
  before_action :set_events, only: %i[dashboard]

  def dashboard; end

  private

  def set_events
    @events = Organization.find_by(url_key: params[:organization_name]).events
  end

end
