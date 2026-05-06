# Aethero

## Sobre o Projeto

**Aethero** é um planejador de treinos inteligente, projetado para atletas e entusiastas de atividades ao ar livre. O aplicativo fornece previsões meteorológicas precisas para ajudar você a planejar seus treinos, garantindo as melhores condições para sua performance e segurança.

## Funcionalidades

*   **Previsão do Tempo Detalhada:** Informações sobre temperatura, vento, umidade e chance de precipitação.
*   **Busca de Cidades e Bairros:** Encontre a previsão para qualquer lugar do mundo.
*   **Locais Favoritos:** Salve suas cidades ou locais de treino mais frequentes para acesso rápido.
*   **Interface Limpa e Moderna:** Uma experiência de usuário fluida e agradável.


## Tecnologias Utilizadas

Este projeto foi construído utilizando as mais modernas tecnologias do ecossistema Flutter:

*   **Framework:** [Flutter](https://flutter.dev/)
*   **Linguagem:** [Dart](https://dart.dev/)
*   **Gerenciamento de Estado:** [Riverpod](https://riverpod.dev/)
*   **Navegação:** [GoRouter](https://pub.dev/packages/go_router)
*   **Requisições HTTP:** [Dio](https://pub.dev/packages/dio)
*   **Modelagem de Dados:** [Freezed](https://pub.dev/packages/freezed) & [JSON Serializable](https://pub.dev/packages/json_serializable)
*   **Armazenamento Local:** [Hive](https://pub.dev/packages/hive_ce)
*   **Ícones:** [Lucide Flutter](https://pub.dev/packages/lucide_flutter)

## Como Executar o Projeto

Siga os passos abaixo para configurar e rodar o projeto em seu ambiente de desenvolvimento.

**Pré-requisitos:**
*   Ter o [Flutter](https://flutter.dev/docs/get-started/install) instalado (com base no seu `pubspec.yaml`, a versão do SDK do Dart é `^3.8.1`).
*   Um emulador ou dispositivo físico para executar o app.

**Passos:**

1.  **Clone o repositório:**
    
2.  **Instale as dependências:**
    ```bash
    flutter pub get
    ```

3.  **Execute os comandos de build_runner para gerar os arquivos necessários:**
    ```bash
    flutter pub run build_runner build --delete-conflicting-outputs
    ```

4.  **Inicie o aplicativo:**
    ```bash
    flutter run
    ```

## Como Contribuir

Contribuições são o que tornam a comunidade de código aberto um lugar incrível. Qualquer contribuição que você fizer será **muito apreciada**.

1.  Faça um **Fork** do projeto.
2.  Crie uma **Branch** para sua feature (`git checkout -b feature/AmazingFeature`).
3.  Faça o **Commit** de suas mudanças (`git commit -m 'Add some AmazingFeature'`).
4.  Faça o **Push** para a Branch (`git push origin feature/AmazingFeature`).
5.  Abra um **Pull Request**.

## Licença

Distribuído sob a licença MIT.

---

Feito com ❤️ por Gabriel (https://github.com/GabriielB)
