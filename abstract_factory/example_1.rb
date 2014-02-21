module OSXGuiToolkit
  extend self

  def button
    Button.new
  end

  class Button
    def paint
      puts "I'm an OSX Button"
    end
  end
end

module WinGuiToolkit
  extend self

  def button
    Button.new
  end

  class Button
    def paint
      puts "I'm a WINDOWS button"
    end
  end
end

class Application
  def initialize(gui_toolkit)
    button = gui_toolkit.button
    button.paint
  end
end

# this check is a very quick hack, not reliable.
if PLATFORM =~ /darwin/
  Application.new(OSXGuiToolkit)
else
  Application.new(WinGuiToolkit)
end
