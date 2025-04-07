#install.packages(c("shiny", "shinydashboard", "echarts4r", "dplyr"))
#install.packages("dplyr")
# install.packages("ggplot2")

library(ggplot2)
library(shiny)
library(shinydashboard)
library(echarts4r)

library(dplyr)


# Critérios e sistemas avaliados
componentes <- c("Gestão", "Qualidade", "Padrões", "Infraestrutura", "Acesso", "Literacia")
categorias <- c("SINASC", "RESP-Microcefalia", "SINAN", "VIGITEL", "e-SUS", "SIM")

valores <- matrix(c(
  4, 3, 3, 4, 4, 4,
  4, 3, 3, 4, 4, 4,
  4, 4, 3, 4, 4, 4,
  3, 2, 3, 4, 3, 3,
  4, 4, 4, 4, 4, 4,
  3, 3, 3, 3, 3, 3
), nrow = 6, byrow = TRUE)

df <- as.data.frame(valores)
colnames(df) <- categorias
df$Componente <- componentes

# UI
ui <- dashboardPage(
  dashboardHeader(title = "Principios Aurora"),
  dashboardSidebar(
    sidebarMenu(
      menuItem("Visão Geral", tabName = "overview", icon = icon("dashboard")),
      menuItem("Radar Interativo", tabName = "radar", icon = icon("chart-pie")),
      menuItem("Legislação", tabName = "legislacao", icon = icon("gavel")),
      menuItem("Matriz de Coleta", tabName = "coleta", icon = icon("table")),
      menuItem("Ontologia e Epistemologia", tabName = "onto", icon = icon("project-diagram")),
      menuItem("Sobre", tabName = "about", icon = icon("info-circle"))
    )
  ),
  dashboardBody(
    tabItems(
      # Abas
      tabItem(tabName = "overview",
              h2("Bem-vindo ao Dapiva_primers"),
              p("Este dashboard apresenta o radar de maturidade dos dados administrativos com foco em inclusão."),
              p("Ele deriva do artigo As bases legais no sistema de coleta de informação sobre a diversidade na Saúde e na Saúde Digital")
      ),
      
      tabItem(tabName = "radar",
              h2("Radar de Maturidade Interativo"),
              echarts4rOutput("radar_plot", height = "500px")
      ),
      
     tabItem(tabName = "legislacao",
              h2("Políticas e Legislação sobre Diversidade nos Dados"),
              p("Abaixo estão listadas normas constitucionais e infralegais que orientam a coleta, uso e proteção de dados sensíveis e de diversidade em registros administrativos."),
              
              h3("1. Normas Constitucionais e Gerais sobre Diversidade e Saúde"),
              tableOutput("leg_constituicao"),
              
              h3("2. Normas sobre Raça/Cor e População Negra"),
              tableOutput("leg_raca"),
              
              h3("3. Normas sobre Etnia, Povos Indígenas e Comunidades Tradicionais"),
              tableOutput("leg_etnia"),
              
              h3("4. Normas sobre População LGBT"),
              tableOutput("leg_lgbt")
      ),
      tabItem(tabName = "coleta",
              h2("Matriz de Coleta de Variáveis de Diversidade"),
              p("Este gráfico apresenta a presença (1), ausência (0) ou presença parcial (0.5) de variáveis de diversidade nos principais sistemas de informação em saúde."),
              p("As variáveis analisadas são: Sexo, Raça/Cor e Etnia."),
              plotOutput("heatmap_plot", height = "400px"),
              h4("Data Primer"),
              p("Esta matriz foi construída a partir da análise de dicionários de dados públicos dos sistemas selecionados."),
              tags$ul(
                tags$li("1 = Coleta obrigatória e sistemática da variável."),
                tags$li("0.5 = Coleta opcional ou parcial, nem sempre estruturada."),
                tags$li("0 = Variável não disponível ou não coletada.")
              ),
              h4("Nota:"),
              tags$ul(
                tags$li(HTML("<strong>e-SUS Notifica:</strong> a captura da informação sobre etnia está relacionada à ativação da categoria 'raça/cor – indígena'. Quando essa categoria é selecionada, torna-se possível identificar a comunidade dentre opções existentes, incluindo povos tradicionais."))
            #    tags$li(HTML("<strong>SINASC:</strong> coleta a variável raça/cor da parturiente. No entanto, o processamento de dados de nascidos vivos ocorridos em territórios indígenas é de responsabilidade dos Distritos Sanitários Especiais Indígenas (DSEI).")),
            #    tags$li(HTML("<strong>VIGITEL:</strong> coleta dados sobre raça/cor com categorias reduzidas: 'preta' e 'branca'."))
              )
      ),
     tabItem(tabName = "onto",
             h2("Ontologia e Epistemologia da Tecnologia – SIM e SINASC"),
             
             p("Os sistemas de informação em saúde possuem ontologia e epistemologia próprias. As questões ontológicas dizem respeito à natureza e ao ser da tecnologia, enquanto as questões epistemológicas focam no saber produzido e implicado por ela."),
             
             h3("Natureza ontológica: Registros administrativos por órgão e suas funções"),
             tableOutput("tabela_orgaos"),
             p(HTML("<em>Fonte: Adaptado de Capítulo 14 – Produção Estatal de Evidências e Uso de Registros Administrativos em Políticas Públicas.</em>")),
             
             h3("Natureza ontológica dos sistemas como 'artefatos de informação'"),
             tableOutput("tabela_artefatos")
             
             #p(HTML("<em>Fonte: Adaptado de Capítulo 14 – Produção Estatal de Evidências e Uso de Registros Administrativos em Políticas Públicas.</em>"))
     ),
     
     tabItem(tabName = "about",
              h2("Sobre o Projeto"),
              p("Aurora é o princípio orientador do Dapiva – Data and Policy for Inclusion in Administrative Data."),
              p("MaTz-Data é o radar de maturidade aplicado aos dados administrativos."),
              p("Idealização: Maíra Lima (lima.maira.souza@gmail.com)")
      )
    )
  )
)

# Server
server <- function(input, output) {
  output$radar_plot <- renderEcharts4r({
    df %>%
      e_charts(Componente) %>%
      e_radar(SINASC, name = "SINASC") %>%
      e_radar(`RESP-Microcefalia`, name = "RESP-Microcefalia") %>%
      e_radar(SINAN, name = "SINAN") %>%
      e_radar(VIGITEL, name = "VIGITEL") %>%
      e_radar(`e-SUS`, name = "e-SUS Notifica") %>%
      e_radar(SIM, name = "SIM") %>%
      e_radar_opts(
        indicator = lapply(componentes, function(c) list(name = c, max = 5)),
        shape = "circle"
      ) %>%
      e_tooltip(trigger = "item")# %>%
      #e_title("Radar de Maturidade", subtext = "MaTz- Data")
  })
  
  # Tabelas de legislação
  output$leg_constituicao <- renderTable({
    data.frame(
      Tema = c("Direito à Saúde", "Igualdade e Não Discriminação", "Direitos Territoriais e Culturais", "Direitos Sociais"),
      Norma = c("Art. 196 da CF/88", "Arts. 3º, 5º, 14, 19, 215 e 242 da CF/88", "Arts. 216, 231 e 232 da CF/88", "Art. 6º da CF/88"),
      Conteúdo = c(
        "Saúde como direito de todos e dever do Estado",
        "Princípios da dignidade, igualdade, cultura e vedação à discriminação",
        "Reconhecimento de direitos de povos indígenas e suas formas de organização",
        "Direito à saúde, alimentação, trabalho, moradia etc."
      )
    )
  })
  
  output$leg_raca <- renderTable({
    data.frame(
      Tipo = c("Decreto", "Portaria", "Portaria", "Lei", "Resolução", "Portaria", "Lei", "Lei"),
      Norma = c("nº 65.810/1969", "nº 3.947/GM/MS/1998", "nº 992/GM/MS/2009", "nº 12.288/2010", 
                "nº 2/CIT/2014", "nº 344/MS/2017", "nº 14.553/2023", "nº 6.015/1973"),
      Conteúdo = c(
        "Convenção Internacional contra Discriminação Racial",
        "Inserção obrigatória da variável raça/cor no SUS",
        "Institui a PNSIPN",
        "Estatuto da Igualdade Racial",
        "II Plano Operativo da PNSIPN",
        "Preenchimento obrigatório da variável raça/cor",
        "Inclusão obrigatória do campo étnico-racial em documentos administrativos",
        "Base legal dos registros públicos (fundamento de SINASC e SIM)"
      )
    )
  })
  
  output$leg_etnia <- renderTable({
    data.frame(
      Tipo = c("Constituição", "Lei", "Lei", "Lei", "Decreto", "Decreto Legislativo", "Portaria", "Portaria",
               "Decreto", "Decreto", "Decreto", "Decreto", "Portaria", "Portaria", "Portaria", "Decreto"),
      Norma = c("Art. 194 da CF/88", "nº 8.742/1993", "nº 9.459/1997", "nº 9.836/1999", "nº 4887/2003", 
                "nº 143/2002", "nº 254/GM/MS/2002", "nº 98/2007", "nº 6.040/2007", "nº 6.261/2007 (revogado)",
                "nº 6.872/2009", "nº 10.088/2009", "nº 177/2011", "nº 2.866/2011", "nº 3.396/2020", "nº 12.128/2024"),
      Conteúdo = c(
        "Seguridade social",
        "Lei Orgânica da Assistência Social (LOAS)",
        "Injúria Racial",
        "Subsistema de Atenção à Saúde Indígena",
        "Comunidades quilombolas como grupos étnico-raciais",
        "Convenção 169 da OIT",
        "Política Nacional de Atenção à Saúde dos Povos Indígenas",
        "Cadastro Geral de Comunidades Quilombolas",
        "Política de Desenvolvimento Sustentável dos PCTs",
        "Programa Brasil Quilombola",
        "Plano Nacional de Promoção da Igualdade Racial (PLANAPIR)",
        "Ratifica a autodeterminação étnica (Convenção 169)",
        "Atendimento diferenciado no Cadastro Único",
        "PNSIPCF",
        "Atualizações sobre saúde da população do campo e floresta",
        "Plano Nacional de Políticas para Povos Ciganos"
      )
    )
  })
  
  output$leg_lgbt <- renderTable({
    data.frame(
      Tipo = c("Lei", "Portaria", "Portaria", "Portaria", "Portaria", "Portaria Consolidação", "Resolução", "Projeto de Lei", "Portaria"),
      Norma = c("nº 7.716/1989", "nº 2.227/2004", "nº 104/2011", "nº 2.836/2011", "nº 1.271/2014",
                "nº 02/2017", "CIT nº 26/2017", "nº 1082/2023", "nº 762/2023"),
      Conteúdo = c(
        "Crimes resultantes de preconceito",
        "Criação do comitê técnico de saúde LGBT",
        "Notificação universal de violências",
        "Política Nacional de Saúde Integral LGBT",
        "Notificação compulsória de violência sexual e suicídio",
        "Consolidação da Política de Saúde LGBT",
        "II Plano Operativo da Política Nacional LGBT",
        "Coleta obrigatória de dados LGBTQIA+ pelo IBGE",
        "Rede Nacional de Evidências em Direitos Humanos"
      )
    )
  })
  
  output$heatmap_plot <- renderPlot({
    dados <- data.frame(
      Sistema = rep(c("SINASC", "RESP-Microcefalia", "SINAN", "VIGITEL", "e-SUS Notifica", "SIM"), each = 3),
      Variavel = rep(c("Sexo", "Raça/Cor", "Etnia"), times = 6),
      Valor = c(1,1,0, 1,0,1, 1,1,0, 1,0.5,0, 1,1,1, 1,1,0)
    )
    
    ggplot(dados, aes(x = Variavel, y = Sistema, fill = Valor)) +
      geom_tile(color = "white") +
      scale_fill_gradientn(colors = c("white", "#b2df8a", "#1b7837"),
                           values = scales::rescale(c(0, 0.5, 1)),
                           breaks = c(0, 0.5, 1),
                           labels = c("Ausente", "Parcial", "Presente"),
                           name = "Status") +
      geom_text(aes(label = Valor), color = "black", size = 4) +
      theme_minimal() +
      theme(axis.text.x = element_text(angle = 45, hjust = 1),
            panel.grid = element_blank()) +
      labs(title = "Matriz de Coleta de Variáveis de Diversidade por Sistema de Informação",
           x = "Variável de Diversidade", y = "Sistema de Informação")
  })
  
  
  output$tabela_orgaos <- renderTable({
    data.frame(
      Nome = c("Sistema de Informações sobre Mortalidade", "Sistema de Informações de Nascidos Vivos"),
      Sigla = c("SIM", "SINASC"),
      `Órgão Gestor` = c("MS", "MS"),
      `Usos e Funções` = c(
        "Subsídio para políticas públicas (i), monitoramento de ações (iii), prestação de contas, transparência e controle social (v)",
        "Subsídio para políticas públicas (i), monitoramento de ações (iii)"
      ),
      check.names = FALSE
    )
  })
  
  output$tabela_artefatos <- renderTable({
    data.frame(
      Variável = c("Raça/Cor", "Gênero", "Etnia/Povos Tradicionais"),
      `SINASC (Nascidos Vivos)` = c(
        "Coletada desde 1995 (recém-nascido), desde 2011 (mãe)",
        "Coletado como 'sexo biológico'",
        "Não há campo específico além da raça/cor"
      ),
      `SIM (Óbitos)` = c(
        "Coletada no atestado de óbito e consolidada no SIM",
        "Coletado como 'sexo biológico'",
        "Não há campo específico além da raça/cor"
      ),
      `Motivo do Marco Legal` = c(
        "Visibilidade de populações historicamente negligenciadas; Redução das iniquidades raciais",
        "Direito à identidade de gênero",
        "Reconhecimento e proteção a Povos e Comunidades Tradicionais (PCTs)"
      ),
      Escopo = c("Direta", "Indireta", "Indireta"),
      `Representação Ontológica` = c("Autodeclaração", "Limitada", "Limitada"),
      `Construção social da diversidade` = c("2/2", "0/2", "0/2"),
      `Inclusion by Design` = c("Sim", "Não", "Não"),
      check.names = FALSE
    )
  })
  
  
}

# Run
shinyApp(ui, server)
