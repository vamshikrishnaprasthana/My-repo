class Teacher < ApplicationRecord
  validates :name, :number_of_subjects, presence:true

  before_validation :mike
  after_validation :zen

  before_save :kind
  before_update :rain
  after_update :sunny

  after_save :chill
  after_commit :aftercommit

  before_destroy :bef_destory
  after_destroy :after_destroy

  def mike
    puts"====checking validation========"
  end

  def zen
    puts"======completed validation======"
  end
  def kind
    puts"!!!!!!!!!this is before save!!!!!!!!!"
  end

  def rain
    puts"^^^^This is before update^^^^^^^^"
  end

  def sunny
    puts"***this is after update****"
  end

  def chill
    puts"this is after save"
  end

  def aftercommit
    puts"This is after commit"
  end

  def bef_destory
    puts"this is before destroy"
  end
  def after_destroy
    puts"this after destroy"
  end
end
