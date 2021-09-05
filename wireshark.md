# Command lines based on https://www.youtube.com/watch?v=OU-A2EmVrKQ&t=5s
from **Chris Greer**

# Setup Path
## Windows:
  `Program Files/Wireshark`
## MacOs
  
1. `DumpCap`

`dumpcap -D`  -> list all interface
    
# dump in a ringbuffer of size 10 with files at most 500MBytes
`dumpcap -i 1 -w /users/francois/Temp/sample.pcapng -b filesize:500000 -b files:10`

