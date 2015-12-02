class AdminWhitelistConstraint
  def matches?(request)
    whitelist.include?(request.remote_ip)
  end

  private

  def whitelist
    Whitelist.pluck(:ip)
  end
end