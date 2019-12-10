A hálózat előkészítése. 

Virtuális switchek, vlanok, port groupok létrehozása.

![Logo](https://github.com/dcehungary/santa.claus/blob/master/01%20-%20Network/Software%20Defined%20Network.jpg)

Ebben a folderben található a project alapját képező hálózati megoldások leírása. Virtuális hálózatot kell teremteni a virtuális gépeknek, hogy azok tudjanak kommunikálni egymással. A VMware vSphere-ben létrehozott virtuális switcheknek és routereknek portalapú vlanok vannak definiálva, hogy minden virtuális gép tudjon kommunikálni a saját hálózatán belül. A VMware egy olyan virtuális routing platform, ami tudja az összes olyan routing funkciót, amit csak a legnagyobb teljesítményű és legdrágább Hewlett Packard Enterprise Comware switchek tudnak. Teljesítményben igazodik a mérethez, nincs szükség kábelezésre, és programból - vSphere-ből - lehet a hálózati konfigurációt beállítani. Ezáltal egyszerűbb a hardver, nincs szükség valós fizikai megvalósításra. Rugalmasan lehet konfigurálni, az esetleges változásokat gyorsan le lehet követni, és könnyen lehet menedzselni központilag az eszközöket, amelynek köszönhetően sokkal egyszerűbb lesz a hálózat megvalósításának folyamata. A VMware virtuális switchek és routerek teremtik meg a kapcsolatot a virtuális és fizikai hálózat között.
