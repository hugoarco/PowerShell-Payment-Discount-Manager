<h1 align="center">💾 System Restore Point Manager (PowerShell Toolkit)</h1>

<p align="center">
  <img src="https://img.shields.io/badge/PowerShell-5.1+-blue?logo=powershell&logoColor=white">
  <img src="https://img.shields.io/badge/Windows-10%20%7C%2011-0078D6?logo=windows&logoColor=white">
  <img src="https://img.shields.io/badge/License-MIT-green">
  <img src="https://img.shields.io/badge/Status-Finished-brightgreen">
</p>

## 📖 Descripción

**System Restore Point Manager** es un script interactivo de PowerShell diseñado para facilitar la gestión de puntos de restauración del sistema en Windows. Permite a administradores y usuarios técnicos crear, listar y buscar puntos de restauración desde una consola con menú guiado, sin necesidad de recordar comandos complejos. Ideal para entornos educativos, soporte técnico y administración de sistemas.

## 🔐 Control de acceso

El script incluye un sistema de validación de usuario para restringir el acceso a personal autorizado.

**Usuario autorizado por defecto:**  
`Hugo Arcones`

Si el usuario no coincide, el script finaliza la ejecución automáticamente.

⚙️ Funcionalidades

| Módulo | Descripción |
|--------|-------------|
| 🏁 **Inicio** | Muestra información del toolkit y sus funciones |
| 📌 **Crear punto de restauración** | Genera un nuevo punto con nombre personalizado usando `Checkpoint-Computer` |
| 📋 **Listar puntos** | Muestra todos los puntos de restauración disponibles con `Get-ComputerRestorePoint` |
| 🔎 **Buscar punto específico** | Filtra puntos de restauración por nombre introducido por el usuario |
| 🚪 **Salir** | Cierra el script de forma controlada |

Windows 10 / 11

PowerShell 5.0 o superior

Ejecutar como Administrador (obligatorio para restaurar sistema)

Protección del sistema activada

## Diagrama de flujo
<img width="1996" height="2652" alt="diagram (2)" src="https://github.com/user-attachments/assets/58b6213e-3e8e-412f-9da0-646ad0452300" />


 ## Autor
Hugo Arco
Estudiante de SMR | Apasionado por la automatización y administración de sistemas
GitHub · Gmail

## Licencia
Este proyecto está bajo la licencia MIT.
Consulta el archivo LICENSE para más información.

## ¿Te ha sido útil?
Si este proyecto te ha ayudado, ¡no olvides dejar una estrella en GitHub!
Tu apoyo me motiva a seguir creando herramientas como esta.

<p align="center"> <b>Hecho con ❤️ y PowerShell</b> </p> ```
## 🚀 Ejecución

```powershell
# 1. Guarda el archivo como restore-point-toolkit.ps1
# 2. Abre PowerShell como Administrador
# 3. Ejecuta el script

.\RestauracionSistema.ps1
