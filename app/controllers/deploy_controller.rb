class DeployController < ApplicationController
  def index
    @branches = `cd #{Rails.root.join('tmp/test_repo').to_s + '/'} && git branch`.split("\n").map{|branch| [branch.gsub('*','').strip, branch.gsub('*','').strip]}
  end

  def deploy
    byebug
  end
end
