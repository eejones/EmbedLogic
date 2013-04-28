# EmbedLogic/lib/embed_logic/core_ext.rb

String.class_eval do
  def embedded
    oldcode=self.dup
    newcode="http://www.youtube.com/embed/" + (oldcode.match(/(?:http:\/\/)?(?:www\.)?(?:youtube\.com|youtu\.be)\/(?:watch\?v=)?(.+)/))[1]+ "?feature=player_detailpage"
    newcode
  end
end
