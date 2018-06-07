# frozen_string_literal: true

module HDHM
  # It's a simple door that opens and closes
  class Door
    def initialize(opened: false)
      @opened = opened
    end

    def open
      @opened = true
    end

    def close
      @opened = false
    end

    def opened?
      @opened
    end
  end
end
