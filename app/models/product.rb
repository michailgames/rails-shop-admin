class Product < ActiveRecord::Base
  belongs_to :category
  
  validates :name, :category, :price, presence: true
  validates :price, :format => { :with => /\A\d+(?:\.\d{0,2})?\z/ },
      :numericality => {:greater_than_or_equal_to => 0}
end
