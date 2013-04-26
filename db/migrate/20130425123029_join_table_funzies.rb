class JoinTableFunzies < ActiveRecord::Migration
  def change
    create_table :posts_tags, :id => false do |t|
      t.references :tag
      t.references :post
    end
  end
end
