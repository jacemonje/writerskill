class DashboardController < ApplicationController
  before_action :authenticate_member!

  def index
    @message = "Welcome to your dashboard!"
  end

  def edit
    @member = current_member
  end

  def submit

    #@member = Member.find(current_member.id)
    @member = current_member

    @work = params[:work]

    @member.work = @work

    @member.save!

    redirect_to root_path

  end

end
