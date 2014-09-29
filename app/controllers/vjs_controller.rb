class VjsController < ApplicationController
  # GET /vjs
  # GET /vjs.json
  def index
    @sai = Vj.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @vjs }
    end
  end

  # GET /vjs/1
  # GET /vjs/1.json
  def show
    @vj = Vj.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @vj }
    end
  end

  # GET /vjs/new
  # GET /vjs/new.json
  def new
    @vj = Vj.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @vj }
    end
  end

  # GET /vjs/1/edit
  def edit
    @vj = Vj.find(params[:id])
  end

  # POST /vjs
  # POST /vjs.json
  def create
    @vj = Vj.new(params[:vj])

    respond_to do |format|
      if @vj.save
        format.html { redirect_to @vj, notice: 'Vj was successfully created.' }
        format.json { render json: @vj, status: :created, location: @vj }
      else
        format.html { render action: "new" }
        format.json { render json: @vj.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /vjs/1
  # PUT /vjs/1.json
  def update
    @vj = Vj.find(params[:id])

    respond_to do |format|
      if @vj.update_attributes(params[:vj])
        format.html { redirect_to @vj, notice: 'Vj was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @vj.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vjs/1
  # DELETE /vjs/1.json
  def destroy
    @vj = Vj.find(params[:id])
    @vj.destroy

    respond_to do |format|
      format.html { redirect_to vjs_url }
      format.json { head :no_content }
    end
  end
end
