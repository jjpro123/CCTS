﻿Type.registerNamespace("Telerik.Web");
Type.registerNamespace("Telerik.Web.UI");
Telerik.Web.UI.ModalExtender=function(a){this._windowResizeDelegate=null;
this._windowScrollDelegate=null;
this._xCoordinate=-1;
this._yCoordinate=-1;
this._backgroundElement=null;
this._foregroundElement=a;
this._saveTabIndexes=new Array();
this._saveDesableSelect=new Array();
this._tagWithTabIndex=new Array("A","AREA","BUTTON","INPUT","OBJECT","SELECT","TEXTAREA","IFRAME")
};
Telerik.Web.UI.ModalExtender.prototype={dispose:function(){this.hide();
this._backgroundElement=null;
this._foregroundElement=null
},show:function(){this._attachWindowHandlers(true);
var b=this._getModalOverlay();
var a=this._foregroundElement;
a.parentNode.appendChild(b);
var c=$telerik.getCurrentStyle(a,"zIndex");
if(!isNaN(parseInt(c))){b.style.zIndex=c-1
}b.style.display="";
this._disableTab();
this._updatePageLayout();
this._updatePageLayout()
},_storeBrowserPosition:function(){var a=document.body;
var b=document.documentElement;
this._browserTop=a.scrollTop>b.scrollTop?a.scrollTop:b.scrollTop;
this._browserLeft=a.scrollLeft>b.scrollLeft?a.scrollTop:b.scrollLeft
},_restoreBrowserPosition:function(d,b){try{if(null==d){d=this._browserLeft
}if(null==b){b=this._browserTop
}var a=document.body;
var c=document.documentElement;
a.scrollTop=b;
a.scrollLeft=d;
c.scrollTop=b;
c.scrollLeft=d
}catch(e){}},hide:function(){this._restoreTab();
this._attachWindowHandlers(false);
var a=this._backgroundElement;
if(a){a.parentNode.removeChild(a);
this._backgroundElement=null
}},_enableScroll:function(a){if(a){document.body.style.overflow=null!=this._overflow?this._overflow:"";
document.documentElement.style.overflow=null!=this._documentOverflow?this._documentOverflow:"";
document.body.style.marginRight=""
}else{this._overflow=document.body.style.overflow;
document.body.style.overflow="hidden";
this._documentOverflow=document.documentElement.style.overflow;
document.documentElement.style.overflow="hidden";
document.body.style.marginRight="18px"
}},_getModalOverlay:function(){if(!this._backgroundElement){var a=document.createElement("div");
a.style.display="none";
a.style.position="absolute";
if($telerik.isRightToLeft(this._foregroundElement)){a.style.right="0px"
}else{a.style.left="0px"
}a.style.top="0px";
a.style.zIndex=10000;
a.style.backgroundColor="#aaaaaa";
a.style.filter="progid:DXImageTransform.Microsoft.Alpha(style=0,opacity=50)";
a.style.opacity=".5";
a.style.mozOpacity=".5";
a.setAttribute("unselectable","on");
a.className="TelerikModalOverlay";
this._backgroundElement=a
}return this._backgroundElement
},_attachWindowHandlers:function(a){var b=window;
if(true==a){this._windowResizeDelegate=Function.createDelegate(this,this._updatePageLayout);
$addHandler(b,"resize",this._windowResizeDelegate);
this._windowScrollDelegate=Function.createDelegate(this,this._updatePageLayout);
$addHandler(b,"scroll",this._windowScrollDelegate)
}else{if(this._windowResizeDelegate){$removeHandler(b,"resize",this._windowResizeDelegate)
}this._windowResizeDelegate=null;
if(this._windowScrollDelegate){$removeHandler(b,"scroll",this._windowScrollDelegate)
}this._windowScrollDelegate=null
}},_updatePageLayout:function(){var b=(document.documentElement.scrollLeft?$telerik.getCorrectScrollLeft(document.documentElement):$telerik.getCorrectScrollLeft(document.body));
var e=(document.documentElement.scrollTop?document.documentElement.scrollTop:document.body.scrollTop);
var a=$telerik.getClientBounds();
var f=a.width;
var d=a.height;
var c=this._getModalOverlay();
c.style.width=Math.max(Math.max(document.documentElement.scrollWidth,document.body.scrollWidth),f)+"px";
c.style.height=Math.max(Math.max(document.documentElement.scrollHeight,document.body.scrollHeight),d)+"px"
},_disableTab:function(){var d=0;
var a;
var c=new Array();
Array.clear(this._saveTabIndexes);
for(var e=0;
e<this._tagWithTabIndex.length;
e++){a=this._foregroundElement.getElementsByTagName(this._tagWithTabIndex[e]);
for(var f=0;
f<a.length;
f++){c[d]=a[f];
d++
}}d=0;
for(var e=0;
e<this._tagWithTabIndex.length;
e++){a=document.getElementsByTagName(this._tagWithTabIndex[e]);
for(var f=0;
f<a.length;
f++){if(Array.indexOf(c,a[f])==-1){this._saveTabIndexes[d]={tag:a[f],index:a[f].tabIndex};
a[f].tabIndex="-1";
d++
}}}d=0;
if((Sys.Browser.agent===Sys.Browser.InternetExplorer)&&(Sys.Browser.version<7)){var b=new Array();
for(var e=0;
e<this._tagWithTabIndex.length;
e++){a=this._foregroundElement.getElementsByTagName("SELECT");
for(var f=0;
f<a.length;
f++){b[d]=a[f];
d++
}}d=0;
Array.clear(this._saveDesableSelect);
a=document.getElementsByTagName("SELECT");
for(var f=0;
f<a.length;
f++){if(Array.indexOf(b,a[f])==-1){this._saveDesableSelect[d]={tag:a[f],visib:$telerik.getCurrentStyle(a[f],"visibility")};
a[f].style.visibility="hidden";
d++
}}}},_restoreTab:function(){for(var a=0;
a<this._saveTabIndexes.length;
a++){this._saveTabIndexes[a].tag.tabIndex=this._saveTabIndexes[a].index
}if((Sys.Browser.agent===Sys.Browser.InternetExplorer)&&(Sys.Browser.version<7)){for(var b=0;
b<this._saveDesableSelect.length;
b++){this._saveDesableSelect[b].tag.style.visibility=this._saveDesableSelect[b].visib
}}}};
Telerik.Web.UI.ModalExtender.registerClass("Telerik.Web.UI.ModalExtender",null);
Type.registerNamespace("Telerik.Web");
Telerik.Web.PositioningMode=function(){throw Error.invalidOperation()
};
Telerik.Web.PositioningMode.prototype={Absolute:0,Center:1,BottomLeft:2,BottomRight:3,TopLeft:4,TopRight:5};
Telerik.Web.PositioningMode.registerEnum("Telerik.Web.PositioningMode");
Telerik.Web.PopupBehavior=function(a){Telerik.Web.PopupBehavior.initializeBase(this,[a]);
this._x=0;
this._y=0;
this._positioningMode=Telerik.Web.PositioningMode.Absolute;
this._parentElement=null;
this._parentElementID=null;
this._moveHandler=null;
this._firstPopup=true;
this._originalParent=null;
this._overlay=false;
this._keepInScreenBounds=true;
this._manageVisibility=true
};
Telerik.Web.PopupBehavior._ie6pinnedList={};
Telerik.Web.PopupBehavior.prototype={getPageOffset:function(){var a={x:($telerik.getCorrectScrollLeft(document.documentElement)||$telerik.getCorrectScrollLeft(document.body)),y:(document.documentElement.scrollTop||document.body.scrollTop)};
return a
},pin:function(c){var d=this.get_elementToShow();
var b=this.getPageOffset();
if($telerik.isIE6){var e=this.get_id();
if(c){if(Telerik.Web.PopupBehavior._ie6pinnedList[e]){return
}var a=$telerik.getBounds(d);
Telerik.Web.PopupBehavior._ie6pinnedList[e]=window.setInterval(Function.createDelegate(this,function(){var k=this.getPageOffset();
var h=a.x-b.x+k.x;
var i=a.y-b.y+k.y;
var j=this.get_parentElement();
this.set_parentElement(document.documentElement);
this.set_x(h);
this.set_y(i);
this.show();
this.set_parentElement(j)
}),130)
}else{var g=Telerik.Web.PopupBehavior._ie6pinnedList[e];
if(g){window.clearInterval(g)
}delete Telerik.Web.PopupBehavior._ie6pinnedList[e]
}}else{var f=c?"fixed":"absolute";
if(d.style.position==f){return
}var a=$telerik.getBounds(d);
if(c&&(b.x||b.y)){this._x=a.x-b.x;
this._y=a.y-b.y;
$telerik.setLocation(d,{x:this._x,y:this._y})
}d.style.position=f
}},center:function(){var e=this.get_elementToShow();
if(this._manageVisibility){$telerik.setVisible(e,true)
}var d=$telerik.getClientBounds();
var f=$telerik.getBounds(e);
var a=parseInt((d.width-f.width)/2);
var b=parseInt((d.height-f.height)/2);
var c=this.get_parentElement();
this.set_parentElement(document.documentElement);
this.set_x(a);
this.set_y(b);
this.show();
this.set_parentElement(c)
},get_parentElement:function(){if(!this._parentElement&&this._parentElementID){this.set_parentElement($get(this._parentElementID));
Sys.Debug.assert(this._parentElement!=null,String.format('Couldn\'t find parent element "{0}"',this._parentElementID))
}return this._parentElement
},set_parentElement:function(a){this._parentElement=a
},get_parentElementID:function(){if(this._parentElement){return this._parentElement.id
}return this._parentElementID
},set_parentElementID:function(a){this._parentElementID=a;
if(this.get_isInitialized()){this.set_parentElement($get(a))
}},get_positioningMode:function(){return this._positioningMode
},set_positioningMode:function(a){this._positioningMode=a
},get_x:function(){return this._x
},set_x:function(a){if(a!=this._x){this._x=a;
if($telerik.getVisible(this.get_elementToShow())&&this._manageVisibility){this.show()
}}},get_y:function(){return this._y
},set_y:function(a){if(a!=this._y){this._y=a;
if($telerik.getVisible(this.get_elementToShow())&&this._manageVisibility){this.show()
}}},get_overlay:function(){return this._overlay
},set_overlay:function(a){this._overlay=a;
this._attachWindowHandlers(false);
if(this._overlay){this._attachWindowHandlers(true)
}else{if(!((Sys.Browser.agent===Sys.Browser.InternetExplorer)&&(Sys.Browser.version<7))){var b=this.get_elementToShow();
var c=b._hideWindowedElementsIFrame;
if(c){c.style.display="none"
}}}},get_manageVisibility:function(){return this._manageVisibility
},set_manageVisibility:function(a){this._manageVisibility=a
},get_keepInScreenBounds:function(){return this._keepInScreenBounds
},set_keepInScreenBounds:function(a){this._keepInScreenBounds=a
},get_elementToShow:function(){return this._elementToShow?this._elementToShow:this.get_element()
},set_elementToShow:function(a){if(this._elementToShow){this._detachElementToShow()
}this._elementToShow=a
},_detachElementToShow:function(){var a=this.get_elementToShow();
if(this._moveHandler){$telerik.removeExternalHandler(a,"move",this._moveHandler);
this._moveHandler=null
}var c=a._hideWindowedElementsIFrame;
if(c){var b=c.parentNode;
var d=c.nextSibling;
if(b){b.removeChild(c);
if(d){b.insertBefore(document.createElement("SPAN"),d)
}else{b.appendChild(document.createElement("SPAN"))
}}}},hide:function(){var a=this.get_elementToShow();
if(this._manageVisibility){$telerik.setVisible(a,false)
}if(a.originalWidth){a.style.width=a.originalWidth+"px";
a.originalWidth=null
}if(Sys.Browser.agent===Sys.Browser.InternetExplorer||this._overlay){var b=a._hideWindowedElementsIFrame;
if(b){b.style.display="none"
}}},show:function(){var g=this.get_elementToShow();
g.style.position="absolute";
var i=document.documentElement;
if($telerik.isFirefox){var c=$telerik.getCurrentStyle(i,"overflow");
if("hidden"==c){g.style.left=i.scrollLeft+"px";
g.style.top=i.scrollLeft+"px"
}}if(this._manageVisibility){$telerik.setVisible(g,true)
}var j=g.offsetParent||i;
var f;
var h;
if(this._parentElement){h=$telerik.getBounds(this._parentElement);
var b=this._getOffsetParentLocation(g);
f={x:h.x-b.x,y:h.y-b.y}
}else{h=$telerik.getBounds(j);
f={x:0,y:0}
}var a=g.offsetWidth-(g.clientLeft?g.clientLeft*2:0);
var k=g.offsetHeight-(g.clientTop?g.clientTop*2:0);
var d;
switch(this._positioningMode){case Telerik.Web.PositioningMode.Center:d={x:Math.round(h.width/2-a/2),y:Math.round(h.height/2-k/2)};
break;
case Telerik.Web.PositioningMode.BottomLeft:d={x:0,y:h.height};
break;
case Telerik.Web.PositioningMode.BottomRight:d={x:h.width-a,y:h.height};
break;
case Telerik.Web.PositioningMode.TopLeft:d={x:0,y:-g.offsetHeight};
break;
case Telerik.Web.PositioningMode.TopRight:d={x:h.width-a,y:-g.offsetHeight};
break;
default:d={x:0,y:0}
}d.x+=this._x+f.x;
d.y+=this._y+f.y;
$telerik.setLocation(g,d);
if(this._firstPopup){g.style.width=a+"px"
}this._firstPopup=false;
var e=this._fixPositionInBounds();
this._createOverlay(e)
},_getViewportBounds:function(){var b=$telerik.getClientBounds();
var c=document.documentElement;
var a=document.body;
b.scrollLeft=($telerik.getCorrectScrollLeft(c)||$telerik.getCorrectScrollLeft(a));
b.scrollTop=(c.scrollTop||a.scrollTop);
return b
},_getOffsetParentLocation:function(c){var d=c.offsetParent;
if(d&&d.tagName.toUpperCase()!="BODY"&&d.tagName.toUpperCase()!="HTML"){var b=$telerik.getLocation(d);
var a=$telerik.getBorderBox(d);
b.x+=a.top;
b.y+=a.left;
b.x-=$telerik.getCorrectScrollLeft(d);
b.y-=d.scrollTop;
return b
}return{x:0,y:0}
},_fixPositionInBounds:function(){var c=this.get_elementToShow();
var b=$telerik.getBounds(c);
if(!this._keepInScreenBounds){return b
}var h=this._getViewportBounds();
var j=false;
var l=(h.width>b.width);
var k=(h.height>b.height);
var g=h.scrollTop;
var i=h.height+g;
var f=h.scrollLeft;
var e=h.width+f;
if($telerik.isRightToLeft(document.body)){var d=document.documentElement.scrollWidth;
e=d?d:document.body.scrollWidth
}if(b.x<f||!l){b.x=f;
j=true
}if(b.y<g||!k){b.y=g;
j=true
}if(l&&(b.x+b.width>e)){b.x=e-b.width;
j=true
}if(k&&(i<b.y+b.height)){b.y=i-b.height;
j=true
}if(j){var a=this._getOffsetParentLocation(c);
b.y-=a.y;
b.x-=a.x;
$telerik.setLocation(c,b)
}return b
},_createOverlay:function(e){if(!$telerik.isIE6&&!this._overlay){return
}var d=this.get_elementToShow();
var c=d._hideWindowedElementsIFrame;
if(!c){c=document.createElement("iframe");
c.src="javascript:'<html></html>';";
c.style.position="absolute";
c.style.display="none";
c.scrolling="no";
c.frameBorder="0";
c.tabIndex="-1";
c.style.filter="progid:DXImageTransform.Microsoft.Alpha(style=0,opacity=0)";
d.parentNode.insertBefore(c,d);
d._hideWindowedElementsIFrame=c;
this._moveHandler=Function.createDelegate(this,this._onMove);
$telerik.addExternalHandler(d,"move",this._moveHandler)
}$telerik.setBounds(c,e);
if($telerik.isFirefox){var b=this._getViewportBounds();
c.style.top=parseInt(e.y)-b.scrollTop+"px";
c.style.left=parseInt(e.x)-b.scrollLeft+"px";
c.style.position="fixed"
}if($telerik.quirksMode){return
}c.style.display=d.style.display;
var a=$telerik.getCurrentStyle(d,"zIndex");
if(a){c.style.zIndex=a
}},_setCoordinates:function(a,b){var c=false;
if(a!=this._x){this._x=a;
c=true
}if(b!=this._y){this._y=b;
c=true
}if($telerik.getVisible(this.get_elementToShow())&&c&&this._manageVisibility){this.show()
}},initialize:function(){Telerik.Web.PopupBehavior.callBaseMethod(this,"initialize");
this.hide()
},dispose:function(){var a=this.get_elementToShow();
if(a){this._attachWindowHandlers(false);
if($telerik.getVisible(a)&&this._manageVisibility){this.hide()
}if(this._originalParent){a.parentNode.removeChild(a);
this._originalParent.appendChild(a);
this._originalParent=null
}this._detachElementToShow()
}this._parentElement=null;
Telerik.Web.PopupBehavior.callBaseMethod(this,"dispose");
if(a&&a._behaviors&&a._behaviors.length==0){a._behaviors=null
}a=null
},_onMove:function(){var a=this.get_elementToShow();
var c=a._hideWindowedElementsIFrame;
if(c){if(Sys.Browser.agent===Sys.Browser.Firefox){var b=this._getViewportBounds();
c.style.top=parseInt(a.style.top)-b.scrollTop+"px";
c.style.left=parseInt(a.style.left)-b.scrollLeft+"px";
c.style.position="fixed"
}else{c.style.top=a.style.top;
c.style.left=a.style.left
}}},_handleElementResize:function(){var b=this.get_elementToShow();
var c=b._hideWindowedElementsIFrame;
if(c){var a=$telerik.getBounds(b);
$telerik.setBounds(c,a)
}},_attachWindowHandlers:function(a){if(!Sys.Browser.agent===Sys.Browser.Firefox){return
}var b=window;
if(true==a){this._windowResizeDelegate=Function.createDelegate(this,this._onMove);
$telerik.addExternalHandler(b,"resize",this._windowResizeDelegate);
this._windowScrollDelegate=Function.createDelegate(this,this._onMove);
$telerik.addExternalHandler(b,"scroll",this._windowScrollDelegate)
}else{if(this._windowResizeDelegate){$telerik.removeExternalHandler(b,"resize",this._windowResizeDelegate)
}this._windowResizeDelegate=null;
if(this._windowScrollDelegate){$telerik.removeExternalHandler(b,"scroll",this._windowScrollDelegate)
}this._windowScrollDelegate=null
}}};
Telerik.Web.PopupBehavior.registerClass("Telerik.Web.PopupBehavior",Sys.UI.Behavior);
Type.registerNamespace("Telerik.Web");
Type.registerNamespace("Telerik.Web.UI");
Telerik.Web.UI.ResizeExtender=function(c,e,d,g,a,f,b){this._document=a?a:document;
this._documentMouseMoveDelegate=null;
this._documentMouseUpDelegate=null;
this._element=null;
this._tableElement=null;
this._moveCursorType="move";
this._enabled=true;
this._jsOwner=null;
this._hideIframes=true;
this._autoScrollEnabled=true;
this._saveDelegates={};
this.makeResizable(c,e,d,g,f,b)
};
Telerik.Web.UI.ResizeExtender.containsBounds=function(c,e){if(!c||!e){return false
}var d=$telerik.containsPoint(c,e.x,e.y);
if(d){var a=e.x+e.width;
var b=e.y+e.height;
d=$telerik.containsPoint(c,a,b)
}return d
};
Telerik.Web.UI.ResizeExtender.prototype={dispose:function(){this._attachDocumentHandlers(false);
this._configureHandleElements(false);
this._jsOwner=null
},enable:function(a){this._enabled=a
},set_hideIframes:function(a){this._hideIframes=a
},get_hideIframes:function(){return this._hideIframes
},makeResizable:function(d,b,c,f,e,a){if(!b){return
}if(this._element){alert("Element "+b.getAttribute("id")+" cannot be made resizable, as the resizeExtender already has the element "+this._element.getAttribute("id")+" associated with it. You must create a new extender resizer object");
return
}this._jsOwner=d;
this._element=b;
this._tableElement=f;
this._resizeHandles=c;
if(e){this._moveCursorType=e
}if(a!=null){this._autoScrollEnabled=a
}this._startX=0;
this._startY=0;
this._cancelResize=true;
this._configureHandleElements(true)
},_raiseDragEvent:function(c,b,d){if(this._jsOwner&&this._jsOwner["on"+c]){var a=b;
if(!a){a={}
}a.element=this._element;
a.ownerEvent=d;
return this._jsOwner["on"+c](a)
}return true
},_raiseEvent:function(b,a){if(this._jsOwner&&this._jsOwner["on"+b]){if(!a){a=new Sys.EventArgs()
}else{if(b=="Resize"){a=this._resizeDir
}else{if(b=="Resizing"){a=this._getProposedBounds(a)
}}}return this._jsOwner["on"+b](a)
}return true
},_getProposedBounds:function(b){var a=$telerik.getBounds(this._element);
return{x:b.x||a.x,y:b.y||a.y,width:b.width||a.width,height:b.height||a.height}
},_resize:function(f){if(!this._enabled||this._cancelResize){return false
}var b=0;
var g=0;
var c=0;
var a=0;
var d=this._originalBounds;
var j=this._resizeDir.move;
if(j){c=d.x+(f.clientX-this._startX);
a=d.y+(f.clientY-this._startY)
}else{if(this._resizeDir.east){b=d.width+(f.clientX-this._startX)
}else{if(this._resizeDir.west){c=d.x+(f.clientX-this._startX)-this._leftHandleMouseDelta;
b=d.width-(f.clientX-this._startX)
}}if(this._resizeDir.south){g=d.height+(f.clientY-this._startY)
}else{if(this._resizeDir.north){a=d.y+(f.clientY-this._startY);
g=d.height-(f.clientY-this._startY)
}}}if(this._offsetLocation){c-=this._offsetLocation.x;
a-=this._offsetLocation.y
}var h=new Sys.UI.Bounds(c,a,b,g);
var i=j?this._raiseDragEvent("Drag",h,f):this._raiseEvent("Resizing",h);
if(false==i){return true
}if(j||h.x>0){this._element.style.left=h.x+"px"
}if(j||h.y>0){this._element.style.top=h.y+"px"
}if(h.width>0){this._element.style.width=h.width+"px"
}if(h.height>0){this._element.style.height=h.height+"px"
}if(!j){this._updateInnerTableSize()
}return true
},getPositionedParent:function(){var a=this._element.parentNode;
while(a&&a!=document){if("static"!=$telerik.getCurrentStyle(a,"position","static")){return a
}a=a.parentNode
}return null
},_storeStartCoords:function(g){if(!this._enabled){return
}this._cancelResize=false;
this._startX=g.clientX;
this._startY=g.clientY;
var f=$telerik.getBounds(this._element);
if($telerik.isIE){var d=this.getPositionedParent();
if(d){f.x+=d.scrollLeft;
f.y+=d.scrollTop
}}this._originalBounds=f;
var c=g.target?g.target:g.srcElement;
if(c&&c.type==3){c=c.parentNode
}this._resizeType=$telerik.getCurrentStyle(c,"cursor");
this._resizeDir={north:this._resizeType.match(/n.?-/)?1:0,east:this._resizeType.match(/e-/)?1:0,south:this._resizeType.match(/s.?-/)?1:0,west:this._resizeType.match(/w-/)?1:0,move:new RegExp(this._moveCursorType).test(this._resizeType)?1:0};
this._leftHandleMouseDelta=0;
if(this._resizeDir.west){this._leftHandleMouseDelta=Math.abs($telerik.getBounds(c).x-this._startX)
}var a=this._resizeDir.move?this._raiseDragEvent("DragStart",null,g):this._raiseEvent("ResizeStart");
this._cancelResize=(a==false);
var b=$telerik.getCurrentStyle(this._element.parentNode,"position");
var h=("relative"==b)||("absolute"==b);
this._offsetLocation=h?$telerik.getLocation(this._element.parentNode):null;
if(!this._cancelResize){this._clearSelection();
this._setIframesVisible(false);
this._attachDocumentHandlers(false);
this._attachDocumentHandlers(true)
}},_updateInnerTableSize:function(){var b=this._resizeDir;
if(b.south||b.north){var a=this._element.style.height;
var c=this._tableElement;
if(c){c.style.height=a;
this._fixIeHeight(c,a)
}}},_setIframesVisible:function(d){if(!this._hideIframes){return
}var c=this._document.getElementsByTagName("IFRAME");
for(var a=0;
a<c.length;
a++){var b=c[a];
b.style.visibility=d?"":"hidden";
if($telerik.isIE){try{b.contentWindow.document.body.style.visibility=d?"":"hidden"
}catch(e){}}}},_configureHandleElements:function(b){var a=["nw","n","ne","w","e","sw","s","se",this._moveCursorType];
for(var d=0;
d<a.length;
d++){var f=a[d];
var c=this._resizeHandles[f];
if(c){if(c instanceof Array){for(var e=0;
e<c.length;
e++){this._configureHandle("id"+d+"_"+e,b,c[e],f)
}}else{this._configureHandle("id"+d,b,c,f)
}}}if(!b){this._saveDelegates={}
}},_configureHandle:function(a,c,d,e){if(c){var b=Function.createDelegate(this,this._onHandleMouseDown);
$telerik.addExternalHandler(d,"mousedown",b);
this._saveDelegates[a]={delegate:b,element:d};
var f=(e==this._moveCursorType?this._moveCursorType:e+"-resize");
d.style.cursor=f
}else{$telerik.removeExternalHandler(d,"mousedown",this._saveDelegates[a].delegate);
d.style.cursor=""
}},_attachDocumentHandlers:function(a){var b=this._document;
if(true==a){this._documentMouseMoveDelegate=Function.createDelegate(this,this._onDocumentMouseMove);
$telerik.addExternalHandler(b,"mousemove",this._documentMouseMoveDelegate);
this._documentMouseUpDelegate=Function.createDelegate(this,this._onDocumentMouseUp);
$telerik.addExternalHandler(b,"mouseup",this._documentMouseUpDelegate)
}else{if(this._documentMouseMoveDelegate){$telerik.removeExternalHandler(b,"mousemove",this._documentMouseMoveDelegate)
}this._documentMouseMoveDelegate=null;
if(this._documentMouseUpDelegate){$telerik.removeExternalHandler(b,"mouseup",this._documentMouseUpDelegate)
}this._documentMouseUpDelegate=null
}},_onDocumentMouseMove:function(b){var a=this._resize(b);
if(this._autoScrollEnabled){this._autoScroll(b)
}if(a){return $telerik.cancelRawEvent(b)
}},_onDocumentMouseUp:function(b){var a=!this._cancelResize;
this._cancelResize=true;
if(a){this._clearSelection();
this._setIframesVisible(true);
if(this._resizeDir&&this._resizeDir.move){this._raiseDragEvent("DragEnd",null,b)
}else{this._raiseEvent("ResizeEnd")
}this._attachDocumentHandlers(false);
if(this._scroller){this._scroller.set_enabled(false)
}}},_onHandleMouseDown:function(a){this._storeStartCoords(a);
return $telerik.cancelRawEvent(a)
},_clearSelection:function(){if(this._document.selection&&this._document.selection.empty){this._document.selection.empty()
}},_fixIeHeight:function(a,b){if("CSS1Compat"==document.compatMode){var d=(a.offsetHeight-parseInt(b));
if(d>0){var c=(parseInt(a.style.height)-d);
if(c>0){a.style.height=c+"px"
}}}},_initializeAutoScroll:function(){if(this._autoScrollInitialized){return
}this._scrollEdgeConst=40;
this._scrollByConst=10;
this._scroller=null;
this._scrollDeltaX=0;
this._scrollDeltaY=0;
this._scrollerTickHandler=Function.createDelegate(this,this._onScrollerTick);
this._scroller=new Telerik.Web.Timer();
this._scroller.set_interval(10);
this._scroller.add_tick(this._scrollerTickHandler);
this._autoScrollInitialized=true
},_autoScroll:function(a){this._initializeAutoScroll();
var b=$telerik.getClientBounds();
if(b.width>0){this._scrollDeltaX=this._scrollDeltaY=0;
if(a.clientX<b.x+this._scrollEdgeConst){this._scrollDeltaX=-this._scrollByConst
}else{if(a.clientX>b.width-this._scrollEdgeConst){this._scrollDeltaX=this._scrollByConst
}}if(a.clientY<b.y+this._scrollEdgeConst){this._scrollDeltaY=-this._scrollByConst
}else{if(a.clientY>b.height-this._scrollEdgeConst){this._scrollDeltaY=this._scrollByConst
}}var c=this._scroller;
if(this._scrollDeltaX!=0||this._scrollDeltaY!=0){this._originalStartX=this._startX;
this._originalStartY=this._startY;
c.set_enabled(true)
}else{if(c.get_enabled()){this._startX=this._originalStartX;
this._startY=this._originalStartY
}c.set_enabled(false)
}}},_onScrollerTick:function(){var g=document.documentElement.scrollLeft||document.body.scrollLeft;
var e=document.documentElement.scrollTop||document.body.scrollTop;
window.scrollBy(this._scrollDeltaX,this._scrollDeltaY);
var c=document.documentElement.scrollLeft||document.body.scrollLeft;
var i=document.documentElement.scrollTop||document.body.scrollTop;
var a=c-g;
var d=i-e;
var h=this._element;
var b={x:parseInt(h.style.left)+a,y:parseInt(h.style.top)+d};
this._startX-=a;
this._startY-=d;
try{$telerik.setLocation(h,b)
}catch(f){}}};
Telerik.Web.UI.ResizeExtender.registerClass("Telerik.Web.UI.ResizeExtender",null);