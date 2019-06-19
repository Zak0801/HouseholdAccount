var check = function(){
    var element = document.getElementById("category");
    console.log(element.value)
    if(element.value==="現金" || element.value==="クレジットカード"){
        document.getElementById("product_name").style.display="block";
    }
    else{
        document.getElementById("product_name").style.display="none";
    }
}
