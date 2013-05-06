EmbedLogic
=========

This gem will update a link to use embedding code for various popular upload sites. It allows the website's url to be converted to its embedded url

Installation
------------
Add it to your Gemfile:

```ruby
gem "embed_logic"
```

You'll now be able to use embed_logic for videos.

Setting Up Embed Logic
------------
To use embed logic in a view or controller, you simply need to include the ```embed_logic``` method for your sting variable with an upload site's url.

This allows users to add videos that can be viewed from within a site without needing additional setup behind the scenes. 

For example, it can just be added to <iframe> and work out of the box:
```ruby
  %iframe{:allowfullscreen => "", :frameborder => "0", :height => "270", :src => resumevid.originvid.embedded, :width => "480"} 
```
This causes this entry:

![ActiveAdmin form for EmbedLogic](https://github.com/eejones/EmbedLogic/blob/master/test/dummy/app/assets/images/preupdate.png)


To become an embedded image:

![ActiveAdmin form for EmbedLogic](https://github.com/eejones/EmbedLogic/blob/master/test/dummy/app/assets/images/postupdate.png)


Background
------------
The logic uses a REGEX for whatever upload site is being used:
```ruby
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
```

Default Constants
------------
TODO

Default Evaluators
------------
TODO
