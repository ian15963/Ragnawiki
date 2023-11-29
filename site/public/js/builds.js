var buildsUsuario = []
var metricas = []
var famousClasses = []
var famousHability = []
var allClasses = []
var navbarElements = document.querySelectorAll(".navbar_element");

navbarElements.forEach(x => {
  x.addEventListener("mousedown", () => {
    x.style.transform = `scale(0.9)`
    x.style.transition = `transform 0.5s`
  })
})
navbarElements.forEach(x => {
  x.addEventListener("mouseout", () => {
    x.style.transform = `none`
  })
})
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

}

const getMetricas = () => {

    fetch(`/build/get/metricas/${classeId}`,{
      method: "GET",
      headers: {
        "Content-Type": "application/json"
      }
    }).then(data => {
      if(data.ok){
        data.json().then(json => {
          console.log(json.famousClass[0])
          metricas = json.metricas[0][0]
          famousClasses = json.famousClass
          // famousHability = json.famousHability
        })
      }
    })

}

var classeId = 25;

setTimeout(()=>{

    for(var i = 0; i < buildsUsuario.length; i++){
        builds.innerHTML += `<div class="build">
        <div class="icons">
          <span class="material-symbols-outlined edit" onclick="build(this)" value="${buildsUsuario[i].idBuild}">edit</span>
          <span class="material-symbols-outlined delete" onclick="deleteBuild(this)" value="${buildsUsuario[i].idBuild}">delete</span>
        </div>
          <img style="cursor: pointer;" onclick="build(this)" src="../assets/imgs/classes/${buildsUsuario[i].nomeClasse}sprite.png" value="${buildsUsuario[i].idBuild}"/>
          <p>${buildsUsuario[i].nomeBuild}</p>
        </div>`
    }
    usePagination()

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

},700)

const newBuild = () =>{
  window.location = `/build/newBuild`
}

const build = (valor) =>{

    var idBuild = valor.getAttribute("value");
    window.location = `/build/${idBuild}`
}

const deleteBuild = (valor) =>{

  var idBuild = valor.getAttribute("value");

  deleteSuccessfully(idBuild);
  
}

const deleteSuccessfully = (idBuild) =>{
  Swal.fire({
      title: `Tem certeza que deseja deletar sua build?`,
      width: 500,
      padding: "3em",
      color: "#00259C",
      showDenyButton: true,
      confirmButtonText: "Deletar",
      confirmButtonColor: "#00259C",
      denyButtonText: `Cancelar`,
      focusConfirm: false,
      imageUrl: "../assets/RO_Poring2911.webp"
    }).then((result) => {
      if(result.isConfirmed){
        fetch(`/build/delete/${idBuild}`, {
          method: "DELETE",
          headers: {
            'Content-Type': 'application/json'
          }
        }).then(() =>{
          console.log("build deletada")
        })
        Swal.fire(
          {title: "Build deletada com sucesso", 
          icon: "success", 
          confirmButtonColor: "#00259C"
        }).then(() => {
          window.location = "/builds"

        }
        )
      }
    }
    );
}


const mostrarBuild = () =>{

    all_builds.style.display = `block`
    all_informations.style.display = `none`

}

const visaoGeral = () =>{

    all_builds.style.display = `none`
    all_informations.style.display = `block`

    var metricasDosAtributos = document.getElementById("metricas_atributos")
    var metricasClasse = document.getElementById("metricas_classes");

    var graficoMetricas = new Chart(metricasDosAtributos, {
      type: "bar",
      data: {
              labels: ['Força', 'Agilidade', 'Vitalidade', 'Inteligencia', 'Destreza', 'Sorte'],
              datasets: [{
                  label: 'Quantidade de classes com foco em um atributo',
                  data: [1,1,1,1,1,1],
                  backgroundColor: "#3349ED"
              }]
      },
      options: {
        scales: {
          x: {
            ticks: {
              font: {
                size: 14,
              }
            }
          },
          y: {
            ticks: {
              font: {
                size: 14
              }
            }
          }
        },
        plugins: {
          title: {
            display: true,
            text: 'Atributos mais utilizados por build',
            color: "black",
            font: {
              size: 20
            }
          }
        }
      }
    })

    var graficoClasses = new Chart(metricasClasse, {
        type: "bar",
        data: {
          labels: [],
          datasets: [{
            label: "Classes mais populares",
            data: [],
            backgroundColor: "#3349ED"
          }]
        },
        options: {
          scales: {
            x: {
              ticks: {
                font: {
                  size: 14,
                }
              }
            },
            y: {
              ticks: {
                font: {
                  size: 14
                }
              }
            }
          },
          plugins: {
            title: {
              display: true,
              text: 'Classes mais utilizadas',
              color: "black",
              font: {
                size: 20
              }
            }
          }
        }
    })

      for(var i = 0; i < famousClasses.length; i++){

        graficoClasses.data.labels.push(famousClasses[i].nome.replaceAll("_", " "))
        graficoClasses.data.datasets[0].data.push(famousClasses[i].totalClasse);
        graficoClasses.update();

        
      }

      graficoMetricas.data.datasets[0].data[0] = metricas.totalForca
      graficoMetricas.data.datasets[0].data[1] = metricas.totalAgilidade
      graficoMetricas.data.datasets[0].data[2] = metricas.totalVitalidade
      graficoMetricas.data.datasets[0].data[3] = metricas.totalInteligencia
      graficoMetricas.data.datasets[0].data[4] = metricas.totalDestreza
      graficoMetricas.data.datasets[0].data[5] = metricas.totalSorte
      graficoMetricas.update()  
      // main.innerHTML += ``

}

const deslogar = () => {

  limparSessao()

}

const usePagination = () =>{
    const paginationNumbers = document.getElementById("pagination-numbers");
    const paginatedList = document.getElementById("builds");
    const listItems = paginatedList.querySelectorAll(".build");
    const nextButton = document.getElementById("next-button");
    const prevButton = document.getElementById("prev-button");
    
    console.log(listItems)
    const paginationLimit = 6;
    const pageCount = Math.ceil(listItems.length / paginationLimit);
    let currentPage = 1;
    
    const disableButton = (button) => {
      button.classList.add("disabled");
      button.setAttribute("disabled", true);
    };
    
    const enableButton = (button) => {
      button.classList.remove("disabled");
      button.removeAttribute("disabled");
    };
    
    const handlePageButtonsStatus = () => {
      if (currentPage === 1) {
        disableButton(prevButton);
      } else {
        enableButton(prevButton);
      }
    
      if (pageCount === currentPage) {
        disableButton(nextButton);
      } else {
        enableButton(nextButton);
      }
    };
    
    const handleActivePageNumber = () => {
      document.querySelectorAll(".pagination-number").forEach((button) => {
        button.classList.remove("active");
        const pageIndex = Number(button.getAttribute("page-index"));
        if (pageIndex == currentPage) {
          button.classList.add("active");
        }
      });
    };
    
    const appendPageNumber = (index) => {
      const pageNumber = document.createElement("button");
      pageNumber.className = "pagination-number";
      pageNumber.innerHTML = index;
      pageNumber.setAttribute("page-index", index);
      pageNumber.setAttribute("aria-label", "Page " + index);
    
      paginationNumbers.appendChild(pageNumber);
    };
    
    const getPaginationNumbers = () => {
      for (let i = 1; i <= pageCount; i++) {
        appendPageNumber(i);
      }
    };
    
    const setCurrentPage = (pageNum) => {
      currentPage = pageNum;
    
      handleActivePageNumber();
      handlePageButtonsStatus();
      
      const prevRange = (pageNum - 1) * paginationLimit;
      const currRange = pageNum * paginationLimit;
    
      listItems.forEach((item, index) => {
        item.classList.add("hidden");
        if (index >= prevRange && index < currRange) {
          item.classList.remove("hidden");
        }
      });
    };
    
      prevButton.addEventListener("click", () => {
        setCurrentPage(currentPage - 1);
      });
    
      nextButton.addEventListener("click", () => {
        setCurrentPage(currentPage + 1);
      });
    
      getPaginationNumbers()
      setCurrentPage(1)

      document.querySelectorAll(".pagination-number").forEach((button) => {
          const pageIndex = Number(button.getAttribute("page-index"));
          console.log(button, pageIndex)
    
        if (pageIndex) {
          button.addEventListener("click", () => {
            setCurrentPage(pageIndex);
          });
        }
      });


}