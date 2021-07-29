class RegistrationDashboardController < ApplicationController
  layout 'registration'
  before_action :set_events, only: %i[dashboard]
  before_action :set_organization, only: %i[dashboard]

  def dashboard; end

  private

  def set_events
    @events = Organization.find_by(url_key: params[:organization_name]).events
  end

  def set_organization
    @organization = Organization.find_by(url_key: params[:organization_name])
  end
end
