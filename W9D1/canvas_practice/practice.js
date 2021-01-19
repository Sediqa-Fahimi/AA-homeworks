document.addEventListener("DOMContentLoaded", function(){
    const canv = document.getElementById("mycanvas");
    const ctx = canv.getContext('2d');
  
    ctx.fillRect(130, 200, 40, 60);

    ctx.beginPath();
    ctx.arc(100, 75, 50, 0, 2 * Math.PI);
    ctx.stroke();
});
