class SlangsController < ApplicationController
    def index
        @slangs = Slang.all
    end 

    

    def new
        @slang = Slang.new
    end 

    def create
      
       
        @slang = Slang.create(slang_params, user: User.first)
        
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
     
        params.require(:slang).permit(:phrase, :origin, definitions_attributes:[:id, :meaning, :language])
    end 

    def find_slang
        @slang=Slang.find(params[:id])
    end 

   
end
