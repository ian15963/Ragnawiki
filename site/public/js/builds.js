var buildsUsuario = []

const getAllBuilds = () =>{

    var idUsuario = sessionStorage.getItem("id");

    fetch(`/build/getAll/${idUsuario}`, {
        method: "GET",
        headers: {
            "Content-Type": "application/json"
        }
    }).then(data => {
        if(data.ok){
            data.json().then(json => {
                buildsUsuario = json.builds
            })
        }
    })

}

setTimeout(()=>{

    for(var i = 0; i < buildsUsuario.length; i++){
        builds.innerHTML += `<div class="build" onclick="build(this)" id="build_${buildsUsuario[i].idBuild}" value="${buildsUsuario[i].idBuild}">
            <img src="../assets/imgs/classes/${buildsUsuario[i].nomeClasse}sprite.png"/>
            <h2>${buildsUsuario[i].nomeBuild}</h2>
        </div>`
    }
},1000)

const build = (valor) =>{

    var idBuild = valor.getAttribute("value");
    sessionStorage.setItem("idBuild", idBuild)

    window.location = "/build/build.html"

}