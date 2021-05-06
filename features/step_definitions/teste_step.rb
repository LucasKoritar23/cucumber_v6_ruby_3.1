Dado("que eu tenha acesso à API de criação de Usuário") do
    log_util("Teste step 1")
end

Dado("que possua o payload de criação de usuário") do
    @payload = {
        "nome": "Lucas Gimenes Koritar",
        "idade": 24,
        "profissão": "QA Engineer"
    }
    @headers = {"teste": "true" }
end

Quando("realizar o request de criação") do
    @request = QasDockGem::RequestsAPI.new.execute_post({"token": @token, "uri": "https://run.mocky.io/v3/21bd531c-ecc7-46c1-9831-de5fe8a0b2ac", "payload": @payload, "headers": @headers})
    log_util(@request)
end

Quando("realizar o request de consulta") do
    @request = QasDockGem::RequestsAPI.new.execute_get({"token": @token, "uri": "https://run.mocky.io/v3/21bd531c-ecc7-46c1-9831-de5fe8a0b2ac", "payload": nil, "headers": @headers})
    log_util(@request)
end

Quando("realizar o request de edição parcial") do
    @payload = {
        "nome": "Lucas Gimenes Koritar Patch",
        "idade": 24,
        "profissão": "QA Engineer"
    }
    @request = QasDockGem::RequestsAPI.new.execute_patch({"token": @token, "uri": "https://run.mocky.io/v3/21bd531c-ecc7-46c1-9831-de5fe8a0b2ac", "payload": @payload, "headers": @headers})
    log_util(@request)
end

Quando("realizar o request de edição completa") do
    @payload = {
        "nome": "Lucas teste Koritar",
        "idade": 25,
        "profissão": "QA Engineer Sr"
    }
    @request = QasDockGem::RequestsAPI.new.execute_put({"token": @token, "uri": "https://run.mocky.io/v3/21bd531c-ecc7-46c1-9831-de5fe8a0b2ac", "payload": @payload, "headers": @headers})
    log_util(@request)
end

Quando("realizar o request de deleção") do
    @headers = {"teste": "true" }
    @request = QasDockGem::RequestsAPI.new.execute_delete({"token": @token, "uri": "https://run.mocky.io/v3/21bd531c-ecc7-46c1-9831-de5fe8a0b2ac", "payload": nil, "headers": @headers})
    log_util(@request)
end

Então("deve apresentar o code {int}") do |status_code|
    expect(@request.code).to eq(status_code)
end
