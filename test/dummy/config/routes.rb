Rails.application.routes.draw do
  mount DebugHang::Engine => "/debug_hang"
end
