class CalendarActionsController < ApplicationController
	before_action :authenticate_user!

	def index
		@calendar_actions = CalendarAction.all
	end

	def all
		@calendar_actions = CalendarAction.all
	end

	def show
		@calendar_action = CalendarAction.find(params[:id])
	end

	def new
		@calendar_action = CalendarAction.new
	end

	def edit
		@calendar_action = CalendarAction.find(params[:id])
	end

	def create
		@calendar_action = CalendarAction.new(calendar_action_params)
 
  		if @calendar_action.save
  			redirect_to @calendar_action
  		else
  			render 'new'
		end
	end

	def update
		@calendar_action = CalendarAction.find(params[:id])

		if @calendar_action.update(calendar_action_params)
			redirect_to @calendar_action
		else
			render 'edit'
		end
	end

	def destroy
		@calendar_action = CalendarAction.find(params[:id])
		@calendar_action.destroy

		redirect_to calendar_actions_path
	end

	private

		def calendar_action_params
			params.require(:calendar_action).permit(:title, :description, :start_date, :end_date)
		end
end
