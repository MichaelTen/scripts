# scripts
various scripts 

# GPUProcessWatcher.ps1

**GPUProcessWatcher.ps1** is a lightweight PowerShell script that detects which currently running processes are utilizing GPU resources on a Windows machine. It uses native Windows Management Instrumentation (WMI) to correlate process IDs with active GPU engine usage.

## 📌 Features

- Detects real-time GPU usage by process
- Helps identify GPU resource conflicts (e.g., with OBS, AI models, DAWs, or games)
- No external dependencies — uses only built-in PowerShell and WMI

## 🧠 Use Cases

- Troubleshoot recording/encoding hangs in OBS
- Detect background GPU usage (e.g., Ollama, FL Studio, or browser-based AI apps)
- Understand what's consuming GPU cycles without installing third-party software

## ⚙️ Requirements

- Windows 10 or newer
- PowerShell (run as Administrator recommended)
- D3D11-capable GPU (NVIDIA, AMD, or Intel)

## 🚀 How to Use

1. Open **PowerShell as Administrator**
2. Run the script:  
   ```powershell
   .\GPUProcessWatcher.ps1
````

3. View a list of currently GPU-active processes

## 📎 Notes

* The script checks real-time usage only
* May return no output if nothing is actively using GPU at the moment
* Useful for debugging system responsiveness or GPU contention

## 🙌 Credits

Built using the `Win32_PerfFormattedData_GPUPerformanceCounters_GPUEngine` WMI class and inspired by needs in real-time rendering and streaming diagnostics.

