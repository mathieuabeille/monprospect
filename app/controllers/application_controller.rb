class ApplicationController < ActionController::Base
  before_action :authenticate_user!, :formbox
  protect_from_forgery with: :exception
  include ApplicationHelper
  def formbox
    @lead = Lead.new
  end
end

