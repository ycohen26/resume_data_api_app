class Api::EducationsController < ApplicationController
  
  def update
    @education = Education.find_by(id: params[:id])
    @education.start_date = params[:start_date] || @education.start_date
    @education.end_date = params[:end_date] || @education.end_date
    @education.university = params[:university] || @education.university
    @education.details = params[:details] || @education.details
    if @education.save
      render "show.json.jb"
    else
      render json: {errors: @education.errors.full_messages}, status: :bad_request
    end
  end

end
