class HomeController < ApplicationController
  def index
  end

  def points
    @points = Entry.all.map{|e| e.plan_item.points.to_i * e.quantity.to_i * 
      (e.plan_item.positiveconnotation ?  1 : -1 )}.inject{|a,b| a + b}

    render :text=>@points.to_s
  end
end
