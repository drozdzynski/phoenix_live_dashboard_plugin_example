defmodule Phoenix.LiveDashboard.Plugin.Example.MixProject do
  use Mix.Project

  def project do
    [
      app: :phoenix_live_dashboard_plugin_example,
      version: "0.1.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      env: [
        hooks: hooks()
      ]
    ]
  end

  def hooks do
    [
      add_route: [
        {Phoenix.LiveDashboard.Plugin.Example, :add_route}
      ],
      add_menu_link: [
        {Phoenix.LiveDashboard.Plugin.Example, :add_menu_link}
      ],
      add_dashboard_left_component: [
        {Phoenix.LiveDashboard.Plugin.Example, :add_dashboard_component}
      ]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    []
  end
end
