class CreateHelpEngineHelpPages < ActiveRecord::Migration
  def change
    create_table :help_engine_help_pages do |t|
      t.string :name
      t.string :slug
      t.text :content

      t.timestamps null: false
    end
  end
end
