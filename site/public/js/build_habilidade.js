const mostrarSimulador = () =>{
    simulador_build.style.display = `block`
    habilidade_build.style.display = `none`

    if(reqParam == 'newBuild'){
            erroAoAcessar("Crie sua build no simulador de atributos, antes de acessar a página de habilidade");
    }
}

const mostrarSkills = () =>{

    simulador_build.style.display = `none`
    habilidade_build.style.display = `block`
}

const deslogar = () => {
    limparSessao();
}


document.getElementById("habilidade").addEventListener('click', () => {
    reqParam == 'newBuild' ? mostrarSimulador() : mostrarSkills()
})

const erroAoAcessar = (texto) => {
    Swal.fire({
        title: texto,
        width: 600,
        height: 250,
        padding: "3em",
        color: "red",
        background: "#fff",
        imageUrl: "../assets/RO_Kafra29.webp",
        imageWidth: 150,
      });
}

const showSkill = (valorImg) => {
    
    var nomeSkill = valorImg.getAttribute("value");
    console.log(valorImg, nomeSkill)
    Swal.fire({
        title: `${nomeSkill.replaceAll("_", " ")}`,
        width: 600,
        height: 250,
        padding: "3em",
        color: "#00259C",
        confirmButtonColor: "#00259C",
        background: "#fff",
        imageUrl: `../assets/imgs/gif/${nomeSkill}.gif`,
        imageWidth: 400,
      });
}

var habilidades = []

const adicionarHabilidade = () => {

    var vetor = skills_principais.value.split("#");
    var idHabilidade = vetor[1];
    var nomeHabilidade = vetor[0];
    
    
    for(var i = 0; i < habilidades.length; i++){
        if(habilidades[i][0] == nomeHabilidade){
            return
        }
    }
    
    habilidades.push([nomeHabilidade, idHabilidade])
    skills.innerHTML += `
    <img onclick="showSkill(this)" value="${nomeHabilidade}" src="../assets/imgs/Habilidades/${classes.value}/${nomeHabilidade}.png"/>
    `

}

const removerHabilidades = () => {
    habilidades = []
    skills.innerHTML = ""
};


const salvarHabilidades = () => {

    var idAtributo = buildsUsuario[0].idAtributo;
    var idStatus = buildsUsuario[0].idStatus;
    var idUsuario = sessionStorage.getItem("id");

    for(var i = 0; i < habilidades.length; i++){
        if(habilidades[i][1] == undefined || habilidades[i][1] == ""){
            erroAoAcessar("Defina as habilidades adequadamente.")
            return
        }
    }
    
    deleteSkills();

    setTimeout(() => {
        for(var i = 0; i < habilidades.length; i++){
                saveBuildHabilities(idAtributo, idStatus, idUsuario, habilidades[i][1])
                if((i+1) == habilidades.length){
                    updatedSuccessfully("Habilidades Principais atualizadas com sucesso")
                }
        }
    },500)
    
    
    console.log(classeId, reqParam, idAtributo, idStatus, idUsuario, habilidades)

}

const saveBuildHabilities = (idAtributo, idStatus, idUsuario, habilidade) =>{

    if(classeId != buildsUsuario[0].idClasse){
        erroAoAcessar("Verificamos que você alterou a classe da sua build, atualize-a no simulador de atributos antes de distribuir as habilidades")
        return
    }

    fetch("/build/skills", {
        method: "POST",
        headers: {
            "Content-Type": "application/json"
        },
        body: JSON.stringify({
            idUsuario: idUsuario,
            idClasse: classeId,
            idBuild: reqParam,
            idAtributo: idAtributo,
            idStatus: idStatus,
            idHabilidade: habilidade
        })
    })
}

const salvarDescricao = () => {
    
    fetch("/build/update/descricao", {
        method: "PUT",
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({
            description: descricao.value,
            idBuild: reqParam
        })
    }).then(data => {
        console.log(data)
        if(data.ok){
            updatedSuccessfully("Descrição atualizada com sucesso")
        }
    })

}

const deleteSkills = () =>{

    fetch(`/build/delete/skills/${reqParam}`, {
        method: "DELETE",
        headers: {
            'Content-Type': 'application/json'
        }
    }).then(() => console.log("habilidades principais deletadas"))

}