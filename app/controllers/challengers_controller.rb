class ChallengersController < ApplicationController
	def index
			@challengers = Challenger.all
		end

		def new
			@new_challenger = Challenger.new
			@new_challenger.challenges.build
		end

		def create
			@new_challenger = Challenger.new(challenger_params)
			if @new_challenger.save
				
				redirect_to challengers_path
			else
				redirect_to new_challenger_path
			end
		end

		def show
			@challenger = Challenger.find(params[:id])
			@post_id = @challenger.id
			@posts = Post.where('challenger_id = ?' , @post_id)
		end

		def edit
			@challenger = Challenger.find(params[:id])
		end

		def update
			@challenger =Challenger.find(params[:id])
			if @challenger.update_attributes(challenger_params)
				redirect_to challengers_path
			else
				redirect_to edit_challengers_path
			end
		end

		def destroy
			@challenger =Challenger.find(params[:id])
			@challenger.delete
				redirect_to challengers_path
		end

	private

		def challenger_params
			params.require(:challenger).permit(:username, :password, :name, :email, :interests,  challenges_attributes: [:title, :description, :start_date, :end_date, :interests])
		
		end


	end

