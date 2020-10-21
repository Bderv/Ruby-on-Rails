class TimesController < ApplicationController

  def main
    time = Time.new
    @t1 = time.strftime("%b %d, %Y")
    @t2 = time.strftime ("%I:%M %p")
  end

end
