const express = require('express');
const app = express();
const bodyParser = require('body-parser');
const porta = 3000; //porta padrão
const sql = require('mssql');
const conexaoStr = "Server=regulus;Database=BD16703;User Id=BD16703;Password=31032000;";

// conexao com BD
sql.connect(conexaoStr).then(conexao => global.conexao = conexao).catch(erro => console.log(erro));

// configurando o body parser para pegar POSTS mais tarde
app.use(bodyParser.urlencoded({ extended: true}));
app.use(bodyParser.json()); 

// acrescentando informacoes de cabecalho para suportar o CORS 
app.use(function(requisicao, resposta, next) {
	resposta.header("Access-Control-Allow-Origin", "*");
	resposta.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
	resposta.header("Access-Control-Allow-Methods", "GET, POST, HEAD, OPTIONS, PATCH, DELETE");
	next(); 
});

// definindo as rotas 
const rota = express.Router();
rota.get('/produtos', 
	(requisicao, resposta) => {
		execSQL("SELECT * FROM Produtos", resposta);
	}
);
app.use('/', rota);

// inicia servidor 
app.listen(porta); 
console.log('API Funcionando!');
function execSQL(sql, resposta) {
	global.conexao.request().query(sql).then(resultado => resposta.json(resultado.recordset)).catch(erro => resposta.json(erro));
}

// pesquisa de produtos
rota.get('/produtos/:id?', (requisicao, resposta)=>{
    let filter = '';
    if(requisicao.params.id)filter = ' WHERE codProdutos=' + parseInt(requisicao.params.id);
    execSQL('SELECT * FROM Produtos' + filter, resposta);
})