class ThenewsreportersController < ApplicationController
  layout 'mainfrontend'

  before_action :set_thenewsreporter, only: [:show, :edit, :update, :destroy]

  # GET /thenewsreporters
  # GET /thenewsreporters.json
  def index
    @thenewsreporters = Thenewsreporter.all
  end

  # GET /thenewsreporters/1
  # GET /thenewsreporters/1.json
  def show
  end

  # GET /thenewsreporters/new
  def new
    @thenewsreporter = Thenewsreporter.new
  end

  # GET /thenewsreporters/1/edit
  def edit
  end

  # POST /thenewsreporters
  # POST /thenewsreporters.json
  def create
    @thenewsreporter = Thenewsreporter.new(thenewsreporter_params)

    respond_to do |format|
      if @thenewsreporter.save
        format.html { redirect_to @thenewsreporter, notice: 'Thenewsreporter was successfully created.' }
        format.json { render :show, status: :created, location: @thenewsreporter }
      else
        format.html { render :new }
        format.json { render json: @thenewsreporter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /thenewsreporters/1
  # PATCH/PUT /thenewsreporters/1.json
  def update
    respond_to do |format|
      if @thenewsreporter.update(thenewsreporter_params)
        format.html { redirect_to @thenewsreporter, notice: 'Thenewsreporter was successfully updated.' }
        format.json { render :show, status: :ok, location: @thenewsreporter }
      else
        format.html { render :edit }
        format.json { render json: @thenewsreporter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /thenewsreporters/1
  # DELETE /thenewsreporters/1.json
  def destroy
    @thenewsreporter.destroy
    respond_to do |format|
      format.html { redirect_to thenewsreporters_url, notice: 'Thenewsreporter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thenewsreporter
      @thenewsreporter = Thenewsreporter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def thenewsreporter_params
      params.fetch(:thenewsreporter, {})
    end
end
