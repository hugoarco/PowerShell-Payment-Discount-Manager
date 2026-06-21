function identificacionusuario {

    #Usuarios alumnos
    $usuariosalumnos = @(
        "Hugo Arcones"
           )

    try {

        # Usuario global para poder usarlo en ticket
        $global:eleccionUsuario = Read-Host ("Introduzca su nombre de usuario (Ya sea profesor o alumno)")

        if ($usuariosalumnos -contains $eleccionUsuario ) {

            Write-Host ("El usuario esta en el sistema y puede continuar") -ForegroundColor Green
        }

        else {

            Write-Host ("El usuario no esta en el sistema y no puede continuar") -ForegroundColor Red
            exit
        }

    }

    catch {

        Write-Host ("Error")
        return
    }
}



function menu {

    $Opcionmenu = 0

    while ($Opcionmenu -ne 5) {

        Write-Host ("Seleccione a continuacion una opcion del menu (solo numero)") -ForegroundColor Blue
        Write-Host ("1 Inicio") -ForegroundColor Blue
        Write-Host ("2 CalculoDescuentos") -ForegroundColor Blue
        Write-Host ("3 PrecioOriginalVsDescuento") -ForegroundColor Blue
        Write-Host ("4 Calcular Pago") -ForegroundColor Blue
        Write-Host ("5 Salir") -ForegroundColor Blue

        $Opcionmenu = Read-Host ("Seleccione una opcion del menu")

        switch ($Opcionmenu) {

            1 { Inicio }
            2 { CalculoDescuentos }
            3 { PrecioOriginalVsDescuento }  
            4 { CalcularPago }
            5 { Write-Host "Saliendo del programa..." }

            default { Write-Host "Opcion no valida" -ForegroundColor Red }
        }
    }
}



function Inicio {

    Write-Host ("Bienvenido a Inicio")

    Write-Host ("1 Inicio") -ForegroundColor Blue
    Write-Host ("2 CalculoDescuentos") -ForegroundColor Blue
    Write-Host ("3 PrecioOriginalVsDescuento") -ForegroundColor Blue
    Write-Host ("4 Salir") -ForegroundColor Blue

    $sino = Read-Host ("El usuario quiere seguir en el script")

    if ($sino -eq "Si") {

        Write-Host ("Ok te dejamos en inicio")
    }

    else {

        return
    }
}



function CalculoDescuentos {

    try { #Manejo de errores

        $precioOriginal = [double](Read-Host "Ingrese el precio original del producto") #Declara una variable con el $ lo convierte en un numero entero y luego pide que ingrese el precio original
        $descuento = [double](Read-Host "Ingrese el porcentaje de descuento (sin '%')") # Declara una variable descuento  , lo convierte en entero y posteriormente pide introducir la cantidad
        if ($descuento -lt 0 -or $descuento -gt 100) { #Si el descuento no esta entre 0 y 100
            throw "El porcentaje de descuento debe estar entre 0 y 100." # Lanza un error debe estar entre 0 y 100
        }

        $precioFinal = $precioOriginal - ($precioOriginal * $descuento / 100) #Calcula el descuento crea una nueva variable y precio original - lo uqe salga por precio original *descuento entre /100

        Write-Host "El precio final después del descuento es: $precioFinal" #Muestra el precio final
    }

    catch {

        Write-Host "Error"
    }
}



function PrecioOriginalVsDescuento {

    $precioriginal = [double](Read-Host ("Introduzca el precio original"))
    $preciodescuento = [double](Read-Host ("Introduzca el precio con descuento"))

    Write-Host ("El precio total es de $($precioriginal - $preciodescuento)")
}



function CalcularPago {

    $pagosvalidos = @(
        "Visa"
        "Paypal"
        "Mastercard"
    )

    $pagousuario = Read-Host ("Introduzca el nombre del pago")

    if ($pagosvalidos -contains $pagousuario) {

        Write-Host ("Pago valido")

        $cantidad = Read-Host ("Introduzca el pago del usuario")

        $contrasena = Read-Host ("Introduzca la contrasena") -AsSecureString

        Write-Host ("Pago correctamente realizado")

        $Ticket = Read-Host ("El usuario quiere ticket si o no")

        if ($Ticket -eq "Si") {

            Write-Host ("Ok te creamos el ticket")

            New-Item -Path ".\ticket.txt" -ItemType File -Force

            Add-Content -Path ".\ticket.txt" -Value "Usuario: $global:eleccionUsuario"
            Add-Content -Path ".\ticket.txt" -Value "Cantidad: $cantidad"
            Add-Content -Path ".\ticket.txt" -Value "Metodo de pago: $pagousuario"
        }

        else {

            Write-Host ("El usuario no quiere ticket")
        }
    }

    else {

        Write-Host ("Metodo de pago no valido") -ForegroundColor Red
    }
}



# EJECUCION 
identificacionusuario
