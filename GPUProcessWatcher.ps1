Get-Process | Where-Object { $_.Path } | ForEach-Object {
    $procId = $_.Id
    $name = $_.Name
    $gpuUse = Get-CimInstance Win32_PerfFormattedData_GPUPerformanceCounters_GPUEngine | Where-Object {
        $_.Name -match "pid_$procId"
    }
    if ($gpuUse) {
        "$name ($procId) is using GPU"
    }
}
