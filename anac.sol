pragma solidity ^0.4.19;

contract anacContract {

 //Define como público o endereço do criador do contrato

    address public owner; 

    constructor() public {
        owner = msg.sender;
    }


    uint idade = 18; // Cria a variável idade com o valor 18 como padrão


// Função para indicar a idade (publica, mas restrita ao dono do contrato)

    function setIdade(uint idadeInformada) public {
        require(msg.sender == owner, "ID nao corresponde ao dono do contrato");
        idade = idadeInformada;
    }



// Função pública para retornar a idade (sem requisições)

    function getIdade() public constant returns (uint) {
        return idade;
    }

}
