function hideElement(elt) {

    if (elt.value == "maison") {
        document.getElementById("maison").style.display = "block";
        document.getElementById("appartement").style.display = "none";

    }
    else if (elt.value == "appartement") {
        document.getElementById("appartement").style.display = "block";
        document.getElementById("maison").style.display = "none";
    }
    else {
        document.getElementById("appartement").style.display = "none";
        document.getElementById("maison").style.display = "none";
    }
}


function requirement() {
    elements = document.querySelectorAll('label');
    for (i = 0; i < elements.length; i++) {
        elt = elements[i];
        do {
            elt = elt.nextElementSibling;
        } while (elt != null && elt.nodeType !== Node.ELEMENT_NODE)
        if (elt != null) elt.firstElementChild.setAttributes("required", true);
    }
}



function autoCities() {
    var $input = $("#city");

    $input.typeahead({
      
        hint: true, minLenght: 3, highlight: true,

        source: function(query, process) {
            var url = "http://localhost/realestate/server/loadcities.php?q=" + query;
            return $.get(url, function(response) {
                var cities = new Array();
                for (var city in response) {
                    cities.push(response[city].name);
                }
                return process(cities);
            })
        }
    });

    
    $input.change(function() {
        var current = $input.typeahead("getActive");
        if (current) {
          $('#cityid').val(current);
          if (current.name == $input.val()) {
            // This means the exact match is found. Use toLowerCase() if you want case insensitive match.
          } else {
            // This means it is only a partial match, you can either add a new item
            // or take the active if you don't want new items
          }
        } else {
          // Nothing is active so it is a new value (or maybe empty value)
        }
      });
}

$('form#depot').submit(
    function(evt) {
        if (!$(this).valid()) {
            evt.preventDefault();
        }
    }
);



$(document).ready(autoCities);

