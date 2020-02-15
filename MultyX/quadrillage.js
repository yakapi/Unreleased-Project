$(document).ready(function(){

//Constructeur header
function quad_header(name){
  this.name = name;
  let headerX = document.getElementById('upSide');
  let quad_header_box = document.createElement('div');
  quad_header_box.classList.add('qBox-header');
  let quad_svg = $("#quad-svg").html();
  quad_header_box.innerHTML = quad_svg;
  headerX.appendChild(quad_header_box);
  let quad_move = setInterval(function(){
      let quad_pos_top = parseInt(window.getComputedStyle(quad_header_box).getPropertyValue("top"));
      let quad_pos_left = parseInt(window.getComputedStyle(quad_header_box).getPropertyValue("left"));
      let n_pos_left = quad_pos_left - 1;
      let n_pos_top = quad_pos_top + 1;
      quad_header_box.style.top = n_pos_top + "px";
      quad_header_box.style.left = n_pos_left + "px";
    },1000);
    this.fadeIn = $(quad_header_box).fadeOut(4000);
    this.autoRemove = setTimeout(function(){
      quad_header_box.remove();
    },5000);
    this.autoStop = setTimeout(function(){
      clearInterval(quad_move);
    },5000);
};

//Constructeur Footer
function quad_footer(name){
  this.name = name;
  let footerX = document.getElementById('downSide');
  let quad_footer_box = document.createElement('div');
  quad_footer_box.classList.add('qBox-footer');
  let quad_svg = $("#quad-svg").html();
  quad_footer_box.innerHTML = quad_svg;
  footerX.appendChild(quad_footer_box);
  let quad_move = setInterval(function(){
      let quad_pos_bot = parseInt(window.getComputedStyle(quad_footer_box).getPropertyValue("bottom"));
      let quad_pos_left = parseInt(window.getComputedStyle(quad_footer_box).getPropertyValue("left"));
      let n_pos_left = quad_pos_left + 1;
      let n_pos_bot = quad_pos_bot + 1;
      quad_footer_box.style.bottom = n_pos_bot + "px";
      quad_footer_box.style.left = n_pos_left + "px";
    },1000);
    this.fadeIn = $(quad_footer_box).fadeOut(4000);
    this.autoRemove = setTimeout(function(){
      quad_footer_box.remove();
    },5000);
    this.autoStop = setTimeout(function(){
      clearInterval(quad_move);
    },5000);
};

let autoGenerateQ = setInterval(function(){
  let quadHeader = new quad_header("topRight");
  let quadFooter = new quad_footer("botLeft");
},3200);

});
