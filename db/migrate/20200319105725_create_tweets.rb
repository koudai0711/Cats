class CreateTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets do |t|
      t.string     :name,           null: false
      t.string     :text            null: false
      t.string     :status,         null: false
      t.string     :size,           null: false
      t.integer    :prefecture_id,  null: false
      t.string     :buyer_id
      t.string     :saler_id
      t.references :category,       null: false
      t.timestamps
    end
  end
end
