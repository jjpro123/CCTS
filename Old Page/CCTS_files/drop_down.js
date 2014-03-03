var timeout = 500;
var closetimer = 0;
var ddmenuitem = 0;

function jsddm_open() {
    jsddm_canceltimer();
    jsddm_close();
    ddmenuitem = $(this).find('ul').css('visibility', 'visible');
    ddmenuitem = $(this).find('ul').css('display', 'block');

    if ($.browser.name == "msie" && $.browser.version < 8) {
        ddmenuitem = $(this).find('ul').css('margin-top', '28px');
    }
}

function jsddm_close() { if (ddmenuitem) ddmenuitem.css('visibility', 'hidden').css('display','none'); }

function jsddm_closetimer() { closetimer = window.setTimeout(jsddm_close, timeout); }

function jsddm_canceltimer() {
    if (closetimer) {
        window.clearTimeout(closetimer);
        closetimer = null;
    }
}

function toggleMoreOptionsTab(objButton) {
    animatedcollapse.toggle('MoreOptionsBar');
}

$(document).ready(function() {
    $('#MoreOptionsQuickLinks').bind('click', jsddm_open)
    $('#MoreOptionsQuickLinks > li').bind('mouseover', jsddm_open)
    $('#MoreOptionsQuickLinks > li').bind('mouseout', jsddm_closetimer)
    animatedcollapse.addDiv('MoreOptionsBar', 'speed=500');
    animatedcollapse.init();

    animatedcollapse.ontoggle = function($, divobj, state) {
    if (state != 'block') {
            $('#MoreOptionsToggleButton').css('background-image', "url(/resources/images/more_options_toptab_open.gif)");
        }
        else {
            $('#MoreOptionsToggleButton').css('background-image', "url(/resources/images/more_options_toptab_closed.gif)");
        }
    }
});

document.onclick = jsddm_close;