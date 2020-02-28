module ApplicationHelper
  def embedded_svg(path)
    File.open("app/assets/images/#{path}", "rb") { |file| raw(file.read) }
  end
end
