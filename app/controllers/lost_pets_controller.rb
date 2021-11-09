class LostPetsController < ApplicationController

    before_action :set_lost_pet, only: [:show, :edit, :update, :destroy]

    def index

        @lost_pets = LostPet.all
    end

    def show
        
    end

    def new
        @lost_pet = LostPet.new()        
    end

    def create
        @lost_pet = LostPet.new(pets_params)
        
        if @lost_pet.save
            redirect_to lost_pets_path
        else 
            render :new
        end   

    end

    
    def edit
                
    end

    def update
        
        if @lost_pet.update(pets_params)
            redirect_to lost_pets_path
        else 
            render :edit
        end   

    end

    def destroy
        
        @lost_pet.destroy
        
        redirect_to lost_pets_path
    end

    private

    def pets_params
        params.require(:lost_pet).permit(:name, :address, :found_on, :species)
    end

    def set_lost_pet
        @lost_pet = LostPet.find(params[:id])

    end
end
