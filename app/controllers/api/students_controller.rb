class Api::StudentsController < ApplicationController

  def create
    student = Student.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number],
      short_bio: params[:short_bio],
      linkedin_url: params[:linkedin_url],
      twitter_handle: params[:twitter_handle],
      personal_site_url: params[:personal_site_url],
      online_resume_url: params[:online_resume_url],
      github_url: params[:github_url],
      photo_url: params[:photo_url],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if student.save
      render json: { message: "Student created successfully" }, status: :created
    else
      render json: { errors: student.errors.full_messages }, status: :bad_request
    end
  end

end
