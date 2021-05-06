Dado("que eu tenha acesso à API de criação de Usuário") do
    log_util("Teste step 1")
end

Dado("que possua o payload de criação de usuário") do
    log_util("Teste step 2")
end

Quando("realizar o request de criação") do
    log_util("Teste step 3")
end

Então("deve apresentar o code {int}") do |status_code|
    log_util("Teste step 3")
end