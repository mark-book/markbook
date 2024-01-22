<map version="freeplane 1.8.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="markbook" FOLDED="false" ID="ID_1831615648" CREATED="1569272472516" MODIFIED="1578918071338" ICON_SIZE="20.0 pt" LINK="index.mm" STYLE="oval">
<icon BUILTIN="bookmark"/>
<font SIZE="18"/>
<hook NAME="MapStyle">
    <properties edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff" fit_to_viewport="false"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24.0 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" ICON_SIZE="12.0 pt" COLOR="#000000" STYLE="fork">
<font NAME="SansSerif" SIZE="10" BOLD="false" ITALIC="false"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details"/>
<stylenode LOCALIZED_TEXT="defaultstyle.attributes">
<font SIZE="9"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.note" COLOR="#000000" BACKGROUND_COLOR="#ffffff" TEXT_ALIGN="LEFT"/>
<stylenode LOCALIZED_TEXT="defaultstyle.floating">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="styles.topic" COLOR="#18898b" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" COLOR="#669900">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.important">
<icon BUILTIN="yes"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#000000" STYLE="oval" SHAPE_HORIZONTAL_MARGIN="10.0 pt" SHAPE_VERTICAL_MARGIN="10.0 pt">
<font SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" COLOR="#0033ff">
<font SIZE="16"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" COLOR="#00b439">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#990000">
<font SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#111111">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,5"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,6"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,7"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,8"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,9"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,10"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,11"/>
</stylenode>
</stylenode>
</map_styles>
</hook>
<hook NAME="AutomaticEdgeColor" COUNTER="19" RULE="ON_BRANCH_CREATION"/>
<node TEXT="Demo" LOCALIZED_STYLE_REF="AutomaticLayout.level,1" POSITION="right" ID="ID_1672887815" CREATED="1578920361269" MODIFIED="1579018458540" LINK="https://mark-book.github.io/markbook/">
<icon BUILTIN="wizard"/>
<edge COLOR="#007c00"/>
<font BOLD="true"/>
<node TEXT="User Guide" LOCALIZED_STYLE_REF="AutomaticLayout.level,1" ID="ID_1666578229" CREATED="1579018417540" MODIFIED="1579018450721" LINK="user/guide/index.mm">
<icon BUILTIN="group"/>
<edge STYLE="bezier" WIDTH="thin"/>
<font BOLD="true"/>
</node>
</node>
<node TEXT="Markbook" POSITION="right" ID="ID_120250381" CREATED="1570979967089" MODIFIED="1579018591702" COLOR="#336600">
<icon BUILTIN="list"/>
<font BOLD="true"/>
<edge COLOR="#00ff00"/>
<node TEXT="a bookmarking app for the solid platform" ID="ID_495239312" CREATED="1578918204474" MODIFIED="1579018609617" COLOR="#339900">
<font BOLD="true"/>
</node>
</node>
<node TEXT="Code" POSITION="right" ID="ID_383868314" CREATED="1578918629879" MODIFIED="1578920406958">
<icon BUILTIN="edit"/>
<edge COLOR="#7c0000"/>
<font BOLD="true"/>
<node TEXT="One page app" ID="ID_26827509" CREATED="1578918632857" MODIFIED="1578918645745">
<node TEXT="index.html" ID="ID_119725247" CREATED="1578918646688" MODIFIED="1578918664264" LINK="../index.html"/>
</node>
</node>
<node TEXT="LD" POSITION="right" ID="ID_940888504" CREATED="1578919688495" MODIFIED="1578920421653">
<icon BUILTIN="revision"/>
<edge COLOR="#00007c"/>
<font BOLD="true"/>
<node TEXT="            &lt;&gt; &lt;http://purl.org/dc/terms/references&gt; &lt;${id}&gt; .&#xa;&#xa;            &lt;${id}&gt; a &lt;http://www.w3.org/2002/01/bookmark#Bookmark&gt; ;&#xa;            &lt;http://purl.org/dc/terms/title&gt;   &quot;&quot;&quot;${title}&quot;&quot;&quot; ;&#xa;            &lt;http://xmlns.com/foaf/0.1/maker&gt;   &lt;${template.profile.webId}&gt; ;&#xa;            &lt;http://purl.org/dc/terms/created&gt;  &quot;${d}&quot;^^&lt;http://www.w3.org/2001/XMLSchema#dateTime&gt;;&#xa;            &lt;http://www.w3.org/2002/01/bookmark#recalls&gt; &lt;${uri}&gt; ." ID="ID_1310058374" CREATED="1578919756017" MODIFIED="1579018245469" BORDER_WIDTH="0.6 px" BORDER_DASH="SOLID">
<cloud COLOR="#ffffcc" SHAPE="ROUND_RECT"/>
</node>
</node>
<node TEXT="Structure" POSITION="right" ID="ID_1985440428" CREATED="1578920805028" MODIFIED="1578920814684">
<icon BUILTIN="xmag"/>
<edge COLOR="#007c7c"/>
<font BOLD="true"/>
<node TEXT="WebID is obtained from Login" ID="ID_690330746" CREATED="1578920816388" MODIFIED="1578920869368"/>
<node TEXT="publicTypeIndex obtained from WebID" ID="ID_1974744289" CREATED="1578920869726" MODIFIED="1578920885578"/>
<node TEXT="bookmark file put in publicTypeIndex" ID="ID_50156365" CREATED="1578920886750" MODIFIED="1578920895537">
<node TEXT="public/bookmarks.ttl" ID="ID_1011719771" CREATED="1578921184063" MODIFIED="1578921308829">
<node TEXT="default" ID="ID_248766247" CREATED="1578921302366" MODIFIED="1578921304033"/>
</node>
</node>
<node TEXT="bookmarks.ttl refereces individual bookmarks" ID="ID_112721373" CREATED="1580816254423" MODIFIED="1580816275035"/>
</node>
<node TEXT="model" POSITION="right" ID="ID_1528259244" CREATED="1586420347080" MODIFIED="1586420529139" LINK="model/index.mm">
<edge COLOR="#007c00"/>
</node>
<node POSITION="left" ID="ID_1974475433" CREATED="1578928125418" MODIFIED="1578930147771" LINK="https://webapps.io/" COLOR="#000099"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Made with <img class="emoji" alt="heart" height="20" width="20" src="https://github.githubassets.com/images/icons/emoji/unicode/2764.png" style="border-top-style: none; border-right-style: none; border-bottom-style: none; border-left-style: none"/>&#160;using webmaps.io
  </body>
</html>
</richcontent>
<font SIZE="10" BOLD="true"/>
<edge COLOR="#ff00ff"/>
</node>
<node TEXT="links" POSITION="left" ID="ID_808607355" CREATED="1570968728188" MODIFIED="1578920755487">
<icon BUILTIN="attach"/>
<edge COLOR="#00007c"/>
<font BOLD="true"/>
<node TEXT="github" ID="ID_885967166" CREATED="1578918188827" MODIFIED="1578918193657" LINK="https://github.com/mark-book/markbook"/>
<node TEXT="issues" ID="ID_780116375" CREATED="1578918451453" MODIFIED="1578918459763" LINK="https://github.com/mark-book/markbook/issues"/>
<node TEXT="TODO" ID="ID_137319548" CREATED="1579866080684" MODIFIED="1579866086805" LINK="TODO/index.mm">
<edge STYLE="bezier" WIDTH="thin"/>
</node>
</node>
<node TEXT="docs" POSITION="left" ID="ID_1100215200" CREATED="1570969039178" MODIFIED="1578920756492">
<icon BUILTIN="folder"/>
<edge COLOR="#ff00ff"/>
<font BOLD="true"/>
<node TEXT="README" ID="ID_387137590" CREATED="1578918236074" MODIFIED="1578920105050" LINK="https://github.com/mark-book/markbook#markbook"/>
</node>
<node TEXT="libs" FOLDED="true" POSITION="left" ID="ID_1286983084" CREATED="1578921023960" MODIFIED="1578921136898">
<icon BUILTIN="16x16-free-application-icons/png/16x16/Left-right"/>
<edge COLOR="#7c7c00"/>
<font BOLD="true"/>
<node TEXT="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js" ID="ID_851897190" CREATED="1578921033498" MODIFIED="1578921077420" LINK="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js"/>
<node TEXT="https://nodeSolidServer.github.io/solid-auth-client/dist/solid-auth-client.bundle.js" ID="ID_1873299396" CREATED="1578921033498" MODIFIED="1578921084978" LINK="https://nodeSolidServer.github.io/solid-auth-client/dist/solid-auth-client.bundle.js"/>
<node TEXT="https://melvincarvalho.github.io/helloworld/scripts/rdflib.min.js" ID="ID_1373373760" CREATED="1578921033501" MODIFIED="1578921091190" LINK="https://melvincarvalho.github.io/helloworld/scripts/rdflib.min.js"/>
</node>
<node TEXT="Vocabs" POSITION="left" ID="ID_837364942" CREATED="1581444339067" MODIFIED="1581444339075" LINK="vocabs.mm">
<edge STYLE="bezier" COLOR="#ff0000" WIDTH="thin"/>
<font BOLD="true"/>
</node>
</node>
</map>
