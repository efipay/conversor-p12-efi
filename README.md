<h1 align="center">Conversor de Certificado .p12 para .pem</h1>

![Banner APIs Efí Pay](https://gnetbr.com/BJgSIUhlYs)

Este é um utilitário simples e eficiente para converter certificados no formato .p12 para o formato .pem em ambiente Windows.

## Como usar

Siga estas etapas para converter um certificado .p12 em um certificado .pem:

1. **Baixar o Código**: Clone ou [baixe aqui](https://github.com/efipay/conversor-p12-efi/archive/refs/heads/main.zip) este repositório para o seu computador.

2. **Executar o Script**:
   - Execute o arquivo `conversor_p12_para_pem.bat`.
   - Certifique-se de que o arquivo .p12 esteja no mesmo diretório que o script.
   - O script solicitará que você insira o nome do arquivo .p12 que deseja converter.

4. **Resultados**:
   - O arquivo .pem gerado terá o mesmo nome do arquivo .p12, com a extensão .pem.
   - O script irá converter o arquivo .p12 para .pem no mesmo diretório.

## Segurança

Este script foi projetado com foco na segurança e simplicidade. Ele utiliza o comando padrão do OpenSSL para realizar a conversão de certificados de .p12 para .pem, garantindo a integridade dos dados.

- **Revisão do Código**: Encorajamos os usuários a revisar o código executado no arquivo `.bat`. O código fonte é fornecido para total transparência. Você pode inspecionar o arquivo `.bat` para garantir que não há ações maliciosas ou suspeitas.

Lembre-se de que a segurança do seu sistema também depende da origem e integridade dos certificados que você está convertendo. Certifique-se de que os certificados usados sejam legítimos e confiáveis. Se você tiver alguma dúvida ou preocupação, sinta-se à vontade para examinar o código e ajustá-lo às suas necessidades.

## **Documentação Adicional**

Você pode encontrar todas as informações necessárias sobre os endpoints, as APIs, e o comando OpenSSL para conversão, na [nossa documentação técnica](https://dev.efipay.com.br/docs/api-pix/credenciais#convers%C3%A3o-de-certificado-p12-para-o-formato-pem).

Se você ainda não tem uma conta digital Efí Bank, [abra a sua agora](https://sejaefi.com.br)!

## **Comunidade no Discord**

<a href="https://comunidade.sejaefi.com.br/"><img src="https://efipay.github.io/comunidade-discord-efi/assets/img/thumb-repository.png"></a>

Se você tem a necessidade de integrar seu sistema ou aplicação a uma API completa de pagamentos, desejos de trocar experiências e compartilhar seu conhecimento, conecte-se à [comunidade da Efí no Discord](https://comunidade.sejaefi.com.br/).

## Licença

[Licença MIT](LICENSE).
