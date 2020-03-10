import socket, sys
def getHostnameByIP(h):
    
try:
    hostname = str(sys.argv[1])
    ip = socket.gethostbyname(hostname)
    print(hostname + "has an IP of" + ip)
except:
    print("Oops, something is wrong with that host")

#hosts = ["www.uc.edu", "www.google.com","www.reddit.com"]
#print ('Working from host: ' + socket.getfqdn())
#for h in hosts:
 #   print (h + ': ' +socket.gethostbyname(h))