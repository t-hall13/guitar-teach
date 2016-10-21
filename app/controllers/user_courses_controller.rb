class UserCoursesController < ApplicationController
  before_action :set_user_course, only: [:show, :edit, :update, :destroy]

  # GET /user_courses
  # GET /user_courses.json
  def index
    @user_courses = UserCourse.all
  end

  # GET /user_courses/1
  # GET /user_courses/1.json
  def show
  end

  # GET /user_courses/new
  def new
    @user_course = UserCourse.new
  end

  # GET /user_courses/1/edit
  def edit
  end

  # POST /user_courses
  # POST /user_courses.json
  def create
    @user_course = UserCourse.new(user_course_params)

    respond_to do |format|
      if @user_course.save
        format.html { redirect_to @user_course, notice: 'User course was successfully created.' }
        format.json { render :show, status: :created, location: @user_course }
      else
        format.html { render :new }
        format.json { render json: @user_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_courses/1
  # PATCH/PUT /user_courses/1.json
  def update
    respond_to do |format|
      if @user_course.update(user_course_params)
        format.html { redirect_to @user_course, notice: 'User course was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_course }
      else
        format.html { render :edit }
        format.json { render json: @user_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_courses/1
  # DELETE /user_courses/1.json
  def destroy
    @user_course.destroy
    respond_to do |format|
      format.html { redirect_to users_tenant_course_url(id: @user_course.course_id,
      tenant_id: @user_course.course.tenant_id), 
      notice: 'User was successfully removed from the course.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_course
      @user_course = UserCourse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_course_params
      params.require(:user_course).permit(:course_id, :user_id)
    end
end
