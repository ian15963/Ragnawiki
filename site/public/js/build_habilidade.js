const mostrarSimulador = () =>{
    simulador_build.style.display = `block`
    simulador.style.backgroundColor = `#00259C`
    simulador.style.color = `white`
    habilidade.style.color = `#00259C`
    habilidade.style.backgroundColor = `white`
    habilidade_build.style.display = `none`
}

const mostrarSkills = () =>{
    simulador_build.style.display = `none`
    simulador.style.backgroundColor = `white`
    simulador.style.color = `#00259C`
    habilidade.style.color = `white`
    habilidade.style.backgroundColor = `#00259C`
    habilidade_build.style.display = `block`
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
    skills.innerHTML += `<img src="../assets/imgs/Habilidades/${classes.value}/${nomeHabilidade}.png"/>`

}

const removerHabilidades = () => {
    habilidades = []
    skills.innerHTML = ""
};