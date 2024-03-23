window.onload = () => {
  const baseUrl ="https://3.17.208.55:8000" 

  const listBtn = document.querySelector("#listBtn")
  const crustaceanSelect = document.querySelector("#crustaceanSelect")
  const crustaceanContainer = document.querySelector("#crustaceanContainer")

  // Generate options for the user dropdown dynamically
  for (let i = 1; i <= 100; i++) {
      const option = document.createElement('option');
      option.value = i;
      option.text = i;
      crustaceanSelect.appendChild(option);
  }

  const doFetch = async (url) => {
    const result = await fetch(url)
    const resultJson = await result.json()
    return resultJson
  }

  const getCrustaceans = async () => {
    const url = `${baseUrl}/all`
    const fetchResult = await doFetch(url)
    console.log("Fetched: " + JSON.stringify(fetchResult))
    const crustaceans = fetchResult.crustaceans
    console.log("Crustaceans: ", crustaceans); 
    crustaceans.forEach( p => createHtmlCrustacean(p))
  }

  const getCrustacean = async (id) => {
    const url = `${baseUrl}/${id}` 
    const fetchResult = await doFetch(url)
    const crustacean = fetchResult.crustacean
    createHtmlCrustacean(crustacean)
  }

  const removeCrustaceans = () => {
    while(crustaceanContainer.firstChild) {
      crustaceanContainer.removeChild(crustaceanContainer.firstChild)
    }
  }

  const createHtmlCrustacean = (crustacean) => {
    const div = document.createElement("div")
    const h3 = document.createElement("h3")
    const p1 = document.createElement("p")
    const p2 = document.createElement("p")

    h3.innerText = `Name: ${crustacean[1]}`
    p1.innerText = `Place of Origin: ${crustacean[2]}`
    p2.innerText = `Fun Fact: ${crustacean[3]}`

    div.appendChild(h3)
    div.appendChild(p1)
    div.appendChild(p2)

    div.className = "item"

    crustaceanContainer.appendChild(div)
  }


  crustaceanSelect.addEventListener("change" ,(e) => {
      removeCrustaceans()
      getCrustacean(e.target.value)
    })
  
  listBtn.addEventListener("click" ,() => {
      removeCrustaceans()
      getCrustaceans()
    })
}