Namespace MeuNamespace
    Module MeuModulo

        Sub OlaMundo(nome)

            MsgBox("Olá Mundo VBA! Seja bem vindo " + nome)

        End Sub

            Sub Main()
        
                Dim nome As String
                
                nome = "Fabricio"
    
                OlaMundo(nome)
            End Sub

    End Module
End Namespace
