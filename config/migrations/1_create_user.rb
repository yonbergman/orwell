Sequel.migration do
  change do
    create_table(:users) do
      primary_key :id
      String :full_name, :null=>false
      String :key, :null=>false
    end
  end
end
