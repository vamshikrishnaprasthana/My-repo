class CreateJoinTableCoursePayment < ActiveRecord::Migration[6.0]
  def change
    create_join_table :courses, :payments do |t|
      # t.index [:course_id, :payment_id]
      # t.index [:payment_id, :course_id]
    end
  end
end
