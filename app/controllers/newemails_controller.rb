class NewemailsController < ApplicationController
  before_action :set_newemail, only: [:show, :edit, :update, :destroy]

  # GET /newemails
  # GET /newemails.json
  def index
    @newemails = Newemail.all
  end

  # GET /newemails/1
  # GET /newemails/1.json
  def show
  end

  # GET /newemails/new
  def new
    @newemail = Newemail.new
  end

  # GET /newemails/1/edit
  def edit
  end

  # POST /newemails
  # POST /newemails.json
  def create
    @newemail = Newemail.new(newemail_params)

    respond_to do |format|
      if @newemail.save
        format.html { redirect_to @newemail, notice: 'Newemail was successfully created.' }
        format.json { render :show, status: :created, location: @newemail }
      else
        format.html { render :new }
        format.json { render json: @newemail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /newemails/1
  # PATCH/PUT /newemails/1.json
  def update
    respond_to do |format|
      if @newemail.update(newemail_params)
        format.html { redirect_to @newemail, notice: 'Newemail was successfully updated.' }
        format.json { render :show, status: :ok, location: @newemail }
      else
        format.html { render :edit }
        format.json { render json: @newemail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /newemails/1
  # DELETE /newemails/1.json
  def destroy
    @newemail.destroy
    respond_to do |format|
      format.html { redirect_to newemails_url, notice: 'Newemail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_newemail
      @newemail = Newemail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def newemail_params
      params.require(:newemail).permit(:name, :email, :login)
    end
end
