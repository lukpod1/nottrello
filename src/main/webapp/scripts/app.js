var inputElement = document.querySelector('#nome');
var btntElement = document.querySelector('#app button');
var table = document.querySelector('#tabelaPre');


var paraFazer = JSON.parse(localStorage.getItem('lista_itens'))  || [];

function renderFazer(){
    table.innerHTML = '';
    for(fazer of paraFazer){
        var linha = document.createElement('tr');
        var fazerText = document.createTextNode(fazer);
        
        var colnome = document.createElement('td');      
        
        var colexcluir = document.createElement('td');
        var pos = paraFazer.indexOf(fazer);
        
        var linkElement = document.createElement('a');        
        linkElement.setAttribute('href', '#');
        linkElement.setAttribute('onclick', 'deletaParaFazer('+ pos +')');     

        
        var linkText = document.createTextNode('Excluir');
        linkElement.appendChild(linkText);
        
        table.appendChild(linha);
        linha.appendChild(colnome);        
        linha.appendChild(colexcluir);
        colnome.appendChild(fazerText);
        colexcluir.appendChild(linkElement);
        

        

        
        
        
       
    }
    

}
renderFazer();

function addParaFazer(){
    var inputText = inputElement.value;       
    paraFazer.push(inputText);    
    inputElement.value = '';
    renderFazer();
    salvaParaFazer();
}

btntElement.onclick = addParaFazer;

function deletaParaFazer(pos){
    paraFazer.splice(pos , 1);
    renderFazer();
    salvaParaFazer();
}

function salvaParaFazer(){
    localStorage.setItem('lista_itens', JSON.stringify(paraFazer));
}