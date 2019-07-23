function ajaxDiaporama() {
    //OBJET 
    xhr = new XMLHttpRequest();

    //PREP REPONSE
    xhr.onreadystatechange = function () {
        if (xhr.readyState == 4) {
            if (xhr.status == 200) {
                // OK
                //UTILISER xhr.responseText
                document.getElementById('complements').innerHTML = xhr.responseText;
            }
            else {
                // NOT OK
                //UTILISER xhr.responseText
            }
        }
        else {
            console.log(xhr.readyState);
        }
    };

    // POSE LA QUESTION (ENVOIE LA REQUETE)
    xhr.open('GET', 'http://localhost/realestate/complements.txt', true);
    xhr.send(null);
}


function ajaxSelect() {
    //OBJET 
    xhr = new XMLHttpRequest();

    //PREP REPONSE
    xhr.onreadystatechange = function () {
        if (xhr.readyState == 4) {
            if (xhr.status == 200) {
                types = JSON.parse(xhr.responseText);
                selectbox = document.getElementById('selectEstates');
                removeOptions(selectbox);
                console.log(types);
                for (i = 0; i < types.length; i++) {
                    addOption(selectbox, types[i].option, types[i].value);
                }

            }
            else {
                // NOT OK
                //UTILISER xhr.responseText
            }
        }
        else {
            console.log(xhr.readyState);
        }
    };

    // POSE LA QUESTION (ENVOIE LA REQUETE)
    xhr.open('GET', 'http://localhost/realestate/realestates.json', true);
    xhr.send(null);
}


function removeOptions(selectbox) {
    for (i = selectbox.options.length - 1; i >= 0; i--) {
        selectbox.remove(i);
    }

}

function addOption(selectbox, txt, val) {
    var option = document.createElement("option");
    option.text = txt;
    option.value = val;
    selectbox.add(option);
}

function inputHasChanged(inp) {
    var val = inp.val();
    if (val.length > 2) {
        var query = 'http://localhost/realestate/server/loadcities.php?q=' + val;
        $.get(query, function (data) {
            console.log(data);
        });
    }
}

$(document).ready(function() {
    ihc = function() {
        inputHasChanged($('#search'));
    }
    $('#search').keyup(ihc);
});


