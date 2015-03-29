class Role < ActiveRecord::Base
  has_many :users

  def teacher?
    name=='Teacher'
  end

  def student?
    name=='Student'
  end

end
