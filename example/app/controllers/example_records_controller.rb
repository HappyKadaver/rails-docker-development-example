class ExampleRecordsController < ApplicationController
  before_action :set_example_record, only: %i[ show edit update destroy ]

  # GET /example_records or /example_records.json
  def index
    @example_records = ExampleRecord.all
  end

  # GET /example_records/1 or /example_records/1.json
  def show
  end

  # GET /example_records/new
  def new
    @example_record = ExampleRecord.new
  end

  # GET /example_records/1/edit
  def edit
  end

  # POST /example_records or /example_records.json
  def create
    @example_record = ExampleRecord.new(example_record_params)

    respond_to do |format|
      if @example_record.save
        format.html { redirect_to @example_record, notice: "Example record was successfully created." }
        format.json { render :show, status: :created, location: @example_record }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @example_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /example_records/1 or /example_records/1.json
  def update
    respond_to do |format|
      if @example_record.update(example_record_params)
        format.html { redirect_to @example_record, notice: "Example record was successfully updated." }
        format.json { render :show, status: :ok, location: @example_record }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @example_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /example_records/1 or /example_records/1.json
  def destroy
    @example_record.destroy
    respond_to do |format|
      format.html { redirect_to example_records_url, notice: "Example record was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_example_record
      @example_record = ExampleRecord.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def example_record_params
      params.require(:example_record).permit(:foo)
    end
end
