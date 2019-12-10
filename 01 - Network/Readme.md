A hálózat előkészítése. 

Virtuális switchek, vlanok, port groupok létrehozása.

![Logo](https://raw.githubusercontent.com/dcehungary/santa.claus/master/01%20-%20Network/Software%20Defined%20Network.jpeg)

Kollégámmal teremtjük meg a mai projekt alapját, azaz olyan virtuális hálózatot hozunk létre a virtuális gépeknek, hogy azok tudjanak kommunikálni egymással.  Készülni fog több virtuális switch, amiknek portalapú Vlan network-köket definiálunk, hogy minden virtuális gép tudjon kommunikálni a saját hálózatán belül. Ez egy olyan virtuális routing platform lesz, ami tudja az összes olyan routing funkciót, amit csak a legnagyobb teljesítményű és legdrágább Hewlett Packard Enterprise comware switch-ek tudnak. Teljesítményben igazodik a mérethez, nem kell kábeleznünk és programból tudjuk a hálózati konfigurációt beállítani. Ezáltal egyszerűbb a hardver, nincs szükség valós fizikai megvalósításra. Rugalmasan lehet konfigurálni, az esetleges változásokat gyorsan le lehet követni és könnyen tudjuk menedzselni központilag az eszközöket, amelynek köszönhetően sokkal egyszerűbb lesz a hálózat megvalósításának folyamata, mindehez pedig VMWare virtuális switch teremti meg a kapcsolatot a virtuális és fizikai hálózat között.
