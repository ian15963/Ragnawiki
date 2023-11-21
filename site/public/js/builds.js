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
      color: "#716add",
      showDenyButton: true,
      confirmButtonText: "Deletar",
      denyButtonText: `Cancelar`,
      focusConfirm: false
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
        Swal.fire("Build deletada com sucesso", "", "success").then(() => {
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