module Helpers
  module Controller
    def json_response
      @_json_response ||= JSON.parse(response.body)
    end
  end
end
