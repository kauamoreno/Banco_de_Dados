
<h1 align="center">Rigware Tecnology</h1> <br>

Você foi contratado como técnico em Desenvolvimento de Sistema na empresa
Rigware Tecnology. <br>
A empresa presta consultoria e implementa gerenciamento em Banco 
de Dados. 
Seu supervisor pediu para que você verificasse o sistema de uma escola e fizesse algumas
observações. <br>
Primeiramente ele te passou o DER que já haviam iniciado na escola. <br><br>

![der](https://user-images.githubusercontent.com/119445003/232757021-2e9619cf-0031-4ea9-b79b-a16b2c3b8c99.png)

<br>

### Segue a regra de negócio: 
Um curso é baseado na sua formação; CT, CAI e FIC. Cursos como CT e CAI são formados por <br>
turmas de alunos que ao passar de um semestre para outro, altera-se o seu nome, porém os <br>
alunos são os mesmos. Já os cursos FIC mantém o nome até o final da conclusão do curso. <br>

<br>

Uma turma pode ter uma ou várias unidades curriculares no mesmo semestre. <br>
Curso FIC que só tem uma unidade curricular, costuma ter o nome da unidade curricular
idêntico ao nome do curso, mas isso não é uma regra. <br>

As unidades curriculares de uma turma são direcionadas aos professores por meio de uma 
atribuição de aula, podendo receber uma ou várias delas e não importa se será da mesma
turma ou não. <br>

Um aluno pode pertencer a mais de uma turma desde que seja de cursos distintos. <br>
Em alguns casos; principalmente em curso FIC, ocorre de abrir turma e não captar alunos. <br>
Neste caso pode ocorrer duas coisas; estende a data do início do curso ou cancela-se a <br>
turma. 

<br>

> “Agora é a sua chance”

<br>


Baseado na regra de negócio e no diagrama dado, analise os relacionamentos e confira se
não há erro nas cardinalidades indicada no diagrama; <br>

A escola acabara de entregar o Banco de Dados ao seu supervisor. Agora ele te passou mais
uma tarefa. <br>

<br>

> “Mostre o que você sabe fazer”

<br>

## Ele pediu que entregasse uma lista com as seguintes informações:

1. O total de professores cadastrados;
2. O total de professores do sexo feminino e masculino;
3. O nome dos professores em ordem crescente;
4. Que atribuição de aula foram dadas para cada professor;
5. Quais os professores que não receberam nenhuma atribuição;
6. Qual o total de curso para cada formação; CT, CAI e FIC;
7. Qual o número de professor destinado a mesma turma;
8. Quais os professores que pegaram mais de uma turma e quantas foram;
9. O total de turma registrada;
10. Qual o total de turmas formadas;
11. Quantos alunos existem em cada turma;
12. Quais alunos foram matriculados em mais de curso, e quais os cursos;
13. Qual a turma que tem mais alunos;
14. Qual a turma que tem menos alunos.
