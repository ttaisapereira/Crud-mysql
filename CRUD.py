import mysql.connector
banco = mysql.connector.connect(
    host="localhost",
    user="root",
    password="3268",
    database="academiaturmab")

print("")
print("...▬▬▬ BLUEBOX ▬▬▬...")
print("")

while True:

    print("Sistema de tabelas da Bluebox")
    print("Apresentando tabelas...")
    print("")

    print("......▬▬▬ Tabelas ▬▬▬......")
    menu = input(" ► Digite 1 para Acessar: Aluno\n"
                 " ► Digite 2 para Acessar: Funcionário\n"
                 " ► Digite 3 para Acessar: Modalidade\n"
                 " ► Digite 4 para Acessar: Personal\n"
                 "   Escolha uma das opções: ")


    if menu == "1":
        meucursor=banco.cursor()
        pesquisa="select * from alunos;"
    elif menu == "2":
        meucursor = banco.cursor()
        pesquisa = "select * from funcionarios;"
    elif menu == "3":
        meucursor = banco.cursor()
        pesquisa = "select * from modalidade;"
    elif menu == "4":
        meucursor = banco.cursor()
        pesquisa = "select * from personal;"
    else:
        print("Opção inválida")
        exit()

    print("Oque deseja realizar na tabela?")
    print("")

    print("......▬▬▬ Ação ▬▬▬......")
    escolha=input(" ► Digite 1 para inserir\n"
                  " ► Digite 2 para consultar\n"
                  " ► Digite 3 para deletar\n"
                  " ► Digite 4 para alterar\n"
                  "   Escolha uma das opções: ")




    if escolha == "1" and menu == "1":
        nome = input("Nome: ")
        cpf = int(input("CPF: "))
        idade = int(input("Idade: "))
        telefone = int(input("Telefone: "))
        end = (input("Endereço: "))
        email = (input("Email: "))

        meucursor=banco.cursor()
        sql = "insert into alunos (nome,cpf,idade,telefone,end,email) values (%s,%s,%s,%s,%s,%s)"
        data = (nome, cpf, idade, telefone, end, email)
        meucursor.execute(sql, data)
        banco.commit()

        print("Aluno foi inserido.")

    elif escolha == "1" and menu == "2":
        nome = input("Nome: ")
        cpf = int(input("CPF: "))
        departamento = int(input("Departamento: "))
        cpf_supervisor = int(input("CPF do supervisor: "))
        salario = float(input("Salário: "))

        meucursor=banco.cursor()
        sql = "insert into funcionarios (nome,cpf,departamento,cpf_supervisor,salario) values (%s,%s,%s,%s,%s)"
        data = (nome, cpf, departamento, cpf_supervisor, salario)
        meucursor.execute(sql, data)
        banco.commit()

        print("Funcionario inserido com sucesso.")

    elif escolha == "1" and menu =="3":
        nome = input("Nome: ")
        duracao = int(input("Duração em minutos: "))

        meucursor = banco.cursor()
        sql = "insert into modalidade (nome,duracao) values (%s,%s)"
        data = nome,duracao
        meucursor.execute(sql,data)
        banco.commit()

        print("Modalidade inserida com sucesso.")

    elif escolha == '1' and menu =='4':
        cpf = input("CPF: ")
        nome = input("Nome: ")
        cref = int(input("Cref: "))
        telefone = int(input("Telefone: "))
        email = input("Email: ")

        meucursor=banco.cursor()
        sql = "insert into personal (cpf,nome,cref,telefone,email) values (%s,%s,%s,%s,%s)"
        data = (cpf,nome,cref,telefone,email)
        meucursor.execute(sql,data)
        banco.commit()

        print("Personal inserido com sucesso.")

    elif escolha == "2" and menu == "1":
        meucursor.execute(pesquisa)
        resultado = meucursor.fetchall()
        print("Resultados da consulta:")

        for x in resultado:
            print(x)

    elif escolha == "2" and menu == "2":
        meucursor.execute(pesquisa)
        resultado = meucursor.fetchall()
        print("Resultados da consulta:")

        for x in resultado:
            print(x)

    elif escolha == "2" and menu == "3":
        meucursor.execute(pesquisa)
        resultado = meucursor.fetchall()
        print("Resultados da consulta:")

        for x in resultado:
            print(x)

    elif escolha == "2" and menu == "4":
        meucursor.execute(pesquisa)
        resultado = meucursor.fetchall()
        print("Resultados da consulta:")

        for x in resultado:
            print(x)

    elif escolha == "3" and menu == "1":
        id = int(input('Digite o ID que deseja deletar: '))
        deletar = f'delete from alunos where matricula = {id};'

        meucursor.execute(deletar)
        banco.commit()

        print("Dados Deletados.")

    elif escolha == "3" and menu == "2":
        id = int(input('Digite o ID que deseja deletar: '))
        deletar = f'delete from funcionarios where id_funcionario = {id};'

        meucursor.execute(deletar)
        banco.commit()

        print("Dados Deletados.")

    elif escolha == "3" and menu == "3":
        id = int(input('Digite o ID que deseja deletar: '))
        deletar = f'delete from modalidade where id_modalidade = {id};'

        meucursor.execute(deletar)
        banco.commit()

        print("Dados Deletados.")

    elif escolha == "3" and menu == "4":
        id = int(input('Digite o ID que deseja deletar: '))
        deletar = f'delete from personal where id_personal = {id};'

        meucursor.execute(deletar)
        banco.commit()

        print("Dados Deletados.")

    elif escolha == "4" and menu == "1":
            id = int(input('Digite o ID que deseja atualizar: '))
            atributo = input('Escolha o atributo que deseja modificar (nome, cpf, idade, telefone, end, email): ')
            novo = input(f"Digite o novo valor para {atributo}: ")
            meucursor = banco.cursor()
            if atributo not in ["nome", "cpf", "idade", "telefone", "end", "email"]:
                print("Dado inválido.")
                exit()

            sql = f"update alunos set {atributo} = %s where matricula = %s"
            data = (novo, id)
            meucursor.execute(sql, data)
            banco.commit()

            print("Alterado com sucesso.")

    elif escolha == '4' and menu == '2':
            id = int(input('Digite o ID que deseja atualizar: '))
            atributo = input('Escolha o atributo que deseja modificar (nome, cpf, departamento, cpf_supervisor, salario): ')
            novo = input(f'Digite o novo valor para {atributo}: ')
            meucursor = banco.cursor()
            if atributo not in ['nome', 'cpf', 'departamento', 'cpf_supervisor', 'salario']:
                print("Dado inválido.")
                exit()

            sql = f"update funcionarios set {atributo} = %s where id_funcionario = %s"
            data = (novo, id)
            meucursor.execute(sql, data)
            banco.commit()

            print("Alterado com sucesso.")

    elif escolha == "4" and menu == "3":
            id = int(input("Digite o ID que deseja atualizar: "))
            atributo = input("Escolha o atributo que deseja modificar (nome, duracao): ")
            novo = input(f"Digite o novo valor para {atributo}: ")
            meucursor = banco.cursor()
            if atributo not in ["nome", "duracao"]:
                print("Dado inválido.")
                exit()

            sql = f"update modalidade set {atributo} = %s where id_modalidade = %s"
            data = (novo, id)
            meucursor.execute(sql, data)
            banco.commit()

            print("Alterado com sucesso.")

    elif escolha == "4" and menu == "4":
            id = int(input("Digite o ID que deseja atualizar: "))
            atributo = input("Escolha o atributo que deseja modificar (cpf, nome, cref, telefone, email): ")
            novo = input(f"Digite o novo valor para {atributo}: ")
            meucursor = banco.cursor()
            if atributo not in ["cpf", "nome", "cref", "telefone", "email"]:
                print("Dado inválido.")
                exit()

            sql = f'update personal set {atributo} = %s where id_personal = %s'
            data = (novo, id)
            meucursor.execute(sql, data)
            banco.commit()

            print("Alterado com sucesso.")


    else:

        print('Opção inválida')
        exit()

    continuar = input("Deseja continuar? ")
    if continuar not in ["S","s","Sim","sim"]:

        print("")
        print("Sistema encerrado.")
        print("Até logo, nos vemos em breve...")
        exit()