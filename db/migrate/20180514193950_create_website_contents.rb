class CreateWebsiteContents < ActiveRecord::Migration
  def change
    create_table :website_contents do |t|
      t.references :website_url, index: true
      t.text :header1
      t.text :header2
      t.text :header3
      t.text :a_hyperlink

      t.timestamps
    end
  end
end
