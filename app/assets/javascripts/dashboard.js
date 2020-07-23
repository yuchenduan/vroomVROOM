 document.querySelectorAll(".tradingview").forEach(function(row1){
   row1.addEventListener("click", function(){
    if (row1.parentNode.parentNode.children[1].style.display != "flex"){
     document.querySelectorAll(".tradingview").forEach(function(row){
       row.parentNode.parentNode.style.height = "10vh";
       row.parentNode.parentNode.children[0].style.height = "100%";
       row.parentNode.parentNode.children[1].style.display = "none";
     });
     row1.parentNode.parentNode.style.height = "63vh";
     row1.parentNode.parentNode.children[0].style.height = "30%";
     row1.parentNode.parentNode.children[1].style.displa