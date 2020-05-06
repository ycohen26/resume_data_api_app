class Api::SkillsController < ApplicationController

  def update
    @skill = Skill.find_by(id: params[:id])
    @skill.name = params[:name] || @skill.name
    if @skill.save
      render "show.json.jb"
    else
      render json: {errors: @skill.errors.full_messages}, status: :bad_request
    end
  end
end
