class AdminWhitelistConstraint
  def matches?(request)
    whitelist.include?(request.remote_ip)
  end

  private

  def whitelist
    ['127.0.0.1', '50.205.32.182']
  end
end