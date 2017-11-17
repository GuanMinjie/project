class CreateUserDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :user_details do |t|
      t.integer      :user_id
      t.string      :name
      t.string      :gender
      t.integer      :age
      t.integer      :height
      t.integer      :weight
      t.string      :phone
      t.boolean      :is_merried
      t.string      :type_of_certificate
      t.date      :date_of_birth
      t.string     :country
      t.string     :ethnicity
      t.string     :address
      t.string      :registration_numbe
      t.timestamps
    end
  end
end
