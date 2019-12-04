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
        mandarin_one
        english_one
        german_one
        
    end 

    def update
        find_slang
        mandarin_one
        english_one
        german_one
        @slang.update(slang_params)
        @mandarin.update(params)
        @english.update(params)
        @german.update(params)
     
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
        params.require(:slang).permit(:phrase, :origin)
    end 

    def find_slang
        @slang=Slang.find(params[:id])
    end 

    def mandarin_one
        find_slang
        @mandarin = @slang.definitions.find_by(language: 'mandarin')
    end 

    def english_one
        find_slang
        @english = @slang.definitions.find_by(language: 'english')
    end 
    
    def german_one
        find_slang
        @german = @slang.definitions.find_by(language: 'german')
    end 

end
