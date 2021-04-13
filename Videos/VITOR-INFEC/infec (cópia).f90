 PROGRAM INFEC
 
 IMPLICIT NONE
 
 CHARACTER(LEN=29)      ::  ARQUIVO                     !NOME DO ARQUIVO ABERTO
 REAL                   ::  INF                         !NUMERO DE INFECTADOS
 REAL                   ::  Z1,Z2,Z3,Z4,Z5,Z6,Z7,Z8     !DADOS QUE SERAO LIDOS MAS IGNORADOS
 INTEGER                ::  N                           !NUMERO DE SIMULACOES (ARQUIVOS)
 INTEGER                ::  I,J,DIA
 INTEGER                ::  LIN,CONTROLE                !USAREMOS PARA NA LEITURA DO ULTIMO ARQUIVO
 
 !!! DEFINE QUANTAS SIMULACOES EXISTEM
 
 PRINT*, 'DIGITE O NUMERO DE SIMULACOES'
 READ(*,*) N    !LE O NUMERO DIGITADO
 
 !!! CRIA ARQUIVO DE SAIDA
 
 OPEN(1,FILE='INFEC.DAT',STATUS='UNKNOWN')
 
 !!! ESCREVE OS VALORES DAS SIMULACOES ANTERIORES
 
 DIA=0                                      !INICIALIZA A VARIAVEL DIA
 
 CICLO_ARQUIVOS:DO I=1,N-1
 
    WRITE(ARQUIVO,10) I                        !ESCREVE NOME DO ARQUIVO A SER ABERTO USANDO O NUMERO I
    10 FORMAT('ARQUIVOS/EVOL_TEMPORAL_',I0.2,'.dat')    !FORMATO DO NOME
    
    OPEN(2,FILE=ARQUIVO,STATUS='OLD')          !ABRE O ARQUIVO
    
    CICLO_DADOS:DO J=1,14
    
        IF (J==1) THEN                                      !PRIMEIRA LINHA DO ARQUIVO
        
            READ(2,*)                                       !LE E NAO SALVA
            
        ELSE                                                !AS DEMAIS LINHAS
    
            READ(2,*) Z1, Z2, INF, Z3, Z4, Z5, Z6, Z7, Z8   !LE E SALVA NAS VARIAVEIS
            
            WRITE(1,'(I0.6,2X,F12.1)') DIA,INF              !ESCREVE NO ARQUIVO
        
            DIA = DIA+1
            
        END IF
 
    END DO CICLO_DADOS
 
    CLOSE(2)                                    !FECHA O ARQUIVO
 
 END DO CICLO_ARQUIVOS
 
 
 !!! ESCREVE OS RESULTADOS DA ULTIMA SIMULACAO
 
 WRITE(ARQUIVO,11) N                                 !ESCREVE NOME DO ARQUIVO A SER ABERTO USANDO O NUMERO N
 11 FORMAT('ARQUIVOS/EVOL_TEMPORAL_',I0.2,'.dat')    !FORMATO DO NOME
 
 OPEN(2,FILE=ARQUIVO,STATUS='OLD')                   !ABRE O ARQUIVO PARA CONTAR AS LINHAS
 
 LIN=0                             !NUMERO DE LINHAS DO ARQUIVO
 DO
    READ(2,*,IOSTAT = CONTROLE)    !LE O ARQUIVO E VERIFICA SE TEM QUALQUER COISA ESCRITA NA LINHA
    IF(CONTROLE < 0) EXIT          !SE NAO TIVER NADA ESCRITO, SAI DO LOOP
    LIN = LIN + 1                  !SE TEM ALGO ESCRITO, ATUALIZA O NUMERO DE LINHAS
 END DO
 CLOSE(2)                          !FECHA O ARQUIVO POIS JA LEMOS ATE O FIM PRA CONTAR AS LINHAS
 
 OPEN(2,FILE=ARQUIVO,STATUS='OLD')                   !ABRE O ARQUIVO
 
 CICLO_DADOS2:DO J=1,LIN
    
    IF (J==1) THEN                                      !PRIMEIRA LINHA DO ARQUIVO
        
        READ(2,*)                                       !LE E NAO SALVA
            
    ELSE                                                !AS DEMAIS LINHAS
    
        READ(2,*) Z1, Z2, INF, Z3, Z4, Z5, Z6, Z7, Z8   !LE E SALVA NAS VARIAVEIS
            
        WRITE(1,'(I0.6,2X,F12.1)') DIA,INF              !ESCREVE NO ARQUIVO
        
        DIA = DIA+1
            
    END IF
 
 END DO CICLO_DADOS2
 
 CLOSE(2)    !FECHA O ARQUIVO
 
 !!! FECHA O ARQUIVO DE SAIDA
 CLOSE(1)
 
 END PROGRAM INFEC
