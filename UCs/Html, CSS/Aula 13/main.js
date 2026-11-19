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
//Aqui sera criado uma função para gerar fotos dinamicamante permitindo o seu uso como retorno direto na tag <img>
function gerarImagensSVG(nomeProduto, categoria, id){
    const paletas = {
        feminina: ['#e84383', '#fd79a8', '#6c5ce7', '#d63031'],
        masculina: ['#0984e3', '#74b9ff', '#2d3436', '#00cec9'],
        infantil: ['#00b894', '#55efc4', '#fdcb6e', '#e17055']
    };
    //Escolha da peleta
    const cores = paletas[categoria] || ['#6c5ce7', '#a29bfe'];
    const cor1 = cores[id & cores.length];
    //cores é um Array --- id % cores.length calcula o tamanho do Array
    const cor2 = cores[(id + 1) % cores.length];
    //id + 1 % cores.lenght - soma 1 ao indice e pega a proxima cor

    let icone = ''; //Criando uma variavel vazia 
    if(categoria === 'feminina'){
        icone = `path d="M65,40 L95,40 L105,70 L115,150 L45,150 L70,70 2" fill="nome" stroke="white" stroke-width="4" stroke-linecap="round" stroke-linejoin="round"/>`;
        //Tenho o caminho "path" com instruções para criar uma imagem
        //Cada par de numeros é uma coordenada (x,y) - ex.: M65,40 = mova o lapis para x = 65 e y=40
        // o L é o movimento do lapis nas coordenas descritas 
    } else if ( categoria === 'masculina'){
        icone =  `<path d="M50,40 L70,55 L80,40 L100,40 L110,55 L130,40 L140,80 L125,85 L125,150 L55,150 L55,85 L40,80 Z" fill="none" stroke="white" stroke-width="4" stroke-linecap="round" stroke-linejoin="round"/>`;

    }else{ icone = `<path d="M55,45 L75,55 L105,55 L125,45 L135,75 L120,80 L120,150 L60,150 L60,80 L45,75 Z" fill="none" stroke="white" stroke-width="4" stroke-linecap="round" stroke-linejoin="round"/>
                <circle cx="90" cy="100" r="10" fill="white" opacity="0.8"/>`;
    }
    const svg = `<svg xmlns="http://www.w3.org/2000/svg" width="300" height="320" viewBox="0 0 180 190">
        <defs>
            <linearGradient id="grad-${id}" x1="0%" y1="0%" x2="100%" y2="100%">
                <stop offset="0%" stop-color="${cor1}" />
                <stop offset="100%" stop-color="${cor2}" />
            </linearGradient>
        </defs>
        <rect width="100%" height="100%" fill="url(#grad-${id})"/>
        <g transform="translate(0, 0)">
            ${icone}
        </g>
        <text x="90" y="175" font-family="'Segoe UI', sans-serif" font-size="10" font-weight="bold" fill="white" text-anchor="middle" opacity="0.95">${nomeProduto}</text>
    </svg>`;
 
    return `data:image/svg+xml;charset=utf-8,${encodeURIComponent(svg)}`;
}


/* Dados do carrossel de 6 banners*/
const BANNERS_DATA = [
    {
        titulo: "Coleção Exclusiva 2026",
        subtitulo: "Descubra as principais tendências da moda com frete grátis para todo o Brasil",
        link: "feminina.html",
        textoBtn: "Ver moda Feminina",
        imagem: "img/banner1.png"
    },
    {
        titulo: "Moda Masculina Urban",
        subtitulo: "Estilo, conforto e elegância em cortes modernos para o seu dia a dia",
        link: "masculina.html",
        textoBtn: "Ver moda Masculina",
        imagem: "img/banner2.png"
    },
    {
        titulo: "Moda Infantil e Kids",
        subtitulo: "Roupas divertidas, super confortaveis e resistentes para a criançada",
        link: "infantil.html",
        textoBtn: "Ver moda Infantil",
        imagem: "img/banner3.png"
    },
    {
        titulo: "Mega Ofertas da Estação",
        subtitulo: "Aproveita descontos imperdiveis de  até 40% OFF em itens selecionados",
        link: "feminina.html",
        textoBtn: "Aproveitar Ofertas",
        imagem: "img/banner4.png"
    },
    {
        titulo: "Lançamentos de Verão",
        subtitulo: "Peças exclusivas e tecidos leves recém-chegados em nosso estoque",
        link: "masculina.html",
        textoBtn: "Conferir Lançamentos",
        imagem: "img/banner5.png"
    },
    {
        titulo: "Elegância & Alfaitaria",
        subtitulo: "Blazers, salas e ternos sob medida para ocasiôes especias e trabalho",
        link: "feminina.html",
        textoBtn: "Ver Coleção Festas",
        imagem: "img/banner6.png"
    },
    
];

let slideAtual = 0;
let intervaloCarrossel = null;

function iniciarCarrosselBanners(){
    const wrapper = document.getElementById("carrossel-slides");
    const indicadores = document.getElementById("carrossel-indicadores");
    //Procurar no HTML um elemento id "carrossel-slides" e armazena o elemento nesse id 
    //O mesmo se repete no id "carrossel-indicadores"
    if(!wrapper || indicadores) return;
    //Vai verificar se um ou dois elmentos não foram encontrados, se não encontrar interrompe a execução do carrossel

    //Renderizar os 6 slides
    wrapper.innerHTML = BANNERS_DATA.map((b, i ) => `
        <div class="carrossel-slide">
            <img src="${b.imagem}" alt="${b.titulo}" onerror="this.onerror=null; this.src=gerarBannersSVG(encodeURIComponent('${b.titulo}'), encodeURIComponent('${b.subtitulo}'), ${i});">
            <div class="carrossel-overlay">
            <h2>${b.titulo}</h2>
            <p>${b.subtitulo}</p>
            <a href="${b.link}" class="btn-banner">${b.textoBtn}</a>
            </div>
        </div>
    `).join('');
    /*Percorrer todos itens do array BANNERS_DATA e cria o HTML de cada banner
    .b = banner atual
    i = posição do banner
    depois o HTML é colocado dentro do wrapper onde cria a estrtura do carrossel
    <img src = $(b.imagem) = define a imagem do banner 
    onerror="this.onerror=null; this.src=gerarBannersSVG(encodeURIComponent = se a imagem não carregar, executa o codigo alternativo
    <a href="${b.link}" =  cria o link para o botão acessar a pagina
    `).join(''); = Cria uma String que carrega todos as imagens */

    //Renderizar os 6 indicadores

}