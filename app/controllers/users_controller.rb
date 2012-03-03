class UsersController < ApplicationController
  # GET /users
  # GET /users.json
  def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @users }
    end
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @user }
    end
  end

  # GET /users/new
  # GET /users/new.json
  def new
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @user }
    end
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(params[:user])
    @user.referral_code = generate_referral_code
    if !@user.referred_by_code.empty?
      @referred_by_user = User.find_by_referral_code(@user.referred_by_code)
      if !@referred_by_user.nil?
        @user.referred_by_user = @referred_by_user
        @referred_by_user.referred_users << @user
        @referred_by_user.save!
        @a_referral = MyReferral.new
        puts "my referral  - "
        @user.my_referral_object = @a_referral
      end
    end
    puts "i am  here"
    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, :notice => 'User was successfully created.' }
        format.json { render :json => @user, :status => :created, :location => @user }
      else
        format.html { render :action => "new" }
        format.json { render :json => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /users/1
  # PUT /users/1.json
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to @user, :notice => 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end

  def generate_referral_code(length = 5, non_ambiguous = false)
      characters = ('a'..'z').to_a + ('A'..'Z').to_a + ('0'..'9').to_a

      %w{I O l 0 1}.each{ |ambiguous_character|
        characters.delete ambiguous_character
      } if non_ambiguous

      (0...length).map{
        characters[SecureRandom.random_number(characters.size)]
      }.join
  end

end
