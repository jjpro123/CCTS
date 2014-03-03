// JavaScript Document

/* ===================================================
     SendGoogleSearch.js
     Used for all search engines
     
     Created by Autumn 2010
     Updated 7/27/11 by Jason - documentation, added News search
     Updated August '11 by Jason - added Magazine search
     Updated September '11 by Jason - added Library search
	 Update 3/16/12 by Jason - added settimeout functions to sendSearch() to make the enter kety submit search again for all sites. Unknown why this issue occurred.
	 Update 3/16/12 by David - pulled the detection into its own function to best centralize detection to make sure everything behaves the same way
	 Update 3/16/12 by David - changed the SendSearch* functions to redirect by window.location = url instead of window.location.replace(url) so that users can have history on where they came from
	 Update 4/17/12 by David - Updated SendSearch to accept an id for the textbox to examine
	 Update 4/17/12 by David - Updated checkForEnterKey to accept an id for the textbox to examine
	 Update 4/17/12 by David - Updated clearSearchField to remove redundant hard-coded textbox references. Now it uses the provided textbox.
	 Update 4/17/12 by David - Added extension to provide ability to examine querystrings
	 Update 4/17/12 by David - Added SetSearchContents which accepts the ID of a textbox to populate with the querystring property for the search expresssion
	 Update 7/16/12 by David - Added checkForEnterKeyLibrary()
	 
================================================== */	
/*

To go on the page:---------------------------------------

<script type="text/javascript" src="http://www.google.com/jsapi"></script>
<script type="text/javascript">
	google.load('search', '1');
	google.setOnLoadCallback(function() {
		google.search.CustomSearchControl.attachAutoCompletion(
		'013219616395457722490:hf8sehi1km0 ',                    //Unique Google CSE ID
		document.getElementById('librarySearch'),                //ID & NAME of input element below
		'cse-search-box');
	});
</script>

<div>
 <input type="text" name="librarySearch" id="librarySearch" autocomplete="off" size="31" />    //ID & NAME of input element above
 <input type="button" name="sa" value="Search" onclick="SendSearchLibrary();" />               //Unique function name below
</div>

<script type="text/javascript" src="http://www.google.com/cse/brand?form=cse-search-box&lang=en"></script>
*/


/* ==================== Search functions ==================== */
function SetSearchContents(txtID)
{
	var query = $.getUrlVar('q');
	$("#"+txtID).val(decodeURIComponent(query));
}

function SendSearch(txtID) //Global Search in #header
{
	if (txtID != null)
	{
		var searchTerm = $("#"+txtID).val();
	}
	else
	{
		var searchTerm = $("#q").val();
	}
	//alert("SendSearch is go!");
	window.location = '/searchresults.aspx?cx=013219616395457722490:ave_ey_xavm&cof=FORID:10&ie=UTF-8&q='+searchTerm;
}

function SendSearchLibrary() //library
{
	var searchTerm = $("#librarySearch").val();
	window.location = '/searchresults.aspx?cx=013219616395457722490:hf8sehi1km0&cof=FORID:10&ie=UTF-8&q='+searchTerm;
}

function SendSearchMagazine() //magazine
{
	var searchTerm = $("#magazineSearch").val();
	window.location = '/magazine/searchresults.aspx?cx=013219616395457722490:thoe-oldhqi&cof=FORID:10&ie=UTF-8&q='+searchTerm;
}
function SendSearchNews() //magazine
{
	var searchTerm = $("#newsSearch").val();
	window.location = '/news/searchresults.aspx?cx=013219616395457722490:qwj45oonqng&cof=FORID:10&ie=UTF-8&q='+searchTerm;
}

function clearSearchField(text){
	if(text.value == 'Search Seattle University' || text.value == 'Search SU Magazine' || text.value == 'Search SU News'){ /* if the default text... */
		$(text).val('');
		$(text).attr('className','TabOn'); /* switch class to "used" for IE */
		$(text).addClass('used'); /* switch class to "used" the rest of the world */
	}
}

function checkForEnterKey(keypress, txtID) {  
	if (isKeypressEnter(keypress, txtID))
	{
		SendSearch(txtID);
		return false;
	}
	else
	{
		return true;
	}
}
function checkForEnterKeyLibrary(keypress) {      
	if (isKeypressEnter(keypress))
	{
		SendSearchLibrary();
		return false;
	}
	else
	{
		return true;
	}
}
function checkForEnterKeyMagazine(keypress) {      
	if (isKeypressEnter(keypress))
	{	
		SendSearchMagazine();
		return false;
	}
	else
	{
		return true;
	}
}
function checkForEnterKeyNews(keypress) {
	if (isKeypressEnter(keypress))
	{
		SendSearchNews();
		return false;
	}
	else
	{
		return true;
	}
}

function isKeypressEnter(e)
{
	var code = (e.keyCode ? e.keyCode : e.which);
	if(code == 13) {
		return true;
	}
	else {
		return false;
	}	
}


$.extend({
  getUrlVars: function(){
    var vars = [], hash;
    var hashes = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&');
    for(var i = 0; i < hashes.length; i++)
    {
      hash = hashes[i].split('=');
      vars.push(hash[0]);
      vars[hash[0]] = hash[1];
    }
    return vars;
  },
  getUrlVar: function(name){
    return $.getUrlVars()[name];
  }
});