require 'ruby-prof'
class Profiler

  def initialize(subject)
    @subject = subject.to_s
    RubyProf.stop if RubyProf.running?
  end

  def measure

    RubyProf.running? ? RubyProf.resume : RubyProf.start

    value = yield
    RubyProf.pause

    return value
  end

  def finish
    result = RubyProf.stop
    create_results_for(result)
    nil
  end

  def create_results_for(result)
    given_the_out_folder_exists
    printer = RubyProf::MultiPrinter.new(result)
    printer.print(path: out_folder, profile: @subject)
  end

  protected

  def given_the_out_folder_exists
    Dir.mkdir(out_folder) unless Dir.exist?(out_folder)
  end

  def out_folder
    File.expand_path(File.join(File.dirname(__FILE__), '..', 'prof'))
  end

end