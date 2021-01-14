class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @lead = Lead.new
    @contact = Contact.new
  end
end
