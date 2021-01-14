# frozen_string_literal: true

class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.boolean :draft
      t.boolean :active
      t.string :title
      t.text :template
      t.decimal :price
      t.date :startdate
      t.date :endate
      t.string :picurl

      t.integer :sex
      t.integer :age
      t.integer :weight

      t.integer :category_id
      t.index %w[category_id], name: 'index_products_on_category_id'
      t.timestamps
    end
  end
end
