class CustomSurvey
  include ActiveModel::Model

  attr_accessor :questions

  # This method is required for `form.fields_for :questions` to work, otherwise
  # it silently doesn't grab questions.
  def questions_attributes=(attributes)
    puts "SETTING QUESTIONS ATTRIBUTES to #{attributes.inspect}"
    attributes.each do |k, v|
      puts "#{k} / v: #{v.inspect}"
    end
  end
end
