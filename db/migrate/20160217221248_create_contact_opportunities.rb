class CreateContactOpportunities < ActiveRecord::Migration
  def change
    create_table :contact_opportunities do |t|
      t.belongs_to :opportunity, index: true, foreign_key: true
      t.belongs_to :contact, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
