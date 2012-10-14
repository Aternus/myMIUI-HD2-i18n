function discoverRssFeed() {
  var targetelement = "link";
  var targettypeattr = "type";
  var targettypeattrval = "application/rss+xml";
  var targetrelattr = "rel";
  var targetrelattrval = "alternate";
  var targethrefattr = "href";

  var allLinks=document.getElementsByTagName(targetelement);
  for (var i=0; i<allLinks.length; ++i) {
    if (allLinks[i]
      && allLinks[i].getAttribute(targettypeattr) != null
      && allLinks[i].getAttribute(targetrelattr) != null
      && allLinks[i].getAttribute(targethrefattr) != null
      && allLinks[i].getAttribute(targettypeattr).indexOf(targettypeattrval) != -1
      && allLinks[i].getAttribute(targetrelattr).indexOf(targetrelattrval) != -1
      )
    {
      var title = allLinks[i].getAttribute('title');
      var href = allLinks[i].getAttribute(targethrefattr);
      
      window.mirenrss.onRssFound(title, href);
      return;
    }
  }
}
