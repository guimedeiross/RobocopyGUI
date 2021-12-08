Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName PresentationFramework
[System.Windows.Forms.Application]::EnableVisualStyles()

$Form = New-Object system.Windows.Forms.Form
$Form.ClientSize = New-Object System.Drawing.Point(500, 500)
$Form.text = "RobocopyGUI"
$Form.TopMost = $false
$Form.BackColor = [System.Drawing.ColorTranslator]::FromHtml("#cfcaca")

$lbOrigem = New-Object system.Windows.Forms.Label
$lbOrigem.text = "Origem *"
$lbOrigem.AutoSize = $true
$lbOrigem.width = 25
$lbOrigem.height = 10
$lbOrigem.location = New-Object System.Drawing.Point(22, 22)
$lbOrigem.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)
$lbOrigem.ForeColor = [System.Drawing.ColorTranslator]::FromHtml("#000000")

$tbOrigem = New-Object system.Windows.Forms.TextBox
$tbOrigem.multiline = $false
$tbOrigem.width = 405
$tbOrigem.height = 20
$tbOrigem.location = New-Object System.Drawing.Point(22, 43)
$tbOrigem.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 16)

$lbDestino = New-Object system.Windows.Forms.Label
$lbDestino.text = "Destino *"
$lbDestino.AutoSize = $true
$lbDestino.width = 25
$lbDestino.height = 10
$lbDestino.location = New-Object System.Drawing.Point(22, 83)
$lbDestino.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)
$lbDestino.ForeColor = [System.Drawing.ColorTranslator]::FromHtml("#000000")

$tbDestino = New-Object system.Windows.Forms.TextBox
$tbDestino.multiline = $false
$tbDestino.width = 405
$tbDestino.height = 20
$tbDestino.location = New-Object System.Drawing.Point(22, 104)
$tbDestino.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 16)

$lbLog = New-Object system.Windows.Forms.Label
$lbLog.text = "Caminho do Log. Ex: C:\log.txt"
$lbLog.AutoSize = $true
$lbLog.width = 25
$lbLog.height = 10
$lbLog.location = New-Object System.Drawing.Point(22, 144)
$lbLog.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)
$lbLog.ForeColor = [System.Drawing.ColorTranslator]::FromHtml("#000000")

$tbLog = New-Object system.Windows.Forms.TextBox
$tbLog.multiline = $false
$tbLog.width = 405
$tbLog.height = 20
$tbLog.location = New-Object System.Drawing.Point(22, 165)
$tbLog.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 16)

$lbDiretoriosExcluidosCopia = New-Object system.Windows.Forms.Label
$lbDiretoriosExcluidosCopia.text = "Diretorios que nao serao copiados (Separados por virgula)"
$lbDiretoriosExcluidosCopia.AutoSize = $true
$lbDiretoriosExcluidosCopia.width = 25
$lbDiretoriosExcluidosCopia.height = 10
$lbDiretoriosExcluidosCopia.location = New-Object System.Drawing.Point(22, 205)
$lbDiretoriosExcluidosCopia.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)
$lbDiretoriosExcluidosCopia.ForeColor = [System.Drawing.ColorTranslator]::FromHtml("#000000")

$lbExemploDiretorio = New-Object system.Windows.Forms.Label
$lbExemploDiretorio.text = 'Ex: Program Files (x86),$WinREteste'
$lbExemploDiretorio.AutoSize = $true
$lbExemploDiretorio.width = 25
$lbExemploDiretorio.height = 10
$lbExemploDiretorio.location = New-Object System.Drawing.Point(22, 223)
$lbExemploDiretorio.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)
$lbExemploDiretorio.ForeColor = [System.Drawing.ColorTranslator]::FromHtml("#000000")


$tbDiretoriosExcluidosCopia = New-Object system.Windows.Forms.TextBox
$tbDiretoriosExcluidosCopia.multiline = $false
$tbDiretoriosExcluidosCopia.width = 405
$tbDiretoriosExcluidosCopia.height = 20
$tbDiretoriosExcluidosCopia.location = New-Object System.Drawing.Point(22, 243)
$tbDiretoriosExcluidosCopia.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 16)

$lbExclusaoArquivos = New-Object system.Windows.Forms.Label
$lbExclusaoArquivos.text = "Arquivos que nao serao copiados (Separados por virgula)"
$lbExclusaoArquivos.AutoSize = $true
$lbExclusaoArquivos.width = 25
$lbExclusaoArquivos.height = 10
$lbExclusaoArquivos.location = New-Object System.Drawing.Point(22, 284)
$lbExclusaoArquivos.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)
$lbExclusaoArquivos.ForeColor = [System.Drawing.ColorTranslator]::FromHtml("#000000")

$lbExemploArquivo = New-Object system.Windows.Forms.Label
$lbExemploArquivo.text = "Ex: arquivo.txt,arquivo2.txt"
$lbExemploArquivo.AutoSize = $true
$lbExemploArquivo.width = 25
$lbExemploArquivo.height = 10
$lbExemploArquivo.location = New-Object System.Drawing.Point(22, 302)
$lbExemploArquivo.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)
$lbExemploArquivo.ForeColor = [System.Drawing.ColorTranslator]::FromHtml("#000000")


$tbExclusaoArquivo = New-Object system.Windows.Forms.TextBox
$tbExclusaoArquivo.multiline = $false
$tbExclusaoArquivo.width = 405
$tbExclusaoArquivo.height = 20
$tbExclusaoArquivo.location = New-Object System.Drawing.Point(22, 322)
$tbExclusaoArquivo.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 16)


$btnIniciar = New-Object system.Windows.Forms.Button
$btnIniciar.text = "Iniciar"
$btnIniciar.width = 97
$btnIniciar.height = 33
$btnIniciar.location = New-Object System.Drawing.Point(22, 399)
$btnIniciar.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)
$btnIniciar.ForeColor = [System.Drawing.ColorTranslator]::FromHtml("#000000")
$btnIniciar.BackColor = [System.Drawing.ColorTranslator]::FromHtml("#50e3c2")

$lbStatusCopiando = New-Object system.Windows.Forms.Label
$lbStatusCopiando.text = ''
$lbStatusCopiando.AutoSize = $true
$lbStatusCopiando.width = 25
$lbStatusCopiando.height = 10
$lbStatusCopiando.location = New-Object System.Drawing.Point(178, 408)
$lbStatusCopiando.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)
$lbStatusCopiando.ForeColor = [System.Drawing.ColorTranslator]::FromHtml("#000000")

function Set-ExclusaoDiretorioOuArquivo {
    param (
        [string]$ArqOuDirExcluidos
    )
    $texto = $ArqOuDirExcluidos.Split(",")
    return $texto
}

$button_click = {
    if (!$tbOrigem.Text -or !$tbDestino.Text) {
        [System.Windows.MessageBox]::Show("Origem ou destino nao podem estar vazios", "Error", 0, 16)
        if ($? -eq 1 ) {
            [System.Windows.Forms.Application]::Exit() 
        }
    }
    if ($tbLog.Text -and $tbDiretoriosExcluidosCopia.Text -and $tbExclusaoArquivo.Text) {
        $lbStatusCopiando.text = 'Copiando ...'
        $dirExcluidos = (Set-ExclusaoDiretorioOuArquivo -ArqOuDirExcluidos $tbDiretoriosExcluidosCopia.Text)
        $arquivosExcluidos = (Set-ExclusaoDiretorioOuArquivo -ArqOuDirExcluidos $tbExclusaoArquivo.Text)
        robocopy $tbOrigem.Text $tbDestino.Text /E /ZB /MT:32 /R:0 /W:0 /A-:SH /XJD /XJF /XD $dirExcluidos /XF $arquivosExcluidos "/LOG:$($tbLog.Text)"
        if ($? -lt 8 ) { 
            [System.Windows.MessageBox]::Show("Arquivos copiados", "Arquivos Copiados", 0, 64);
            if ($? -eq 1 ) {
                [System.Windows.Forms.Application]::Exit() 
            } 
        
        }
    }
    ElseIf ($tbLog.Text -and $tbExclusaoArquivo.Text) {
        $lbStatusCopiando.text = 'Copiando ...'
        $dirOuArquivosExcluidos = (Set-ExclusaoDiretorioOuArquivo -ArqOuDirExcluidos $tbExclusaoArquivo.Text)
        robocopy $tbOrigem.Text $tbDestino.Text /E /ZB /MT:32 /R:0 /W:0 /A-:SH /XJD /XJF /XF $dirOuArquivosExcluidos "/LOG:$($tbLog.Text)"
        if ($? -lt 8 ) { 
            [System.Windows.MessageBox]::Show("Arquivos copiados", "Arquivos Copiados", 0, 64);
            if ($? -eq 1 ) {
                [System.Windows.Forms.Application]::Exit() 
            } 
        
        }

    }
    ElseIf ($tbLog.Text -and $tbDiretoriosExcluidosCopia.Text) {
        $lbStatusCopiando.text = 'Copiando ...'
        $dirOuArquivosExcluidos = (Set-ExclusaoDiretorioOuArquivo -ArqOuDirExcluidos $tbDiretoriosExcluidosCopia.Text)
        robocopy $tbOrigem.Text $tbDestino.Text /E /ZB /MT:32 /R:0 /W:0 /A-:SH /XJD /XJF /XD $dirOuArquivosExcluidos "/LOG:$($tbLog.Text)"
        if ($? -lt 8 ) { 
            [System.Windows.MessageBox]::Show("Arquivos copiados", "Arquivos Copiados", 0, 64);
            if ($? -eq 1 ) {
                [System.Windows.Forms.Application]::Exit() 
            } 
        
        }

    }
    ElseIf ($tbDiretoriosExcluidosCopia.Text -and $tbExclusaoArquivo.Text) {
        $lbStatusCopiando.text = 'Copiando ...'
        $dirExcluidos = (Set-ExclusaoDiretorioOuArquivo -ArqOuDirExcluidos $tbDiretoriosExcluidosCopia.Text)
        $arquivosExcluidos = (Set-ExclusaoDiretorioOuArquivo -ArqOuDirExcluidos $tbExclusaoArquivo.Text)
        robocopy $tbOrigem.Text $tbDestino.Text /E /ZB /MT:32 /R:0 /W:0 /A-:SH /XJD /XJF /XD $dirExcluidos /XF $arquivosExcluidos
        if ($? -lt 8 ) { 
            [System.Windows.MessageBox]::Show("Arquivos copiados", "Arquivos Copiados", 0, 64);
            if ($? -eq 1 ) {
                [System.Windows.Forms.Application]::Exit() 
            } 
        
        }

    }
    ElseIf ($tbDiretoriosExcluidosCopia.Text) {
        $lbStatusCopiando.text = 'Copiando ...'
        $dirOuArquivosExcluidos = (Set-ExclusaoDiretorioOuArquivo -ArqOuDirExcluidos $tbDiretoriosExcluidosCopia.Text)
        robocopy $tbOrigem.Text $tbDestino.Text /E /ZB /MT:32 /R:0 /W:0 /A-:SH /XJD /XJF /XD $dirOuArquivosExcluidos
        if ($? -lt 8 ) { 
            [System.Windows.MessageBox]::Show("Arquivos copiados", "Arquivos Copiados", 0, 64);
            if ($? -eq 1 ) {
                [System.Windows.Forms.Application]::Exit() 
            } 
         
        }
    }
    ElseIf ($tbExclusaoArquivo.Text) {
        $lbStatusCopiando.text = 'Copiando ...'
        $dirOuArquivosExcluidos = (Set-ExclusaoDiretorioOuArquivo -ArqOuDirExcluidos $tbExclusaoArquivo.Text)
        robocopy $tbOrigem.Text $tbDestino.Text /E /ZB /MT:32 /R:0 /W:0 /A-:SH /XJD /XJF /XF $dirOuArquivosExcluidos
        if ($? -lt 8 ) { 
            [System.Windows.MessageBox]::Show("Arquivos copiados", "Arquivos Copiados", 0, 64);
            if ($? -eq 1 ) {
                [System.Windows.Forms.Application]::Exit() 
            }
        }
    }
    ElseIf($tbLog.Text) {
        ## Só LOG
        $lbStatusCopiando.text = 'Copiando ...'
        robocopy $tbOrigem.Text $tbDestino.Text /E /ZB /MT:32 /R:0 /W:0 /A-:SH /XJD /XJF "/LOG:$($tbLog.Text)"
        if ($? -lt 8 ) { 
            [System.Windows.MessageBox]::Show("Arquivos copiados", "Arquivos Copiados", 0, 64);
            if ($? -eq 1 ) {
                [System.Windows.Forms.Application]::Exit() 
            }  
        }
    } Else {
        $lbStatusCopiando.text = 'Copiando ...'
        robocopy $tbOrigem.Text $tbDestino.Text /E /ZB /MT:32 /R:0 /W:0 /A-:SH /XJD /XJF
        if ($? -lt 8 ) { 
            [System.Windows.MessageBox]::Show("Arquivos copiados", "Arquivos Copiados", 0, 64);
            if ($? -eq 1 ) {
                [System.Windows.Forms.Application]::Exit() 
            }  
        }
        
    }
}

$btnIniciar.Add_Click($button_click)

$Form.controls.AddRange(@($lbOrigem, $tbOrigem, $lbDestino, $tbDestino, $lbLog, $tbLog, $lbDiretoriosExcluidosCopia, $lbExemploDiretorio, $tbDiretoriosExcluidosCopia, $lbExclusaoArquivos, $lbExemploArquivo, $tbExclusaoArquivo, $lbStatusCopiando, $btnIniciar))

[void]$Form.ShowDialog()