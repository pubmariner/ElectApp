class ElectsController < ApplicationController
  before_action :set_elect, only: %i[ show edit update destroy ]

  # GET /elects or /elects.json
  def index
    @elects = Elect.all
  end

  # GET /elects/1 or /elects/1.json
  def show
  end

  # GET /elects/new
  def new
    @elect = Elect.new
  end

  # GET /elects/1/edit
  def edit
  end

  # POST /elects or /elects.json
  def create
    @elect = Elect.new(elect_params)

    respond_to do |format|
      if @elect.save
        format.html { redirect_to elect_url(@elect), notice: "Elect was successfully created." }
        format.json { render :show, status: :created, location: @elect }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @elect.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /elects/1 or /elects/1.json
  def update
    respond_to do |format|
      if @elect.update(elect_params)
        format.html { redirect_to elect_url(@elect), notice: "Elect was successfully updated." }
        format.json { render :show, status: :ok, location: @elect }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @elect.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /elects/1 or /elects/1.json
  def destroy
    @elect.destroy

    respond_to do |format|
      format.html { redirect_to elects_url, notice: "Elect was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_elect
      @elect = Elect.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def elect_params
      params.require(:elect).permit(:name, :facts)
    end
end
