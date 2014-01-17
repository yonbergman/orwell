Sequel.migration do
  change do
    create_table(:songs) do
      primary_key :id
      foreign_key :user_id
      String :name, :null=>false
      String :artist, :null=>false
      String :youtube_id, :null=>false
    end
    add_column :users, :bluetooth_addr, :string
  end
end
