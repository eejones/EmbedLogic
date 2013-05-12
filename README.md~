EmbedLogic
=========

This gem will update a link to use embedding code for various popular upload sites. It allows the website's url to be converted to its embedded url. It can currently convert to embedded code for 6 of the top 8 most visited video websites(Youtube, Vimeo, Dailymotion, Metacafe, MySpace and Yahoo! Screen- missing NetFlix and Hulu because of security issues)

Installation
------------
Add it to your Gemfile:

```ruby
gem "embed_logic"
```

You'll now be able to use embed_logic for videos.

Setting Up Embed Logic
------------
To use embed logic in a view or controller, you simply need to include the ```embed_logic``` method for your string variable with an upload site's url.

This allows users to add videos that can be viewed from within a site without needing additional setup behind the scenes. 

For example, it can just be added to <iframe> and work out of the box:
```ruby
  %iframe{:allowfullscreen => "", :frameborder => "0", :height => "270", :src => resumevid.originvid.embedded, :width => "480"} 
```
This causes this entry:

![EmbedLogic preupdate](/test/dummy/app/assets/images/preupdate.png)


To become an embedded image:

![EmbedLogic postupdate](/test/dummy/app/assets/images/postupdate.png)


Background
------------
The logic uses a REGEX for whatever video site is being used:
```ruby
String.class_eval do
  def embedded
    oldcode=self.dup
    #youtube
    if oldcode =~ /(?:youtube\.com|youtu\.be)/
      newcode="http://www.youtube.com/embed/" + (oldcode.match(/(?:http:\/\/)?(?:www\.)?(?:youtube\.com|youtu\.be)\/(?:watch\?v=)?(.+)/))[1]+ "?feature=player_detailpage"
    #metacafe 
    elsif oldcode =~ /(?:metacafe\.com)/
      newcode= "http://www.metacafe.com/embed/" + (oldcode.match(/(?:http:\/\/)?(?:www\.)?(?:metacafe\.com)\/(?:watch)\/(.*?)\//))[1] + "/"
    #myspace
    elsif oldcode =~ /(?:myspace\.com)/
      newcode= "http://mediaservices.myspace.com/services/media/embed.aspx/m=" + (oldcode.match(/(\d*)\Z/))[1] + ",t=1,mt=video"
.
.
.
    end
    newcode
  end
end
```
