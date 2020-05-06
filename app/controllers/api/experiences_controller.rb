class Api::ExperiencesController < ApplicationController

  def update
    @experience = Experience.find_by(id: params[:id])
    @experience.start_date = params[:start_date] || @experience.start_date
    @experience.end_date = params[:end_date] || @experience.end_date
    @experience.job_title = params[:job_title] || @experience.job_title
    @experience.company = params[:company] || @experience.company
    @experience.details = params[:details] || @experience.details
    if @experience.save
      render "../views/api/students/show.json.jb"
    else
      render json: {errors: @experience.errors.full_messages}, status: :bad_request
    end
  end

end
