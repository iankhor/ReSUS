class MedicalPractitionerProfilesController < ApplicationController
  before_action :set_medical_practitioner_profile, only: [:show, :edit, :update, :destroy]

  # GET /medical_practitioner_profiles
  # GET /medical_practitioner_profiles.json
  def index
    @medical_practitioner_profiles = MedicalPractitionerProfile.all
  end

  # GET /medical_practitioner_profiles/1
  # GET /medical_practitioner_profiles/1.json
  def show
  end

  # GET /medical_practitioner_profiles/new
  def new
    @medical_practitioner_profile = MedicalPractitionerProfile.new
  end

  # GET /medical_practitioner_profiles/1/edit
  def edit
  end

  # POST /medical_practitioner_profiles
  # POST /medical_practitioner_profiles.json
  def create
    @medical_practitioner_profile = MedicalPractitionerProfile.new(medical_practitioner_profile_params)

    respond_to do |format|
      if @medical_practitioner_profile.save
        format.html { redirect_to @medical_practitioner_profile, notice: 'Medical practitioner profile was successfully created.' }
        format.json { render :show, status: :created, location: @medical_practitioner_profile }
      else
        format.html { render :new }
        format.json { render json: @medical_practitioner_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medical_practitioner_profiles/1
  # PATCH/PUT /medical_practitioner_profiles/1.json
  def update
    respond_to do |format|
      if @medical_practitioner_profile.update(medical_practitioner_profile_params)
        format.html { redirect_to @medical_practitioner_profile, notice: 'Medical practitioner profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @medical_practitioner_profile }
      else
        format.html { render :edit }
        format.json { render json: @medical_practitioner_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medical_practitioner_profiles/1
  # DELETE /medical_practitioner_profiles/1.json
  def destroy
    @medical_practitioner_profile.destroy
    respond_to do |format|
      format.html { redirect_to medical_practitioner_profiles_url, notice: 'Medical practitioner profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medical_practitioner_profile
      @medical_practitioner_profile = MedicalPractitionerProfile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def medical_practitioner_profile_params
      params.require(:medical_practitioner_profile).permit(:first_name, :last_name, :registration_number)
    end
end
