  'use strict';

  var pn_ul = document.getElementsByClassName('pnlist');
  var $input = document.getElementById('search-input');
  var ulLen = pn_ul.length;
  var app_index = lunr.Index.load(window.APP_SEARCH_INDEX);
  var script_index = lunr.Index.load(window.SCRIPT_SEARCH_INDEX);
  var lib_index = lunr.Index.load(window.LIB_SEARCH_INDEX);

  function pnAddClass(elem, className) {
    var classList = elem.classList;

    if (!classList.contains(className)) {
      classList.add(className);
    }
  }

  function pnRemoveClass(elem, className) {
    var classList = elem.classList;

    if (classList.contains(className)) {
      classList.remove(className);
    }
  }

  function pnnSearch(elements, value, index) {
    var result = index.search('*' + value + '*');
    var len = result.length;
    var selected = {};
    var elementLen = elements.length;
    var i = 0;

    for (i = 0; i < len; i++) {
      selected[result[i].ref] = true;
    }

    for (i = 0; i < elementLen; i++) {
      if (selected[i]) {
        pnAddClass(elements[i], 'on');
      } else {
        pnRemoveClass(elements[i], 'on');
      }
    }
  }

  function pnSearch(value) {
    var arr_index = [app_index, script_index, lib_index];
    for (var i = 0; i < ulLen; i++) {
      var elements = pn_ul[i].getElementsByTagName("li");
      var index = arr_index[i];
      pnnSearch(elements, value, index);
    }
  }

  function pnShuffle(array) {
    var arr = Array.from(array);
    var currentIndex = array.length, temporaryValue, randomIndex;

    // While there remain elements to shuffle...
    while (0 !== currentIndex) {

      // Pick a remaining element...
      randomIndex = Math.floor(Math.random() * currentIndex);
      currentIndex -= 1;

      // And swap it with the current element.
      temporaryValue = arr[currentIndex];
      arr[currentIndex] = arr[randomIndex];
      arr[randomIndex] = temporaryValue;
    }

    return arr;
  }

  function displayRandom() {
    for (var i = 0; i < ulLen; i++) {
      var elements = pnShuffle(pn_ul[i].getElementsByTagName("li"));
      var elementLen = elements.length;
      for (var j = 0; j < elementLen; j++) {
        pnRemoveClass(elements[j], 'on');        
      }
      for (var j = 0; j < elementLen; j++) {
        pnAddClass(elements[j], 'on');        
        if (j == 5) {break;}
      }
    }
  }

  $input.addEventListener('input', function() {
    var value = this.value;

    if (!value) return displayRandom();
    pnSearch(value);
  });

  if (window.addEventListener)
      window.addEventListener("load", displayRandom, false);
  else if (window.attachEvent)
      window.attachEvent("onload", displayRandom);
  else window.onload = displayRandom;