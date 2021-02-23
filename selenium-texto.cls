VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Planilha2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = True
Option Explicit
Private Sub ENVIAR_Click()
'ALMEIDA - (21)98747-1804  M.COSTA - (32)988420020
Dim W As Worksheet
Dim UltCel As Range
Dim linha As Integer
Dim Contato, texto As String
Dim obj As New ChromeDriver

'obj.AddArgument ("--headless")'Back-End view (desativa tela)
Application.EnableEvents = False 'desativa a espera de tela

Set W = Sheets(1)
Set UltCel = W.Cells(W.Rows.Count, 2).End(xlUp) ' Ultima célula Coluna B telefone


On Error GoTo erroHandler

    Set W = Sheets(1) 'Nome da Planilha
    W.Select
    obj.Get "https://web.whatsapp.com/" 'Abre para ler QRCode"
    Application.Wait (Now + TimeValue("0:00:15"))
    
    On Error Resume Next
    For linha = 3 To UltCel.Row
        Contato = W.Cells(linha, 2) 'Telefone coluna B
        texto = W.Cells(linha, 5)   'Mensagem coluna E
    
        obj.Get "https://web.whatsapp.com/send?phone=" & Contato 'Abre o whatsappweb no numero CONTATO
        Application.Wait (Now + TimeValue("0:00:08"))
        obj.FindElementByXPath("//*[@id=""main""]/footer/div[1]/div[2]/div/div[2]").SendKeys (texto) 'Escreve o texto
        Application.Wait (Now + TimeValue("0:00:08"))
        obj.FindElementByXPath("//*[@id=""main""]/footer/div[1]/div[3]/button").Click 'Clica em enviar
        Application.Wait (Now + TimeValue("0:00:02"))
    
    Next
    
    MsgBox "Mensagens Enviadas!"
    Exit Sub
    
erroHandler:

MsgBox "Erro: Confira sua conexão com a Internet; ou se esta é a primeira planilha da aba; e também se temos Telefone (coluna B) e Mensagem (coluna E)"

Application.EnableEvents = True 'ativa tela

End Sub
