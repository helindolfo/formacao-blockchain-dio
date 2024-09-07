// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26; // Define a versão do compilador Solidity a ser usada

// Interface ERC20 define os métodos e eventos que o contrato deve implementar
interface IERC20{

    // Funções de leitura (getters)
    function totalSupply() external view returns(uint256); // Retorna o total de tokens em circulação
    function balanceOf(address account) external view returns (uint256); // Retorna o saldo de tokens de uma conta específica
    function allowance(address owner, address spender) external view returns (uint256); // Retorna a quantidade permitida que um gastador pode gastar da conta do proprietário

    // Funções de escrita
    function transfer(address recipient, uint256 amount) external returns (bool); // Transfere tokens para o endereço do destinatário
    function approve(address spender, uint256 amount) external returns (bool); // Aprova um gastador para gastar uma quantia específica da conta do proprietário
    function transferFrom(address sender, address recipient, uint256 amount) external returns (bool); // Transfere tokens de um endereço para outro, usando a permissão dada anteriormente

    // Eventos são usados para notificar sobre ações realizadas
    event Transfer(address indexed from, address indexed to, uint256 value); // Emitido quando tokens são transferidos
    event Approval(address indexed owner, address indexed spender, uint256); // Emitido quando um gastador é aprovado

}
// Contrato HELToken implementa a interface IERC20
contract HELToken is IERC20{

    string public constant name = "HEL Token"; // Nome do token
    string public constant symbol = "HEL"; // Símbolo do token
    uint8 public constant decimals = 18; // Número de casas decimais do token (18 é padrão para muitos tokens)

    mapping (address => uint256) balances; // Mapeia endereços para seus saldos

    mapping(address => mapping(address=>uint256)) allowed; // Mapeia endereços para permissões de gasto (quanto um gastador pode gastar da conta do proprietário)

    uint256 totalSupply_ = 10 ether; // Total de tokens em circulação (10^18 * 10, equivalente a 10 ETH)

    // Construtor do contrato que inicializa o saldo do criador do contrato
    constructor(){
        balances[msg.sender] = totalSupply_; // Atribui o totalSupply_ ao saldo do criador do contrato
    }

    function totalSupply() public override view returns (uint256) {
        return totalSupply_; // Retorna o total de tokens em circulação
    }

    function balanceOf(address tokenOwner) public override view returns (uint256){
        return balances[tokenOwner]; // Retorna o saldo de tokens de uma conta específica
    }

    // Transfere tokens para o endereço do destinatário
    function transfer(address receiver, uint256 numTokens) public override returns (bool) {
        require(numTokens <= balances[msg.sender]); // Verifica se o chamador tem tokens suficientes para a transferência
        balances[msg.sender] = balances[msg.sender]-numTokens; // Reduz o saldo do chamador
        balances[receiver] = balances[receiver]+numTokens; // Aumenta o saldo do destinatário
        emit Transfer(msg.sender, receiver, numTokens); // Emite o evento de Transferência
        return true;
    }

    // Aprova um gastador para gastar uma quantia específica da conta do chamador
    function approve(address delegate, uint256 numTokens) public override returns (bool) {
        allowed[msg.sender][delegate] = numTokens; // Define a quantidade permitida que o gastador pode gastar
        emit Approval(msg.sender, delegate, numTokens); // Emite o evento de Aprovação
        return true;
    }

    // Retorna a quantidade de tokens que um gastador pode gastar da conta do proprietário
    function allowance(address owner, address delegate) public override view returns (uint) {
        return allowed[owner][delegate];
    }

    // Transfere tokens de uma conta para outra usando a permissão dada anteriormente
    function transferFrom(address owner, address buyer, uint256 numTokens) public override returns (bool) {
        require(numTokens <= balances[owner]); // Verifica se o proprietário tem tokens suficientes para a transferência
        require(numTokens <= allowed[owner][msg.sender]); // Verifica se o gastador tem permissão suficiente

        balances[owner] = balances[owner]-numTokens; // Reduz o saldo do proprietário
        allowed[owner][msg.sender] = allowed[owner][msg.sender]-numTokens; // Reduz a quantidade permitida para o gastador
        balances[buyer] = balances[buyer]+numTokens; // Aumenta o saldo do comprador
        emit Transfer(owner, buyer, numTokens); // Emite o evento de Transferência
        return true;
    }

}
