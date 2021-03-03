var Tproducts = document.getElementsByClassName('Tproduct')
var TOTAL = 0

for (let i = 0; i < Tproducts.length; i++) {
    TOTAL = TOTAL + parseFloat(Tproducts[i].innerText)
}

document.getElementById('total').innerText = TOTAL