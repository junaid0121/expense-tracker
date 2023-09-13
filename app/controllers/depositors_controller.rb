class DepositorsController < ApplicationController
  before_action :set_depositor, only: %i[ show edit update destroy ]

  # GET /depositors or /depositors.json
  def index
    @depositors = Depositor.all
  end

  # GET /depositors/1 or /depositors/1.json
  def show
  end

  # GET /depositors/new
  def new
    @depositor = Depositor.new
  end

  # GET /depositors/1/edit
  def edit
  end

  # POST /depositors or /depositors.json
  def create
    @depositor = Depositor.new(depositor_params)

    respond_to do |format|
      if @depositor.save
        format.html { redirect_to budget_path(@depositor.budget), notice: "Depositor was successfully created." }
        format.json { render :show, status: :created, location: @depositor }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @depositor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /depositors/1 or /depositors/1.json
  def update
    respond_to do |format|
      if @depositor.update(depositor_params)
        format.html { redirect_to depositor_url(@depositor), notice: "Depositor was successfully updated." }
        format.json { render :show, status: :ok, location: @depositor }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @depositor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /depositors/1 or /depositors/1.json
  def destroy
    @depositor.destroy

    respond_to do |format|
      format.html { redirect_to budget_path(@depositor.budget), notice: "Depositor was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_depositor
      @depositor = Depositor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def depositor_params
      params.require(:depositor).permit(:name, :amount, :budget_id)
    end
end
