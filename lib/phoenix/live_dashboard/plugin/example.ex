defmodule Phoenix.LiveDashboard.Plugin.Example do
  def add_route(_opts) do
    {"/:node/example", Phoenix.LiveDashboard.Plugin.Example.ViewLive, :example}
  end

  def add_menu_link(_opts) do
    {"Example page", :example}
  end

  def add_dashboard_component(_opts) do
    Phoenix.LiveDashboard.Plugin.DashboardComponent
  end
end
