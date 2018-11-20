module Mediators
  class Base
    def self.run(options = {})
      new().call(options)
    end
  end
end
