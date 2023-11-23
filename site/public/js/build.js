var allClasses;
var buildsUsuario = []
var allSkills = []
var mainSkills = []

const pathArray = window.location.pathname.split("/");
const reqParam = pathArray[pathArray.length -1];

const createdSuccessfully = (id) =>{
    Swal.fire({
        title: "Build Criada Com Sucesso",
        width: 500,
        padding: "3em",
        color: "#716add",
        background: "#fff",
        imageUrl: "../assets/asurachampion4fd.gif",
        // imageWidth: 200
      }).then(() => {
          window.location = `/build/${id}`
      }
      );
}

const updatedSuccessfully = (texto) =>{
    Swal.fire({
        title: texto,
        width: 500,
        height: 300,
        padding: "3em",
        color: "green",
        background: "#fff",
        imageUrl: "../assets/kafra.gif",
        imageWidth: 150,
      }).then(() => {
          window.location = `/build/${reqParam}`    
      }
      );
}

const getClasses = () => {

    fetch("/classe/all-classes", {
        method: "GET",
        headers: {
            "Content-Type": "application/json"
        }
    }).then((data) => {
        data.json().then(json => {
            allClasses = json.nome
        })
        console.log(data)
    })
    console.log(allClasses)


}

 const getBuild = () =>{

     var idUsuario = sessionStorage.getItem("id")

     reqParam == "newBuild" ? "" : 
    fetch(`/build/getOne/${reqParam}`, {
        method: "GET",
        headers: {
            "Content-Type": "application/json",
            "id": idUsuario
        }
    }).then(data =>{
        if(data.ok){
            data.json().then(json =>{
                buildsUsuario = json.build,
                sessionStorage.build = JSON.stringify(json.build)
            })
        }
    }).catch(err => console.log(err))

}

const getSkills = () => {

    var id = sessionStorage.getItem("id")

    reqParam == "newBuild" ? "" :
    fetch(`/build/skills/${classeId}`, {
        method: "GET",
        headers: {
            "Content-Type": "application/json",
            "id": id,
            "build": reqParam
        }
    }).then(data =>{
        data.json().then(json =>{
            allSkills = json.classe;
            mainSkills = json.mainSkill
        })
    })

}


//Mostrar classe Selecionada
const mostrarClasse = () => {

    imagem_classe.src = `../assets/imgs/classes/${classes.value}sprite.png`
    // imagem.src = `../assets/imgs/classes/${classes.value}sprite.png`

    for(var i = 0; i < allClasses.length; i++){
        if(allClasses[i].nome == classes.value){
            classeId = allClasses[i].idClasse;
            getSkills()
            break
        }
    }

    skills_principais.innerHTML = ""

    setTimeout(() => {
        mostrarSkill()
    }, 500)
}

//Mostrar skills da classe
const mostrarSkill = () => {
    
    for(var i = 0; i < allSkills.length; i++){
        skills_principais.innerHTML += `<option value="${allSkills[i].nomeSkill}#${allSkills[i].idHabilidade}">${allSkills[i].nomeSkill.replaceAll("_"," ")}</option>`
    }

}


//Requisição para salvar a build
const saveBuild = () =>{

    var idUsuario = sessionStorage.getItem("id");
    nomeDaBuild = nome.value

    fetch("/build/save", {
        method: "POST",
        headers: {
            "Content-Type": "application/json"
        },
        body: JSON.stringify({
            forcaPersonagem: resultado_forca.value,
            agilidadePersonagem: resultado_agilidade.value,
            vitalidadePersonagem: resultado_vitalidade.value,
            inteligenciaPersonagem: resultado_inteligencia.value,
            destrezaPersonagem: resultado_destreza.value,
            sortePersonagem: resultado_sorte.value,
            ataquePersonagem: ataquePersonagem,
            ataqueMagicoPersonagem: ataqueMagicoPersonagem,
            defesaPersonagem: defesaPersonagem,
            defesaMagicaPersonagem: defesaMagicaPersonagem,
            precisaoPersonagem: precisaoPersonagem,
            esquivaPersonagem: esquivaPersonagem,
            criticoPersonagem: criticoPersonagem,
            nivelPersonagem: nivel.value,
            pontosDeAtributos: pontosDeAtributos,
            id: idUsuario,
            idClasse: classeId,
            nomeBuild: nomeDaBuild
        })
        }).then(data => {
            if(data.ok){
                data.json().then(json =>{
                    console.log(json.build[0][0].id)
                    createdSuccessfully(json.build[0][0].id)
                })
                console.log("Build criada com sucesso")
            }else{
                console.log(data)
                console.log("Erro ao criar Build")
            }
    })

}

// Requisição para atualizar build
const updateAtributos = () =>{

    var build = JSON.parse(sessionStorage.getItem("build"));
    var idClasse = build[0].idClasse;
    var idAtributo = build[0].idAtributo;
    var idStatus = build[0].idStatus;
    nomeDaBuild = nome.value;

    fetch("/build/update/atributos", {
        method: "PUT",
        headers: {
            "Content-Type": "application/json"
        },
        body: JSON.stringify({
            forcaPersonagem: resultado_forca.value,
            agilidadePersonagem: resultado_agilidade.value,
            vitalidadePersonagem: resultado_vitalidade.value,
            inteligenciaPersonagem: resultado_inteligencia.value,
            destrezaPersonagem: resultado_destreza.value,
            sortePersonagem: resultado_sorte.value,
            ataquePersonagem: ataquePersonagem,
            ataqueMagicoPersonagem: ataqueMagicoPersonagem,
            defesaPersonagem: defesaPersonagem,
            defesaMagicaPersonagem: defesaMagicaPersonagem,
            precisaoPersonagem: precisaoPersonagem,
            esquivaPersonagem: esquivaPersonagem,
            criticoPersonagem: criticoPersonagem,
            nivelPersonagem: nivel.value,
            pontosDeAtributos: pontosDeAtributos,
            idStatus: idStatus,
            idAtributo: idAtributo,
            idBuild: reqParam,
            nomeBuild: nomeDaBuild,
            idClasse: classeId
        })
        }).then(data => {
            if(data.ok){
                data.json().then((data) => {
                    updatedSuccessfully("Build Atualizada com Sucesso")
                    console.log(data)
                    console.log("Build atualizada")
                    if(classeId != idClasse){
                        deleteSkills();
                    }
            })
            }else{
                console.log(data)
                console.log("Erro ao criar Build")
            }
    })

}

setTimeout(() => {
    
    allClasses.sort((x, y) => {
        let a = x.nome.toUpperCase();
        let b = y.nome.toUpperCase();

        return a == b ? 0 : a > b ? 1 : -1
    })

    for (var i = 0; i < allClasses.length; i++) {
        
        classes.innerHTML += `<option value="${allClasses[i].nome}">${allClasses[i].nome.replaceAll("_", " ")}</option>`

        if(allClasses[i].nome){
            imagem_classe.src = `../assets/imgs/classes/${classes.value}sprite.png`
        }

    }
    classes.value = buildsUsuario[0] ? buildsUsuario[0].nomeClasse : "Aprendizes";
    pontos.innerHTML = buildsUsuario[0] ? buildsUsuario[0].pontos : 100;
    ataque.innerHTML = buildsUsuario[0] ? buildsUsuario[0].ataque : 1;
    ataquem.innerHTML = buildsUsuario[0] ? buildsUsuario[0].ataqueMagico : 1;
    defesa.innerHTML = buildsUsuario[0] ? buildsUsuario[0].defesa : 1;
    defesam.innerHTML = buildsUsuario[0] ? buildsUsuario[0].defesaMagica: 1;
    precisao.innerHTML = buildsUsuario[0] ? buildsUsuario[0].precisao : 177;
    esquiva.innerHTML = buildsUsuario[0] ? buildsUsuario[0].esquiva : 102;
    critico.innerHTML = buildsUsuario[0] ? buildsUsuario[0].critico : 1;
    nivel.value = buildsUsuario[0] ? buildsUsuario[0].nivel : 1;
    resultado_forca.value = buildsUsuario[0] ? forcaPersonagem(buildsUsuario[0].Forca) : 1;
    resultado_agilidade.value = buildsUsuario[0] ? agilidadePersonagem(buildsUsuario[0].Agilidade) : 1;
    resultado_vitalidade.value = buildsUsuario[0] ? vitalidadePersonagem(buildsUsuario[0].Vitalidade) : 1;
    resultado_inteligencia.value = buildsUsuario[0] ? inteligenciaPersonagem(buildsUsuario[0].Inteligencia) : 1;
    resultado_destreza.value = buildsUsuario[0] ? destrezaPersonagem(buildsUsuario[0].Destreza) : 1;
    resultado_sorte.value = buildsUsuario[0] ? sortePersonagem(buildsUsuario[0].Sorte) : 1;
    imagem_classe.src = buildsUsuario[0] ? `../assets/imgs/classes/${buildsUsuario[0].nomeClasse}sprite.png` : `../assets/imgs/classes/${classes.value}sprite.png`
    nomeDaBuild = buildsUsuario[0] ? nome.value = buildsUsuario[0].nomeBuild : ""
    descricao.value = buildsUsuario[0] ? buildsUsuario[0].descricao : "";
    // imagem.src = buildsUsuario[0] ? `../assets/imgs/classes/${buildsUsuario[0].nomeClasse}sprite.png` : `../assets/imgs/classes/${classes.value}sprite.png`
    build_button.innerHTML = buildsUsuario[0] ? `<button class="build_button" onclick="updateAtributos()">Atualizar Build</button>` : `<button class="build_button" onclick="saveBuild()">Criar Build</button>`
    classeId = buildsUsuario[0] ? buildsUsuario[0].idClasse : 1;
    
    getSkills()

    setTimeout(() => {
        mostrarSkill()
        for(var i = 0; i < mainSkills.length; i++){
            skills.innerHTML += `<img src="../assets/imgs/Habilidades/${classes.value}/${mainSkills[i].nome}.png"/>`
            habilidades.push([mainSkills[i].nome, mainSkills[i].idHabilidade])
        }
    }, 500)
}, 1000)


//Gráfico de atributos
var atributoGrafico = document.getElementById("atributo");
// var atributoGrafico2 = document.getElementById("atributo2");

var grafico = new Chart(atributoGrafico, {
        type: "radar",
        data: {
                labels: ['Força', 'Agilidade', 'Vitalidade', 'Inteligencia', 'Destreza', 'Sorte'],
                datasets: [{
                    label: 'Atributos do Personagem',
                    data: [1, 1, 1, 1, 1, 1],
            
                }]
    }
})

    // var grafico2 = new Chart(atributoGrafico2, {
    //     type: "radar",
    //     data: {
    //             labels: ['Força', 'Agilidade', 'Vitalidade', 'Inteligencia', 'Destreza', 'Sorte'],
    //             datasets: [{
    //                 label: 'Atributos do Personagem',
    //                 data: [1, 1, 1, 1, 1, 1],
            
    //             }]
    // }
    // })

// Atributos e Status

var ataquePersonagem = 0
var ataqueMagicoPersonagem = 0
var precisaoPersonagem = 0
var criticoPersonagem = 0
var defesaPersonagem = 0
var defesaMagicaPersonagem = 0
var esquivaPersonagem = 0
var pontosDeAtributos =  0
var pontosGastosEmForca = 0
var pontosGastosEmAgilidade = 0
var pontosGastosEmVitalidade = 0
var pontosGastosEmInteligencia = 0
var pontosGastosEmDestreza = 0
var pontosGastosEmSorte = 0
var defesaPorAgilidade = 0
var defesaPorVit = 0
var esquivaPorAgi = 0
var ataquePorFor = 0
var defesaMagicaPorVit = 0
var defesaMagicaPorInt = 0
var ataqueMagicoPorInt = 0
var ataquePorDes = 0
var ataqueMagicoPorDes = 0
var precisaoPorDes = 0
var ataquePorSor = 0
var ataqueMagicoPorSor = 0
var esquivaPorSor = 0
var criticoPorSor = 0
var precisaoPorSor = 0
var ataquePorNivel = 0
var ataqueMagicoPorNivel = 0
var esquivaPorNivel = 0
var defesaPorNivel = 0
var defesaMagicaPorNivel = 0
var precisaoPorNivel = 0

function totalDefesa() {
    defesaPersonagem =  defesaPorAgilidade + defesaPorNivel + defesaPorVit + 1
}

function totalEsquiva() {
    esquivaPersonagem = esquivaPorAgi + esquivaPorNivel + esquivaPorSor + 102
}

function totalAtaque() {
    ataquePersonagem = ataquePorFor + ataquePorDes + ataquePorNivel + ataquePorSor + 1
}

function totalAtaqueMagico() {
    ataqueMagicoPersonagem = ataqueMagicoPorInt + ataqueMagicoPorDes + ataqueMagicoPorNivel + ataqueMagicoPorSor + 1
}

function totalDefesaMagica() {
    defesaMagicaPersonagem = defesaMagicaPorVit + defesaMagicaPorNivel + defesaMagicaPorInt + 1
}

function totalPrecisao() {
    precisaoPersonagem = precisaoPorDes + precisaoPorSor + precisaoPorNivel + 177
}

function totalCritico() {
    criticoPersonagem = criticoPorSor + 1
}

function analisarNivel() {

    ataquePorNivel = 0;
    ataqueMagicoPorNivel = 0;
    defesaPorNivel = 0
    defesaMagicaPorNivel = 0
    esquivaPorNivel = 0;
    precisaoPorNivel = 0;

    pontosDeAtributos = 100
    var nivelPersonagem = Number(nivel.value)

    if (nivelPersonagem < 0) {
        nivel.value = 0
    } else if (nivelPersonagem > 175) {
        nivel.value = 175
    }

    for (var i = 1; i <= nivel.value; i++) {

        if(i % 2 != 0 && i > 1){
            defesaPorNivel++
        }
        if(i % 4 == 0){
            ataquePorNivel++
            ataqueMagicoPorNivel++
            defesaMagicaPorNivel++
        }

        if (i > 1 && i <= 5) {
            pontosDeAtributos += 3
            precisaoPorNivel++
            esquivaPorNivel++
        } else if (i > 5 && i <= 10) {
            pontosDeAtributos += 4
            precisaoPorNivel++
            esquivaPorNivel++
        } else if (i > 10 && i <= 15) {
            pontosDeAtributos += 5
            precisaoPorNivel++
            esquivaPorNivel++
        } else if (i > 15 && i <= 20) {
            pontosDeAtributos += 6
            precisaoPorNivel++
            esquivaPorNivel++
        } else if (i > 20 && i <= 25) {
            pontosDeAtributos += 7
            precisaoPorNivel++
            esquivaPorNivel++
        } else if (i > 25 && i <= 30) {
            pontosDeAtributos += 8
            precisaoPorNivel++
            esquivaPorNivel++
        } else if (i > 30 && i <= 35) {
            pontosDeAtributos += 9
            precisaoPorNivel++
            esquivaPorNivel++
        } else if (i > 35 && i <= 40) {
            pontosDeAtributos += 10;
            precisaoPorNivel++
            esquivaPorNivel++
        } else if (i > 40 && i <= 45) {
            pontosDeAtributos += 11
            precisaoPorNivel++
            esquivaPorNivel++
        } else if (i >= 45 && i <= 50) {
            pontosDeAtributos += 12
            precisaoPorNivel++
            esquivaPorNivel++
        } else if (i > 50 && i <= 55) {
            pontosDeAtributos += 13
            precisaoPorNivel++
            esquivaPorNivel++
        } else if (i > 55 && i <= 60) {
            pontosDeAtributos += 14
            precisaoPorNivel++
            esquivaPorNivel++
        } else if (i > 60 && i <= 65) {
            pontosDeAtributos += 15
            precisaoPorNivel++
            esquivaPorNivel++
        } else if (i > 65 && i <= 70) {
            pontosDeAtributos += 16
            precisaoPorNivel++
            esquivaPorNivel++
        } else if (i > 70 && i <= 75) {
            pontosDeAtributos += 17
            precisaoPorNivel++
            esquivaPorNivel++
        } else if (i > 75 && i <= 80) {
            pontosDeAtributos += 18
            precisaoPorNivel++
            esquivaPorNivel++
        } else if (i > 80 && i <= 85) {
            pontosDeAtributos += 19
            precisaoPorNivel++
            esquivaPorNivel++
        } else if (i > 85 && i <= 90) {
            pontosDeAtributos += 20
            precisaoPorNivel++
            esquivaPorNivel++
        } else if (i > 90 && i <= 95) {
            pontosDeAtributos += 21
            precisaoPorNivel++
            esquivaPorNivel++
        } else if (i > 95 && i <= 100) {
            pontosDeAtributos += 22
            precisaoPorNivel++
            esquivaPorNivel++
        } else if (i > 100 && i <= 110) {
            pontosDeAtributos += 23
            precisaoPorNivel++
            esquivaPorNivel++
        } else if (i > 110 && i <= 120) {
            pontosDeAtributos += 24
            precisaoPorNivel++
            esquivaPorNivel++
        } else if (i > 120 && i <= 130) {
            pontosDeAtributos += 25
            precisaoPorNivel++
            esquivaPorNivel++
        } else if (i > 130 && i <= 140) {
            pontosDeAtributos += 26
            precisaoPorNivel++
            esquivaPorNivel++
        } else if (i > 140 && i <= 151) {
            pontosDeAtributos += 27
            precisaoPorNivel++
            esquivaPorNivel++
        } else if (i > 151 && i <= 158) {
            pontosDeAtributos += 28
            precisaoPorNivel++
            esquivaPorNivel++
        } else if (i > 158 && i <= 164) {
            pontosDeAtributos += 29
            precisaoPorNivel++
            esquivaPorNivel++
        } else if (i > 164 && i <= 171) {
            pontosDeAtributos += 30
            precisaoPorNivel++
            esquivaPorNivel++
        } else if (i > 171 && i <= 175) {
            pontosDeAtributos += 31
            precisaoPorNivel++
            esquivaPorNivel++
        }
        if (i == 175) {
            pontosDeAtributos += 2
        }

    }

    pontosDeAtributos -= pontosGastosEmForca
    pontosDeAtributos -= pontosGastosEmAgilidade
    pontosDeAtributos -= pontosGastosEmVitalidade
    pontosDeAtributos -= pontosGastosEmInteligencia
    pontosDeAtributos -= pontosGastosEmDestreza
    pontosDeAtributos -= pontosGastosEmSorte

    totalAtaque()
    totalAtaqueMagico()
    totalDefesa()
    totalDefesaMagica()
    totalEsquiva()
    totalPrecisao()
    
    if (pontosDeAtributos < 0) {
        pontos.style.color = "red"
        pontos.innerHTML = pontosDeAtributos;
    } else {
        pontos.style.color = "black"
        pontos.innerHTML = pontosDeAtributos;
    }

    ataque.innerHTML = ataquePersonagem
    ataquem.innerHTML = ataqueMagicoPersonagem
    defesa.innerHTML = defesaPersonagem
    defesam.innerHTML = defesaMagicaPersonagem
    esquiva.innerHTML = esquivaPersonagem
    precisao.innerHTML = precisaoPersonagem
}

function forcaPersonagem(forca) {
    
    ataquePorFor = 0
    pontosGastosEmForca = 0

    if (forca > 130) {
        forca = 130
    }
    if (forca < 0) {
        forca = 1
    }

    for (var i = 1; i <= forca; i++) {

        if (i > 1 && i <= 10) {
            pontosDeAtributos -= 2
            pontosGastosEmForca += 2
            ataquePorFor++
        } else if (i >= 11 && i <= 20) {
            pontosDeAtributos -= 3
            pontosGastosEmForca += 3
            ataquePorFor++
        } else if (i >= 21 && i <= 30) {
            pontosDeAtributos -= 4
            pontosGastosEmForca += 4
            ataquePorFor++
        } else if (i >= 31 && i <= 40) {
            pontosDeAtributos -= 5
            pontosGastosEmForca += 5
            ataquePorFor++
        } else if (i >= 41 && i <= 50) {
            pontosDeAtributos -= 6
            pontosGastosEmForca += 6
            ataquePorFor++
        } else if (i >= 51 && i <= 60) {
            pontosDeAtributos -= 7
            pontosGastosEmForca += 7
            ataquePorFor++
        } else if (i >= 61 && i <= 70) {
            pontosDeAtributos -= 8
            pontosGastosEmForca += 8
            ataquePorFor++
        } else if (i >= 71 && i <= 80) {
            pontosDeAtributos -= 9
            pontosGastosEmForca += 9
            ataquePorFor++
        } else if (i >= 81 && i <= 90) {
            pontosDeAtributos -= 10
            pontosGastosEmForca += 10
            ataquePorFor++
        } else if (i >= 91 && i <= 99) {
            pontosDeAtributos -= 11
            pontosGastosEmForca += 11
            ataquePorFor++
        } else if (i >= 100 && i <= 104) {
            pontosDeAtributos -= 16
            pontosGastosEmForca += 16
            ataquePorFor++
        } else if (i >= 105 && i <= 109) {
            pontosDeAtributos -= 20
            pontosGastosEmForca += 20
            ataquePorFor++
        } else if (i >= 110 && i <= 114) {
            pontosDeAtributos -= 24
            pontosGastosEmForca += 24
            ataquePorFor++
        } else if (i >= 115 && i <= 120) {
            pontosDeAtributos -= 28
            pontosGastosEmForca += 28
            ataquePorFor++
        } else if (i >= 121 && i <= 125) {
            pontosDeAtributos -= 32
            pontosGastosEmForca += 32
            ataquePorFor++
        } else if (i >= 126 && i <= 129) {
            pontosDeAtributos -= 36
            pontosGastosEmForca += 36
            ataquePorFor++
        }
    }

    analisarNivel();

    if (pontosDeAtributos < 0) {
        pontos.style.color = "red"
        pontos.innerHTML = pontosDeAtributos;
    } else {
        pontos.style.color = "black"
        pontos.innerHTML = pontosDeAtributos;
    }

    totalAtaque();
    grafico.data.datasets[0].data[0] = forca
    grafico.update();
    // grafico2.data.datasets[0].data[0] = forca
    // grafico2.update();
    ataque.innerHTML = ataquePersonagem
    resultado_forca.value = forca
    return forca
}

function agilidadePersonagem(agilidade) {

    defesaPorAgilidade = 0
    esquivaPorAgi = 0
    pontosGastosEmAgilidade = 0

    if (agilidade > 130) {
        agilidade = 130
    }

    if (agilidade < 0) {
        agilidade = 1
    }

    for (var i = 1; i < agilidade; i++) {

        if ((i + 1) % 5 == 0) {
            defesaPorAgilidade++
        }

        if (i >= 1 && i <= 10) {
            pontosDeAtributos -= 2
            pontosGastosEmAgilidade += 2
            esquivaPorAgi++
        } else if (i >= 11 && i <= 20) {
            pontosDeAtributos -= 3
            pontosGastosEmAgilidade += 3
            esquivaPorAgi++
        } else if (i >= 21 && i <= 30) {
            pontosDeAtributos -= 4
            pontosGastosEmAgilidade += 4
            esquivaPorAgi++
        } else if (i >= 31 && i <= 40) {
            pontosDeAtributos -= 5
            pontosGastosEmAgilidade += 5
        } else if (i >= 41 && i <= 50) {
            pontosDeAtributos -= 6
            pontosGastosEmAgilidade += 6
            esquivaPorAgi++
        } else if (i >= 51 && i <= 60) {
            pontosDeAtributos -= 7
            pontosGastosEmAgilidade += 7
            esquivaPorAgi++
        } else if (i >= 61 && i <= 70) {
            pontosDeAtributos -= 8
            pontosGastosEmAgilidade += 8
            esquivaPorAgi++
        } else if (i >= 71 && i <= 80) {
            pontosDeAtributos -= 9
            pontosGastosEmAgilidade += 9
            esquivaPorAgi++
        } else if (i >= 81 && i <= 90) {
            pontosDeAtributos -= 10
            pontosGastosEmAgilidade += 10
            esquivaPorAgi++
        } else if (i >= 91 && i <= 99) {
            pontosDeAtributos -= 11
            pontosGastosEmAgilidade += 11
            esquivaPorAgi++
        } else if (i >= 100 && i <= 104) {
            pontosDeAtributos -= 16
            pontosGastosEmAgilidade += 16
            esquivaPorAgi++
        } else if (i >= 105 && i <= 109) {
            pontosDeAtributos -= 20
            pontosGastosEmAgilidade += 20
            esquivaPorAgi++
        } else if (i >= 110 && i <= 114) {
            pontosDeAtributos -= 24
            pontosGastosEmAgilidade += 24
            esquivaPorAgi++
        } else if (i >= 115 && i <= 120) {
            pontosDeAtributos -= 28
            pontosGastosEmAgilidade += 28
            esquivaPorAgi++
        } else if (i >= 121 && i <= 125) {
            pontosDeAtributos -= 32
            pontosGastosEmAgilidade += 32
            esquivaPorAgi++
        } else if (i >= 126 && i <= 129) {
            pontosDeAtributos -= 36
            pontosGastosEmAgilidade += 36
            esquivaPorAgi++
        }
    }

    analisarNivel()

    if (pontosDeAtributos < 0) {
        pontos.style.color = "red"
        pontos.innerHTML = pontosDeAtributos;
    } else {
        pontos.style.color = "black"
        pontos.innerHTML = pontosDeAtributos;
    }

    totalDefesa();
    totalEsquiva();

    grafico.data.datasets[0].data[1] = agilidade
    grafico.update();
    // grafico2.data.datasets[0].data[1] = agilidade
    // grafico2.update();

    esquiva.innerHTML = esquivaPersonagem
    defesa.innerHTML = defesaPersonagem
    resultado_agilidade.value = agilidade
    return agilidade
}

function vitalidadePersonagem(vitalidade) {

    defesaPorVit = 0
    defesaMagicaPorVit = 0
    pontosGastosEmVitalidade = 0

    if (vitalidade > 130) {
        vitalidade = 130
    }

    if (vitalidade < 0) {
        vitalidade = 1
    }

    for (var i = 1; i < vitalidade; i++) {

        if ((i + 1) % 5 == 0) {
            defesaMagicaPorVit++
        }

        if (!((i + 1) % 2 == 0)) {
            defesaPorVit++
        }

        if (i >= 1 && i <= 10) {
            pontosDeAtributos -= 2
            pontosGastosEmVitalidade += 2
        } else if (i >= 11 && i <= 20) {
            pontosDeAtributos -= 3
            pontosGastosEmVitalidade += 3
        } else if (i >= 21 && i <= 30) {
            pontosDeAtributos -= 4
            pontosGastosEmVitalidade += 4
        } else if (i >= 31 && i <= 40) {
            pontosDeAtributos -= 5
            pontosGastosEmVitalidade += 5
        } else if (i >= 41 && i <= 50) {
            pontosDeAtributos -= 6
            pontosGastosEmVitalidade += 6
        } else if (i >= 51 && i <= 60) {
            pontosDeAtributos -= 7
            pontosGastosEmVitalidade += 7
        } else if (i >= 61 && i <= 70) {
            pontosDeAtributos -= 8
            pontosGastosEmVitalidade += 8
        } else if (i >= 71 && i <= 80) {
            pontosDeAtributos -= 9
            pontosGastosEmVitalidade += 9
        } else if (i >= 81 && i <= 90) {
            pontosDeAtributos -= 10
            pontosGastosEmVitalidade += 10
        } else if (i >= 91 && i <= 99) {
            pontosDeAtributos -= 11
            pontosGastosEmVitalidade += 11
        } else if (i >= 100 && i <= 104) {
            pontosDeAtributos -= 16
            pontosGastosEmVitalidade += 16
        } else if (i >= 105 && i <= 109) {
            pontosDeAtributos -= 20
            pontosGastosEmVitalidade += 20
        } else if (i >= 110 && i <= 114) {
            pontosDeAtributos -= 24
            pontosGastosEmVitalidade += 24
        } else if (i >= 115 && i <= 120) {
            pontosDeAtributos -= 28
            pontosGastosEmVitalidade += 28
        } else if (i >= 121 && i <= 125) {
            pontosDeAtributos -= 32
            pontosGastosEmVitalidade += 32
        } else if (i >= 126 && i <= 129) {
            pontosDeAtributos -= 36
            pontosGastosEmVitalidade += 36
        }
    }

    analisarNivel()

    if (pontosDeAtributos < 0) {
        pontos.style.color = "red"
        pontos.innerHTML = pontosDeAtributos;
    } else {
        pontos.style.color = "black"
        pontos.innerHTML = pontosDeAtributos;
    }

    totalDefesa();
    totalDefesaMagica();

    grafico.data.datasets[0].data[2] = vitalidade
    grafico.update();
    // grafico2.data.datasets[0].data[2] = vitalidade
    // grafico2.update();

    defesa.innerHTML = defesaPersonagem
    defesam.innerHTML = defesaMagicaPersonagem
    resultado_vitalidade.value = vitalidade
    return vitalidade
}

function inteligenciaPersonagem(inteligencia) {

    defesaMagicaPorInt = 0
    ataqueMagicoPorInt = 0
    pontosGastosEmInteligencia = 0

    if (inteligencia > 130) {
        inteligencia = 130
    }
    if (inteligencia < 0) {
        inteligencia = 1
    }

    for (var i = 1; i < inteligencia; i++) {

        if (i % 2 == 0) {
            ataqueMagicoPorInt += 1
        } else {
            ataqueMagicoPorInt += 2
        }

        if (i >= 1 && i <= 10) {
            pontosDeAtributos -= 2
            pontosGastosEmInteligencia += 2
            defesaMagicaPorInt++
        } else if (i >= 11 && i <= 20) {
            pontosDeAtributos -= 3
            pontosGastosEmInteligencia += 3
            defesaMagicaPorInt++
        } else if (i >= 21 && i <= 30) {
            pontosDeAtributos -= 4
            pontosGastosEmInteligencia += 4
            defesaMagicaPorInt++
        } else if (i >= 31 && i <= 40) {
            pontosDeAtributos -= 5
            pontosGastosEmInteligencia += 5
            defesaMagicaPorInt++
        } else if (i >= 41 && i <= 50) {
            pontosDeAtributos -= 6
            pontosGastosEmInteligencia += 6
            defesaMagicaPorInt++
        } else if (i >= 51 && i <= 60) {
            pontosDeAtributos -= 7
            pontosGastosEmInteligencia += 7
            defesaMagicaPorInt++
        } else if (i >= 61 && i <= 70) {
            pontosDeAtributos -= 8
            pontosGastosEmInteligencia += 8
            defesaMagicaPorInt++
        } else if (i >= 71 && i <= 80) {
            pontosDeAtributos -= 9
            pontosGastosEmInteligencia += 9
            defesaMagicaPorInt++
        } else if (i >= 81 && i <= 90) {
            pontosDeAtributos -= 10
            pontosGastosEmInteligencia += 10
            defesaMagicaPorInt++
        } else if (i >= 91 && i <= 99) {
            pontosDeAtributos -= 11
            pontosGastosEmInteligencia += 11
            defesaMagicaPorInt++
        } else if (i >= 100 && i <= 104) {
            pontosDeAtributos -= 16
            pontosGastosEmInteligencia += 16
            defesaMagicaPorInt++
        } else if (i >= 105 && i <= 109) {
            pontosDeAtributos -= 20
            pontosGastosEmInteligencia += 20
            defesaMagicaPorInt++
        } else if (i >= 110 && i <= 114) {
            pontosDeAtributos -= 24
            pontosGastosEmInteligencia += 24
            defesaMagicaPorInt++
        } else if (i >= 115 && i <= 120) {
            pontosDeAtributos -= 28
            pontosGastosEmInteligencia += 28
            defesaMagicaPorInt++
        } else if (i >= 121 && i <= 125) {
            pontosDeAtributos -= 32
            pontosGastosEmInteligencia += 32
            defesaMagicaPorInt++
        } else if (i >= 126 && i <= 129) {
            pontosDeAtributos -= 36
            pontosGastosEmInteligencia += 36
            defesaMagicaPorInt++
        }
    }

    analisarNivel()

    if (pontosDeAtributos < 0) {
        pontos.style.color = "red"
        pontos.innerHTML = pontosDeAtributos;
    } else {
        pontos.style.color = "black"
        pontos.innerHTML = pontosDeAtributos;
    }

    totalDefesaMagica()
    totalAtaqueMagico()

    grafico.data.datasets[0].data[3] = inteligencia
    grafico.update();
    // grafico2.data.datasets[0].data[3] = inteligencia
    // grafico2.update();

    ataquem.innerHTML = ataqueMagicoPersonagem
    defesam.innerHTML = defesaMagicaPersonagem
    resultado_inteligencia.value = inteligencia
    return inteligencia
}

function destrezaPersonagem(destreza) {

    pontosGastosEmDestreza = 0
    ataqueMagicoPorDes = 0
    ataquePorDes = 0
    precisaoPorDes = 0

    if (destreza > 130) {
        destreza = 130
    }
    if (destreza < 0) {
        destreza = 1
    }

    for (var i = 1; i < destreza; i++) {

        if ((i + 1) % 5 == 0) {
            ataqueMagicoPorDes += 1
            ataquePorDes += 1
        }

        if (i >= 1 && i <= 10) {
            pontosDeAtributos -= 2
            pontosGastosEmDestreza += 2
            precisaoPorDes++
        } else if (i >= 11 && i <= 20) {
            pontosDeAtributos -= 3
            pontosGastosEmDestreza += 3
            precisaoPorDes++
        } else if (i >= 21 && i <= 30) {
            pontosDeAtributos -= 4
            pontosGastosEmDestreza += 4
            precisaoPorDes++
        } else if (i >= 31 && i <= 40) {
            pontosDeAtributos -= 5
            pontosGastosEmDestreza += 5
            precisaoPorDes++
        } else if (i >= 41 && i <= 50) {
            pontosDeAtributos -= 6
            pontosGastosEmDestreza += 6
            precisaoPorDes++
        } else if (i >= 51 && i <= 60) {
            pontosDeAtributos -= 7
            pontosGastosEmDestreza += 7
            precisaoPorDes++
        } else if (i >= 61 && i <= 70) {
            pontosDeAtributos -= 8
            pontosGastosEmDestreza += 8
            precisaoPorDes++
        } else if (i >= 71 && i <= 80) {
            pontosDeAtributos -= 9
            pontosGastosEmDestreza += 9
            precisaoPorDes++
        } else if (i >= 81 && i <= 90) {
            pontosDeAtributos -= 10
            pontosGastosEmDestreza += 10
            precisaoPorDes++
        } else if (i >= 91 && i <= 99) {
            pontosDeAtributos -= 11
            pontosGastosEmDestreza += 11
            precisaoPorDes++
        } else if (i >= 100 && i <= 104) {
            pontosDeAtributos -= 16
            pontosGastosEmDestreza += 16
            precisaoPorDes++
        } else if (i >= 105 && i <= 109) {
            pontosDeAtributos -= 20
            pontosGastosEmDestreza += 20
            precisaoPorDes++
        } else if (i >= 110 && i <= 114) {
            pontosDeAtributos -= 24
            pontosGastosEmDestreza += 24
            precisaoPorDes++
        } else if (i >= 115 && i <= 120) {
            pontosDeAtributos -= 28
            pontosGastosEmDestreza += 28
            precisaoPorDes++
        } else if (i >= 121 && i <= 125) {
            pontosDeAtributos -= 32
            pontosGastosEmDestreza += 32
            precisaoPorDes++
        } else if (i >= 126 && i <= 129) {
            pontosDeAtributos -= 36
            pontosGastosEmDestreza += 36
            precisaoPorDes++
        }
    }

    analisarNivel()
    totalAtaque();
    totalAtaqueMagico();
    totalPrecisao();

    if (pontosDeAtributos < 0) {
        pontos.style.color = "red"
        pontos.innerHTML = pontosDeAtributos;
    } else {
        pontos.style.color = "black"
        pontos.innerHTML = pontosDeAtributos;
    }

    grafico.data.datasets[0].data[4] = destreza
    grafico.update();
    // grafico2.data.datasets[0].data[4] = destreza
    // grafico2.update();

    ataquem.innerHTML = ataqueMagicoPersonagem
    precisao.innerHTML = precisaoPersonagem
    ataque.innerHTML = ataquePersonagem
    resultado_destreza.value = destreza
    return destreza
}

function sortePersonagem(luk) {

     pontosGastosEmSorte = 0
     ataquePorSor = 0
     ataqueMagicoPorSor = 0
     esquivaPorSor = 0
     criticoPorSor = 0
     precisaoPorSor = 0

    if (luk > 130) {
        luk = 130
    }
    if (luk < 0) {
        luk = 1
    }

    for (var i = 1; i < luk; i++) {

        if ((i + 1) % 3 == 0) {
            ataqueMagicoPorSor++
            ataquePorSor++
            precisaoPorSor++
        }
    
        if ((i + 1) % 5 == 0) {
            esquivaPorSor++
        }
    
        if ((i + 1) % 10 == 0 || i == 4 || i == 7 || i == 14 || i == 17 || i == 24 || i == 27 || i == 34 || i == 37 || i == 44 || i == 47 || i == 54 || i == 57 || i == 64 || i == 67
            || i == 74 || i == 77 || i == 84 || i == 87 || i == 94 || i == 97 || i == 104 || i == 107 || i == 114 || i == 117 || i == 124 || i == 127) {
            criticoPorSor++
        }
    
        if (i >= 1 && i <= 10) {
            pontosDeAtributos -= 2
            pontosGastosEmSorte += 2
        } else if (i >= 11 && i <= 20) {
            pontosDeAtributos -= 3
            pontosGastosEmSorte += 3
        } else if (i >= 21 && i <= 30) {
            pontosDeAtributos -= 4
            pontosGastosEmSorte += 4
        } else if (i >= 31 && i <= 40) {
            pontosDeAtributos -= 5
            pontosGastosEmSorte += 5
        } else if (i >= 41 && i <= 50) {
            pontosDeAtributos -= 6
            pontosGastosEmSorte += 6
        } else if (i >= 51 && i <= 60) {
            pontosDeAtributos -= 7
            pontosGastosEmSorte += 7
        } else if (i >= 61 && i <= 70) {
            pontosDeAtributos -= 8
            pontosGastosEmSorte += 8
        } else if (i >= 71 && i <= 80) {
            pontosDeAtributos -= 9
            pontosGastosEmSorte += 9
        } else if (i >= 81 && i <= 90) {
            pontosDeAtributos -= 10
            pontosGastosEmSorte += 10
        } else if (i >= 91 && i <= 99) {
            pontosDeAtributos -= 11
            pontosGastosEmSorte += 11
        } else if (i >= 100 && i <= 104) {
            pontosDeAtributos -= 16
            pontosGastosEmSorte += 16
        } else if (i >= 105 && i <= 109) {
            pontosDeAtributos -= 20
            pontosGastosEmSorte += 20
        } else if (i >= 110 && i <= 114) {
            pontosDeAtributos -= 24
            pontosGastosEmSorte += 24
        } else if (i >= 115 && i <= 120) {
            pontosDeAtributos -= 28
            pontosGastosEmSorte += 28
        } else if (i >= 121 && i <= 125) {
            pontosDeAtributos -= 32
            pontosGastosEmSorte += 32
        } else if (i >= 126 && i <= 129) {
            pontosDeAtributos -= 36
            pontosGastosEmSorte += 36
        }
    }

    analisarNivel()
    totalAtaque();
    totalAtaqueMagico();
    totalEsquiva();
    totalPrecisao();
    totalCritico();

    if (pontosDeAtributos < 0) {
        pontos.style.color = "red"
        pontos.innerHTML = pontosDeAtributos;
    } else {
        pontos.style.color = "black"
        pontos.innerHTML = pontosDeAtributos;
    }

    grafico.data.datasets[0].data[5] = luk
    grafico.update();
    // grafico2.data.datasets[0].data[4] = luk
    // grafico2.update();

    ataque.innerHTML = ataquePersonagem
    ataquem.innerHTML = ataqueMagicoPersonagem
    esquiva.innerHTML = esquivaPersonagem
    precisao.innerHTML = precisaoPersonagem
    critico.innerHTML = criticoPersonagem
    resultado_sorte.value = luk
    return luk
}