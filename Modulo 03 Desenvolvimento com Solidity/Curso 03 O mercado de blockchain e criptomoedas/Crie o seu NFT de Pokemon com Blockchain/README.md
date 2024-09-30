# Projeto: Jogo de Pokémon - PokeDIO

## Descrição

Este projeto consiste na criação de um jogo de Pokémon chamado **PokeDIO**, onde os jogadores podem criar, batalhar e transferir Pokémons, que são representados como NFTs utilizando o padrão ERC-721. O jogo é desenvolvido em Solidity e implementado na rede de teste Holesky.

## Tecnologias Utilizadas

- **Solidity**: Linguagem de programação para contratos inteligentes.
- **Remix IDE**: Ambiente de desenvolvimento para escrever e testar contratos em Solidity.
- **Metamask**: Carteira para interagir com a blockchain.
- **Filebase**: Armazenamento descentralizado de metadados e imagens de Pokémons.
- **Holesky**: Rede de teste escolhida para garantir que todas as transações sejam registradas na blockchain e estejam publicamente disponíveis.

### Justificativa das Escolhas

- **Substituição do Ganache pela Holesky**: A rede Holesky foi escolhida por permitir o registro público de todas as transações, garantindo maior transparência e acessibilidade ao nosso projeto. Isso é especialmente útil para a validação das interações no jogo.
- **Substituição do IPFS pela Filebase**: O Filebase foi selecionado como solução para o armazenamento descentralizado de metadados e imagens dos Pokémons, pois oferece uma interface web simples e armazenamento confiável, facilitando o upload e a gestão de arquivos.
- **Criação de Personagens Únicas**: Devido a questões de direitos autorais, optamos por criar personagens originais utilizando inteligência artificial para a geração das imagens. Isso garante que os Pokémons sejam únicos e livres de violação de direitos.

## Funcionalidades

- **Criação de Pokémons**: Os jogadores podem criar novos Pokémons com atributos únicos.
- **Batalhas**: Os jogadores podem batalhar com seus Pokémons, aumentando níveis com base no resultado da batalha.
- **Transferência de NFTs**: Os Pokémons podem ser transferidos entre carteiras, permitindo negociação e troca.

## Transações Importantes

### 1. **Deploy do Contrato**
   - **Hash**: [0x8697ed1a3eaf452fd0b86a8c26a6b8724b67910e90e3c672384871f946b6b9cc](https://holesky.etherscan.io/tx/0x8697ed1a3eaf452fd0b86a8c26a6b8724b67910e90e3c672384871f946b6b9cc)
   - **Descrição**: O contrato do jogo de Pokémon foi implementado na rede de teste Holesky.

### 2. **Mint do NFT Aquaflare**
   - **Hash**: [0x3adafd3a2b00864196a2ec5186b7a48a82f1ee14af967fcd331438cd808a516c](https://holesky.etherscan.io/tx/0x3adafd3a2b00864196a2ec5186b7a48a82f1ee14af967fcd331438cd808a516c)
   - **Descrição**: Criação do NFT do Pokémon **Aquaflare** com atributos específicos.

### 3. **Mint do NFT Rockthorn**
   - **Hash**: [0x04b2c98bd31b8b97fc9dff744bf625b5f0026b0073fa24a8cabfeec2f6a570b6](https://holesky.etherscan.io/tx/0x04b2c98bd31b8b97fc9dff744bf625b5f0026b0073fa24a8cabfeec2f6a570b6)
   - **Descrição**: Criação do NFT do Pokémon **Rockthorn**.

### 4. **Batalha 1**
   - **Hash**: [0xabbcfe463bb91b59aa95a70d49c62c49d9b2d41b5a3caf202ac1be256bf9b807](https://holesky.etherscan.io/tx/0xabbcfe463bb91b59aa95a70d49c62c49d9b2d41b5a3caf202ac1be256bf9b807)
   - **Descrição**: Primeira batalha entre **Aquaflare** e **Rockthorn**.

### 5. **Batalha 2**
   - **Hash**: [0x02fe509e39c4c117aa8a09ac6f30b5caeab2f5f0620c0c68092abe974a2e51c1](https://holesky.etherscan.io/tx/0x02fe509e39c4c117aa8a09ac6f30b5caeab2f5f0620c0c68092abe974a2e51c1)
   - **Descrição**: Segunda batalha entre **Aquaflare** e **Rockthorn**.

### 6. **Transferência de Carteira**
   - **Hash**: [0x3f94e520e136e4d188c3d48bedcac59cb4e1a8c03c2a492fb5ef908902de1d4f](https://holesky.etherscan.io/tx/0x3f94e520e136e4d188c3d48bedcac59cb4e1a8c03c2a492fb5ef908902de1d4f)
   - **Descrição**: Transferência do NFT **Rockthorn** para uma nova carteira.

## Imagens de Pokémon Criados

- **Rockthorn**: Um ser elemental de terra com espinhos cristalinos nas costas e um corpo rochoso coberto de musgo.
![Rockthorn](https://github.com/helindolfo/formacao-blockchain-dio/blob/main/Modulo%2003%20Desenvolvimento%20com%20Solidity/Curso%2003%20O%20mercado%20de%20blockchain%20e%20criptomoedas/Crie%20o%20seu%20NFT%20de%20Pokemon%20com%20Blockchain/picture/Rockthorn.jpg)

- **Aquaflare**: Uma criatura aquática com escamas azuis brilhantes, grandes barbatanas e olhos ciano luminosos.
![Aquaflare](https://github.com/helindolfo/formacao-blockchain-dio/blob/main/Modulo%2003%20Desenvolvimento%20com%20Solidity/Curso%2003%20O%20mercado%20de%20blockchain%20e%20criptomoedas/Crie%20o%20seu%20NFT%20de%20Pokemon%20com%20Blockchain/picture/Aquaflare.jpg)

## Instruções para Execução

1. **Instalar e configurar o Metamask**:
   - Adicione a rede Holesky ao Metamask.

2. **Desenvolvimento no Remix IDE**:
   - Acesse o [Remix IDE](https://remix.ethereum.org/).
   - Crie seu contrato inteligente com a lógica de Pokémon.
   - Compile e implante o contrato na rede de teste Holesky.

3. **Uso do Filebase**:
   - Faça upload das imagens dos Pokémons no [Filebase](https://filebase.com/).
   - Utilize os CIDs fornecidos para vincular as imagens aos Pokémons no contrato.

4. **Interação**:
   - Utilize o Metamask para interagir com o contrato e realizar ações como batalhas e transferências.

## Conclusão

O projeto **PokeDIO** é um exemplo de como a tecnologia de blockchain pode ser utilizada para criar experiências de jogos únicas e descentralizadas. As funcionalidades implementadas permitem aos jogadores uma nova forma de interação com seus Pokémons, aproveitando o potencial dos NFTs.

---

*Desenvolvedor: Helindolfo Israel*


