class SongsController < ApplicationController
  protect_from_forgery with: :exception, unless: -> { request.format.json? }
end
