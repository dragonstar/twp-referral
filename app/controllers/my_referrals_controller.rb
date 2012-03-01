class MyReferralsController < ApplicationController
  # GET /my_referrals
  # GET /my_referrals.json
  def index
    @my_referrals = MyReferral.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @my_referrals }
    end
  end

  # GET /my_referrals/1
  # GET /my_referrals/1.json
  def show
    @my_referral = MyReferral.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @my_referral }
    end
  end

  # GET /my_referrals/new
  # GET /my_referrals/new.json
  def new
    @my_referral = MyReferral.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @my_referral }
    end
  end

  # GET /my_referrals/1/edit
  def edit
    @my_referral = MyReferral.find(params[:id])
  end

  # POST /my_referrals
  # POST /my_referrals.json
  def create
    @my_referral = MyReferral.new(params[:my_referral])

    respond_to do |format|
      if @my_referral.save
        format.html { redirect_to @my_referral, :notice => 'My referral was successfully created.' }
        format.json { render :json => @my_referral, :status => :created, :location => @my_referral }
      else
        format.html { render :action => "new" }
        format.json { render :json => @my_referral.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /my_referrals/1
  # PUT /my_referrals/1.json
  def update
    @my_referral = MyReferral.find(params[:id])

    respond_to do |format|
      if @my_referral.update_attributes(params[:my_referral])
        format.html { redirect_to @my_referral, :notice => 'My referral was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @my_referral.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /my_referrals/1
  # DELETE /my_referrals/1.json
  def destroy
    @my_referral = MyReferral.find(params[:id])
    @my_referral.destroy

    respond_to do |format|
      format.html { redirect_to my_referrals_url }
      format.json { head :no_content }
    end
  end


end
