class AddTextStyleIdToTextAnswers < ActiveRecord::Migration
  def change
    add_column :text_answers, :text_style_id, :integer
  end
end
