
function titre1() {
    document.write("<h1>Titre version 1</h1>");
}

function titre2() {
    document.write("<h1>Titre version 2</h1>");

}


function changeColor(elt, col) {
   $(elt).css("background-color",col);
}


function hideAllDivs() {
    var divs = document.getElementsByTagName("div");
    for (i = 0; i < divs.length; i++) {
        divs[i].style.display = "none";
    }
}

function showAllDivs() {
    var divs = document.getElementsByTagName("div");
    for (i = 0; i < divs.length; i++) {
        divs[i].style.display = "";
    }
}

function toggleAllDivs() {
    // var divs = document.getElementsByTagName("div");
    divs = $('div');
    divs.each(function(){
        $(this).toggle();
    })
}


function switchImage(i) {
    tmp = i.src;
    i.src = i.dataset.img;
    i.dataset.img = tmp;
}

function changeBorder(i, taille) {
    i.style.borderWidth = taille;
    i.style.borderStyle = 'solid'; 
}

function moveImg(id, n) {
    //RECUP DE L'IMAGE
    elt = document.getElementById(id);

    //SPLIT DE LA LISTE 
    images = elt.dataset.imgs.split(',');

    //CHANGEMENT DU COMPTEUR
    compteur = elt.dataset.compteur;

    if (typeof (compteur) == 'undefined')
        compteur = 0;
    else
        compteur = Number(compteur) + n;

    //DEPASSEMENTS ??
    if (compteur < 0)
        compteur = images.length - 1;
    if (compteur >= images.length)
        compteur = 0;

    //PLACEMENT DE L'IMAGE
    elt.dataset.compteur = compteur;
    elt.src = 'src/' + images[compteur] + '.png';

}


    function init() {
    left = $(".fa-chevron-circle-left");
    right = $(".fa-chevron-circle-right");
    button1 = $("#appear");

    moveImg('diaporama', 0);
    left.click(function() { moveImg('diaporama', -1); });
    right.click(function() { moveImg('diaporama', 1); });
    button1.click(function() { toggleAllDivs(); });


    var monImage = $('img[data-img]').first();
    var swi = function() { switchImage(monImage); }

    console.log(monImage);
    monImage.mouseenter(swi);
    monImage.mouseleave(swi);
    monImage.mouseenter(function() { changeBorder(monImage, '5px'); });
    monImage.mouseleave(function() { changeBorder(monImage, '0px'); });
}

$(document).ready(init)



