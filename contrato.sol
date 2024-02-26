// SPDX-License-Identifier: GPL-3.0
// Contrato para Registro de Produtos

pragma solidity >=0.7.0 <0.9.0;

contract RegisterProduct {
    // Estrutura que define as características de um produto
    struct Product {
        string nameProduct; // Nome do produto
        uint256 valueProduct; // Valor do produto
    }

    // Lista pública que armazena os produtos registrados
    Product[] public products;

    // Função para registrar um novo produto
    function registerProduct(string memory _nameProduct, uint256 _valueProduct) external {
        // Adiciona um novo produto à lista
        products.push(Product({
            nameProduct: _nameProduct,
            valueProduct: _valueProduct
        }));
    }
}
