class PtermsController < ApplicationController
  before_action :set_pterm, only: %i[ show edit update destroy ]

  # GET /pterms or /pterms.json
  def index
    @pterms = Pterm.all
  end

  # GET /pterms/1 or /pterms/1.json
  def show
  end

  # GET /pterms/new
  def new
    @pterm = Pterm.new
  end

  # GET /pterms/1/edit
  def edit
  end

  # POST /pterms or /pterms.json
  def create
    @pterm = Pterm.new(pterm_params)

    respond_to do |format|
      if @pterm.save
        format.html { redirect_to pterm_url(@pterm), notice: "Pterm was successfully created." }
        format.json { render :show, status: :created, location: @pterm }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pterm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pterms/1 or /pterms/1.json
  def update
    respond_to do |format|
      if @pterm.update(pterm_params)
        format.html { redirect_to pterm_url(@pterm), notice: "Pterm was successfully updated." }
        format.json { render :show, status: :ok, location: @pterm }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pterm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pterms/1 or /pterms/1.json
  def destroy
    @pterm.destroy

    respond_to do |format|
      format.html { redirect_to pterms_url, notice: "Pterm was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pterm
      @pterm = Pterm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pterm_params
      params.require(:pterm).permit(:pterm)
    end
end
