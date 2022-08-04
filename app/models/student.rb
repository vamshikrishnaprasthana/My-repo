class Student < ApplicationRecord
  validates :name, :dob, presence: true

  before_validation :great
  after_validation :goal

  before_save :kinder

  before_create :capitalze_name
  after_create :display_name
  after_create :hhh

  after_save :cool
  after_commit :roster
  after_update :lane
  def hhh
     if self.dob.present?
      age = Date.today.year - dob.year
      puts"==========Age of the student is #{age}=========="
    else
      puts"========Age can not be calculated=========="
    end
  end

  def great
    puts"Hey this is before validation"
  end

  def goal
    puts"hello this is after validation"
  end

  def kinder
    puts"this is before save"
  end

  def capitalze_name
    puts"this is before create"
    @name = name
    if name.size > 0
    puts "reverse of name is : #{@name.reverse}"
  end
end

  def display_name
    puts"this is after create"
    puts"name is  #{name}"
  end

  def cool
    puts"this is after save validation"
  end

  def roster
    puts"****after commit******"
  end

  def lane
    puts"======This is after update======="
    if self.dob.present?
      age = Date.today.year - dob.year
      puts"==========Age of the student is #{age}=========="
    else
      puts"========Age can not be calculated=========="
    end
  end
end
