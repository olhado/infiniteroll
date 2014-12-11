function do_roll() {
  var input = document.querySelector('[name="roll_expr"]').value
  if (input.length==0) {
    document.querySelector('.current').innerHTML="&nbsp;";
    return;
  }
  else {
    var xmlhttp;
    if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
      xmlhttp=new XMLHttpRequest();
    }
    else {// code for IE6, IE5
      xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    }

    xmlhttp.onreadystatechange=function()
    {
    if (xmlhttp.readyState==4 && xmlhttp.status==200)
      {
        var json_data=eval("("+xmlhttp.responseText+")")
        if (json_data.status === "error") {
          // document.querySelector('.current').innerHTML="<span style=\"color:red;\">" + input + " = " + json_data.details[0] + "</span>";
          document.querySelector('.current').innerHTML="<span style=\"color:red;\">" + json_data + "</span>";
        }
        else {
          // document.querySelector('.current').innerHTML=input + " :|: " + json_data.rolls[0].text + " = " + json_data.rolls[0].result;
          document.querySelector('.current').innerHTML=json_data.rolls[0].roll.join("") + " = " + json_data.rolls[0].result;
        }
      }
    }

    xmlhttp.open("POST","/roll",true);
    xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    xmlhttp.send("roll_expr="+encodeURIComponent(input));
  }
}