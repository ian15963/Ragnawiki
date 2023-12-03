var skills = []
var classInformation = []
const pathArray = window.location.pathname.split("/");
const reqParam = pathArray[pathArray.length - 1];

const pageNotFound = () =>{
    Swal.fire({
        title: "Página não encontrada",
        width: 700,
        padding: "3em",
        color: "#00259C",
        confirmButtonColor: "#00259C",
        background: "#fff",
        imageUrl: "../assets/ranger.gif",
        imageWidth: 300
      }).then(() => {
          window.location = `/classes`
      }
      );
}

const getSkills = () => {

    fetch(`/classe/skills/${reqParam}`, {
        method: "GET",
        headers: {
            "Content-Type": "application/json"
        }
    }).then(data => {
        console.log(data.status)
        if (data.status == 404) {
        }
        data.json().then(json => {
            skills = json.classe
            console.log(json)
        })
    }).catch(err => console.log(err))

    console.log(skills)
}

const getAllInformation = () => {

    fetch(`/classe/information/${reqParam}`, {
        method: "GET",
        headers: {
            "Content-Type": "application/json"
        }
    }).then(data => {
        if(data.status == 404){
            pageNotFound();
        }
        data.json().then(json => {
            classInformation = json.information
            console.log(json);
        }).catch(() => pageNotFound())
    })


}

!(reqParam >= 1 && reqParam <= 59) ? "" :
setTimeout(() => {
    
    sprite_column.style.display = `block`;
    arte.style.maxWidth = `250px`;

    document.getElementsByTagName("title")[0].innerHTML = `${classInformation[0].nomeClasse.replaceAll("_", " ")}`;

    console.log(classInformation[0])

    var totalSkills = skills.length
    var total = 0
    var i = 1;

    titulo.innerHTML += `${classInformation[0].nomeClasse.replaceAll("_", " ")}`;
    descricao.innerHTML += `<p>${classInformation[0].descricao}</p>
            <h3>Habilidades</h3>
            <div class="habilidades" id="habilidades"></div>
            ${!(classInformation[0].nomeClasse == 'Aprendizes') ? `<div class="arvore">
                <h3>Árvore de Habilidades</h3>
                <img src="../../assets/imgs/Habilidades/${classInformation[0].nomeClasse}/Skilltree${classInformation[0].nomeClasse}.png" alt="">
            </div>`: ''}`
    sprite_title.innerHTML += `
        <img src="../../assets/imgs/Habilidades/${classInformation[0].nomeClasse}/${classInformation[0].nomeClasse}partyicn.png" alt="">
            <h3>${classInformation[0].nomeClasse}</h3>`
    sprite.src = `../../assets/imgs/classes/${classInformation[0].nomeClasse}sprite.png`;
    arte.src = `../../assets/imgs/Habilidades/${classInformation[0].nomeClasse}/Arte_${classInformation[0].nomeClasse}.png`;
    classe_anterior.innerHTML = classInformation[0].classeAnterior == null ? `` : `<td>Anterior</td>
                                    <td>${classInformation[0].classeAnterior.replaceAll("_", " ")}</td>`
    tipo_classe.innerHTML = `<td>Tipo</td>
                                <td>${classInformation[0].tipo}<td>`
    bonus_classe.innerHTML += `<td>+${classInformation[0].Forca}</td><td>+${classInformation[0].Agilidade}</td><td>+${classInformation[0].Vitalidade}</td>
        <td>+${classInformation[0].Inteligencia}</td><td>+${classInformation[0].Destreza}</td><td>+${classInformation[0].Sorte}</td>`


    if (total == 0) {
        habilidades.innerHTML += `
            <div class="grupo" id="grupo${i}"></div>`
        for (var u = 0; u < totalSkills / 3; u++) {
            eval("grupo" + (i)).innerHTML += `
                <div class="habilidade">
                        <img src="../../assets/imgs/Habilidades/${classInformation[0].nomeClasse}/${skills[total].nomeSkill}.png" alt="">
                        <span>${skills[total].nomeSkill.replaceAll("_", " ")}</span>
                    </div>
                `;
            total++
            console.log(total)
        }
        i++
    }
    if (total >= totalSkills / 3) {
        habilidades.innerHTML += `
            <div class="grupo" id="grupo${i}"></div>`
        for (var u = 0; u < totalSkills / 3; u++) {
            eval("grupo" + (i)).innerHTML += `
                <div class="habilidade">
                        <img src="../../assets/imgs/Habilidades/${classInformation[0].nomeClasse}/${skills[total].nomeSkill}.png" alt="">
                        <span>${skills[total].nomeSkill.replaceAll("_", " ")}</span>
                    </div>
                `;
            total++
        }
        i++
    }
    if (total >= 2 * totalSkills / 3) {
        habilidades.innerHTML += `
            <div class="grupo" id="grupo${i}"></div>`
        for (var u = 0; u < totalSkills / 3; u++) {
            eval("grupo" + (i)).innerHTML += `
                <div class="habilidade">
                        <img src="../../assets/imgs/Habilidades/${classInformation[0].nomeClasse}/${skills[total].nomeSkill}.png" alt="">
                        <span>${skills[total].nomeSkill.replaceAll("_", " ")}</span>
                    </div>
                `;
            total++
        }
    }
}, 500)
