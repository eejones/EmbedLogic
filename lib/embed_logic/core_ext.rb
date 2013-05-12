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
    #veoh
    elsif oldcode =~ /(?:veoh\.com)/
      newcode = "http://www.veoh.com/swf/webplayer/WebPlayer.swf?version=AFrontend.5.7.0.1396&permalinkId=" + (oldcode.match(/(?:http:\/\/)?(?:www\.)?(?:veoh\.com)\/(?:watch)\/(.*)/))[1] + "&player=videodetailsembedded&videoAutoPlay=0&id=anonymous"
    end
    newcode
  end
end
