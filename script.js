
//fire the getItems() function when the page loads
$(document).ready(function () {

    //get all the item data
    getItems();

    $("#updateForm").submit(function (e) {
        e.preventDefault();
        const form = $(e.target);
        const json = convertFormToJSON(form);
        updateItem(json);
    });

    $("#item_form").on("submit", function (e) {
        e.preventDefault();
        const form = $(e.target);
        const json = convertFormToJSON(form);
        addItem(json);
    });
});

//this method will "get" all data, build the table rows and insert the HTML into the table body
function getItems() {

    //make a request to API
    $.get("./api/read.php", function (data) {

        //iterate over the JSON response, building an HTML string
        var html_string = "";

        $(data).each(function (key, object) {

            //HTML table row
            html_string += "<tr><td>" + object['name'] + "</td>";
            html_string += "<td>" + object['type'] + "</td>";
            html_string += "<td>" + object['date'] + "</td> <td>" + object['serial'] + "</td><td>" + object['location'] + "</td>";
            html_string += "<td><button type=\"button\"><a href=\"#\" onclick=\"getOneByID(" + object['id'] + "); return false;\">Edit</button></a>";
            html_string += "<td><button type=\"button\"><a href=\"#\" onclick=\"deleteOne(" + object['id'] + "); return false;\">Delete</button></a>";
            html_string += "</td></tr>";
            html_string += "<br><br><br>";
        });

        //set the HTML string on the client
        $("#table_body").html(html_string);

    });

}

//this method will "get" an item record (by item_id) and open a Dialog to view the details (e.g. order details)
function getOneByID(id) {

    //make a request to API
    $.get("./api/single_read.php/?id=" + id, function (data) {

        //build the dynamic HTML
        var html_string = "";

        $(data).each(function (key, object) {

            html_string += "<div class=\"form-group\">";
            html_string += "<label for=\"itemID\">Item ID</label>";
            html_string += "<input type=\"text\" class=\"form-control\" id=\"id\" name=\"id\" value=\"" + object['id'] + "\"readonly>";

            html_string += "<label for=\"itemName\">Item Name</label>";
            html_string += "<input type=\"text\" class=\"form-control\" id=\"name\" name=\"name\" value=\"" + object['name'] + "\">";

            html_string += "<label for=\"itemType\">Item Type</label>";
            html_string += "<input type=\"text\" class=\"form-control\" id=\"type\" name=\"type\" value=\"" + object['type'] + "\">";

            html_string += "<label for=\"purchaseDate\">Purchase Date</label>";
            html_string += "<input type=\"text\" class=\"form-control\" id=\"date\" name=\"date\" onfocus = \"(this.type = 'date')\" value=\"" + object['date'] + "\">";

            html_string += "<label for=\"serialNo\">Serial Number</label>";
            html_string += "<input type=\"text\" class=\"form-control\" id=\"serial\" name=\"serial\" value=\"" + object['serial'] + "\">";

            html_string += "<label for=\"itemType\">Purchase Location</label>";
            html_string += "<input type=\"text\" class=\"form-control\" id=\"location\" name=\"location\" value=\"" + object['location'] + "\">";
            html_string += "<br><button type=\"submit\" class=\"btn btn-primary\">Save Changes</button>";
            html_string += "</div>";
        });
        //set the HTML in the div on the dialog
        $("#updateForm").html(html_string);

        $('#Modal').modal()

    });

}

function deleteOne(item_id) {
    const item = { id: item_id };
    const itemJSON = JSON.stringify(item);

    $.post("./api/delete.php", itemJSON, function (status) {
        alert(status);
        location.reload(true);
    });
}


function addItem(formData) {
    $.post("./api/create.php", JSON.stringify(formData), function (status) {
        alert(status);
        location.reload(true);
    });

}
function updateItem(formData) {
    $.post("./api/update.php", JSON.stringify(formData), function (status) {
        alert(status);
        location.reload(true);
    });

}

function convertFormToJSON(form) {
    const array = $(form).serializeArray(); // Encodes the set of form elements as an array of names and values.
    const json = {};
    $.each(array, function () {
        json[this.name] = this.value || "";
    });
    return json;
}



