# frozen_string_literal: true
# A namespace
module MBTA
  # subway module
  module Subway
    # All of the subway lines
    class System
      attr_reader :red, :green, :orange
      def initialize
        @red = ['South Station', 'Park Street', 'Kendall', 'Central', 'Harvard', 'Porter', 'Davis', 'Alewife']
        @green = ['Government Center', 'Park Street', 'Boylston', 'Arlington', 'Copley', 'Hynes', 'Kenmore']
        @orange = ['North Station', 'Haymarket', 'Park Street', 'State', 'Downtown Crossing', 'Chinatown', 'Back Bay', 'Forest Hills']
        @line = { 'Red' => @red, 'Green' => @green, 'Orange' => @orange }
      end

      def stops_between_stations(start_line, start_stop, end_line, end_stop)
        start = @line[start_line]
        stop = @line[end_line]
        start_pos = start.index(start_stop)
        end_pos = stop.index(end_stop)
        start_park = start.index('Park Street')
        end_park = stop.index('Park Street')

        if start == stop
          (start_pos - end_pos).abs
        else
          (start_pos - start_park).abs + (end_park - end_pos).abs
        end
      end

      # return true if handling multiple intersections
      def self.stretch
      end
    end
    # One line, all the stations on that line
    class Line
    end
    # One station
    class Station
    end
  end
end
