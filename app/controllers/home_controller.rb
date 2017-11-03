class HomeController < ApplicationController
  def index

  	if user_signed_in? 
  		redirect_to quizzes_path
  	else
  		redirect_to new_user_session_path
  	end
  
  end

  def user_board
  	events = Event.where(user_id: current_user.id)
  	@quizz_collection = Hash.new
    Genre.all.each do |g|
      @quizz_collection[g.title] = Hash.new
      Subgenre.where(genre_id: g.id).each do |s|
        @quiz_set = Quiz.where(subgenre_id: s.id)
        if @quiz_set.length 
          @quizz_collection[g.title][s.title] = @quiz_set
        end
      end
    end
  	@ev = events.sort_by { |e| e.quiz_id }.reverse
  end

end
