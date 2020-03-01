module ApplicationHelper
  def embedded_svg(path)
    File.open("app/assets/images/#{path}", "rb") { |file| raw(file.read) }
  end

  def user_avatar(user)
    if user.avatar.attached?
      avatar = user.avatar.variant(combine_options: { resize: '100x100^', extent: '100x100' })
    else
      avatar = "default-avatar.jpg"
    end

    image_tag avatar, class: "photo"
  end
end
