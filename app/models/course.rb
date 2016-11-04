class Course < ActiveRecord::Base
  belongs_to :tenant
  validates_uniqueness_of :title
  has_many :lessons, dependent: :destroy
  has_many :user_courses
  has_many :users, through: :user_courses
  validate :free_plan_can_only_have_one_course
  
  def free_plan_can_only_have_one_course
    if self.new_record? && (tenant.courses.count > 0) && (tenant.plan == 'free')
      errors.add(:base, "Free plans cannot have multiple courses")
    end
  end
  
  def self.by_user_plan_and_tenant(tenant_id, user)
    tenant = Tenant.find(tenant_id)
    if tenant.plan == 'premium'
      if user.is_admin?
        tenant.courses
      else
        user.courses.where(user_id: user.id)
      end
    else
      if user.is_admin?
        tenant.courses.order(:id).limit(1)
      else
        user.courses.where(tenant_id: tenant.id ).order(:id).limit(1)
      end
    end
  end
end
