﻿Type.registerNamespace("Telerik.Web.UI.Animations");
Telerik.Web.UI.Animations.playJQueryAnimation=function(k,h,f,e,c,l,b){if(!k){return
}if(!h){h=2
}if(!f){f=new Sys.UI.Bounds(1,1,1,1)
}if(!e){e=new Sys.UI.Bounds(1,1,1,1)
}if(!c){c=32
}c+="";
var i=parseInt(c.substr(0,1));
var d=parseInt(c.substr(1,1));
if(l){l()
}$telerik.$(k).stop(false,true);
if(h==2){$telerik.$(k).css({left:e.x,top:e.y}).fadeIn(500,b);
return
}if(h==8){var a=$telerik.getClientBounds();
var j=$telerik.getClientBounds();
f.x=j.width/2;
f.y=j.height;
switch(d){case 2:f.x=e.x;
break;
case 3:f.x=a.width;
break;
case 1:f.x=a.x
}switch(i){case 2:f.y=e.y;
break;
case 1:f.y=a.y-e.height;
break;
case 3:f.y=a.height
}}else{if(h==4){f.x=e.x;
f.y=e.y;
f.width=e.width;
f.height=1;
switch(d){case 2:f.x=e.x;
break;
case 3:f.x=e.x;
break;
case 1:var g=e.x;
if(2==i){g+=e.width
}f.x=g
}switch(i){case 2:f.y=e.y;
f.height=e.height;
f.width=1;
break;
case 1:f.y=e.y+e.height;
break;
case 3:f.y=e.y
}}else{if(h==1){}}}$telerik.$(k).css({width:f.width,height:f.height,left:f.x,top:f.y,opacity:0.1,filter:"alpha(opacity=10)"}).show().animate({width:e.width,height:e.height,left:e.x,top:e.y,opacity:1},500,null,b)
};
$telerik.$.fx.prototype.oldstep=$telerik.$.fx.prototype.step;
$telerik.$.fx.prototype.step=function(b){if(this.prop=="left"||this.prop=="top"){if(this.elem.getAttribute("paused")){if(!this.elem.getAttribute("elapsedTime")){var a=(+new Date)-this.startTime;
this.elem.setAttribute("elapsedTime",a)
}return true
}if(this.elem.getAttribute("elapsedTime")){this.startTime=(+new Date)-this.elem.getAttribute("elapsedTime");
this.elem.removeAttribute("elapsedTime")
}}return this.oldstep(b)
};
Telerik.Web.UI.Animations.jMove=function(a,d,b,c,e){this._owner=a;
this._element=d;
this._duration=b;
this._horizontal=(typeof(c)=="undefined"||c==null)?0:c;
this._vertical=(typeof(e)=="undefined"||e==null)?0:e;
this._events=null;
this._animationEndedDelegate=null;
this._isPlaying=false;
this._isPaused=false;
this._isCyclic=false
};
Telerik.Web.UI.Animations.jMove.prototype={initialize:function(){this._animationEndedDelegate=Function.createDelegate(this,this._animationEnded)
},dispose:function(){this._getAnimationQuery().stop(true,false);
this._owner=null;
this._element=null;
this._events=null;
this._animationEndedDelegate=null
},get_vertical:function(){return this._vertical
},set_vertical:function(a){this._vertical=a
},get_horizontal:function(){return this._horizontal
},set_horizontal:function(a){this._horizontal=a
},get_isPlaying:function(){return this._isPlaying
},get_isCyclic:function(){return this._isCyclic
},set_isCyclic:function(a){this._isCyclic=a
},get_isActive:function(){return true
},get_events:function(){if(!this._events){this._events=new Sys.EventHandlerList()
}return this._events
},play:function(d){var c=this._element;
var f=c.getAttribute("paused");
c.removeAttribute("paused");
if(!(f&&c.getAttribute("elapsedTime"))){var a=this._owner;
var g=a.get_frameDuration();
if(this._isPaused&&this._isCyclic&&(g>0&&!d)&&a._setAnimationTimeout){a._setAnimationTimeout(g)
}else{var b=this._animationStarted();
if(b!=false){var e=(isNaN(parseInt(this._vertical)))?this._horizontal:this._vertical;
this._playAnimation(e)
}}}this._isPlaying=true;
this._isPaused=false
},stop:function(){this._getAnimationQuery().stop(false,true);
this._isPlaying=false
},pause:function(){if(this._isPlaying){this._element.setAttribute("paused",true)
}this._isPlaying=false;
this._isPaused=true
},add_started:function(a){this.get_events().addHandler("started",a)
},remove_started:function(a){this.get_events().removeHandler("started",a)
},add_ended:function(a){this.get_events().addHandler("ended",a)
},remove_ended:function(a){this.get_events().removeHandler("ended",a)
},_getAnimationQuery:function(){return $telerik.$(this._element)
},_playAnimation:function(d){var c=this._getAnimationQuery();
var b=this._getAnimatedStyleProperty();
var a={queue:true};
a[b]=d;
c.stop(true,!this._isCyclic).animate(a,this._duration,null,this._animationEndedDelegate)
},_getAnimatedStyleProperty:function(){return(isNaN(parseInt(this._vertical)))?"left":"top"
},_getPosition:function(){var b=this._element;
var a=this._getAnimatedStyleProperty();
return b.style[a]
},_animationStarted:function(){var a=new Sys.CancelEventArgs();
this._raiseEvent("started",a);
return !a.get_cancel()
},_animationEnded:function(){this._getAnimationQuery().css("opacity","1");
this._isPlaying=false;
this._raiseEvent("ended",Sys.EventArgs.Empty)
},_raiseEvent:function(b,c){var a=this.get_events().getHandler(b);
if(a){if(!c){c=Sys.EventArgs.Empty
}a(this,c)
}}};
Telerik.Web.UI.Animations.jMove.registerClass("Telerik.Web.UI.Animations.jMove",null,Sys.IDisposable);