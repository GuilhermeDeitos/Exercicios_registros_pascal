program Ex3Registro;
uses crt;
// Registros podem ser representados por tipos simples como caracter,numero ou logico e também por tipos compostos como vetores,matrizes ou ate mesmo outro registro
type 
	represent = record
		nome:string;
		telefone:string;
		email:string;
	end;
	endereco = record
		rua:string;
		numero:string;
		complemento:string;
		bairro:string;
		cidade:string;
		estado:string;
		cep:string;
	end;
	fornec = record
		nome:string;
		ender:endereco;
		representante:represent;
		cnpj:string;
	end;

var
	produto : record
		descricao:string;
		fornecedor:fornec;
		Valorpago:real;
		precoVenda:real;
		estoque:integer;
	end;	
	escolha:char;
	escolha2:char;
begin
	repeat
		writeln('============================================================');
		writeln('Para digitar as informações do produto ---- digite 1');
		writeln('para sair ---- digite 0');
		readln(escolha);
			if(escolha = '1') then
	begin
		repeat
		writeln('============================================================');
		writeln('Para Informar a descrição do produto ---- digite 1');
		writeln('para informar o fornecedor do produto ---- digite 2');
		writeln('para Informar o valor pago no produto ---- digite 3');
		writeln('para Informar o preço de venda do produto ---- digite 4');
		writeln('para Informar a quantidade de estoque do produto ---- digite 5');
		writeln('Para consultar as informações do produto ---- digite 6');
		writeln('para sair do programa ---- digite 0');
		readln(escolha2);
		if (escolha2 = '1') then
		begin
			writeln('Qual a descrição do produto');
			readln(produto.descricao);
		end;
		if (escolha2 = '2') then
		begin
			writeln('============================== fornecedor =====================');
			writeln('============================== nome do fornecedor ==============================');
			readln(produto.fornecedor.nome);
			writeln('==============================endereço do fornecedor==============================');
			writeln('============================== Rua do fornecedor ==============================');
			readln(produto.fornecedor.ender.rua);
			writeln('==============================Numero da casa do fornecedor==============================');
			readln(produto.fornecedor.ender.numero);
			writeln('==============================complemento do endereço  do fornecedor==============================');
			readln(produto.fornecedor.ender.complemento);
			writeln('==============================bairro do fornecedor==============================');
			readln(produto.fornecedor.ender.bairro);
			writeln('==============================CEP do fornecedor==============================');
			readln(produto.fornecedor.ender.cep);
			writeln('==============================Cidade do fornecedor==============================');
			readln(produto.fornecedor.ender.cidade);
			writeln('==============================Estado do fornecedor==============================');
			readln(produto.fornecedor.ender.estado);
			writeln('============================informações do representante================================');
			writeln('==============================nome do representante==============================');
			readln(produto.fornecedor.representante.nome);
			writeln('==============================telefone do representante==============================');
			readln(produto.fornecedor.representante.telefone);
			writeln('==============================email do representante==============================');
			readln(produto.fornecedor.representante.email);
			writeln('============================== cnpj do fornecedor ==============================');
			readln(produto.fornecedor.cnpj);
			writeln('============================================================');
		end;
		if (escolha2 = '3') then
		begin
			writeln('============================================================');
			writeln('==============================Qual o valor pago no produto==============================');
			readln(produto.valorpago);
			writeln('============================================================');
		end;
		if (escolha2 = '4') then
		begin
			writeln('============================================================');
			writeln('==============================Qual o preço de venda do produto==============================');
			readln(produto.precoVenda);
			writeln('============================================================');
		end;
		if (escolha2 = '5') then
		begin
			writeln('============================================================');
			writeln('==============================Qual  a quantidade de estoque do produto==============================');
			readln(produto.estoque);
		end;
		if (escolha2 = '6') then
		begin
			writeln('a descrição do produto é : ',produto.descricao);
			writeln('o fornecedor do produto é : Nome : ',produto.fornecedor.nome,'||endereço : || Rua  : ',produto.fornecedor.ender.rua,'||Rua : ',produto.fornecedor.ender.numero,'||complemento do endereço  do fornecedor : ',produto.fornecedor.ender.complemento,'||Bairro do fornecedor : ',produto.fornecedor.ender.bairro, '||CEP do fornecedor :',produto.fornecedor.ender.cep,'||Cidade do fornecedor : ',produto.fornecedor.ender.cidade,'||Estado do fornecedor :',produto.fornecedor.ender.estado,'||Representante :','||O nome do representante :',produto.fornecedor.representante.nome,' ||O telefone do representante é :',produto.fornecedor.representante.telefone,'||O email do representante é :',produto.fornecedor.representante.email);
			writeln('o valor pago no produto é : ',produto.valorpago:0:2);
			writeln('o preço de venda do produto é : ',produto.precoVenda:0:2);
			writeln('a quantidade de estoque do produto é : ',produto.estoque);
		end;
		until escolha2 = '0';
	end;
	
	until escolha = '0';

end.
