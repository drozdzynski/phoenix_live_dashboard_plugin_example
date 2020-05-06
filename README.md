# Phoenix.LiveDashboard.Plugin.Example

**TODO: Add description**

## Usage

```elixir
  [
    scope "/", SomeApp do
    pipe_through [:browser]
    live_dashboard "/dashboard", plugins: [
      phoenix_live_dashboard_plugin_example: [
        otp_app: :some_app
      ]
    ]
  ]
```