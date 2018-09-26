echo off

::This program shows the Product Key of a Windows Operating System

:: The following URI has more information about these commands
:: https://www.thewindowsclub.com/find-windows-product-key 

::Windows 10 / 8.1
wmic path softwarelicensingservice get OA3xOriginalProductKey

:: Windows 10/ 8.1/7/Vista
:: powershell "(Get-WmiObject -query ‘select * from SoftwareLicensingService’).OA3xOriginalProductKey"
