class EntriesController < ApplicationController
  def index
    @entries = Entry.all
    @points = Entry.total_points
    @points_by_date = Entry.total_points_by_date
    
    @start_date = Date.parse("07 Apr 2011")
    @today = Date.today
    @end_date = Date.parse("29 Apr 2011")
    
  end

  def show

  end
  
  def new
    @ent = Entry.new
    @plan_items = PlanItem.all
  end

  def create
    @ent = Entry.new(params[:entry])
    @ent.save
    redirect_to :action=> "index"
    
  end

  def edit
    @ent = Entry.find(params[:id])
    @plan_items = PlanItem.all
  end

  def update
    @ent = Entry.find(params[:id])
    @ent.update_attributes(params[:entry])
    redirect_to :action => "index"

  end

  def destroy
    
  end
  


end
