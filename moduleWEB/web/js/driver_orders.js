$(document).ready(function(){
    getQueuedOrders();
});

function getQueuedOrders(){
        $.ajax({
            method: 'POST',
            url: 'api/driver/getQueuedOrders',
            contentType: "text/plain; charset=utf-8",
            dataType: 'text',
            success: function (data, textStatus, jqXHR) {
                var obj = JSON.parse(data);
                alert(obj);
                drawTable(obj.orders, "driverQueuedOrdersPanel");
            },
            error: function (jqXHR, textStatus, errorThrown) {
                alert(jqXHR.responseText + " Error!");
            }
        })

}


function drawTable(data, table) {
    for (var i = 0; i < data.length; i++) {
        drawBody(data[i], table);
    }
}
function drawBody(rowData, table) {

    var div = document.getElementById(table);
    var createDiv = document.createElement("div");
    var node = document.createTextNode("date :" + rowData.dateOrderCreate
    + " first point :" + rowData.startOrder
    + " next point :" + rowData.endOrder
    + " status :" + rowData.statusOrder
    + " price: " + rowData.price + "$");
    createDiv.appendChild(node);
    createDiv.className = "button";
    createDiv.onclick = function () {
        document.location.href = "editOrder.jsp?id=" + rowData.id;
    };
    div.appendChild(createDiv);
}