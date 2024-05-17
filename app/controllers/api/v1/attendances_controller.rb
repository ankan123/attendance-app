module Api
    module V1
      class AttendancesController < ApplicationController
        skip_before_action :verify_authenticity_token

        before_action :set_user
        before_action :set_attendance, only: [:show, :update, :destroy]
  
        def index
          @attendances = @user.attendances
          render json: @attendances
        end
  
        def show
          render json: @attendance
        end
  
        def create
          @attendance = @user.attendances.new(attendance_params)
          if @attendance.save
            render json: @attendance, status: :created
          else
            render json: @attendance.errors, status: :unprocessable_entity
          end
        end
  
        def update
          if @attendance.update(attendance_params)
            render json: @attendance
          else
            render json: @attendance.errors, status: :unprocessable_entity
          end
        end
  
        def destroy
          @attendance.destroy
        end
  
        private
  
        def set_user
          @user = User.find(params[:user_id])
        end
  
        def set_attendance
          @attendance = @user.attendances.find(params[:id])
        end
  
        def attendance_params
          params.require(:attendance).permit(:date, :status, :checkin, :checkout)
        end
      end
    end
  end
  