class ReportsController < ApplicationController

  def create
    @track = Track.find(params[:track_id])
    @report = Report.new(user_id: current_user.id, comment_id: params[:comment_id])
    if @report.save
      flash[:notice] = "Your report has been sent"
    else 
      flash[:notice] = "You have already reported that comment"
    end
    redirect_to @track
  end

  def show
    
  end

end

## GOAL
# I want to create the functionality to allow users to report comments.
# Only the admin should be able to see the flagged comments
# The admin should be able to then decide whether to delete the commment or unflag it.

## STEPS
# Created the Report model
# user_id comment_id
# Migrated
# Setup a reports_controller
# Setup associations

## NEXT STEPS
# Can I create a report in the terminal? yes
# Do the reports' associations work in the terminal? yes
# Do I have a route to create a report? yes
# Create a link or form to post to report create root yes

# Create logic to display flag if comment_id is in reports table
# Setup cancan permissions to allow only admins to see flags
# Create destroy action in the reports controller
# Setup cancan permissions to allow admins to destroy reports


