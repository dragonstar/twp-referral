class ReferralManagementsController < ApplicationController
  # GET /referral_managements
  # GET /referral_managements.json
  def index
    @referral_managements = ReferralManagement.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @referral_managements }
    end
  end

  # GET /referral_managements/1
  # GET /referral_managements/1.json
  def show
    @referral_management = ReferralManagement.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @referral_management }
    end
  end

  # GET /referral_managements/new
  # GET /referral_managements/new.json
  def new
    @referral_management = ReferralManagement.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @referral_management }
    end
  end

  # GET /referral_managements/1/edit
  def edit
    @referral_management = ReferralManagement.find(params[:id])
  end

  # POST /referral_managements
  # POST /referral_managements.json
  def create
    @referral_management = ReferralManagement.new(params[:referral_management])

    respond_to do |format|
      if @referral_management.save
        format.html { redirect_to @referral_management, :notice => 'Referral management was successfully created.' }
        format.json { render :json => @referral_management, :status => :created, :location => @referral_management }
      else
        format.html { render :action => "new" }
        format.json { render :json => @referral_management.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /referral_managements/1
  # PUT /referral_managements/1.json
  def update
    @referral_management = ReferralManagement.find(params[:id])

    respond_to do |format|
      if @referral_management.update_attributes(params[:referral_management])
        format.html { redirect_to @referral_management, :notice => 'Referral management was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @referral_management.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /referral_managements/1
  # DELETE /referral_managements/1.json
  def destroy
    @referral_management = ReferralManagement.find(params[:id])
    @referral_management.destroy

    respond_to do |format|
      format.html { redirect_to referral_managements_url }
      format.json { head :no_content }
    end
  end
end
