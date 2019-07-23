
window.onload = function () {
    init();
}

function titre1() {
    document.write("<h1>Titre version 1</h1>");
}

function titre2() {
    document.write("<h1>Titre version 2</h1>");

}


function changeColor(elt, col) {
    elt.style.backgroundColor = col;
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
    var divs = document.getElementsByTagName("div");
    for (i = 0; i < divs.length; i++) {
        toggleOneDiv(divs[i]);
    }
}

function toggleOneDiv(d) {

    if ('none' == d.style.display) {
        d.style.display = d.dataset.display;
    }
    else {
        d.dataset.display = d.style.display;
        d.style.display = 'none';
    }

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
    left = document.querySelector(".fa-chevron-circle-left");
    right = document.querySelector(".fa-chevron-circle-right");
    button1 = document.querySelector("#appear");

    moveImg('diaporama', 0);
    left.onclick = function () { moveImg('diaporama', -1); };
    right.onclick = function () { moveImg('diaporama', 1); };
    button1.onclick = function () { toggleAllDivs(); };


    var monImage = document.querySelector('img[data-img]');
    var swi = function () { switchImage(monImage); }

    console.log(monImage);
    monImage.addEventListener('mouseenter', swi);
    monImage.addEventListener('mouseleave', swi);
    monImage.addEventListener('mouseenter',
        function () { changeBorder(monImage, '5px'); });
    monImage.addEventListener('mouseleave',
        function () { changeBorder(monImage, '0px'); });

         
}



