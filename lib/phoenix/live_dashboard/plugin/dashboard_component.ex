defmodule Phoenix.LiveDashboard.Plugin.DashboardComponent do
  use Phoenix.LiveDashboard.Web, :live_component

  def mount(socket) do
    {:ok, assign(socket, :title, nil)}
  end

  def render(assigns) do
    ~L"""
    <h5 class="card-title">
      Example
    </h5>

    <div class="card mb-4">
      <div class="card-body resource-usage">
        This is example component
      </div>
    </div>
    """
  end
end
