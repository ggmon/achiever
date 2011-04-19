class PlanItemsController < ApplicationController

  def index
    @plan_items = PlanItem.all    
  end

  def show

  end

  def new
    @plan_item = PlanItem.new
  end
  
  def create
    @plan_item = PlanItem.new(params[:plan_item])
    @plan_item.save
    redirect_to :action=>"index"
  end

  def edit
    @plan_item = PlanItem.find(params[:id])
    
  end
  
  def update
    @plan_item = PlanItem.find(params[:id])
    @plan_item.update_attributes(params[:plan_item])
    redirect_to :action=> "index"
  end

  def destroy
    
  end
end
