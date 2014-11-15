class CustomSurvey
  include ActiveModel::Model

  attr_accessor :questions

  # This method is required for `form.fields_for :questions` to work, otherwise
  # it silently doesn't grab questions.
  def questions_attributes=(attributes)
    # Can't set @answers in initialize because initialize immediately calls
    # `questions_attributes=`. So we set it here.
    @answers = []

    puts "SETTING QUESTIONS ATTRIBUTES to #{attributes.inspect}"
    attributes.each do |k, v|
      question_id = v["id"]

      if v.key?("multi_choice_answer")
        option_id = v["multi_choice_answer"]["multi_choice_option_id"]
        @answers << MultiChoiceAnswer.new(multi_choice_option_id: option_id)
      elsif v.key?("text_answer")
        body = v["text_answer"]["body"]
        text_style = Question.find(question_id).style
        @answers << TextAnswer.new(body: body, text_style_id: text_style.id)
      else
        raise "UNKNOWN ANSWER TYPE"
      end
    end
  end

  def save
    @answers.each(&:save)
  end
end
