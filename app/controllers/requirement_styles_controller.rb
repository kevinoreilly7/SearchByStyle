class RequirementStylesController < ApplicationController
  # GET /requirement_styles
  # GET /requirement_styles.json
  def index
    @requirement_styles = RequirementStyle.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @requirement_styles }
    end
  end

  # GET /requirement_styles/1
  # GET /requirement_styles/1.json
  def show
    @requirement_style = RequirementStyle.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @requirement_style }
    end
  end

  # GET /requirement_styles/new
  # GET /requirement_styles/new.json
  def new
    @requirement_style = RequirementStyle.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @requirement_style }
    end
  end

  # GET /requirement_styles/1/edit
  def edit
    @requirement_style = RequirementStyle.find(params[:id])
  end

  # POST /requirement_styles
  # POST /requirement_styles.json
  def create
    @requirement_style = RequirementStyle.new(params[:requirement_style])

    respond_to do |format|
      if @requirement_style.save
        format.html { redirect_to @requirement_style, notice: 'Requirement style was successfully created.' }
        format.json { render json: @requirement_style, status: :created, location: @requirement_style }
      else
        format.html { render action: "new" }
        format.json { render json: @requirement_style.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /requirement_styles/1
  # PUT /requirement_styles/1.json
  def update
    @requirement_style = RequirementStyle.find(params[:id])

    respond_to do |format|
      if @requirement_style.update_attributes(params[:requirement_style])
        format.html { redirect_to @requirement_style, notice: 'Requirement style was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @requirement_style.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /requirement_styles/1
  # DELETE /requirement_styles/1.json
  def destroy
    @requirement_style = RequirementStyle.find(params[:id])
    @requirement_style.destroy

    respond_to do |format|
      format.html { redirect_to requirement_styles_url }
      format.json { head :no_content }
    end
  end
end
