import streamlit as st
import requests
from bs4 import BeautifulSoup
from collections import Counter
import matplotlib.pyplot as plt

def fazer_requisicao(url):
    try:
        response = requests.get(url)
        response.raise_for_status()
        return response.content
    except requests.exceptions.RequestException as e:
        st.error("Ocorreu um erro durante a requisição: " + str(e))
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

def is_stopword(palavra):
    stopwords = ['the', 'and', 'is', 'a', 'of', 'in', 'to', 'that', 'it', 'for', 'on', 'with', 'as', 'at', 'this', 'by', 'from', 'an', 'be', 'or', 'you', 'are', 'we', 'can', 'your', 'more', 'if', 'but', 'not', 'all', 'my', 'will', 'they', 'has', 'their']  # Add more stopwords as needed
    return palavra.lower() in stopwords

def exibir_palavras_frequentes(palavras, limite=10):
    palavras_filtradas = [palavra for palavra in palavras if not is_stopword(palavra)]

    contagem_palavras = Counter(palavras_filtradas)
    palavras_frequentes = contagem_palavras.most_common(limite)
    if palavras_frequentes:
        x, y = zip(*palavras_frequentes)
        fig, ax = plt.subplots()
        ax.bar(x, y)
        plt.xlabel('Palavras')
        plt.ylabel('Contagem')
        plt.title('Contagem de Palavras mais Frequentes nas Manchetes')
        plt.xticks(rotation=45)
        st.pyplot(fig)
        st.write("Palavras mais frequentes:")
        for palavra, ocorrencias in palavras_frequentes:
            st.write(f"'{palavra}': {ocorrencias} ocorrências")
    else:
        st.warning("Não foram encontradas palavras mais frequentes para processar.")

def exibir_todas_palavras(palavras):
    st.write("Todas as palavras coletadas:")
    for palavra in palavras:
        st.write(palavra)

url = 'https://edition.cnn.com/'

conteudo_html = fazer_requisicao(url)
if conteudo_html:
    dados_coletados
