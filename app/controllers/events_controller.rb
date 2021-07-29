class EventsController < ApplicationController
  layout 'registration'
  before_action :set_event, only: %i[index]

  def index; end

  private

  def set_event 
    # TODO two councils can use the same url key, but the url key cannot be reused within the council
    @event = Event.find_by(url: params[:event_url])
  end
end
