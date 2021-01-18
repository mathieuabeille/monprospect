class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @lead = Lead.new
        @order = Order.new

    @contact = Contact.new
  end

  def role
    @users = User.all
    @orders = Order.all
    @leads = Lead.all
@contacts = Contact.all
  end
end
