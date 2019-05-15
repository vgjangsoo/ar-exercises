class Store < ActiveRecord::Base
  before_destroy :can_destroy?
  
  has_many :employees

  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0}
  validate :apparel_type

  def can_destroy?
    if self.employees.size == 0
      self.destroyable = true
    else 
      self.destroyable = false
    end
  end


  def apparel_type
    if !mens_apparel && !womens_apparel
      errors.add(:mens_apparel, "must be true for least one apparel type")
      errors.add(:womens_apparel, "must be true for least one apparel type")
    end
  end
end
