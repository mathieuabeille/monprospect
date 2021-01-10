class ApplicationController < ActionController::Base
  before_action :authenticate_user!, :formbox

  def formbox
    @lead = Lead.new
  end
end
