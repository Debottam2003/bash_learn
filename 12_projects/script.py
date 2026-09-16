data = ""
with open("ips.txt") as file:
	data = file.read()
ips=data.splitlines()
print(ips)

# IP validator
for i in ips:
	valid = True
	ip = i.split(".")
	for i in range(len(ip)):
		ip[i] = int(ip[i])
	for octate in ip:
		if octate < 0 or octate > 255:
			valid = False
			break
	for i in range(len(ip)):
		ip[i] = str(ip[i])
	if(valid):
		print(".".join(ip) + " is a valid ip address")
	else:
		print(".".join(ip) + " is not a valid ip address")

