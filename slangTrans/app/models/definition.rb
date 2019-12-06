class Definition < ApplicationRecord
  belongs_to :slang
  validates :meaning, presence: true
  validates :language, presence: true

  # def edit
  #    find_definition
  # end 

  # def update
  #   find_definition
  #   @definition.update(definition_params)
  #   @definition.save

  # end 

  # private
  # def definition_params
  #   params.require(:definition).permit(:title, :url)
  # end 

  # def find_definition
  #     @definition = Definition.find(params[:id])
  # end 
end
