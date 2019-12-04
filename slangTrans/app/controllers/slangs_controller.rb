class SlangsController < ApplicationController
    def index
        @slangs = Slang.all
    end 

    

    def new
    end 

    def create
        @slang = Slang.create(slang_params)
        redirect_to slang_path(@slang)
    end 

    def edit
        find_slang
        
        
    end 

    def update
        find_slang
       
        @slang.update(slang_params)
        
     
        redirect_to slang_path(@slang)
    end 

    def destroy
        slang_params
        @slang.destroy
        redirect_to slangs_path
    end 

    def show
        find_slang
    end 

    private
    def slang_params
        params.require(:slang).permit(:phrase, :user_id, :origin, definition_ids:[], definitions_attributes: [:meaning])
    end 

    def find_slang
        @slang=Slang.find(params[:id])
    end 

   
end
