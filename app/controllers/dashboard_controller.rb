class DashboardController < ApplicationController
  before_action :authenticate_member!

  def index

    @message = "Welcome to your dashboard!"
  end

  def submit
    @id = current_member.idnumber

    #find current member
    @member = Member.where(:idnumber => @id)

    render "index"
  end

end
