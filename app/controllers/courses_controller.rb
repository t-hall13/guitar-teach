class CoursesController < ApplicationController
  before_action :set_course, only: [:show, :edit, :update, :destroy, :users, :add_user]
  before_action :set_tenant, only: [:show, :edit, :update, :destroy, :new, :create, :users, :add_user]
  before_action :verify_tenant

  # GET /courses
  # GET /courses.json
  def index
    @courses = Course.by_user_plan_and_tenant(params[:tenant_id], current_user)
  end

  # GET /courses/1
  # GET /courses/1.json
  def show
    @course = Course.find(params[:id])
  end

  # GET /courses/new
  def new
    @course = Course.new
  end

  # GET /courses/1/edit
  def edit
  end

  # POST /courses
  # POST /courses.json
  def create
    @course = Course.new(course_params)
    @course.users << current_user

    respond_to do |format|
      if @course.save
        format.html { redirect_to root_url, notice: 'course was successfully created.' } 
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /courses/1
  # PATCH/PUT /courses/1.json
  def update
    respond_to do |format|
      if @course.update(course_params)
        format.html { redirect_to root_url, notice: 'course was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /courses/1
  # DELETE /courses/1.json
  def destroy
    @course.destroy
    respond_to do |format|
      format.html { redirect_to root_url, notice: 'course was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def users
    @course_users = (@course.users + (User.where(tenant_id: @tenant.id, is_admin: true))) - [current_user]
    @other_users = @tenant.users.where( is_admin: false) - (@course_users + [current_user])
  end
  
  def add_user
    @course_user = UserCourse.new(user_id: params[:user_id], course_id: @course.id)
    
    respond_to do |format|
      if @course_user.save
        format.html { redirect_to users_tenant_course_url(id: @course.id, tenant_id: @course.tenant_id),
          notice: "User was successfully added to course" }
      else
        format.html { redirect_to users_tenant_course_url(id: @course.id, tenant_id: @course.tentant_id),
          error: "User was not added to course" }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course
      @course = Course.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_params
      params.require(:course).permit(:title, :details, :student_since, :tenant_id)
    end
    
    def set_tenant
      @tenant = Tenant.find(params[:tenant_id])
    end
     
    def verify_tenant
      unless params[:tenant_id] == Tenant.current_tenant_id.to_s
       redirect_to :root, flash: { error: "You are not authorized to access any organziation other than your own" }
      end
    end
end
