defmodule Phoenix.LiveDashboard.Plugin.Example.ViewLive do
  use Phoenix.LiveDashboard.Web, :live_view

  @impl true
  def mount(%{"node" => _} = params, session, socket) do
    IO.inspect(session)
    {:ok, assign_defaults(socket, params, session), temporary_assigns: []}
  end

  @impl true
  def handle_params(_params, _url, socket) do
    {:noreply, socket}
  end

  @impl true
  def render(assigns) do
    ~L"""
      <div class="card tabular-card mb-4 mt-4">
        <div class="card-body p-0">
          Hello in test view :-)
        </div>
      </div>
    </div>
    """
  end

  @impl true
  def handle_info({:node_redirect, node}, socket) do
    {:noreply, push_redirect(socket, to: self_path(socket, node, socket.assigns.params))}
  end

  def handle_info(:refresh, socket) do
    {:noreply, socket}
  end

  defp self_path(socket, node, params) do
    live_dashboard_path(socket, :test, node, [], params)
  end
end
