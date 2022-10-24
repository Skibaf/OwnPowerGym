class SchedulesController < ApplicationController

    before_action :set_schedule, only: [:show, :edit, :update, :destroy]
   

    

    # GET /lessons or /lessons.json
    def index
    @schedules = Schedule.all
    end

  # GET /lessons/1 or /lessons/1.json
    def show
    end

    def new
    @schedule = Schedule.new
    end
   # GET /lessons/1/edit
  def edit
  end
    def create
        
        @schedule = Schedule.create(schedule_params)
        redirect_to schedules_path
      end
     
      private
       

      def set_schedule
        @schedule = Schedule.find(params[:id])
      end
  
      def set_lesson
        @lesson = Lesson.find(params[:lesson_id])
      end

        def schedule_params
          params.require(:schedule).permit(:fecha, :hora, :status, :lesson_id)
        end
end
