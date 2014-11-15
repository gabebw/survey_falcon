class CustomSurveysController < ApplicationController
  def create
    CustomSurvey.new(params[:custom_survey])
    CustomSurvey.save

    redirect_to root_path
  end
end
