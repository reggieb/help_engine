class AddAuthorToHelpPages < ActiveRecord::Migration
  def change
    add_reference :help_engine_help_pages, :author, polymorphic: true, index: true
    add_index :help_engine_help_pages, :slug
  end
end
