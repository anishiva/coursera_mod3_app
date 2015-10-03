class CoursesController < ApplicationController
  def index
  	@search_term = params[:looking_for] || 'jhu'
  	@courses = Coursera.for(@search_term) #|| [] # you can give an empty list
  end
end
