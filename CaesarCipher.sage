#Caesar Cipher encryption and decryption
#Python implementation (Assignment 1)
#Cryptographic Systems - Master in Cybersecurity
#UCSC
#Author: P.P.B.S. Premarathna (2018mc010@stu.ucsc.cmb.ac.lk)

def encr( p,k ):
	indexp = ord(p) - 65
	if (indexp >= 0) and (indexp < 26):
		if (k>=0) and (k < 26):
			indextot = (indexp + k) % 26
			indexencr = indextot + 65
			txtencr = chr(indexencr)
			return txtencr
		else:
			return "Encryption key is between 0 and 25"
	else:
		return "Enter a Upper Case charactor"

def decr( c,k ):
	indexc = ord(c) - 65
	if (indexc >= 0) and (indexc < 26):
		if (k>=0) and (k < 26):
			indextot = (indexc - k) % 26
			indexdecr = indextot + 65
			txtdecr = chr(indexdecr)
			return txtdecr
		else:
			return "Decryption key is between 0 and 25"
	else:
		return "Enter a Upper Case charactor"

print(encr('A',2))
print(decr('E',6))