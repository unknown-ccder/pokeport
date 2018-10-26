class PokemonsController < ApplicationController
	def capture 
		p = Pokemon.find(params[:id])
		p.trainer_id = current_trainer.id
        p.save
        redirect_to root_path
	end

	def damage
		h = Pokemon.find(params[:id])
		h.health -= 10
		if h.health <=0
			h.destroy
		else
			h.save
		end
		redirect_back fallback_location: root_path

	end

	  def new
		@pokemon = Pokemon.new
	end

	def create
		@pokemon = Pokemon.create(pokemons_params)
		@pokemon.level = 1
		@pokemon.health = 100
		@pokemon.trainer = current_trainer
        

		if @pokemon.save
			flash[:notice] = "New Pokemon Successfully Created!"
			redirect_to @pokemon.trainer
		else
			flash[:error] = @pokemon.errors.full_messages.to_sentence
			render "pokemons/new"
		end
	end

	  private

	def pokemons_params
		params.require(:pokemon).permit(:name, :ndex)
	end
end
