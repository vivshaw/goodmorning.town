class GreetingsController < ApplicationController
  before_action :set_greeting, only: %i[ show ]

  # GET /greetings
  def index
    @greetings = Greeting.last(10).reverse
  end

  # GET /greetings/new
  def new
    @greeting = Greeting.new
  end

  # GET /greetings/1
  def show
    @new_greeting = Greeting.new
  end

  # POST /greetings
  def create
    @greeting = Greeting.new()

    respond_to do |format|
      if @greeting.save
        format.turbo_stream { redirect_to @greeting, notice: "Greeting was successfully created." }
        format.html { redirect_to @greeting, notice: "Greeting was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /greetings/1
  def destroy
    @greeting = Greeting.find(params[:id])
    @greeting.destroy

    respond_to do |format|
      format.turbo_stream
      format.html { redirect_to greetings_url, notice: "Greeting was successfully destroyed." }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_greeting
      @greeting = Greeting.find(params[:id])
    end
end
