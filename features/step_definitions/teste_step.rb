Dado("que eu tenha acesso à API de criação de Usuário") do
    log_util("Teste step 1")
end

Dado("que possua o payload de criação de usuário") do
    @payload = {
        "nome": "Lucas Gimenes Koritar",
        "idade": 24,
        "profissão": "QA Engineer"
    }
    @headers = {}
end

Quando("realizar o request de criação") do
   @request = QasDockGem::RequestsAPI.new.execute_post("123", "https://run.mocky.io/v3/21bd531c-ecc7-46c1-9831-de5fe8a0b2ac", @payload, @headers)
end

Então("deve apresentar o code {int}") do |status_code|
    expect(@request.code).to eq(status_code)
end