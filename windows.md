# WINDOWS

## Hardware

* Configuration `msinfo32`
  * Alternative use [`cpudi`](www.cpuid.com) to have mother board info

## Fix BIOS
* Check bios version
`wmic bios get smbiosbiosversion`
### LENOVO (NIMES)
* Use `Lenovo Bridge` [Support](https://support.lenovo.com/us/en)
* Use "Lenovo"


## COPY
`robocopy <OrigDir> <NewDir> /E /Z /J /W:1 /R:2 /MT:16`
###
 * `/E` Copy all subdir
 * `/J` Unbuffered for large file
 * `/W:1` Wait 1 secon between retries
 * `/R:2` Retries failed copies twice
 * `/MT:16` MultiThreads: 16