defmodule Mappers.H3.Links.Link do
  use Ecto.Schema
  import Ecto.Changeset

  schema "h3_links" do
    field :uplink_id, Ecto.UUID
    field :h3_res9_id, :string
    field :h3_res12_id, :string

    timestamps()
  end

  @doc false
  def changeset(link, attrs) do
    link
    |> cast(attrs, [:uplink_id, :h3_res9_id, :h3_res12_id])
    |> validate_required([:uplink_id, :h3_res9_id, :h3_res12_id])
  end
end
