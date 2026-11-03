document.getElementById("form-indicacao").addEventListener("submit", function(e) {
    e.preventDefault();
     const nome = document.getElementById("nome").value;
     const livro = document.getElementById("livro").value;
 
     const lista = document.getElementById("lista-indicacoes");
     const item = document.createElement("li");
     item.textContent = `${nome} indicou: ${livro}`;
     lista.appendChild(item);
 
});
 
// Lista de eventos da biblioteca em 2027
const eventos2027 = [
  { data: "2027-02-15", titulo: "Semana de Jogos de Tabuleiro" },
  { data: "2027-03-10", titulo: "Oficina de Pesquisa Acadêmica" },
  { data: "2027-05-20", titulo: "Clube de Leitura - Machado de Assis" },
  { data: "2027-08-05", titulo: "Campeonato de Videogame" },
  { data: "2027-10-12", titulo: "Dia das Crianças - Atividades Especiais" },
  { data: "2027-11-25", titulo: "Feira Literária Senac Tatuapé" }
];
 
 
//===========================================//
 
let mesAtual = 0; // Janeiro = 0
let anoAtual = 2027;
function gerarCalendario(mes, ano) {
  const calendario = document.getElementById("calendar");
  calendario.innerHTML = "";
  const data = new Date(ano, mes);
  const primeiroDia = new Date(ano, mes, 1).getDay();
  const diasNoMes = new Date(ano, mes + 1, 0).getDate();
 
  // Cabeçalho com navegação
  const header = document.createElement("div");
  header.className = "cal-header";
  header.innerHTML = ` <button onclick="mudarMes(-1)">⇦</button>
  <span>${data.toLocaleString("pt-BR", { month: "long" })} ${ano}</span>
  <button onclick="mudarMes(1)">⇨</button> `;
  calendario.appendChild(header);
 
  // Dias da semana
  const diasSemana = ["Dom", "Seg", "Ter", "Qua", "Qui", "Sex", "Sáb"];
  const grid = document.createElement("div");
  grid.className = "cal-grid";
  diasSemana.forEach(d => { const dia = document.createElement("div");
  dia.className = "cal-dia semana";
  dia.textContent = d; grid.appendChild(dia);
});
 
// Espaços antes do primeiro dia
for (let i = 0; i < primeiroDia; i++) {
  const vazio = document.createElement("div");
  vazio.className = "cal-dia vazio";
  grid.appendChild(vazio); }
 
  // Dias do mês
  for (let dia = 1;
  dia <= diasNoMes; dia++) {
  const cell = document.createElement("div");
  cell.className = "cal-dia";
  cell.textContent = dia;
  const dataStr = `${ano}-${String(mes+1).padStart(2,"0")}-${String(dia).padStart(2,"0")}`;
  const evento = eventos2027.find(e => e.data === dataStr);
  if (evento) { cell.classList.add("evento");
    cell.title = evento.titulo; } grid.appendChild(cell); }
    calendario.appendChild(grid);
  }function mudarMes(delta) {
    mesAtual += delta;
    if (mesAtual < 0) { mesAtual = 11; anoAtual--;
 
    } if (mesAtual > 11) { mesAtual = 0; anoAtual++; }
    gerarCalendario(mesAtual, anoAtual);
  }
 
// Função para abrir modal
function abrirModal(evento) {
  const modal = document.getElementById("modal");
  document.getElementById("modal-titulo").textContent = evento.titulo;
  document.getElementById("modal-data").textContent = evento.data;
  document.getElementById("modal-descricao").textContent = evento.descricao;
  modal.style.display = "block";
}
 
// Fechar modal
function fecharModal() {
  document.getElementById("modal").style.display = "none";
}
 
  // Inicializa
  gerarCalendario(mesAtual, anoAtual);
 
