defmodule Mappers.H3.Res12Blank do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :string, []}
  schema "h3_res12_blank" do
    field :geom, Geo.PostGIS.Geometry

    timestamps()
  end

  @doc false
  def changeset(res12_blank, attrs) do
    res12_blank
    |> cast(attrs, [:id, :geom])
    |> validate_required([:id, :geom])
  end
end
