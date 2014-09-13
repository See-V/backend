module Api
  module V1

    class ProfilController < ApplicationController
      before_action :set_profil, only: [:show, :edit, :update, :destroy]

      # GET /profils
      # GET /profils.json
      def index
        @profil = Profil.find(params[:user_id])
        render json: @profil
      end

      # POST /profils
      # POST /profils.json
      def create
        @profil = Profil.new(profil_params)
        respond_to do |format|
          if @profil.save
            format.html { redirect_to @profil, notice: 'Profil was successfully created.' }
            format.json { render :show, status: :created, location: @profil }
          else
            format.html { render :new }
            format.json { render json: @profil.errors, status: :unprocessable_entity }
          end
        end
      end

      

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_profil
          @profil = Profil.find(params[:id])
        end

        # Never trust parameters from the scary internet, only allow the white list through.
        def profil_params
          params[:profil]
        end
    end
  end
end