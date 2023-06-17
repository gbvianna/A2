from bs4 import BeautifulSoup
from collections import Counter

def fazer_requisicao(url):
    try:
        response = requests.get(url)
        response.raise_for_status()
        return response.content
    except requests.exceptions.RequestException as e:
        st.error("Ocorreu um erro durante a requisição:", e)
        return None

def extrair_dados(html):
    soup = BeautifulSoup(html, 'html.parser')
    manchetes = soup.find_all('a', class_='cd__headline-link')

    palavras = []
    for manchete in manchetes:
        texto = manchete.get_text()
        palavras_chave = texto.split()
        palavras.extend(palavras_chave)

    return palavras

def main():
    st.title("Análise de Manchetes")
    url = st.text_input("Digite a URL do site para análise")

    if st.button("Coletar Dados"):
        conteudo_html = fazer_requisicao(url)
        if conteudo_html:
            dados_coletados = extrair_dados(conteudo_html)

            opcao = st.selectbox("Escolha uma opção:", ["Processar palavras mais frequentes", "Contar ocorrência de uma palavra específica", "Visualizar todas as palavras coletadas"])

            if opcao == "Processar palavras mais frequentes":
                if dados_coletados:
                    contagem_palavras = Counter(dados_coletados)
                    palavras_comuns = contagem_palavras.most_common(10)
                    if palavras_comuns:
                        x, y = zip(*palavras_comuns)
                        fig, ax = plt.subplots()
                        ax.bar(x, y)
                        ax.set_xlabel('Palavras')
                        ax.set_ylabel('Contagem')
                        ax.set_title('Contagem de Palavras mais Frequentes nas Manchetes')
                        plt.xticks(rotation=45)
                        st.pyplot(fig)
                    else:
                        st.warning("Não foram encontradas palavras mais frequentes para processar.")
                else:
                    st.warning("Não foram encontradas palavras para processar.")

            elif opcao == "Contar ocorrência de uma palavra específica":
                if dados_coletados:
                    palavra = st.text_input("Digite uma palavra para contar sua ocorrência:")
                    ocorrencias = dados_coletados.count(palavra)
                    st.write(f"A palavra '{palavra}' ocorreu {ocorrencias} vezes nas manchetes.")
                else:
                    st.warning("Não foram encontradas palavras para contar ocorrências.")

            elif opcao == "Visualizar todas as palavras coletadas":
                if dados_coletados:
                    st.write("Dados coletados:")
                    for palavra in dados_coletados:
                        st.write(palavra)
                else:
                    st.warning("Não foram encontradas palavras coletadas.")

            else:
                st.warning("Opção inválida.")

if __name__ == '__main__':
    main()
