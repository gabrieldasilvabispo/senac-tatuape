/*Calendario Interativo*/
/* Variaveis Globais*/
let mesAtual = 0; //Janeiro = 0
let anoAtual = 2027;
function gerarCalendario(mes,ano){
    const calendario = document.getElementById("calendar");
    calendario.innerHTML = "";
    const data=new Date(ano,mes); 
    const primeiroDia=new Date(ano,mes, 1).getDay;
    const diasNoMes=new Date (ano, mes+1,0).getDate;
}

// Cabeçalho com Navegação //

const header=document.createElement("div");
header.className="cal-header";
header.innerHTML=`<button onclick="mudarMes(-1)">←</button>
<span>${data.toLocaleString("pt-BR", {month:"long"})}${ano}</span>
<button onclick="mudarMes(1)">→</button>`;
calendario.appendChild(header);

// Dias da Semana //

const diasSemana=["Dom","Seg","Ter","Qua","Qui","Sex","Sáb"];
const grid=document.createElement("div");
grid.className="cal-grid";
diasSemana.forEach(d=> {const dia= document.createElement("div");
    dia.className="cal-dia.semana";
    dia.textContent=d;grid.appendChild(dia);
});

// Espaços antes do primeiro dia //

for(let i=0; i< primeiroDia; i++){
    const vazio= document.createElement("div");
    vazio.className="cal-dia.vazio";
    grid.appendChild(vazio);}


    // Dias do mês //

    