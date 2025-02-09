defmodule Mappers.H3.Res12 do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :string, []}
  schema "h3_res12" do
    field :h3_index_int, :integer
    field :state, :string
    field :best_rssi, :float
    field :snr, :float
    field :geom, Geo.PostGIS.Geometry

    timestamps()
  end

  @doc false
  def changeset(res12, attrs) do
    res9
    |> cast(attrs, [:id, :h3_index_int, :state, :best_rssi, :snr, :geom])
    |> validate_required([:id, :h3_index_int, :state, :best_rssi, :snr, :geom])
  end
end
