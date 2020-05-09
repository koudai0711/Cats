class CreateTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets do |t|
      t.string     :back,           null: false
      t.string     :personal,       null: false
      t.string     :health,         null: false
      t.string     :method,         null: false
      t.string     :image,          null: false
      # t.string     :status,         null: false
      # t.integer    :prefecture_id,  null: false
      # t.string     :buyer_id
      # t.references :category,       null: false
      t.timestamps
    end
  end
end
