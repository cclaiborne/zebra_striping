require 'csv'
require 'colorize'

class ZebraStriping
  def initialize
  end

  def print
    i = 0
    CSV.foreach('info.csv') do |row|
      format_row = row.to_s.slice(/[\w\-].*[\w\-]/)
      if (i % 2 == 0)
        puts format_row.colorize(:background => :light_yellow)
      else
        puts format_row
      end
      i = i + 1
    end
  end
end

zebra = ZebraStriping.new
zebra.print
