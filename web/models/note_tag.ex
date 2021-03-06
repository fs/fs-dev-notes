defmodule FsDev.NoteTag do
  use FsDev.Web, :model

  schema "note_tags" do
    belongs_to :note, FsDev.Note
    belongs_to :tag, FsDev.Tag

    timestamps
  end

  @required_fields ~w(note_id tag_id)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
