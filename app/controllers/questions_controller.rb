class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:ask]
    if @question.include?("?")
       @question = 'Silly question, get dressed and go to work!'
    elsif @question.include?('I am going to work')
       @question =  'Great!'
    else
        @question =   "I don't care, get dressed and go to work!"
    end
  end
end
