Add-Type -TypeDefinition @"
using System;
using System.Runtime.InteropServices;
public class KeyChecker {
    [DllImport("user32.dll")]
    public static extern short GetAsyncKeyState(int vKey);
}
"@

while ($true) {
    Start-Sleep -Milliseconds 100
    if ([KeyChecker]::GetAsyncKeyState(87) -band 0x8000) {  # 87 = W
        Set-Content -Path "$env:TEMP\w_pressed.flag" -Value "" -Force
        break
    }
}