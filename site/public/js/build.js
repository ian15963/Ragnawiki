var allClasses;
const getClasses = async () =>{

    await fetch("/classe/all-classes", {
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

    setTimeout(()=>{

        for(var i = 0; i < allClasses.length; i++){

            classes.innerHTML += `<option value="${allClasses[i].nome}">${allClasses[i].nome.replaceAll("_", " ")}</option>`
           
        }
        console.log(allClasses)
    }, 500)

    const mostrarClasse = () => {
        imagem_classe.src = `../assets/imgs/classes/${classes.value}sprite.png`
    }


// Atributos e Status

pontos.innerHTML = 100;
var ataquePersonagem = 0
var ataqueMagicoPersonagem = 0
var precisaoPersonagem = 0
var criticoPersonagem = 0
var defesaPersonagem = 0
var defesaMagicaPersonagem = 0
var esquivaPersonagem = 0
var pontosDeAtributos = 100
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

function totalDefesa(){
    defesaPersonagem = defesaPorAgilidade + defesaPorVit + 1
}

function totalEsquiva(){
    esquivaPersonagem = esquivaPorAgi + 102
}

function totalAtaque(){
    ataquePersonagem = ataquePorFor + ataquePorDes + 1
}

function totalAtaqueMagico(){
    ataqueMagicoPersonagem = ataqueMagicoPorInt + ataqueMagicoPorDes + 1
}

function totalDefesaMagica(){
    defesaMagicaPersonagem = defesaMagicaPorVit + defesaMagicaPorInt + 1
}

function totalPrecisao(){
    precisaoPersonagem = precisaoPorDes + 177
}

function analisarNivel(){

    var pontosDeAtributos = 100
    var nivelPersonagem = Number(nivel.value)
    
    if(nivelPersonagem < 0){
        nivel.value = 0
    }else if(nivelPersonagem > 175){
        nivel.value = 175
    }

    for(var i = 1; i <= nivelPersonagem; i++){

        if(i > 1 && i <=5){
            pontosDeAtributos += 3
        }else if(i > 5 && i <= 10){
            pontosDeAtributos += 4
        }else if(i > 10 && i <= 15){
            pontosDeAtributos += 5
        }else if(i > 15 && i <= 20){
            pontosDeAtributos +=6
        }else if(i > 20 && i <= 25){
            pontosDeAtributos += 7
        }else if(i > 25 && i <= 30){
            pontosDeAtributos += 8
        }else if(i > 30 && i <= 35){
            pontosDeAtributos += 9
        }else if(i > 35 && i <= 40){
            pontosDeAtributos += 10;
        }else if(i > 40 && i <= 45){
            pontosDeAtributos += 11
        }else if(i >=45 && i <= 50){
            pontosDeAtributos += 12
        }else if(i > 50 && i <= 55){
            pontosDeAtributos += 13
        }else if(i > 55 && i <= 60){
            pontosDeAtributos += 14
        }else if(i > 60 && i <= 65){
            pontosDeAtributos += 15
        }else if(i > 65 && i <= 70){
            pontosDeAtributos += 16
        }else if(i > 70 && i <=75){
            pontosDeAtributos += 17
        }else if(i > 75 && i <= 80){
            pontosDeAtributos += 18
        }else if(i > 80 && i <= 85){
            pontosDeAtributos += 19
        }else if(i > 85 && i <= 90){
            pontosDeAtributos += 20
        }else if(i > 90 && i <= 95){
            pontosDeAtributos += 21
        }else if(i > 95 && i <= 100){
            pontosDeAtributos += 22
        }else if(i > 100 && i <= 110){
            pontosDeAtributos += 23
        }else if(i > 110 && i <= 120){
            pontosDeAtributos += 24
        }else if(i > 120 && i <= 130){
            pontosDeAtributos += 25
        }else if(i > 130 && i <= 140){
            pontosDeAtributos += 26
        }else if(i > 140 && i <= 151){
            pontosDeAtributos += 27
        }else if(i > 151 && i <= 158){
            pontosDeAtributos += 28
        }else if(i > 158 && i <=164){
            pontosDeAtributos += 29
        }else if(i > 164 && i <=171){
            pontosDeAtributos += 30
        }else if(i > 171 && i <= 175){
            pontosDeAtributos += 31
        }
        if(i == 175){
            pontosDeAtributos += 2
        }

    }

    pontosDeAtributos -= pontosGastosEmForca
    pontosDeAtributos -= pontosGastosEmAgilidade
    pontosDeAtributos -= pontosGastosEmVitalidade
    pontosDeAtributos -= pontosGastosEmInteligencia
    pontosDeAtributos -= pontosGastosEmDestreza
    pontosDeAtributos -= pontosGastosEmSorte
    this.pontosDeAtributos = pontosDeAtributos
    if(this.pontosDeAtributos < 0){
        pontos.style.color = "red"
        pontos.innerHTML = pontosDeAtributos;
    }else{
        pontos.style.color = "black"
        pontos.innerHTML = pontosDeAtributos;
    }

}

function forcaPersonagem(forca){
    console.log(forca)

    ataquePorFor = 0
    pontosGastosEmForca = 0

    if(forca > 130){
        forca = 130
    }
    if(forca < 0){
        forca = 1
    }

    for(var i = 1; i <= forca; i++){

        if(i > 1 && i <= 10){
            pontosDeAtributos -= 2
            pontosGastosEmForca += 2
            ataquePorFor++
        }else if(i >=11 && i <= 20){
            pontosDeAtributos -= 3
            pontosGastosEmForca += 3
            ataquePorFor++
        }else if(i >= 21 && i <= 30){
            pontosDeAtributos -= 4
            pontosGastosEmForca += 4
            ataquePorFor++
        }else if(i >= 31 && i <= 40){
            pontosDeAtributos -= 5
            pontosGastosEmForca += 5
            ataquePorFor++
        }else if(i >= 41 && i <=50){
            pontosDeAtributos -= 6
            pontosGastosEmForca += 6
            ataquePorFor++
        }else if(i >= 51 && i <= 60){
            pontosDeAtributos -= 7
            pontosGastosEmForca += 7
            ataquePorFor++
        }else if(i >= 61 && i <= 70){
            pontosDeAtributos -= 8
            pontosGastosEmForca += 8
            ataquePorFor++
        }else if(i >= 71 && i <= 80){
            pontosDeAtributos -= 9
            pontosGastosEmForca += 9
            ataquePorFor++
        }else if(i >= 81 && i <= 90){
            pontosDeAtributos -= 10
            pontosGastosEmForca += 10
            ataquePorFor++
        }else if(i >= 91 && i <= 99){
            pontosDeAtributos -= 11
            pontosGastosEmForca += 11
            ataquePorFor++
        }else if(i >= 100 && i <= 104){
            pontosDeAtributos -= 16
            pontosGastosEmForca += 16
            ataquePorFor++
        }else if(i >= 105 && i <= 109){
            pontosDeAtributos -= 20
            pontosGastosEmForca += 20
            ataquePorFor++
        }else if(i >= 110 && i <= 114){
            pontosDeAtributos -= 24
            pontosGastosEmForca += 24
            ataquePorFor++
        }else if(i >= 115 && i <= 120){
            pontosDeAtributos -= 28
            pontosGastosEmForca += 28
            ataquePorFor++
        }else if(i >= 121 && i <= 125){
            pontosDeAtributos -= 32
            pontosGastosEmForca += 32
            ataquePorFor++
        }else if(i >= 126 && i <= 129){
            pontosDeAtributos -= 36
            pontosGastosEmForca += 36
            ataquePorFor++
        }
    }

    analisarNivel();

    if(pontosDeAtributos < 0){
        pontos.style.color = "red"
        pontos.innerHTML = pontosDeAtributos;
    }else{
        pontos.style.color = "black"
        pontos.innerHTML = pontosDeAtributos;
    }

    totalAtaque();

    resultado_forca.value = forca
    ataque.innerHTML = ataquePersonagem
}

function agilidadePersonagem(agilidade){

    defesaPorAgilidade = 0
    esquivaPorAgi = 0
    pontosGastosEmAgilidade = 0

    if(agilidade > 130){
        agilidade = 130
    }

    if(agilidade < 0){
        agilidade = 1
    }

    for(var i = 1; i < agilidade; i++){
        
        if((i + 1) % 5 == 0){
            defesaPorAgilidade++
        }
    
        if(i >= 1 && i <= 10){
            pontosDeAtributos -= 2
            pontosGastosEmAgilidade += 2
            esquivaPorAgi++
        }else if(i >=11 && i <= 20){
            pontosDeAtributos -= 3
            pontosGastosEmAgilidade += 3
            esquivaPorAgi++
        }else if(i >= 21 && i <= 30){
            pontosDeAtributos -= 4
            pontosGastosEmAgilidade += 4
            esquivaPorAgi++
        }else if(i >= 31 && i <= 40){
            pontosDeAtributos -= 5
            pontosGastosEmAgilidade += 5
        }else if(i >= 41 && i <=50){
            pontosDeAtributos -= 6
            pontosGastosEmAgilidade += 6
            esquivaPorAgi++
        }else if(i >= 51 && i <= 60){
            pontosDeAtributos -= 7
            pontosGastosEmAgilidade += 7
            esquivaPorAgi++
        }else if(i >= 61 && i <= 70){
            pontosDeAtributos -= 8
            pontosGastosEmAgilidade += 8
            esquivaPorAgi++
        }else if(i >= 71 && i <= 80){
            pontosDeAtributos -= 9
            pontosGastosEmAgilidade += 9
            esquivaPorAgi++
        }else if(i >= 81 && i <= 90){
            pontosDeAtributos -= 10
            pontosGastosEmAgilidade += 10
            esquivaPorAgi++
        }else if(i >= 91 && i <= 99){
            pontosDeAtributos -= 11
            pontosGastosEmAgilidade += 11
            esquivaPorAgi++
        }else if(i >= 100 && i <= 104){
            pontosDeAtributos -= 16
            pontosGastosEmAgilidade += 16
            esquivaPorAgi++
        }else if(i >= 105 && i <= 109){
            pontosDeAtributos -= 20
            pontosGastosEmAgilidade += 20
            esquivaPorAgi++
        }else if(i >= 110 && i <= 114){
            pontosDeAtributos -= 24
            pontosGastosEmAgilidade += 24
            esquivaPorAgi++
        }else if(i >= 115 && i <= 120){
            pontosDeAtributos -= 28
            pontosGastosEmAgilidade += 28
            esquivaPorAgi++
        }else if(i >= 121 && i <= 125){
            pontosDeAtributos -= 32
            pontosGastosEmAgilidade += 32
            esquivaPorAgi++
        }else if(i >= 126 && i <= 129){
            pontosDeAtributos -= 36
            pontosGastosEmAgilidade += 36
            esquivaPorAgi++
        }
    }
    
    analisarNivel()

    if(pontosDeAtributos < 0){
        pontos.style.color = "red"
        pontos.innerHTML = pontosDeAtributos;
    }else{
        pontos.style.color = "black"
        pontos.innerHTML = pontosDeAtributos;
    }

    totalDefesa();
    totalEsquiva();
    resultado_agilidade.value = agilidade
    esquiva.innerHTML = esquivaPersonagem
    defesa.innerHTML = defesaPersonagem
}

function vitalidadePersonagem(vitalidade){

    defesaPorVit = 0
    defesaMagicaPorVit = 0
    pontosGastosEmVitalidade = 0

    if(vitalidade > 130){
        vitalidade = 130
    }

    if(vitalidade < 0){
        vitalidade = 1
    }

    for(var i = 1; i < vitalidade; i++){

        if((i + 1) % 5 == 0){
            defesaMagicaPorVit++
        }
    
        if(!((i + 1) % 2 == 0)){
            defesaPorVit++
        }
    
        if(i >= 1 && i <= 10){
            pontosDeAtributos -= 2
            pontosGastosEmVitalidade += 2
        }else if(i >=11 && i <= 20){
            pontosDeAtributos -= 3
            pontosGastosEmVitalidade += 3
        }else if(i >= 21 && i <= 30){
            pontosDeAtributos -= 4
            pontosGastosEmVitalidade += 4
        }else if(i >= 31 && i <= 40){
            pontosDeAtributos -= 5
            pontosGastosEmVitalidade += 5
        }else if(i >= 41 && i <=50){
            pontosDeAtributos -= 6
            pontosGastosEmVitalidade += 6
        }else if(i >= 51 && i <= 60){
            pontosDeAtributos -= 7
            pontosGastosEmVitalidade += 7
        }else if(i >= 61 && i <= 70){
            pontosDeAtributos -= 8
            pontosGastosEmVitalidade += 8
        }else if(i >= 71 && i <= 80){
            pontosDeAtributos -= 9
            pontosGastosEmVitalidade += 9
        }else if(i >= 81 && i <= 90){
            pontosDeAtributos -= 10
            pontosGastosEmVitalidade += 10
        }else if(i >= 91 && i <= 99){
            pontosDeAtributos -= 11
            pontosGastosEmVitalidade += 11
        }else if(i >= 100 && i <= 104){
            pontosDeAtributos -= 16
            pontosGastosEmVitalidade += 16
        }else if(i >= 105 && i <= 109){
            pontosDeAtributos -= 20
            pontosGastosEmVitalidade += 20
        }else if(i >= 110 && i <= 114){
            pontosDeAtributos -= 24
            pontosGastosEmVitalidade += 24
        }else if(i >= 115 && i <= 120){
            pontosDeAtributos -= 28
            pontosGastosEmVitalidade += 28
        }else if(i >= 121 && i <= 125){
            pontosDeAtributos -= 32
            pontosGastosEmVitalidade += 32
        }else if(i >= 126 && i <= 129){
            pontosDeAtributos -= 36
            pontosGastosEmVitalidade += 36
        }
    }

    analisarNivel()

    if(pontosDeAtributos < 0){
        pontos.style.color = "red"
        pontos.innerHTML = pontosDeAtributos;
    }else{
        pontos.style.color = "black"
        pontos.innerHTML = pontosDeAtributos;
    }

    totalDefesa();
    totalDefesaMagica();
    resultado_vitalidade.value = vitalidade
    defesam.innerHTML = defesaMagicaPersonagem
    defesa.innerHTML = defesaPersonagem
}

function inteligenciaPersonagem(inteligencia){

    defesaMagicaPorInt = 0
    ataqueMagicoPorInt = 0
    pontosGastosEmInteligencia = 0

    if(inteligencia > 130){
        inteligencia = 130
    }
    if(inteligencia < 0){
        inteligencia = 1
    }

    for(var i = 1; i< inteligencia; i++){

        if(i % 2 == 0){
            ataqueMagicoPorInt += 1
        }else{
            ataqueMagicoPorInt +=2
        }
    
        if(i >= 1 && i <= 10){
            pontosDeAtributos -= 2
            pontosGastosEmInteligencia += 2
            defesaMagicaPorInt++
        }else if(i >=11 && i <= 20){
            pontosDeAtributos -= 3
            pontosGastosEmInteligencia += 3
            defesaMagicaPorInt++
        }else if(i >= 21 && i <= 30){
            pontosDeAtributos -= 4
            pontosGastosEmInteligencia += 4
            defesaMagicaPorInt++
        }else if(i >= 31 && i <= 40){
            pontosDeAtributos -= 5
            pontosGastosEmInteligencia += 5
            defesaMagicaPorInt++
        }else if(i >= 41 && i <=50){
            pontosDeAtributos -= 6
            pontosGastosEmInteligencia += 6
            defesaMagicaPorInt++
        }else if(i >= 51 && i <= 60){
            pontosDeAtributos -= 7
            pontosGastosEmInteligencia += 7
            defesaMagicaPorInt++
        }else if(i >= 61 && i <= 70){
            pontosDeAtributos -= 8
            pontosGastosEmInteligencia += 8
            defesaMagicaPorInt++
        }else if(i >= 71 && i <= 80){
            pontosDeAtributos -= 9
            pontosGastosEmInteligencia += 9
            defesaMagicaPorInt++
        }else if(i >= 81 && i <= 90){
            pontosDeAtributos -= 10
            pontosGastosEmInteligencia += 10
            defesaMagicaPorInt++
        }else if(i >= 91 && i <= 99){
            pontosDeAtributos -= 11
            pontosGastosEmInteligencia += 11
            defesaMagicaPorInt++
        }else if(i >= 100 && i <= 104){
            pontosDeAtributos -= 16
            pontosGastosEmInteligencia += 16
            defesaMagicaPorInt++
        }else if(i >= 105 && i <= 109){
            pontosDeAtributos -= 20
            pontosGastosEmInteligencia += 20
            defesaMagicaPorInt++
        }else if(i >= 110 && i <= 114){
            pontosDeAtributos -= 24
            pontosGastosEmInteligencia += 24
            defesaMagicaPorInt++
        }else if(i >= 115 && i <= 120){
            pontosDeAtributos -= 28
            pontosGastosEmInteligencia += 28
            defesaMagicaPorInt++
        }else if(i >= 121 && i <= 125){
            pontosDeAtributos -= 32
            pontosGastosEmInteligencia += 32
            defesaMagicaPorInt++
        }else if(i >= 126 && i <= 129){
            pontosDeAtributos -= 36
            pontosGastosEmInteligencia += 36
            defesaMagicaPorInt++
        }
    }

    if(pontosDeAtributos < 0){
        pontos.style.color = "red"
        pontos.innerHTML = pontosDeAtributos;
    }else{
        pontos.style.color = "black"
        pontos.innerHTML = pontosDeAtributos;
    }

    totalDefesaMagica()
    totalAtaqueMagico()

    resultado_inteligencia.value = inteligencia
    defesam.innerHTML = defesaMagicaPersonagem
    ataquem.innerHTML = ataqueMagicoPersonagem
}

function destrezaPersonagem(destreza){

    ataqueMagicoPorDes = 0
    ataquePorDes = 0
    precisaoPorDes = 0

    if(destreza > 130){
        destreza = 130
    }
    if(destreza < 0){
        destreza = 1
    }

    for(var i = 1; i < destreza; i++){

        if((i + 1) % 5 == 0){
            ataqueMagicoPorDes += 1
            ataquePorDes += 1
        }
    
        if(i >= 1 && i <= 10){
            pontosDeAtributos -= 2
            pontosGastosEmDestreza += 2
            precisaoPorDes++
        }else if(i >=11 && i <= 20){
            pontosDeAtributos -= 3
            pontosGastosEmDestreza += 3
            precisaoPorDes++
        }else if(i >= 21 && i <= 30){
            pontosDeAtributos -= 4
            pontosGastosEmDestreza += 4
            precisaoPorDes++
        }else if(i >= 31 && i <= 40){
            pontosDeAtributos -= 5
            pontosGastosEmDestreza += 5
            precisaoPorDes++
        }else if(i >= 41 && i <=50){
            pontosDeAtributos -= 6
            pontosGastosEmDestreza += 6
            precisaoPorDes++
        }else if(i >= 51 && i <= 60){
            pontosDeAtributos -= 7
            pontosGastosEmDestreza += 7
            precisaoPorDes++
        }else if(i >= 61 && i <= 70){
            pontosDeAtributos -= 8
            pontosGastosEmDestreza += 8
            precisaoPorDes++
        }else if(i >= 71 && i <= 80){
            pontosDeAtributos -= 9
            pontosGastosEmDestreza += 9
            precisaoPorDes++
        }else if(i >= 81 && i <= 90){
            pontosDeAtributos -= 10
            pontosGastosEmDestreza += 10
            precisaoPorDes++
        }else if(i >= 91 && i <= 99){
            pontosDeAtributos -= 11
            pontosGastosEmDestreza += 11
            precisaoPorDes++
        }else if(i >= 100 && i <= 104){
            pontosDeAtributos -= 16
            pontosGastosEmDestreza += 16
            precisaoPorDes++
        }else if(i >= 105 && i <= 109){
            pontosDeAtributos -= 20
            pontosGastosEmDestreza += 20
            precisaoPorDes++
        }else if(i >= 110 && i <= 114){
            pontosDeAtributos -= 24
            pontosGastosEmDestreza += 24
            precisaoPorDes++
        }else if(i >= 115 && i <= 120){
            pontosDeAtributos -= 28
            pontosGastosEmDestreza += 28
            precisaoPorDes++
        }else if(i >= 121 && i <= 125){
            pontosDeAtributos -= 32
            pontosGastosEmDestreza += 32
            precisaoPorDes++
        }else if(i >= 126 && i <= 129){
            pontosDeAtributos -= 36
            pontosGastosEmDestreza += 36
            precisaoPorDes++
        }
    }

    if(pontosDeAtributos < 0){
        pontos.style.color = "red"
        pontos.innerHTML = pontosDeAtributos;
    }else{
        pontos.style.color = "black"
        pontos.innerHTML = pontosDeAtributos;
    }

    totalAtaque();
    totalAtaqueMagico();
    totalPrecisao();
    resultado_destreza.value = destreza
    precisao.innerHTML = precisaoPersonagem
    ataque.innerHTML = ataquePersonagem
    ataquem.innerHTML = ataqueMagicoPersonagem
}

function adicionarSorte(){
    console.log(sorte)

    if(sorte > 130){
        resultado_sorte.value = 130
        return
    }

    if(sorte >= 1 && sorte <= 10){
        sorte +=1
        pontosDeAtributos -= 2
        pontosGastosEmSorte += 2
    }else if(sorte >=11 && sorte <= 20){
        sorte +=1
        pontosDeAtributos -= 3
        pontosGastosEmSorte += 3
    }else if(sorte >= 21 && sorte <= 30){
        sorte +=1
        pontosDeAtributos -= 4
        pontosGastosEmSorte += 4
    }else if(sorte >= 31 && sorte <= 40){
        sorte +=1
        pontosDeAtributos -= 5
        pontosGastosEmSorte += 5
    }else if(sorte >= 41 && sorte <=50){
        sorte +=1
        pontosDeAtributos -= 6
        pontosGastosEmSorte += 6
    }else if(sorte >= 51 && sorte <= 60){
        sorte +=1
        pontosDeAtributos -= 7
        pontosGastosEmSorte += 7
    }else if(sorte >= 61 && sorte <= 70){
        sorte +=1
        pontosDeAtributos -= 8
        pontosGastosEmSorte += 8
    }else if(sorte >= 71 && sorte <= 80){
        sorte +=1
        pontosDeAtributos -= 9
        pontosGastosEmSorte += 9
    }else if(sorte >= 81 && sorte <= 90){
        sorte +=1
        pontosDeAtributos -= 10
        pontosGastosEmSorte += 10
    }else if(sorte >= 91 && sorte <= 99){
        sorte +=1
        pontosDeAtributos -= 11
        pontosGastosEmSorte += 11
    }else if(sorte >= 100 && sorte <= 104){
        sorte +=1
        pontosDeAtributos -= 16
        pontosGastosEmSorte += 16
    }else if(sorte >= 105 && sorte <= 109){
        sorte +=1
        pontosDeAtributos -= 20
        pontosGastosEmSorte += 20
    }else if(sorte >= 110 && sorte <= 114){
        sorte +=1
        pontosDeAtributos -= 24
        pontosGastosEmSorte += 24
    }else if(sorte >= 115 && sorte <= 120){
        sorte +=1
        pontosDeAtributos -= 28
        pontosGastosEmSorte += 28
    }else if(sorte >= 121 && sorte <= 125){
        sorte +=1
        pontosDeAtributos -= 32
        pontosGastosEmSorte += 32
    }else if(sorte >= 126 && sorte <= 129){
        sorte +=1
        pontosDeAtributos -= 36
        pontosGastosEmSorte += 36
    }

    if(pontosDeAtributos < 0){
        pontos.style.color = "red"
        pontos.innerHTML = pontosDeAtributos;
    }else{
        pontos.style.color = "black"
        pontos.innerHTML = pontosDeAtributos;
    }
    resultado_sorte.value = sorte
}
