defmodule CodegenTest.Repo do
  use Ecto.Repo,
    otp_app: :codegen_test,
    adapter: Ecto.Adapters.Postgres
end
