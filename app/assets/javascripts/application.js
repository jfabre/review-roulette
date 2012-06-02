// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require_tree .


var setWinner;
var loop;
var time;

function randomize(attributes){
  return Math.floor((Math.random()* attributes.ratio)+1) + attributes.start; 
};
function nextDraw(){
  loop = randomize({start:3,  ratio: 10});
  time = randomize({start:3,  ratio: 10}) * 1000;
}

nextDraw();
$('.slot').jSlots({
    spinner : 'button.go',
    number : 1,
    easing : 'swing',      
    time : time,         
    loops : loop,
    onEnd: function(winner){
      nextDraw();
      $('button.go').button('reset');

      $("input[type='submit']")
        .removeClass('disabled')
        .removeAttr('disabled');

      setWinner(winner);
  },
    onStart: function(){
      $('button.go').button('loading');
    }
});