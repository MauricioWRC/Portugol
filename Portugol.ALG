Algoritmo "semnome"
Var
cadastro:vetor[1..10,1..10] de caractere
opcao:caractere
cliente:inteiro
contador:inteiro
consulta:caractere
excluir:caractere
alterar:caractere

Inicio
opcao<-""
cliente<-1
enquanto (opcao <> "sair") faca
         escreval("Escolha uma opção")
         escreval("Digite 'Sair' para sair")
         escreval("1. Cadastro")
         escreval("2. Consulta")
         escreval("3. Exclusão")
         escreval("4. Alteração")
         leia(opcao)
         se (opcao = "1") entao
            escreval("Digite o nome do cliente: ")
            leia(cadastro[cliente,1])
            escreval("Digite o CPF do cliente")
            leia(cadastro[cliente,2])
            escreval("Digite o RG do cliente")
            leia(cadastro[cliente,3])
            escreval("Digite o Endereço do cliente")
            leia(cadastro[cliente,4])
            escreval("Digite o Filiação do cliente")
            leia(cadastro[cliente,5])
            escreval("Digite o Dependentes do cliente")
            leia(cadastro[cliente,6])
            escreval("Digite o Cargo do cliente")
            leia(cadastro[cliente,7])
            escreval("Digite o setor do cliente")
            leia(cadastro[cliente,8])
            escreval("Digite o idade do cliente")
            leia(cadastro[cliente,9])
            escreval("Observação: ")
            leia(cadastro[cliente,10])
            cliente<-cliente + 1
            fimse
         se (opcao = "2") entao
         escreva("Digite o nome do cliente, CPF, cargo ou setor: ")
         leia(consulta)

         contador <- 1
         enquanto (contador <= cliente) faca
            se (cadastro[contador,1] = consulta) ou (cadastro[contador,2] = consulta) ou (cadastro[contador,7] = consulta) ou (cadastro[contador,8] = consulta) entao
               escreval("Cliente encontrado:")
               escreval("Nome: ", cadastro[contador,1])
               escreval("CPF: ", cadastro[contador,2])
               escreval("RG: ", cadastro[contador,3])
               escreval("Endereço: ", cadastro[contador,4])
               escreval("Filiação: ", cadastro[contador,5])
               escreval("Dependentes: ", cadastro[contador,6])
               escreval("Cargo: ", cadastro[contador,7])
               escreval("Setor: ", cadastro[contador,8])
               escreval("Idade: ", cadastro[contador,9])
               escreval("Observação: ", cadastro[contador,10])
               interrompa //Preceisa interromper
            fimse
            contador <- contador + 1
         fimenquanto
         se (contador > cliente) entao
            escreval("Cliente não encontrado.")
         fimse
         fimse
         se (opcao = "3") entao
            escreval("Digite o nome ou cpf para excluir cliente")
            leia(excluir)
            contador <- 1
            enquanto (contador <= cliente) faca
            se (cadastro[contador,1] = excluir) ou (cadastro[contador,2] = excluir) entao
               cadastro[contador,1]<- ""
               cadastro[contador,2]<- ""
               cadastro[contador,3]<- ""
               cadastro[contador,4]<- ""
               cadastro[contador,5]<- ""
               cadastro[contador,6]<- ""
               cadastro[contador,7]<- ""
               cadastro[contador,8]<- ""
               cadastro[contador,9]<- ""
               cadastro[contador,10]<- ""
               interrompa
            fimse
            contador <- contador +1
            fimenquanto
            se (contador > cliente) entao
               escreval("Cliente não encontrado.")
         fimse
         fimse
         se (opcao = "4") entao
            escreval("Digite o nome ou cpf para alterar cliente")
            leia(alterar)
            contador <- 1
            enquanto (contador <= cliente) faca
            se (cadastro[contador,1] = alterar) ou (cadastro[contador,2] = alterar) entao
               cliente<-cliente - 1
               escreval("Digite o nome do cliente: ")
               leia(cadastro[cliente,1])
               escreval("Digite o CPF do cliente")
               leia(cadastro[cliente,2])
               escreval("Digite o RG do cliente")
               leia(cadastro[cliente,3])
               escreval("Digite o Endereço do cliente")
               leia(cadastro[cliente,4])
               escreval("Digite o Filiação do cliente")
               leia(cadastro[cliente,5])
               escreval("Digite o Dependentes do cliente")
               leia(cadastro[cliente,6])
               escreval("Digite o Cargo do cliente")
               leia(cadastro[cliente,7])
               escreval("Digite o setor do cliente")
               leia(cadastro[cliente,8])
               escreval("Digite o idade do cliente")
               leia(cadastro[cliente,9])
               escreval("Observação: ")
               leia(cadastro[cliente,10])
               interrompa
            fimse
            fimenquanto
            se (contador > cliente) entao
               escreval("Cliente não encontrado.")
         fimse
         fimse
fimenquanto
Fimalgoritmo