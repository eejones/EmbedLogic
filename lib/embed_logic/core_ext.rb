# EmbedLogic/lib/embed_logic/core_ext.rb

String.class_eval do
  def embedded
    oldcode=self.dup
    #youtube
    if oldcode =~ /(?:youtube\.com|youtu\.be)/
      newcode="http://www.youtube.com/embed/" + (oldcode.match(/(?:http:\/\/)?(?:www\.)?(?:youtube\.com|youtu\.be)\/(?:watch\?v=)?(.+)/))[1]+ "?feature=player_detailpage"
    #vimeo
    elsif oldcode =~ /(?:vimeo)/
      newcode="http://player.vimeo.com/video/" + (oldcode.match(/(?:http:\/\/)?(?:www\.)?(?:vimeo\.com)\/?(.+)/))[1]
    #dailymotion
    elsif oldcode =~ /(?:dailymotion\.com)/
      newcode="http://www.dailymotion.com/embed/video" + (oldcode.match(/(?:http:\/\/)?(?:www\.)?(?:dailymotion\.com)\/(?:video)?(.*?)_/))[1]
    #metacafe 
    elsif oldcode =~ /(?:metacafe\.com)/
      newcode= "http://www.metacafe.com/embed/" + (oldcode.match(/(?:http:\/\/)?(?:www\.)?(?:metacafe\.com)\/(?:watch)\/(.*?)\//))[1] + "/"
    #myspace
    elsif oldcode =~ /(?:myspace\.com)/
      newcode= "http://mediaservices.myspace.com/services/media/embed.aspx/m=" + (oldcode.match(/(\d*)\Z/))[1] + ",t=1,mt=video"
    #screen.yahoo
    elsif oldcode =~ /(?:screen\.yahoo\.com)/
      newcode= oldcode + "?format=embed&player_autoplay=false"
    end
    newcode
  end
end
