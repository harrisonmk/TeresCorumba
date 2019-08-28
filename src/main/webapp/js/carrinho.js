$(function () {

    $('tr #apagarItem').click(function (e) {
     e.preventDefault();
     
     var elemento = $(this);
     
     var idproduto = elemento.parent().find('#idartigo').text();

     $.ajax({
         
       url:'apagarItem',
       type:'post',
       data:{idproduto:idproduto},
       success: function(r){
           
        elemento.parent().parent().remove();
        
        var tabela = $('#shop-table tr');
         if(tabela.length  <= 1){
             
          $('#cart-container').append("<h4>Não existe produtos no carrinho</h4>");   
             
         }
         $('txt-subtotal').text(r);
         $('txt-total').text(r);
           
       }
         
     })

    });
    
   
        
    

});

