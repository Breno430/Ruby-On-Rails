class ProdutosController < ApplicationController

  def index
    @produtos = Produto.order(nome: :desc)
    @produtos_com_desconto = Produto.order(:preco).limit 1
  end

  def crete
    produto = params.require(:produto).permit(:nome, :descricao, :preco, :quantidade)
    Produto.create produto
  end

end
