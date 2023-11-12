var skills = []
const getSkills = async (id) => {

    await fetch("/classe/skills", {
        method: "GET",
        headers: {
            "Content-Type": "application/json",
            "id": id
        }
    }).then(data => {
        data.json().then(json => {
            skills = json.classe
            console.log(json)
        })
    }).catch(err => console.log(err))

    console.log(skills)
}

setTimeout(() => {
    
    var totalSkills = skills.length
    var total = 0
    var i = 1;
    console.log(2*skills.length/3)
        
        titulo.innerHTML += `${skills[0].nomeClasse.replaceAll("_", " ")}`;
        descricao.innerHTML += `<p>${skills[0].descricao}</p>
            <h3>Habilidades</h3>
            <div class="habilidades" id="habilidades"></div>
            ${!(skills[0].nomeClasse == 'Aprendizes') ?  `<div class="arvore">
                <h3>Árvore de Habilidades</h3>
                <img src="../../assets/imgs/Habilidades/${skills[0].nomeClasse}/Skilltree${skills[0].nomeClasse}.png" alt="">
            </div>`: ''}`
        sprite_title.innerHTML += `
        <img src="../../assets/imgs/Habilidades/${skills[0].nomeClasse}/${skills[0].nomeClasse}partyicn.png" alt="">
            <h3>${skills[0].nomeClasse}</h3>`
        sprite.src = `../../assets/imgs/classes/${skills[0].nomeClasse}sprite.png`;
        arte.src = `../../assets/imgs/Habilidades/${skills[0].nomeClasse}/Arte_${skills[0].nomeClasse}.png`;


        if(total == 0){
            habilidades.innerHTML += `
            <div class="grupo" id="grupo${i}"></div>`
            for(var u = 0; u < totalSkills/3; u++){
                eval("grupo" + (i)).innerHTML += `
                <div class="habilidade">
                        <img src="../../assets/imgs/Habilidades/${skills[0].nomeClasse}/${skills[total].nomeSkill}.png" alt="">
                        <span>${skills[total].nomeSkill.replaceAll("_"," ")}</span>
                    </div>
                `;
                total++
                console.log(total)
            }
            i++
        }
        if(total >= totalSkills/3){
            habilidades.innerHTML += `
            <div class="grupo" id="grupo${i}"></div>`
            for(var u = 0; u < totalSkills/3; u++){
                eval("grupo" + (i)).innerHTML += `
                <div class="habilidade">
                        <img src="../../assets/imgs/Habilidades/${skills[0].nomeClasse}/${skills[total].nomeSkill}.png" alt="">
                        <span>${skills[total].nomeSkill.replaceAll("_"," ")}</span>
                    </div>
                `;
                total++
            }
            i++
        }
        if(total >= 2*totalSkills/3){
            habilidades.innerHTML += `
            <div class="grupo" id="grupo${i}"></div>`
            for(var u = 0; u < totalSkills/3; u++){
                eval("grupo" + (i)).innerHTML += `
                <div class="habilidade">
                        <img src="../../assets/imgs/Habilidades/${skills[0].nomeClasse}/${skills[total].nomeSkill}.png" alt="">
                        <span>${skills[total].nomeSkill.replaceAll("_"," ")}</span>
                    </div>
                `;
                total++
            }
        }

    }, 500)
