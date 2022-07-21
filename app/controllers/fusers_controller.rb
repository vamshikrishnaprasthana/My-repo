class FusersController < ApplicationController
  before_action :set_fuser, only: %i[ show edit update destroy ]

  # GET /fusers or /fusers.json
  def index
    @fusers = Fuser.all
  end

  # GET /fusers/1 or /fusers/1.json
  def show
  end

  # GET /fusers/new
  def new
    @fuser = Fuser.new
  end

  # GET /fusers/1/edit
  def edit
  end

  # POST /fusers or /fusers.json
  def create
    @fuser = Fuser.new(fuser_params)

    respond_to do |format|
      if @fuser.save
        format.html { redirect_to fuser_url(@fuser), notice: "Fuser was successfully created." }
        format.json { render :show, status: :created, location: @fuser }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @fuser.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fusers/1 or /fusers/1.json
  def update
    respond_to do |format|
      if @fuser.update(fuser_params)
        format.html { redirect_to fuser_url(@fuser), notice: "Fuser was successfully updated." }
        format.json { render :show, status: :ok, location: @fuser }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @fuser.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fusers/1 or /fusers/1.json
  def destroy
    @fuser.destroy

    respond_to do |format|
      format.html { redirect_to fusers_url, notice: "Fuser was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fuser
      @fuser = Fuser.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fuser_params
      params.require(:fuser).permit(:first_name, :last_name, :age, :mobile)
    end
end
