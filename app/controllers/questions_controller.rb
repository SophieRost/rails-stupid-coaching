class QuestionsController < ApplicationController

  ANSWERS = {
    otherwise:  "I don't care, get dressed and go to work!",
    work: 'Great!',
    question_mark: 'Silly question, get dressed and go to work!'
  }

  def ask
    @question = params[:question]
  end

  def answer
    @question = params[:question]
    if @question == "I am going to work"
      @answer = ANSWERS[:work]
    elsif @question.include? "?"
      @answer = ANSWERS[:question_mark]
    else
      @answer = ANSWERS[:otherwise]
    end
  end
end
