
require 'rubygems'
require 'tweetstream'
require 'meow'

class EewJpNotify::Main
  FOLLOW_MAP = {
    'eew_jp' => 16052553
  }

  def execute(params)
    return false unless verify_params(params)
    g = Meow.new 'eew_jp_notify'
    g.notify 'Start', 'eew_jp_notify started.'
    TweetStream::Client.new(params[:user], params[:password]).follow(FOLLOW_MAP.values) do |status|
      if FOLLOW_MAP[status.user.screen_name]
        puts "#{status.user.screen_name}: #{status.text}"
        url = nil
        if status.text =~ /(http:\/\/twiple\.jp\/e\/\w+)/
          url = $1
        end
        g.notify status.user.screen_name, status.text do
          system "open -a Safari #{url}" if url
        end
      end
    end
  end
  private
  def verify_params(params)
    return true if params[:user] && params[:password]
    puts "usage: #{$0} -u user -p password"
    false
  end
end
