/* Gerador de Banners e Produtos */

//Gerador de Banners com 6 paletas e estilos visuais distintos

function gerarBannerSVG(titulo, subtitulo, index){
    const paletasBanner = [
        ['#0f2027', '#203a43', '#2c5364'], //1. Dark Cyan e Navy
        ['#833ab4', '#fd1d1d', '#fcb045'], //2. Susnset Orange e Violet
        ['#11998e', '#38ef7d', '#0575e6'], //3. Tropical Blue
        ['#d31027', '#ea384d', '#7b4397'], //4. Red &' Purple
        ['#000428', '#004e92', '#00c6ff'], //5. Deep Royal Blue
        ['#4568dc', '#b06ab3', '#e84393'], //6. Magenta & Soft Indigo
    ];

    const cores = paletasBanner[index % paletasBanner.length]//Permite a escolha das cores o '%' siginifica operador módulo
                                                             //Permite reutilizar as paletas de forma infinita

//Criando uma string com multiplas linhas
//'SVG = é uma linguagem que descreve graficos vetorias bidimensionais
//Cria imagens escalaveis, isto é, que não perdem a qualidade ao serem redimensionadas, ao contrario das imagens JEPG ou PNG
const svg = `
<svg xmlns ="http://www.w3.org/2000/svg" width="1200" height="400" viewBox="0 0 1200 400">
<defs>
 <linearGradient id="bannerGrad-${index}" x1="0%" y1="0%" x2="100%" y2="100%">
 <stop offset="0%" stop-color="${cores[0]}"/>
 <stop offset="50%" stop-color="${cores[1]}"/> 
 <stop offset="100%" stop-color="${cores[2]}"/>
 </linearGradient>
 <pattern id="pat-${index}" width="40" height="40" patterUnits="userSpaceOnUse">
        <circle cx="20" cy="20" r="2" fill="white" opacity="0.15"/>
   </pattern>
</defs>
<rect width="100% height="100%" fill="url(#bannerGrad-${index})"/>
<rect width="100% height="100%" fill="url(#pat-${index})"/>
<circle cx="1100" cy="80" r="180" fill="white" opacity="0.85"/>
<circle cx="1100" cy="320" r="140" fill="white" opacity="0.85"/>
</svg>`;
return `data:image/svg+xml;charset=utf-8,${encodeURIComponent(svg)}`;
}

// até aqui criamos um codigo que cria de forma dinamica uma 
// Banner SVG (imagem de fundo vetorial)
//Gerando um fundo sem precisar usar imagems prontas, tudo desenhado pelo codigo
//width="1200" height="400" define as dimesões do banner no formato horizontal
//A seção <defs> funciona como uma área de configurações
//podendo ser reutilizada a qualquer momento
//Neste codigo criamos cor gradiente e uma padrão bolinhas
//O Banner sera formado por 4 camadas  
//Camada 1 = Gradiente colorido
//Camada 2 = Textura de bolinhas
//Camada 3 = Grande criculo translucido a direita
//Camada 4 = Grande circulo translucido a esquerda
//Gerando um banner responsivo.

//Gerador de Fotos de Produtos