program controleFilme;
//André Augusto Bortoli || n°:3
//Guilherme Augusto Deitos Alves || n°:8
//IFPR - 1°A Informática
uses crt;

var
filme:array[1..50,1..5] of string;
aux,n,i,j,k:integer;
escolha:integer;

begin
	for i:= 1 to 50 do // populando "filme" para não interferir em nada
	filme[i,1] := ''; // populando
	writeln('quantos filmes deseja armazenar? -- max:50'); 
	readln(n);
	clrscr;
	repeat // repetição até que o número digitado seja 0
		writeln('o que deseja fazer?');
		writeln('¯\_(ツ)_/¯¯\_(ツ)_/¯');
		writeln('finalizar programa - tecle 0');
		writeln('inserir filme - tecle 1');
		writeln('consultar dados de um filme - tecle 2');
		writeln('excluir um filme - tecle 3');
		writeln('atualizar um filme - tecle 4');
		writeln('listar filmes - tecle 5');
		readln(escolha);
		if (escolha = 1) then
		begin
			aux := 0;
			for i := 1 to n do
			begin
				if (aux <> 0) then
					if (filme[i, 1] = '') then
						aux := i;
			end;
			writeln('qual o nome do filme?');
			readln(filme[aux,1]);
			writeln('qual o ano em que o filme foi lançado');
			readln(filme[aux,2]);
			writeln('qual o gênero do filme');
			readln(filme[aux,3]);
			writeln('qual a duração do filme');
			readln(filme[aux,4]);
		end;
		if (escolha = 2) then
		begin
			aux := 0;
			for i := 1 to n do
			begin
				if (aux <> 0) then
					if (filme[i, 1] = '') then
						aux := i;
			for j:= 1 to aux-1 do
				writeln('para pegar as informações de ',filme[i,1], ' - tecle ', i);
			readln(aux);
			clrscr;
			writeln('o nome do filme é ',filme[aux,1]);
			writeln('o ano em que o filme foi lançado é ',filme[aux,2]);
			writeln('o gênero do filme é ',filme[aux,3]);
			writeln('a duração do filme é ',filme[aux,4]);
			end;
		end;
		if (escolha = 3) then
		begin
			aux := 0;
			for i := 1 to n do
			begin
				if (aux <> 0) then
					if (filme[i, 1] = '') then
						aux := i;
			for j:= 1 to aux-1 do
				writeln('para excluir ',filme[i,1], ' - tecle ', i);
			readln(aux);
			for k:= 1 to 4 do
				filme[aux,i] := '';
			end;
		end;
		for i:=1 to 50 do
			if (aux = 0) then
			begin
				if(filme[i,1] = '') then
					aux := aux
			end
			else
			begin
				filme[i-1,1] := filme[i,1];
			end;
		if (escolha = 4) then
		begin
			aux := 0;
			for i := 1 to n do
			begin
				if (aux <> 0) then
					if (filme[i, 1] = '') then
						aux := i;
			for j:= 1 to aux-1 do
				writeln('para atualizar as informações de ',filme[i,1], ' - tecle ', i);
			readln(aux);
			clrscr;
			writeln('o nome do filme é ',filme[aux,1]);
			writeln('o ano em que o filme foi lançado é ',filme[aux,2]);
			writeln('o gênero do filme é ',filme[aux,3]);
			writeln('a duração do filme é ',filme[aux,4]);
			end;
			writeln('qual o nome do filme?');
			readln(filme[aux,1]);
			writeln('qual o ano em que o filme foi lançado');
			readln(filme[aux,2]);
			writeln('qual o gênero do filme');
			readln(filme[aux,3]);
			writeln('qual a duração do filme');
			readln(filme[aux,4]);
		end;
		if (escolha = 5) then
		begin
			writeln('para listar por ano - tecle 1');
			writeln('para listar por gênero - tecle 2');
			writeln('para listar por duração - tecle 3');
			readln(escolha);
			if (escolha = 1) then
			begin
			
			end;
			if (escolha = 2) then
			begin
			
			end;
			if (escolha = 3) then
			begin
			
			end;
		end;
	until escolha = 0; // fim repetição
end.
