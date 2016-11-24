class PractitionerProfilesController < ApplicationController
  before_action :set_practitioner_profile, only: [:show, :edit, :update, :destroy]
  # skip_before_action :authenticate_user!


  # GET /practitioner_profiles
  # GET /practitioner_profiles.json
  def index
    @practitioner_profiles = PractitionerProfile.all
  end

  # GET /practitioner_profiles/1
  # GET /practitioner_profiles/1.json
  def show
  end

  # GET /practitioner_profiles/new
  def new
    @practitioner_profile = PractitionerProfile.new
  end

  # GET /practitioner_profiles/1/edit
  def edit
  end

  # POST /practitioner_profiles
  # POST /practitioner_profiles.json
  def create
    @practitioner_profile = PractitionerProfile.new(practitioner_profile_params)
    @practitioner_profile.user_id = current_user.id

    respond_to do |format|
      if @practitioner_profile.save
        format.html { redirect_to @practitioner_profile, notice: 'Practitioner profile was successfully created.' }
        format.json { render :show, status: :created, location: @practitioner_profile }
      else
        format.html { render :new }
        format.json { render json: @practitioner_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /practitioner_profiles/1
  # PATCH/PUT /practitioner_profiles/1.json
  def update
    respond_to do |format|
      if @practitioner_profile.update(practitioner_profile_params)
        format.html { redirect_to edit_patient_profile_path(@practitioner_profile), notice: 'Practitioner profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @practitioner_profile }
      else
        format.html { render :edit }
        format.json { render json: @practitioner_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /practitioner_profiles/1
  # DELETE /practitioner_profiles/1.json
  def destroy
    @practitioner_profile.destroy
    respond_to do |format|
      format.html { redirect_to practitioner_profiles_url, notice: 'Practitioner profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_practitioner_profile
      @practitioner_profile = PractitionerProfile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def practitioner_profile_params
      params.require(:practitioner_profile).permit(:gender_id, :region_id, :user_id, :registration_number, :first_name, :last_name, :specialty_id,:photo)
    end
end
