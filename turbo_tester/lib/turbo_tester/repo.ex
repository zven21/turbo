defmodule TurboTester.Repo do
  use Ecto.Repo,
    otp_app: :turbo_tester,
    adapter: Ecto.Adapters.Postgres
end
