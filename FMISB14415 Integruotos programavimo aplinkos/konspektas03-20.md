## Integruotos Programavimo Aplinkos
- **IDE** - vieninga aplinka, kurioje galima atlikti visus veiksmus, susijusius su programų kūrimu, t.y. šioje aplinkoje galima pasinaudoti visomis reikiamomis programomis: tekstų redaktoriumi, transliatoriumi, ryšių redaktoriumi, derintoju.
- **IDE vystymosi raida:**
  - Pirmoji - BASIC kalba panaudota IDE
  - Šiuo metu populiariausios:
    - Eclipse
    - Visual Studio
    - PHPStorm
- **IDE savybės:**
  - patogi grafinė vartotojo sąsaja;
  - automatinis teksto pabaigimas ir generavimas;
  - galimybė derinti programas;
  - patogus versijų kontrolės sistemų klientas;
  - integruotas kompiliatoriaus valdymas ar pats kompiliatorius;
  - grafinis programos struktūros vaizdavimas.

## Scrum
- **Agile Hierarchija**
  - Systems Thinking
  - Lean
  - Agile
  - Scrum
- **Agile Metodai**
  - Scrum,
  - Kanban,
  - Extreme Programming,
  - Lean Software Development,
  - DSDM Atern,
  - Crystal, including Crystal Clear,
  - Unified Process, pvz. RUP, AUP, OUP,
  - Kiti metodai.
- **Scrum metodologija**
  - Product backlog
  - Sprint backlog
  - Sprint (~2 weeks)
    - Daily Scrum (24h)
  - Potentially Shippable product increment
- **Redmine:**
  - Užduočių paskirstymas: Scrum board
  - Klaidų registravimas: New Issue

## Versijavimas
- To reikia, nes:
  - Išlaikoma kodo pakeitimo istorija su komentarais
  - Naujos funkcijos fiksuojamos šakoje
- Pagrindinis tikslas - pasiekti, kad būtų lengva atsekti kokie darbai kokioje versijoje realizuoti, prie ko dirbama, kada testuojama, kokie darbai skirti ateities versijoms.
- Populiarios sistemos:
  - cvs
  - svn
  - git
  - mercurial
- Git privalumai:
  - Patogus darbas su šakomis **(branch)**
  - Aiškus kodo suliejimas **(merge)**
- Git veikimo principas:
  - Tekstinių failų versijavimas
  - Veikia aplanko lygyje
- Šakų struktūra:
  - Master
  - Testing
  - Develop
  - HotFix
  - Features...
<hr>
- **Fiksuojami (commit)** tik pilni darbai. Vienas darbas mantyje turėtų atitinkamai turėti vieną darbą GIT. Kiekvieno darbo fiksavimo pavadinime rašome užduoties (redmine task iš scrum board „Product backlog items“, t.y. backlog darbai) numerį ir pavadinimą (pvz.: #5891 Elementų sąrašas).
- Jei darbo vienu ypu užbaigti neišeina, reikėtų susikurti darbui **šaką (branch)** (patartina naudoti darbo numerį mantyje) ir į ją sudėti pakeitimus darbui. Vėliau pabaigus darbą būtų daromas fiksavimo pakeitimas (amend commit) ir visi darbo pakeitimai liktų po vienu fiksavimu (commit).
- Visi naujos versijos darbai turėtų būti fiksuojami (commit) į **plėtojimo (develop)** šaką (branch). Tai šaka (branch) kurioje daromi funkcionalumo pakeitimo/kurimo darbai. Pirmiausiai daromi aukščiausio prioriteto artimiausios versijos darbai, todėl plėtojimo (develop) šaka (branch) visada yra panašiausia į artimiausią versiją. Kai daromi visi naujos versijos darbai turi prasidėti testavimo fazė. Tuo tikslu plėtojimo (develop) šaka (branch) jungiama (merge)  su testavimo (testing) šaka (branch).
- **Testavimo (testing)** šakoje (branch) daromi tik pataisymai. Naujo funkcionalumo realizuoti šioje šakoje (branch) negalima. Šaka (branch) skirta ištaisyti klaidas atsiradusias realizuojant naujas sistemos funkcijas prieš ją išleidžiant. Ją galima vadinti neištestuota versija. Po to, kai visos klaidos ištaisomos šaka (branch) jungiama (merge) su pagrindine (master) šaka (branch) ir su plėtojimo šaka (branch), kad funkcionalumo pataisymai nedingtų su nauja versija.
- **Pagrindinėje (master)** šakoje (branch) turi būti ištestuota pilnai funkcionuojanti versija.
Įjungus testavimo (testing) šaką (branch) į pagrindinę (master) turi būti nurodyta žymė (tag) su versijos numeriu. Tiesiogiai į pagrindinę (master) šaką (branch) pakeitimai nedaromi.
- Jei išleistoje versijoje randama klaida ir negalima laukti iki kitos versijos išleidimo iš atitinkamos versijos pagrindinėje (master) šakoje (branch) kuriama **pataisos (hotfix)** šaka (branch). Joje ištaisomos klaidos, ištestuojami pakeitimai. Kai viskas atlikta, šaka (branch) sujungiama su pagrindine (master) šaka (branch) jei tai paskutinės išleistos versijos pataisymai ir su plėtojimo (develop) šaka (branch). Taisyti ne paskutinę versiją nepatartina, nes tokiu atveju teks leisti visų vėlesnių versijų pataisas (hotfix) – geriau pataisyti klaidas paskutinėje versijoje ir atnaujinti ją klientui.
<hr>
- `git init .` inicijuoja versijavimo sistemą
- `git add .` prideda failų pakeitimus į lokalią pakeitimų kopiją (staging)
- `git commit -m "..."` perkelia pakeitimus į repo
- `git clone` kopijuoja remote repo
- `git push` įkelia pakeitimus į remote repo
- `git merge` šakos prijungimas prie kitos
- `.gitignore` būdas nurodyti sistemai, kurių failų netraukti į repo
<hr>
- **Git Extensions** - grafinėvartotojo sąsaja git
- **GitLab** - programinio kodo versijavimo specializuota saugykla
- **GitHub** - programinio kodo versijavimo specializuota saugykla
