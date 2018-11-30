defmodule TurboTester.Posts.Post do
  use Ecto.Schema
  import Ecto.Changeset

  alias TurboTester.Accounts.User

  schema "posts" do
    field :body, :string
    field :like_count, :integer
    field :published_at, :naive_datetime
    field :title, :string
    field :visit_count, :integer

    belongs_to :user, User

    timestamps()
  end

  @doc false
  def changeset(post, attrs) do
    post
    |> cast(attrs, [:title, :body, :published_at, :visit_count, :like_count, :user_id])
    |> validate_required([:title, :body])
  end
end
