$(document).ready(function () {
    $.getJSON('http://localhost:8080/spots', function (json) {
        console.log(json)
        var tr = [];
        tr.push('<tr>');
        for (var i = 0; i < json.length; i++) {
            tr.push('<th>' + json[i].number + '</th>');
        }
        tr.push('</tr>');
        $('#spots').append($(tr.join('')));
    });
});