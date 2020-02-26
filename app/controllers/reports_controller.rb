class ReportsController < ApplicationController
  before_action :set_report, only: [:show, :edit, :update, :destroy]

  # POST /reports
  def create
    @report = Report.new(report_params)

    respond_to do |format|
      if @report.save
        format.json { render json: @report }
      else
        format.json { render json: @report.errors, status: :unprocessable_entity }
      end
    end
  end


  private
    def report_params
      params.permit(:user_id, :comment_id)
    end
end
