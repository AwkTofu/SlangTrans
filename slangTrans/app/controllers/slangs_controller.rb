class SlangsController < ApplicationController
    
    
    def index
        @slangs = Slang.all
    end 

    

    def new
        @slang = Slang.new
        3.times{@slang.definitions.build}
    end 

    def create
        all_params = slang_params
        all_params[:user] = User.find(session[:user_id])
        
        @slang = Slang.create(all_params)
        if @slang.save        
        redirect_to slang_path(@slang)
        else  
            flash[:errors]=@slang.errors.full_messages
            render :new
        end 
    end 

    def edit
        find_slang
        2.times{@slang.definitions.build}
        
    end 

    def update
        find_slang
       
        @slang.update(slang_params)
        
     
        redirect_to slang_path(@slang)
    end 

    def destroy
        find_slang
        @slang.destroy
        redirect_to slangs_path
    end 

    
    def search
       
        @results = Slang.all.where('phrase LIKE ?', "%#{params[:search]}%")

    end 
    
    def show
        find_slang
    end 

    

    private
    def slang_params
     
        params.require(:slang).permit(:phrase, :origin, definitions_attributes: [:id, :meaning, :language, :_destroy])
    end 

    def find_slang
        @slang=Slang.find_by(id: params[:id])
    end 

   
end
