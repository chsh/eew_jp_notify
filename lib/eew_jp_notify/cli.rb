
require 'optparse'
require 'eew_jp_notify'

class EewJpNotify::CLI
  class Params
    def initialize(args)
      opt = OptionParser.new
      opt.on('-u user') { |v| @user = v }
      opt.on('-p password') { |v| @password = v }
      opt.on('-h') { @help_mode = true }
      opt.parse! args
      @config = {}
      @config[:user] = @user if @user
      @config[:password] = @password if @password
      @config[:help_mode] = true if @help_mode
    end
    attr_reader :config
  end
  def self.run(args)
    self.new.run(args)
  end
  def run(args)
    params = Params.new(args)
    EewJpNotify::Main.new.execute(params.config)
  end
end

EewJpNotify::CLI.run(ARGV)
