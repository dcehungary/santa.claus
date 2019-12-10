**A Production Környezet bemutatása**

A Mojoportal működés követi azt klasszikus architektúrális felépítést, amelyet LAMP-környezetre épülő open-source rendszerek esetében megimserhettünk.
![Logo](https://github.com/dcehungary/santa.claus/blob/master/06%20-%20Frontend%20Production/mojoportal_architectura2.jpg)

A MojoPortál előnye, hogy asp.net környezetben került kifejlesztésre, így kompromisszumok nélkül támohatja a Microsoft Internet Information Service-t, és a MS SQL adatbázis háttért, valamint authentikáció tekintetében képes lokálisan kezelni a felhasználójat valamint a Microsoft Active Direcotry-val együttműködni.

**Telepítés**

*1. A Server Managerben telepeítendő az IIS-hez kapcsolódó összes role és feature. Beleértve az összes asp.net feature!*
*2. A Mojoportal-XXX.zip tartalmát fel kell másolni webroot-alönyvtárba!*
*3. Data al-mappa jogosultságának módosításával biztosítani kell az írási jogosultságot!*
![Logo](https://github.com/dcehungary/santa.claus/blob/master/06%20-%20Frontend%20Production/3.png)
*4. SQL-szerverkapcsolathoz a következőre van szükséges*
**-szerver neve**
**-felhasználó név**
**-jelszó**
**-adatbázis neve**
![Logo](https://github.com/dcehungary/santa.claus/blob/master/06%20-%20Frontend%20Production/4.png)
*5. Amennyiben megbizonyosdtunk a csatlakozás sikerességéről, a telepítés böngészőnől történik. Sikeres telepítés után a következő képernyő fogad:*
![Logo](https://github.com/dcehungary/santa.claus/blob/master/06%20-%20Frontend%20Production/1.png)

