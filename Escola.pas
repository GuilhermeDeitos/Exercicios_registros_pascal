program escola;
uses crt;
type
	pessoa = record
		nome:string;
		email:string;
	end;
	disciplina=record
		nome:string;
		professor:pessoa;
	end;
	turma = record
		nome:string;
		disciplinas:array [1..10] of disciplina;
		alunos:array [1..25] of pessoa;
	end;
var
	turmas:array [1..6] of turma;
	i,j,k,nd,nt,na:integer;
	
Begin
	writeln('=====================================================');
	Writeln('Para começar digite quantas turmas serão cadastradas');
	writeln('=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=');
	readln(nt);
	for i:= 1 to nt do
	begin
		writeln('=====================================================');
		writeln('Qual o nome da ',i,'ª turma ?');
		readln(turmas[i].nome);
		writeln('Quantas disciplinas tem na ',i,'ª turma ');
		readln(nd);
		for j:= 1 to nd do 
		begin
			writeln('=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=');
			writeln('Qual o nome da ',j,'ª disciplina ?');
			readln(turmas[i].disciplinas[j].nome);
			writeln('Qual o nome do professor da  ',j,'ª disciplina ?');
			readln(turmas[i].disciplinas[j].professor.nome);
			writeln('Qual o email do professor da  ',j,'ª disciplina ?');
			readln(turmas[i].disciplinas[j].professor.email);
		end;
		writeln('quantos alunos tem na ',i,' turma?');
		readln(na);
		for K:= 1 to na do
		begin
			writeln('Qual o nome do ',k,'º aluno ?');
			readln(turmas[i].alunos[k].nome);
			writeln('Qual o email do ',k,'º aluno');
			readln(turmas[i].alunos[k].email);
			
		end;
	end;
	for i:= 1 to nt do
		for j:= 1 to nd do 
			for K:= 1 to na do
			begin
				readkey;
				clrscr;
				writeln('================================================================================================================================================================================================================================================');
				writeln('||A turma ',turmas[i].nome,' tem ',nd,' disciplinas que são :',turmas[i].disciplinas[j].nome,' no qual o professor se chama :',turmas[i].disciplinas[j].professor.nome,' e o email deste professor é : ',turmas[i].disciplinas[j].professor.email);
				writeln('=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-==-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-==-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=');
				writeln('|| Nesta turma há ',na,' alunos. || o nome do ',k,'º aluno é ',turmas[i].alunos[k].nome,' e o email deste aluno é : ',turmas[i].alunos[k].email);
			end;
end.










