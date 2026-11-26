 
/**
 * Gerador de banners e produtos
 */
 
// Gerador de banner com 6 paletas e estilos visuais distintos
 
function gerarBannerSVG(titulo, subtitulo, index) {
    const paletaBanner = [
        ['#0f2027', '#203a43', '#2c5364'], // 1. dark cyan e navy
        ['#833ab4', '#fd1d1d', '#fcb845'], // 2. sunset orange e violet
        ['#11998e', '#38ef7d', '#0575e6'], // 3. Tropical blue
        ['#d31027', '#ea384d', '#7b4397'], // 4. red & purple
        ['#000428', '#004e92', '#00c6ff'], // 5. deep royal blue
        ['#4568dc', '#b06ab3', '#e84393'], // 6.
    ];
    const cores = paletaBanner[index % paletaBanner.length];
 
    //Criando uma string com mutiplas linhas
    //SVG = É uma linguagem que descreve graficos vetoriais bidimensionais
    //Cria imagens escalaveis, isto é que não perdem  a qualidades ao serem
    //redimensionadas, ao contrario das imagens JPEG ou PNG
    const svg = `
   <svg xmlns="http://www.w3.org/2000/svg" width="1200" height="400" viewBox="0 0 1200 400">
   <defs>
        <linearGradient id="bannerGrad-${index}" x1="0%" y1="0%" x2="100%" y2="100%" >
        <stop offset="0%" stop-color="${cores[0]}"/>
        <stop offset="50%" stop-color="${cores[1]}"/>
        <stop offset="100%" stop-color="${cores[2]}"/>
        </linearGradient>
        <pattern id="pat-${index}" width="40" height="40" patternUnits="userSpaceOnUse">
            <circle cx="20" cy="20" r="2" fill="white" opacity="0.15"/>
            </pattern>
        </defs>
        <rect width="100%" height="100%" fill="url(#bannerGrad-${index})"/>
        <rect width="100%" height="100%" fill="url(#pat-${index})"/>
         <circle cx="1100" cy="80" r="180" fill="white" opacity="0.05"/>
          <circle cx="1100" cy="320" r="140" fill="white" opacity="0.05"/>
          </svg>`;
          return `data:image/svg+xml;charset=utf-8,${encodeURIComponent(svg)}`;
}
 
//até aqui criamos um código que cria de forma dinâmica um
// Banner SVG (imagem de fundo vetorial)
//Gerando um fundo sem precisar usar imagens prontas, tudo desenhado pelo código
//width="1200" height="400" define as dimensões do banner no formato horizontal
//A seção <defs> funciona como uma área de configurações
//podendo ser reutilizada a qualquer momento
//Neste código criamos cor gradiente e um padrão de bolinhas
//O banner será formado por 4 camadas
//Camada 1 = Gradiente colorido
//Camada 2 = Textura de bolinhas
//Camada 3 = Grande círculo translúcido à direita
//Camada 4 = Grande círculo translúcido à esquerda
//Gerando um banner responsivo.
 
//Gerador de Fotos de Produtos
 
function gerarImagemSVG(nomeProduto, categoria, id) {
    const paletas = {
        feminina: ['#e84393', '#fd79a8', '#6c5ce7', '#d63031'] ,
        masculina: ['#0984e3', '#74b9ff', '#2d3436', '#00cec9'],
        infantil: ['#00b894', '#55efc4', '#fdcb6e', '#e17055']
    };
    //Escolha da paleta
    const cores = paletas[categoria] || ['#6c5ce7', '#a29bfe'];
    const cor1 = cores[id % cores.length];
    //cores é un array
    const cor2 = cores[(id + 1)% cores.length];
    //id + 1) % cores.length - soma 1 ao indice e pega a proxima coe
   let icone = '';  //criando uma variavel vazia
    if (categoria === 'feminina') {
        icone = `<path d="M65,40 L95,40 L105,70 L90,70 L115,150 L45,150 L70,70 L55,70 Z" fill="none" stroke="white" stroke-width="4" stroke-linecap="round" stroke-linejoin="round"/>`;
    } else if (categoria === 'masculina') {
        icone = `<path d="M50,40 L70,55 L80,40 L100,40 L110,55 L130,40 L140,80 L125,85 L125,150 L55,150 L55,85 L40,80 Z" fill="none" stroke="white" stroke-width="4" stroke-linecap="round" stroke-linejoin="round"/>`;
    } else {
        icone = `<path d="M55,45 L75,55 L105,55 L125,45 L135,75 L120,80 L120,150 L60,150 L60,80 L45,75 Z" fill="none" stroke="white" stroke-width="4" stroke-linecap="round" stroke-linejoin="round"/>
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
/* DADOS DO CARROSEL DE 6 BANNERS */
const BANNERS_DATA = [
    {
        titulo: "Coleção Exclusiva 2026",
        subtitulo: "Descubra as principais tendências da moda com frete grátis para todo Brasil.",
        link: "feminina.html",
        textoBtn: "Ver moda Feminina",
        imagem: "img/banner1.png"
    },
    {
        titulo: "Moda Masculina Urban",
        subtitulo: "Estilo, conforto e elegância em cortes modernos para seu dia a dia.",
        link: "Masculina.html",
        textoBtn: "Ver moda Masculina",
        imagem: "img/banner2.png"
    },
    {
         titulo: "Moda Infantil e Kids",
        subtitulo: "Roupas divertidas e super confortaveis e resistentes para a criançada.",
        link: "Infantil.html",
        textoBtn: "Ver moda Infantil",
        imagem: "img/banner3.png"
    },
    {
         titulo: "Mega Ofertas da Estação",
        subtitulo: "Aproveite descontos imperdiveis de até 40%OFF em itens selecionados.",
        link: "feminina.html",
        textoBtn: "Aproveitar Ofertas",
        imagem: "img/banner4.png"
    },
    {
         titulo: "Lança,emtos de verão",
        subtitulo: "Peças exclusivas e tecidos leves recém-chegados em nosso estoque.",
        link: "masculina.html",
        textoBtn: "Conferir Lançamentos",
        imagem: "img/banner5.png"
    },
    {
         titulo: "Elegancia & Alfaiataria",
        subtitulo: "Blazers, saias e ternos sob medida para ocasiões especiais e trabalho.",
        link: "feminina.html",
        textoBtn: "Ver Coleção Festas",
        imagem: "img/banner6.png"
    }
];
 
let slideAtual = 0;
let intervaloCarrossel = null;
 
function iniciarCarrosselBanners(){
    const wrapper = document.getElementById("carrossel-slides");
    const indicadores = document.getElementById("carrossel-indicadores");
//procurar no HTML um elemento id
// O mesmo se repete no id "carrossel-indicadores"
if(!wrapper || !indicadores) return;
// Vai verificar se um ou dois elementos não foram encontrados
 
//Renderizar os 6 slides
wrapper.innerHTML = BANNERS_DATA.map ((b,i) => `<div class="carrossel-slide">
    <img src="${b.imagem}" alt="${b.titulo}" onerror="this.onerror=null; this.src=gerarBannerSVG(encodeURIComponent('${b.titulo}'), encodeURIComponent('${b.subtitulo}'), ${i});">
    <div class="carrossel-overlay">
    <h2>${b.titulo}</h2>
    <p>${b.subtitulo}</p>
    <a href="${b.link}" class="btn-banner">${b.textoBtn}</a>
    </div>
</div>
`).join ('');
    /*
    Percorrer todos os itens do array BANNERS_DATA e cria o HTML de cada Banner
    .b = banner atual
    .i = posição do banner
    depois o HTML é colocado dentro do wrapper onde cria a estrutura do carrossel
    <img src = ${b.imagem} = define a imagem do banner */
 
     indicadores.innerHTML = BANNERS_DATA.map ((_, i) => `
        <span class="dot ${i===0 ? 'active' : ''}" onclick="irParaSlide(${i})"></span>
        `).join('');
 
        iniciarCarrosselAuto();
}
 
function atualizarPosicaoCarrossel(){
    const wrapper = document.getElementById("carrossel-slides");
    const dots = document.querySelectorAll(".carrossel-indicadores .dot");
    if (!wrapper) return;
 
    wrapper.style.transform = `translateX(-${slideAtual * 100}%)`;
 
    dots.forEach((dot, index) => { //comando para percorrer todas as imagens do carrosel
        if(index===slideAtual){ //imagem atual
            dot.classList.add("active"); //avalia se é o pontinho do slide clicado
        } else {
            dot.classList.remove("active");//se não for, ele volta para imagem principal
 
        }
    });
}
 
    function mudarSlide(direcao) {
        slideAtual += direcao;
        if (slideAtual >= BANNERS_DATA.length) {
            slideAtual = 0;
        } else if (slideAtual < 0) {
            slideAtual = BANNERS_DATA.length - 1;
        }
        atualizarPosicaoCarrossel();
    }
 
    function irParaSlide(index) {
        slideAtual=index;
        atualizarPosicaoCarrossel();
    }
 
    function iniciarCarrosselAuto() {
        pausarCarrossel();
        intervaloCarrossel = setInterval (() => {
            mudarSlide(1);
        }, 4500); // troca de slides a cada 4.5 segundos
    }
 
    function pausarCarrossel() {
        if (intervaloCarrosel){
            clearInterval(intervaloCarrossel)
            intervaloCarrossel = null;
        }
    }
 
    // Gerador da imagens - catalogo completo de produtos
    // Gerar 60  imagens - 20 por categoria
 
    function gerarProdutos(){
        const lista = [];
 
        //20 produtos femininos
        const nomesFem = [
        "Vestido Midi Floral", "Blazer Alfaiataria", "Saia Plissada Premium", "Blusa de Seda Elegant",  
        "Jaqueta de Couro Urban", "Calça Wide Leg", "Top Cropped Satin", "Cardigan de Tricô",  
        "Macacão Verão", "Trench Coat Classic", "Camisa Social Linho", "Vestido Longo Festas",  
        "Short Alfaiataria", "Kimono Estampado", "Blusa Gola Alta", "Saia Jeans Midi",  
        "Casaco Sobretudo", "Body Elegance", "Regata BÁSICA Cotton", "Blazer Oversized Chic"
        ];
        nomesFem.forEach((nome, i) => {
            const id = 100 + i;
            lista.push({
                id: id,
                nome: nome,
                categoria: "feminina",
                preco: parseFloat((89.90 + i * 12.50).toFixed(2)),
                imagem: gerarImagemSVG(nome, "feminina", id)
            });
        });
       
        // 20 produtos masculinos
        const nomesMasc = [
        "Camisa Polo Cotton", "Jaqueta Jeans Classic", "Calça Chino Slim", "Camiseta Oversized Street",  
        "Terno Slim Fit", "Bermuda em Sarja", "Moletom Urban", "Jaqueta Bomber",
        "Camisa Linho Casual", "Regata DryFit Sports", "Calça Cargo Tech", "Sobretudo Wool Premium",
        "Camisa Xadrez Flanela", "Colete Puffer", "Polo Pima Executive", "Calça Jogger Street",
        "Camiseta Gola O", "Jaqueta Motoqueira", "Short D'Água Estampado", "Suéter Gola V"
        ];
        nomesMasc.forEach((nome, i) => {
            const id = 200 + i;
            lista.push({
                id: id,
                nome: nome,
                categoria: "masculina",
                preco: parseFloat((79.90 + i * 14.00).toFixed(2)),
                imagem: gerarImagemSVG(nome, "masculina", id)
            });
        });
 
        // 20 produtos infantil
        const nomesInf = [
        "Conjunto Moletom Kids", "Vestido Infantil Tule", "Camiseta Divertida", "Macacão Bebê Cotton",  
        "Jaqueta Puffer Kids", "Calça Jeans Junior", "Conjunto Verão Praia", "Pijama Estampado Glow",  
        "Salopete Infantil", "Bermuda Tactel Fun", "Casaco com Capuz", "Vestido Floral Little",  
        "Body Bebê Algodão", "Camisa Polo Kids", "Jardineira Jeans", "Conjunto Esportivo Junior",  
        "Regata Estampada", "Cardigan Kids Tricô", "Calça Legging Kids", "Sobretudo Infantil Classic"
        ];
         nomesInf.forEach((nome, i) => {
            const id = 300 + i;
            lista.push({
                id: id,
                nome: nome,
                categoria: "infantil",
                preco: parseFloat((49.90 + i * 10.00).toFixed(2)),
                imagem: gerarImagemSVG(nome, "infantil", id)
            });
        });
       
        return lista;
    }
 
    const PRODUTOS = gerarProdutos();
 
function renderizarDestaques(){
    const grid = document.getElementById("grid-destaques");
 
    if (!grid) return;
 
    const destaques = [...PRODUTOS]
    .sort(() => Math.random() - 0.5)
    .slice(0,20);
 
    grid.innerHTML = destaques.map(produto => `
    <div class="produto-card">
        <img src="${produto.imagem}" alt="${produto.nome}">
        <h3>${produto.nome}</h3>
        <p>${produto.categoria}</p>
        <p class="preco">
            R$ ${produto.preco.toFixed(2)}
        </p>
        <button onclick="alert('Produto ${produto.id} adicionado ao carrrinho')">
            Comprar
            </button>
            </div>
            `).join('');
}
 
document.addEventListener("DOMContentLoaded", () => {
    renderizarDestaques();
});
 

 