#!/usr/bin/env python
# -*- coding: iso-8859-15 -*-
import os
import soittilaFiles as sf
import httplib
import time
import syslog
from time import strftime,localtime

def tilat():
	try:
		connection = httplib.HTTPConnection('10.10.10.54', timeout=3)
		connection.request('GET', '/rele/1')
		tila = connection.getresponse()
		rele1 = tila.read()
		connection.request('GET', '/rele/2')
		tila = connection.getresponse()
		rele2 = tila.read()
		connection.request('GET', '/rele/3')
		tila = connection.getresponse()
		rele3 = tila.read()
		connection.request('GET', '/rele/7')
		tila = connection.getresponse()
		rele7 = tila.read()
		connection.request('GET', '/rele/8')
		tila = connection.getresponse()
		rele8 = tila.read()
		connection.request('GET', '/rele/A')
		tila = connection.getresponse()
		rele10 = tila.read()
		connection.close()
		if rele1 == '1023':
			rele1 = '1'
		else:
			rele1 = '0'
		if rele2 == '1023':
			rele2 = '1'
		else:
			rele2 = '0'
		if rele3 == '1023':
			rele3 = '1'
		else:
			rele3 = '0'
		return {'rele1':rele1, 'rele2':rele2, 'rele3':rele3, 'rele7':rele7, 'rele8':rele8, 'rele10':rele10}
	
	except Exception, e:
		syslog.syslog('>Lamposerveri Säätö Cannot get states ************************>')
		print('Cannot get states')
		pass
	
def getLampo(file):
	f = open(file)
	s = f.readline()
	d = round(float(s.strip()), 0)
	l = int(d)
	return l
	
def lammot():
	akWcLattia = '0'
	akWcLattia = getLampo(sf.akWcLattia)
	khh = getLampo(sf.khh)
	olohuone = getLampo(sf.olohuone)
	makuuhuone = getLampo(sf.makuuhuone)
	sauna = getLampo(sf.sauna)
	ulkoE = getLampo(sf.ulkoE)
	ulkoP = getLampo(sf.ulkoP)
	return {'akWcLattia':akWcLattia, 'khh':khh, 'olohuone':olohuone, 'makuuhuone':makuuhuone, 'sauna': sauna, 'ulkoE':ulkoE, 'ulkoP':ulkoP} 

def saada(r3, r2, r7, r8, r10):
	try:
		connection = httplib.HTTPConnection('10.10.10.54', timeout=3)
		if r3 == 'on':
			connection.request('GET', '/on/3')
			tila = connection.getresponse()
			r3after = tila.read()
		elif r3 == 'off':	
			connection.request('GET', '/off/3')
			tila = connection.getresponse()
			r3after = tila.read()
		else:
			connection.request('GET', '/rele/3')
			tila = connection.getresponse()
			r3after = tila.read()
		if r2 == 'on':
			connection.request('GET', '/on/2')
			tila = connection.getresponse()
			r2after = tila.read()
		elif r2 == 'off':
			connection.request('GET', '/off/2')
			tila = connection.getresponse()
			r2after = tila.read()
		else:
			connection.request('GET', '/rele/2')
			tila = connection.getresponse()
			r2after = tila.read()
		if r7 == 'on':
			connection.request('GET', '/on/7')
			tila = connection.getresponse()
			r7after = tila.read()
		elif r7 == 'off':
			connection.request('GET', '/off/7')
			tila = connection.getresponse()
			r7after = tila.read()
		else:
			connection.request('GET', '/rele/7')	
			tila = connection.getresponse()
			r7after = tila.read()
		if r8 == 'on':
			connection.request('GET', '/on/8')
			tila = connection.getresponse()
			r8after = tila.read()
		elif r8 == 'off':
			connection.request('GET', '/off/8')
			tila = connection.getresponse()
			r8after = tila.read()
		else:
			connection.request('GET', '/rele/8')	
			tila = connection.getresponse()
			r8after = tila.read()
		if r10 == 'on':
			connection.request('GET', '/on/A')
			tila = connection.getresponse()
			r10after = tila.read()
		elif r10 == 'off':
			connection.request('GET', '/off/A')
			tila = connection.getresponse()
			r10after = tila.read()
		else:
			connection.request('GET', '/rele/A')	
			tila = connection.getresponse()
			r10after = tila.read()
		connection.close() 
		return {'rele3':r3after, 'rele2':r2after, 'rele7':r7after, 'rele8':r8after, 'rele10':r10after}
	except Exception, e:
		syslog.syslog('>Lamposerveri Säätö Cannot make adjust ************************>')
		print('Cannot adjust')
		pass	