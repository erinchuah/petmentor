class MentorsController < ApplicationController
  # before_action :set_mentor, only: [:show]
    def index
      @mentors = Mentor.all
    end

    # def show

    # end

    # def new
    #   @mentor = Mentor.new
    # end

    # def create
    #   @mentor = Mentor.new(mentor_params)
    #   @mentor.save
    #   if @mentor.save
    #   redirect_to mentor_path(@mentor)
    # else
    #   render "new"
    # end
    # end

    # def delete

    # end


  # resources :mentors do
  #   resources :bookings, only: [:index, :show] do
  #     resources :feedback, only: [:show]
  #   end
  # end

#   private

#   def set_mentor
#     @mentor = Mentor.find(params[:id])
#   end

#   def mentor_params
#     params.require(:mentor).permit(:first_name, :last_name)
#   end
end
