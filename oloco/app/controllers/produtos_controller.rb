class ProdutosController < ApplicationController

  def index
    @produtos = Produto.order(nome: :desc).limit 10
    @produtos_com_desconto = Produto.order(:preco).limit 1
  end

  def create
    produto = params.require(:produto).permit(:nome, :descricao, :preco, :quantidade)
    Produto.create produto

    redirect_to '/'
  end

end
