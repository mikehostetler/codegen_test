use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :codegen_test, CodegenTestWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :codegen_test, CodegenTest.Repo,
  username: "postgres",
  password: "postgres",
  database: "codegen_test_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
