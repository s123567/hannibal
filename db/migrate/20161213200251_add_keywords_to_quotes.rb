class AddKeywordsToQuotes < ActiveRecord::Migration[5.0]
  def change
    add_column :quotes, :keywords, :text
  end
end
