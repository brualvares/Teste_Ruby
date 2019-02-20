Dado("que eu acesso a página principal") do                                     
    visit 'http://mark7.herokuapp.com' 
  end                                                                             
                                                                                  
  Quando("eu falo login com {string} e {string}") do |email, senha|
    @enail = email            
    
  end                                                                             
                                                                                  
  Então("devo ser autenticado com sucesso") do                                    
    expect(page).to have_content @email
  end                                                                             
                                                                                  
  Então("devo ver a seguinte mensagem {string}") do |mensagem|                      
    expect(page).to have_content mensagem 
  end
