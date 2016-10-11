class DeployController < ApplicationController
  def index
    @branches = `cd #{Rails.root.join('tmp/pokupon').to_s + '/'} && git branch`.split("\n").map{|branch| [branch.gsub('*','').strip, branch.gsub('*','').strip]}
  end

  def deploy
    cmd = "cd #{Rails.root.join('tmp/pokupon').to_s + '/'} && bundle exec cap staging_ua deploy --set branch='#{params[:branch]}'"
   `#{cmd}`
  end
end
