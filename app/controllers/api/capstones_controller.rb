class Api::CapstonesController < ApplicationController

  def update
    @capstone = Capstone.find_by(id: params[:id])
    @capstone.name = params[:name] || @capstone.name
    @capstone.description = params[:description] || @capstone.description
    @capstone.url = params[:url] || @capstone.url
    @capstone.screenshot_url = params[:screenshot_url] || @capstone.screenshot_url
    if @capstone.save
      render "show.json.jb"
    else
      render json: {errors: @capstone.errors.full_messages}, status: :bad_request
    end
  end

end
