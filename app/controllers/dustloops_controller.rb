class DustloopsController < ApplicationController
  before_action :set_dustloop, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :correct_user, only: [:edit, :update, :destroy]
  # GET /dustloops or /dustloops.json
  def index
    @q = Dustloop.ransack(params[:q])
    @dustloops = @q.result.all.page(params[:page]).per(9)
  end

  # GET /dustloops/1 or /dustloops/1.json
  def show
  end

  # GET /dustloops/new
  def new
    # @dustloop = dustloop.new
    @dustloop = current_user.dustloops.build
  end

  # GET /dustloops/1/edit
  def edit
  end

  # POST /dustloops or /dustloops.json
  def create
    # @dustloop = dustloop.new(dustloop_params)
    @dustloop = current_user.dustloops.build(dustloop_params)
    respond_to do |format|
      if @dustloop.save
        format.html { redirect_to dustloop_url(@dustloop), notice: "dustloop was successfully created." }
        format.json { render :show, status: :created, location: @dustloop }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dustloop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dustloops/1 or /dustloops/1.json
  def update
    respond_to do |format|
      if @dustloop.update(dustloop_params)
        format.html { redirect_to dustloop_url(@dustloop), notice: "dustloop was successfully updated." }
        format.json { render :show, status: :ok, location: @dustloop }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dustloop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dustloops/1 or /dustloops/1.json
  def destroy
    @dustloop.destroy

    respond_to do |format|
      format.html { redirect_to dustloops_url, notice: "dustloop was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def correct_user
    @dustloop = current_user.dustloops.find_by(id: params[:id])
    redirect_to dustloops_path, notice: "Not Authorized to Edit This dustloop" if @dustloop.nil?
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dustloop
      @dustloop = Dustloop.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dustloop_params
      params.require(:dustloop).permit(:producer, :original_source, :current_source, :og_sample, :current_sample, :user_id)
    end
end
