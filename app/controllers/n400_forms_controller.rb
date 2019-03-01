class N400FormsController < ApplicationController
  before_action :set_n400_form, only: [:show, :edit, :update, :destroy]

  # GET /n400_forms
  # GET /n400_forms.json
  def index
    @n400_forms = N400Form.all
  end

  # GET /n400_forms/1
  # GET /n400_forms/1.json
  def show
  end

  # GET /n400_forms/new
  def new
    @n400_form = N400Form.new
  end

  # GET /n400_forms/1/edit
  def edit
  end

  # POST /n400_forms
  # POST /n400_forms.json
  def create
    @n400_form = N400Form.new(n400_form_params)
    @n400_form.user_id = current_user.id
    respond_to do |format|
      if @n400_form.save
        format.html { redirect_to @n400_form, notice: 'N400 form was successfully created.' }
        format.json { render :show, status: :created, location: @n400_form }
      else
        format.html { render :new }
        format.json { render json: @n400_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /n400_forms/1
  # PATCH/PUT /n400_forms/1.json
  def update
    respond_to do |format|
      if @n400_form.update(n400_form_params)
        format.html { redirect_to @n400_form, notice: 'N400 form was successfully updated.' }
        format.json { render :show, status: :ok, location: @n400_form }
      else
        format.html { render :edit }
        format.json { render json: @n400_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /n400_forms/1
  # DELETE /n400_forms/1.json
  def destroy
    @n400_form.destroy
    respond_to do |format|
      format.html { redirect_to n400_forms_url, notice: 'N400 form was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_n400_form
      @n400_form = N400Form.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def n400_form_params
      params.require(:n400_form).permit(
        :eligibility, :other_explain, :field_office_id, :nine_digit_a_number,
        :legal_last_name, :legal_first_name, :legal_middle_name,:resident_last_name,
        :resident_first_name, :resident_middle_name, :name_change, :new_last_name,
        :new_first_name, :new_middle_name, :social_security_num, :uscis_num, :gender,
        :date_of_birth, :date_of_residency, :country_of_birth, :country_of_citizendship, 
        :physical_disability, :years_or_older_50, :years_or_older_55, :years_or_older_65,
        :disability_accomodation, :hard_of_hearing, :hard_of_hearing_reason, :low_vision,
        :low_vision_reason, :another_disability, :another_disability_reason,
        other_names_attributes: [:id, :family_name, :given_name, :middle_name, :_destroy] 
      )
    end
end

