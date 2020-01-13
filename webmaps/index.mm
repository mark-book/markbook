<map version="freeplane 1.7.0">
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
<hook NAME="AutomaticEdgeColor" COUNTER="8" RULE="ON_BRANCH_CREATION"/>
<node TEXT="Demo" LOCALIZED_STYLE_REF="AutomaticLayout.level,1" POSITION="right" ID="ID_1672887815" CREATED="1578920361269" MODIFIED="1578920375263" LINK="https://markbook.org/">
<edge COLOR="#007c00"/>
</node>
<node TEXT="App" POSITION="right" ID="ID_120250381" CREATED="1570979967089" MODIFIED="1578920390307">
<icon BUILTIN="list"/>
<edge COLOR="#00ff00"/>
<font BOLD="true"/>
<node TEXT="Markbook is a bookmarking app for the solid platform" ID="ID_495239312" CREATED="1578918204474" MODIFIED="1578918212633"/>
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
<node TEXT="            &lt;&gt; &lt;http://purl.org/dc/terms/references&gt; &lt;${id}&gt; .&#xa;&#xa;            &lt;${id}&gt; a &lt;http://www.w3.org/2002/01/bookmark#Bookmark&gt; ;&#xa;            &lt;http://purl.org/dc/terms/title&gt;   &quot;&quot;&quot;${title}&quot;&quot;&quot; ;&#xa;            &lt;http://xmlns.com/foaf/0.1/maker&gt;   &lt;${template.profile.webId}&gt; ;&#xa;            &lt;http://purl.org/dc/terms/created&gt;  &quot;${d}&quot;^^&lt;http://www.w3.org/2001/XMLSchema#dateTime&gt;;&#xa;            &lt;http://www.w3.org/2002/01/bookmark#recalls&gt; &lt;${uri}&gt; ." ID="ID_1310058374" CREATED="1578919756017" MODIFIED="1578919892670"/>
</node>
<node TEXT="links" POSITION="left" ID="ID_808607355" CREATED="1570968728188" MODIFIED="1570968728190">
<icon BUILTIN="attach"/>
<edge COLOR="#00007c"/>
<node TEXT="github" ID="ID_885967166" CREATED="1578918188827" MODIFIED="1578918193657" LINK="https://github.com/mark-book/markbook"/>
<node TEXT="issues" ID="ID_780116375" CREATED="1578918451453" MODIFIED="1578918459763" LINK="https://github.com/mark-book/markbook/issues"/>
</node>
<node TEXT="docs" POSITION="left" ID="ID_1100215200" CREATED="1570969039178" MODIFIED="1570980265221">
<icon BUILTIN="folder"/>
<edge COLOR="#ff00ff"/>
<node TEXT="README" ID="ID_387137590" CREATED="1578918236074" MODIFIED="1578920105050" LINK="https://github.com/mark-book/markbook#markbook"/>
</node>
</node>
</map>
