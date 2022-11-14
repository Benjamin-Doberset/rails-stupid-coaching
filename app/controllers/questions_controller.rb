class QuestionsController < ApplicationController
  ANSWER = {}
  def ask
    params[:ask]
  end

  def answer
    if ask == "I am going to work"
      answer = "Great!"
    elsif params[:ask].include?("?")
      answer = "Silly question, get dressed and go to work!"
    else
      answer = "I don't care, get dressed and go to work!"
    end
    # If the message is I am going to work, the coach will answer Great!
    # If the message has a question mark ? at the end, the coach will answer Silly question, get dressed and go to work!.
    # Otherwise the coach will answer I don't care, get dressed and go to work!
    ANSWER[ask] = answer
    @answers = ANSWER
  end
end
