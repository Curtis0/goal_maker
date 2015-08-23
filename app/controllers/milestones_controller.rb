class MilestonesController < ApplicationController

  def new
    @milestone = Milestone.new
  end

  def create
    @milestone = Milestone.new(milestone_params)
    @milestone.save
  end


end
