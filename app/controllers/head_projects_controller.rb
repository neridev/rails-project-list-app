class HeadProjectsController < ApplicationController
  before_action :set_head_project, only: %i[ show edit update destroy ]

  # GET /head_projects or /head_projects.json
  def index
    @head_projects = HeadProject.all
  end

  # GET /head_projects/1 or /head_projects/1.json
  def show
  end

  # GET /head_projects/new
  def new
    @head_project = HeadProject.new
  end

  # GET /head_projects/1/edit
  def edit
  end

  # POST /head_projects or /head_projects.json
  def create
    @head_project = HeadProject.new(head_project_params)

    respond_to do |format|
      if @head_project.save
        format.html { redirect_to head_project_url(@head_project), notice: "Head project was successfully created." }
        format.json { render :show, status: :created, location: @head_project }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @head_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /head_projects/1 or /head_projects/1.json
  def update
    respond_to do |format|
      if @head_project.update(head_project_params)
        format.html { redirect_to head_project_url(@head_project), notice: "Head project was successfully updated." }
        format.json { render :show, status: :ok, location: @head_project }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @head_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /head_projects/1 or /head_projects/1.json
  def destroy
    @head_project.destroy!

    respond_to do |format|
      format.html { redirect_to head_projects_url, notice: "Head project was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_head_project
      @head_project = HeadProject.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def head_project_params
      params.require(:head_project).permit(:head_id, :project_id)
    end
end
