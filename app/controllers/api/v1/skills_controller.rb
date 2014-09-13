module Api
  module V1
    class SkillsController < ApplicationController
      before_action :set_skill, only: [:show, :edit, :update, :destroy]

      # GET /skills
      # GET /skills.json
      def index
        @skills = Profil.find(params[:user_id]).skills
        render json: @skills
      end

      # GET /skills/new
      def new
        @skill = Skill.new
      end

      # POST /skills
      # POST /skills.json
      def create
        @skill = Skill.new(skill_params)

        respond_to do |format|
          if @skill.save
            format.html { redirect_to @skill, notice: 'Skill was successfully created.' }
            format.json { render :show, status: :created, location: @skill }
          else
            format.html { render :new }
            format.json { render json: @skill.errors, status: :unprocessable_entity }
          end
        end
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_skill
          @skill = Skill.find(params[:id])
        end

        # Never trust parameters from the scary internet, only allow the white list through.
        def skill_params
          params[:skill]
        end
    end
  end 
end