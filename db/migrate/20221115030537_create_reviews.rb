class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :text
      t.string :rating
      t.belongs_to :user
      t.belongs_to :house
    end
  end
end
