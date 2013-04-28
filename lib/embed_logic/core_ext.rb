# EmbedLogic/lib/embed_logic/core_ext.rb

String.class_eval do
  def embedded
    oldcode=self.dup
    if oldcode =~ /(?:youtube\.com|youtu\.be)/
      newcode="http://www.youtube.com/embed/" + (oldcode.match(/(?:http:\/\/)?(?:www\.)?(?:youtube\.com|youtu\.be)\/(?:watch\?v=)?(.+)/))[1]+ "?feature=player_detailpage"
    elsif oldcode =~ /(?:vimeo)/
      newcode="http://player.vimeo.com/video/" + (oldcode.match(/(?:http:\/\/)?(?:www\.)?(?:vimeo\.com)\/?(.+)/))[1]
    end
    newcode
  end
end
