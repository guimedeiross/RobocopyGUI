# Pré-requisitos:

.NET 3.5.

### As seguintes funções já estão marcadas por padrão no programa de robocopy:

/E Copia diretorios e subdiretorios, inclusive se estiver vazio

/ZB Copia em modo de Backup e reinicializável

/MT:32 Utiliza Multi-Threading para copiar, no caso 32. Ps: copia muito mais rapido, principalmente se tiver muitos arquivos pequenos.

/R:0 Não tentar copiar novamente em caso de falha

/W:0 Não dar um tempo antes de ir para próxima cópia em caso de falha

/A-:SH Remove atributos de hidden e system ou seja para não ocultar a pasta quando copia um disco inteiro como "E:\" por exemplo

/XJD Exclui junções de diretórios da cópia, é como se fosse link simbólicos no windows, onde se não tiver essa opção ele copiara 2 vezes a pasta no caso, pq uma delas é uma junção(link simbólico) para pasta que já teria sido copiado.

/XJF Exclui junções de arquivos da cópia, é como se fosse link simbólicos no windows, onde se não tiver essa opção ele copiara 2 vezes o arquivo no caso, pq um deles é uma junção(link simbólico) para o arquivo que já teria sido copiado.