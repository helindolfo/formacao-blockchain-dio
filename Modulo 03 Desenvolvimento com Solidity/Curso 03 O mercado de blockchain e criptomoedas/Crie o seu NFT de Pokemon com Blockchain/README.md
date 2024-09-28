# Projeto: Jogo de Pokémon - PokeDIO

## Descrição

Este projeto consiste na criação de um jogo de Pokémon chamado **PokeDIO**, onde os jogadores podem criar, batalhar e transferir Pokémons, que são representados como NFTs utilizando o padrão ERC-721. O jogo é desenvolvido em Solidity e implementado na rede de teste Holesky.

## Tecnologias Utilizadas

- **Solidity**: Linguagem de programação para contratos inteligentes.
- **Remix IDE**: Ambiente de desenvolvimento para escrever e testar contratos em Solidity.
- **Metamask**: Carteira para interagir com a blockchain.
- **NFT.Storage**: Armazenamento descentralizado de metadados e imagens de Pokémons.
- **Holesky**: Rede de teste escolhida em vez do Ganache para garantir que todas as transações sejam registradas na blockchain e estejam publicamente disponíveis.

### Alterações e Justificativa das Escolhas no desafio de projeto original

- **Substituição do Ganache pela Holesky**: A rede Holesky foi escolhida por permitir o registro público de todas as transações, garantindo maior transparência e acessibilidade ao nosso projeto. Isso é especialmente útil para a validação das interações no jogo.
- **Substituição do IPFS pela NFT.Storage**: A NFT.Storage foi selecionada como solução para o armazenamento descentralizado de metadados e imagens dos Pokémons, pois oferece um serviço otimizado para NFTs, facilitando o upload e a gestão de arquivos, sem necessidade de instalação local.
- **Criação de Personagens Únicas**: Devido a questões de direitos autorais, optamos por criar personagens originais utilizando inteligência artificial para a geração das imagens. Isso garante que os Pokémons sejam únicos e livres de violação de direitos.

## Funcionalidades

- **Criação de Pokémons**: Os jogadores podem criar novos Pokémons com atributos únicos.
- **Batalhas**: Os jogadores podem batalhar com seus Pokémons, aumentando níveis com base no resultado da batalha.
- **Transferência de NFTs**: Os Pokémons podem ser transferidos entre carteiras, permitindo negociação e troca.

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

3. **Uso do NFT.Storage**:
   - Faça upload das imagens dos Pokémons no [NFT.Storage](https://nft.storage/).
   - Utilize os CIDs fornecidos para vincular as imagens aos Pokémons no contrato.

4. **Interação**:
   - Utilize o Metamask para interagir com o contrato e realizar ações como batalhas e transferências.

## Conclusão

O projeto **PokeDIO** é um exemplo de como a tecnologia de blockchain pode ser utilizada para criar experiências de jogos únicas e descentralizadas. As funcionalidades implementadas permitem aos jogadores uma nova forma de interação com seus Pokémons, aproveitando o potencial dos NFTs.

---

*Desenvolvedor: Helindolfo Israel*


