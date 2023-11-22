class AddTestStatusToBlogs < ActiveRecord::Migration[7.0]
  def change
    add_column :blogs, :test_status, :integer, default: 0
  end
end
