class OutsidesController < ApplicationController
  before_action :set_outside, only: [:show, :edit, :update, :destroy]

  # GET /outsides
  # GET /outsides.json
  def index
    @outsides = Outside.all
  end

  # GET /outsides/1
  # GET /outsides/1.json
  def show
  end

  # GET /outsides/new
  def new
    @outside = Outside.new
  end

  # GET /outsides/1/edit
  def edit
  end

  # POST /outsides
  # POST /outsides.json
  def create
    @outside = Outside.new(outside_params)

    respond_to do |format|
      if @outside.save
        format.html { redirect_to @outside, notice: 'Outside was successfully created.' }
        format.json { render :show, status: :created, location: @outside }
      else
        format.html { render :new }
        format.json { render json: @outside.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /outsides/1
  # PATCH/PUT /outsides/1.json
  def update
    respond_to do |format|
      if @outside.update(outside_params)
        format.html { redirect_to @outside, notice: 'Outside was successfully updated.' }
        format.json { render :show, status: :ok, location: @outside }
      else
        format.html { render :edit }
        format.json { render json: @outside.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /outsides/1
  # DELETE /outsides/1.json
  def destroy
    @outside.destroy
    respond_to do |format|
      format.html { redirect_to outsides_url, notice: 'Outside was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_outside
      @outside = Outside.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def outside_params
      params.fetch(:outside, {})
    end
end
