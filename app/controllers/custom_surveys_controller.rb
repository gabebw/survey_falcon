class CustomSurveysController < ApplicationController
  def create
    custom_survey = CustomSurvey.new(params[:custom_survey])
    custom_survey.save

    redirect_to root_path
  end
end
