AutoHtml.add_filter(:facebook_video).with(:width => 480, :height => 360) do |text, options|
  text.gsub(/((http|https):\/\/www\.facebook\.com.*\/videos\/(.+)_*)/) do
    video_url = $1
    width = options[:width]
    height = options[:height]
    %{<div class="fb-video" data-href="#{video_url}" data-width="#{width}" data-height="#{height}"><div class="fb-xfbml-parse-ignore"></div>}
  end
end
