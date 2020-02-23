class HostelsController < ApplicationController
        before_action :set_hostel, only: [:show, :edit, :update]
        # before_action :admin_only, except: [:index, :show]
        #above is broken fix it 
      
        def index
          @hostels = Hostel.all
        end
      
        def new
          @hostel = Hostel.new
        end
      
        def create
          @hostel = Hostel.create(hostel_params)
          if @hostel.valid?
            redirect_to hostel_path(@hostel), notice: 'Hostel was successfully created.'
          else
            render :new
          end
        end
      
        def show
        end
      
        def edit
        end
      
        def update
          @hostel.update(hostel_params)
    
          if @hostel.save
            #checks if valid and then saves
          # if @attraction.valid?
          #   @attraction.save
            redirect_to hostel_path(@hostel), notice: 'Hostel was successfully updated.'
          else
            render :edit
          end
        end
    
        def destroy
          @hostel.destroy
          redirect_to hostels_path
        end
      
        private
        def set_hostel
          @hostel = Hostel.find_by(id: params[:id])
          #would usually be in the update action with below
          #   @attraction.assign_attributes(attraction_params)
        end
      
        def hostel_params
          params.require(:hostel).permit(:location, :beds, :satisfaction_rating)
        end
      end
    