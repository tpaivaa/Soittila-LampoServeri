function haeData()
{
if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp=new XMLHttpRequest();
  }
else
  {// code for IE6, IE5
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  } 
xmlhttp.open("GET","puuKattila.html",false);
xmlhttp.send();
puukattila=xmlhttp.responseText;
document.getElementById("puukattila").innerHTML=puukattila;

xmlhttp.open("GET","varaajaUp.html",false);
xmlhttp.send();
varaajaUp=xmlhttp.responseXML;
document.getElementById("varaajaUp").innerHTML=varaajaUp;

xmlhttp.open("GET","varaajaDown.html",false);
xmlhttp.send();
varaajaDown=xmlhttp.responseXML;
document.getElementById("varaajaDown").innerHTML=varaajaDown;

xmlhttp.open("GET","kattilaCold.html",false);
xmlhttp.send();
kattilaCold=xmlhttp.responseXML;
document.getElementById("kattilaCold").innerHTML=kattilaCold;

xmlhttp.open("GET","kattilaHot.html",false);
xmlhttp.send();
kattilaHot=xmlhttp.responseXML;
document.getElementById("kattilaHot").innerHTML=kattilaHot;

xmlhttp.open("GET","patteriL.html",false);
xmlhttp.send();
patteriL=xmlhttp.responseXML;
document.getElementById("patteriL").innerHTML=patteriL;

xmlhttp.open("GET","LLlahto.html",false);
xmlhttp.send();
LLlahto=xmlhttp.responseXML;
document.getElementById("LLlahto").innerHTML=LLlahto;

xmlhttp.open("GET","kattilaSw.html",false);
xmlhttp.send();
kattilaSw=xmlhttp.responseXML;
document.getElementById("kattilaSw").innerHTML=kattilaSw;

xmlhttp.open("GET","laskuriB.html",false);
xmlhttp.send();
laskuriB=xmlhttp.responseXML;
document.getElementById("laskuriB").innerHTML=laskuriB;

xmlhttp.open("GET","laskuriA.html",false);
xmlhttp.send();
laskuriA=xmlhttp.responseXML;
document.getElementById("laskuriA").innerHTML=laskuriA;

xmlhttp.open("GET","maalampo.html",false);
xmlhttp.send();
maalampo=xmlhttp.responseXML;
document.getElementById("maalampo").innerHTML=maalampo;

xmlhttp.open("GET","ulkoE.html",false);
xmlhttp.send();
ulkoE=xmlhttp.responseXML;
document.getElementById("ulkoE").innerHTML=ulkoE;

xmlhttp.open("GET","ulkoP.html",false);
xmlhttp.send();
ulkoP=xmlhttp.responseXML;
document.getElementById("ulkoP").innerHTML=ulkoP;

xmlhttp.open("GET","akWcLattia.html",false);
xmlhttp.send();
akWcLattia=xmlhttp.responseXML;
document.getElementById("akWcLattia").innerHTML=akWcLattia;

xmlhttp.open("GET","khh.html",false);
xmlhttp.send();
khh=xmlhttp.responseXML;
document.getElementById("khh").innerHTML=khh;

xmlhttp.open("GET","olohuone.html",false);
xmlhttp.send();
olohuone=xmlhttp.responseXML;
document.getElementById("olohuone").innerHTML=olohuone;

xmlhttp.open("GET","makuuhuone.html",false);
xmlhttp.send();
makuuhuone=xmlhttp.responseXML;
document.getElementById("makuuhuone").innerHTML=makuuhuone;

xmlhttp.open("GET","sauna.html",false);
xmlhttp.send();
sauna=xmlhttp.responseXML;
document.getElementById("sauna").innerHTML=sauna;
}
haeData();