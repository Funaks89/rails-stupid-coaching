class QuestionsController < ApplicationController
  def question
  end

  def answer
    # raise
    # @answers = ['Great!', 'Silly question, get dressed and go to work!', "I don't care, get dressed and go to work!"]
    @question = params[:question]
    if params[:question].ends_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    elsif params[:question] == 'I am going to work'
      @answer = 'Great!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end  
  end
end
