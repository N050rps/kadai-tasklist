module UsersHelper
  def gravatar_url(user, options = {size: 80})
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    "https://securt.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
  end
end
