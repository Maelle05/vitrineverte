var inputs = document.getElementsByName('order[product_in_orders][]')
var productTable = document.getElementsByClassName('products')
var priceTable = document.getElementsByClassName('price')
var listContainerSummary = document.getElementById('renderOrderSummery')
var summaryTable = []


for (let i = 0; i < inputs.length; i++) {
    inputs[i].addEventListener("click", function(){updateOrder(i)}, false);
}

for (let y = 0; y < productTable.length; y++) {
    summaryTable.push([productTable[y].innerText, parseFloat(inputs[y].value), parseFloat(priceTable[y].innerText)])
}

// console.log(summaryTable)

renderList()

function renderList(){
    listContainerSummary.innerHTML = ''
    var priceOrder = 0
    for (let k = 0; k < summaryTable.length; k++) {
        if(summaryTable[k][1] > 0){
            listContainerSummary.innerHTML += '<li class="list-group-item">' + summaryTable[k][1] + ' x ' + summaryTable[k][0] + ' <p class="position-absolute top-50 end-0 translate-middle-y" > € ' + summaryTable[k][1]*summaryTable[k][2] + '</p> </li>';
            priceOrder = priceOrder + (summaryTable[k][1]*summaryTable[k][2])
        }
    }    
    listContainerSummary.innerHTML += '<li class="list-group-item"> TOTAL : ' + priceOrder +' € </li>';
}

function updateOrder(numberInput) {
    let value = inputs[numberInput].value
    summaryTable[numberInput][1] = parseFloat(value)
    renderList()
}


