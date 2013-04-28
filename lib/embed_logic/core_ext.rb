String.class_eval do
  def embedded
    linkcode="http://www.youtube.com/embed/" + (self.match(/(?:http:\/\/)?(?:www\.)?(?:youtube\.com|youtu\.be)\/(?:watch\?v=)?(.+)/))[1]+ "?feature=player_detailpage"
    newlink="http://www.youtube.com/embed/" + firstpart[1] + "?feature=player_detailpage"
  end
  newlink
end
