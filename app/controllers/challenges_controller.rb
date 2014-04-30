class ChallengesController < ApplicationController
  


  def index
    @challenges = Challenge.all
  end


  def show
    @challenge = Challenge.find(params[:id])
  end

  
  def new
    @new_challenge = Challenge.new
  end

  
  def edit
    @challenge = Challenge.find(params[:id])
  end

  
  def create
    @new_challenge = Challenge.new(challenge_params)
    if @new_challenge.save
        redirect_to challenges_path
      else
        redirect_to new_challenge_path
      end

    
  end

  def update
    @challenge =Challenge.find(params[:id])
      if @challenge.update_attributes(challenge_params)
        redirect_to challenges_path
      else
        redirect_to edit_challenges_path
      end
  end


  def destroy
    @challenge =Challenge.find(params[:id])
    @challenge.destroy
    redirect_to challenges_path
   
    
  end

  private
   

    # Never trust parameters from the scary internet, only allow the white list through.
    def challenge_params
      params[:challenge].permit!
    end
end
