/**
 * 
 */let amountElement = document.getElementById('amount');
let amount = amountElement.value;

let render = (amount) =>{
    amountElement.value = amount
}

//su ly plus
let handlePlush = () =>{
    amount++
    render(amount);
}

 //su ly Minus

 let handleMinus = () =>{
    if(amount > 1)
        amount--
    render(amount)
 }