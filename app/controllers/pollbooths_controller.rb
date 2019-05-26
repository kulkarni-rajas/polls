class PollboothsController < ApplicationController
  before_action :set_pollbooth, only: [:show, :edit, :update, :destroy]

  # GET /pollbooths
  # GET /pollbooths.json
  def index
    @pollbooths = Pollbooth.all
  end

  # GET /pollbooths/1
  # GET /pollbooths/1.json
  def show
  end

  # GET /pollbooths/new
  def new
    @pollbooth = Pollbooth.new
  end

  # GET /pollbooths/1/edit
  def edit
  end

  # POST /pollbooths
  # POST /pollbooths.json
  def create
    @pollbooth = Pollbooth.new(pollbooth_params)

    respond_to do |format|
      if @pollbooth.save
        format.html { redirect_to @pollbooth, notice: 'Pollbooth was successfully created.' }
        format.json { render :show, status: :created, location: @pollbooth }
      else
        format.html { render :new }
        format.json { render json: @pollbooth.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pollbooths/1
  # PATCH/PUT /pollbooths/1.json
  def update
    respond_to do |format|
      if @pollbooth.update(pollbooth_params)
        format.html { redirect_to @pollbooth, notice: 'Pollbooth was successfully updated.' }
        format.json { render :show, status: :ok, location: @pollbooth }
      else
        format.html { render :edit }
        format.json { render json: @pollbooth.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pollbooths/1
  # DELETE /pollbooths/1.json
  def destroy
    @pollbooth.destroy
    respond_to do |format|
      format.html { redirect_to pollbooths_url, notice: 'Pollbooth was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pollbooth
      @pollbooth = Pollbooth.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pollbooth_params
      params.require(:pollbooth).permit(:email, :answer)
    end
end
