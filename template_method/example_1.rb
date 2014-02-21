class Report

  def initialize(text)
    @text = text
  end

  def generate
    print_header
    print_content
    print_footer
  end

  def print_header
    raise NotImplementedError, 'Called abstract method "print_header"'
  end

  def print_content
    raise NotImplementedError, 'Called abstract method "print_content"'
  end

  def print_footer
    raise NotImplementedError, 'Called abstract method "print_footer"'
  end

end

class TextReport < Report

  def print_header
    puts 'text_header'
  end

  def print_content
    puts @text
  end

  def print_footer
    puts 'text_footer'
  end

end

class PdfReport < Report

  def print_header
    puts 'pdf_header'
  end

  def print_content
    puts @text
  end

  def print_footer
    puts 'pdf_footer'
  end

end

report = TextReport.new('some data')
report.generate

report = PdfReport.new('some data')
report.generate
