class PlanItem < ActiveRecord::Base
  has_many :entries
end
