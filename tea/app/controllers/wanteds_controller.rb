class WantedsController < ApplicationController
  # GET /wanteds
  # GET /wanteds.json
  def index
    @wanteds = Wanted.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @wanteds }
    end
  end

  # GET /wanteds/1
  # GET /wanteds/1.json
  def show
    @wanted = Wanted.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @wanted }
    end
  end

  # GET /wanteds/new
  # GET /wanteds/new.json
  def new
    @wanted = Wanted.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @wanted }
    end
  end

  # GET /wanteds/1/edit
  def edit
    @wanted = Wanted.find(params[:id])
  end

  # POST /wanteds
  # POST /wanteds.json
  def create
    @wanted = Wanted.new(params[:wanted])

    respond_to do |format|
      if @wanted.save
        format.html { redirect_to @wanted, notice: 'Wanted was successfully created.' }
        format.json { render json: @wanted, status: :created, location: @wanted }
      else
        format.html { render action: "new" }
        format.json { render json: @wanted.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /wanteds/1
  # PUT /wanteds/1.json
  def update
    @wanted = Wanted.find(params[:id])

    respond_to do |format|
      if @wanted.update_attributes(params[:wanted])
        format.html { redirect_to @wanted, notice: 'Wanted was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @wanted.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wanteds/1
  # DELETE /wanteds/1.json
  def destroy
    @wanted = Wanted.find(params[:id])
    @wanted.destroy

    respond_to do |format|
      format.html { redirect_to wanteds_url }
      format.json { head :no_content }
    end
  end
end

