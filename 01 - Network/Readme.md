A hálózat előkészítése. 

Virtuális switchek, vlanok, port groupok létrehozása.

![Logo]

Ebben a folderben található a project alapját képező hálózati megoldások leírása. Virtuális hálózatot kell teremteni a virtuális gépeknek, hogy azok tudjanak kommunikálni egymással. A VmWare Vsphere-ben létrehozott virtuális switchek működnek, amiknek portalapú Vlanok vannak definiálva, hogy minden virtuális gép tudjon kommunikálni a saját hálózatán belül. A VmWare egy olyan virtuális routing platform, ami tudja az összes olyan routing funkciót, amit csak a legnagyobb teljesítményű és legdrágább Hewlett Packard Enterprise comware switch-ek tudnak. Teljesítményben igazodik a mérethez, nincs szükség kábelezésre és programból - VSphere-ből - lehet a hálózati konfigurációt beállítani. Ezáltal egyszerűbb a hardver, nincs szükség valós fizikai megvalósításra. Rugalmasan lehet konfigurálni, az esetleges változásokat gyorsan le lehet követni és könnyen lehet menedzselni központilag az eszközöket, amelynek köszönhetően sokkal egyszerűbb lesz a hálózat megvalósításának folyamata. A VMWare virtuális switchek és routerek teremtik meg a kapcsolatot a virtuális és fizikai hálózat között.
