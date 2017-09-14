/**
 * 
 */

function addPet(){
    var div = document.createElement('div');        
    div.innerHTML = document.getElementById('petReg').innerHTML;    
    document.getElementById('field').appendChild(div);
}


function remove_div(pet){
document.getElementById('field').removeChild(pet.parentNode);

}




