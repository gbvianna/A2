from re import findall
import requests
from bs4 import BeautifulSoup
import matplotlib.pyplot as plt
from collections import Counter

def fazer_requisicao(url):
    try:
        response = requests.get(url)
        response.raise_for_status()
        return response.content
    except requests.exceptions.RequestException as e:
        print("Ocorreu um erro durante a requisição:", e)
        return None

def extrair_dados(html):
    soup = BeautifulSoup(html, 'html.parser')
    manchetes = soup.find_all('div', attrs={'class': 'container__headline'})

    palavras = []
    for manchete in manchetes:
        texto = manchete.get_text()
        palavras_chave = texto.split()
        palavras.extend(palavras_chave)

    return palavras
url = 'https://edition.cnn.com/'

conteudo_html = fazer_requisicao(url)
if conteudo_html:
    dados_coletados = extrair_dados(conteudo_html)

    opcao = input("Escolha uma opção:\n1 - Processar palavras mais frequentes\n2 - Contar ocorrência de uma palavra específica\n3 - Visualizar todas as palavras coletadas\n")

    if opcao == '1':
        if dados_coletados:
            contagem_palavras = Counter(dados_coletados)
            palavras_comuns = contagem_palavras.most_common(10)
            if palavras_comuns:
                x, y = zip(*palavras_comuns)
                plt.bar(x, y)
                plt.xlabel('Palavras')
                plt.ylabel('Contagem')
                plt.title('Contagem de Palavras mais Frequentes nas Manchetes')
                plt.xticks(rotation=45)
                plt.show()
            else:
                print("Não foram encontradas palavras mais frequentes para processar.")
        else:
            print("Não foram encontradas palavras para processar.")
    elif opcao == '2':
        if dados_coletados:
            palavra = input("Digite uma palavra para contar sua ocorrência: ")
            ocorrencias = dados_coletados.count(palavra)
            print(f"A palavra '{palavra}' ocorreu {ocorrencias} vezes nas manchetes.")
        else:
            print("Não foram encontradas palavras para contar ocorrências.")
    elif opcao == '3':
        if dados_coletados:
            print("Palavras coletadas:")
            for palavra in dados_coletados:
                print(palavra)
        else:
            print("Não foram encontradas palavras coletadas.")
    else:
        print("Opção inválida.")
