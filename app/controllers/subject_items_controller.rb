class SubjectItemsController < ApplicationController
  expose(:subject_item)
  expose(:subject_items) { SubjectItem.includes(:teacher, :students) }
  

def index
end
end
