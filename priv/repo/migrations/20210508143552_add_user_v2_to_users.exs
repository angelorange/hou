defmodule Hou.Repo.Migrations.AddUserV2ToUsers do
  use Ecto.Migration

  def change do
    alter_table(:users) do
      add :full_name, :string
      add :age, :string
      add :gender, :string
      add :city, :string
      add :state, :string
      add :address, :string
      add :oab_number, :string
      add :verified, :boolean
    end
  end
end
