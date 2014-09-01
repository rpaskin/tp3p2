class StatiscsController < ApplicationController
  before_action :set_statisc, only: [:show, :edit, :update, :destroy]

  # GET /statiscs
  # GET /statiscs.json
  def initialize()
    super
    puts self.inspect
    self.max = self.sequence.split.max
    # @max = sequence.split.max
    # @min = sequence.split.min
    # @sum = sequence.split.collect{|i| i.to_i}.sum
    # @avg = sum/sequence.split.size
    # @lastName = author.split.last
    # @statisc = Statisc.new(label, sequence)
  end

  def index
    @statiscs = Statisc.all
  end

  # GET /statiscs/1
  # GET /statiscs/1.json
  def show
  end

  # GET /statiscs/new
  def new
    @statisc = Statisc.new
    super
    puts @statiscs.inspect
    @statiscs.max = @statiscs.sequence.split.max
  end

  # GET /statiscs/1/edit
  def edit
  end

  # POST /statiscs
  # POST /statiscs.json
  def create
    @statisc = Statisc.new(statisc_params)

    respond_to do |format|
      if @statisc.save
        format.html { redirect_to @statisc, notice: 'Statisc was successfully created.' }
        format.json { render :show, status: :created, location: @statisc }
      else
        format.html { render :new }
        format.json { render json: @statisc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /statiscs/1
  # PATCH/PUT /statiscs/1.json
  def update
    respond_to do |format|
      if @statisc.update(statisc_params)
        format.html { redirect_to @statisc, notice: 'Statisc was successfully updated.' }
        format.json { render :show, status: :ok, location: @statisc }
      else
        format.html { render :edit }
        format.json { render json: @statisc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /statiscs/1
  # DELETE /statiscs/1.json
  def destroy
    @statisc.destroy
    respond_to do |format|
      format.html { redirect_to statiscs_url, notice: 'Statisc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_statisc
      @statisc = Statisc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def statisc_params
      params.require(:statisc).permit(:label, :sequence, :author)
    end
end
