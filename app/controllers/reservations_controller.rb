class ReservationsController < ApplicationController
    before_action :require_login

    def create
        reservation = Reservation.create(user_id: current_user.id, hostel_id: params[:hostel_id])
    
        if reservation
          response = reservation.take_ride
          flash[:notice] = response
          redirect_to user_path(reservation.user)
        else
          redirect_to hostel_path(reservation.hostel)
        end
      end
    end
  

