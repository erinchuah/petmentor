class MenteesController < ApplicationController

  def new
    @mentee = Mentee.new
  end

  def create
    @mentee = Mentee.new(mentee_params)
    @mentee.save
    if @mentee.save
      redirect_to mentee_path(@mentee)
    else
      render "new"
    end
  end

  private

  def mentee_params
    params.require(:mentee).permit(:name)
  end
end




#    before_action :set_mentor, only: [:show]

#     def show
#       # @booking = Booking.new
#     end

#     def new
#       @mentor = Mentor.new
#     end

#     def create
#       @mentor = Mentor.new(mentor_params)
#       @mentor.save
#       if @mentor.save
#       redirect_to mentor_path(@mentor)
#     else
#       render "new"
#     end
#     end

#     def delete

#     end


#   # resources :mentors do
#   #   resources :bookings, only: [:index, :show] do
#   #     resources :feedback, only: [:show]
#   #   end
#   # end

#   private

#   def set_mentor
#     @mentor = Mentor.find(params[:id])
#   end

#   # def mentor_params
#   #   params.require(:mentor).permit(:first_name, :last_name)
#   # end
# end
