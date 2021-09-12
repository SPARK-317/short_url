
const ajaxResults = () => {
  document.querySelector("#new_long").addEventListener("ajax:complete", (event) => {
    // console.log(event.detail[0].response);
    const response = event.detail[0].response;
    const result = document.querySelector("#result")
    result.innerText = response;
    result.className = "";
    if (response == "INVALID URL") {
      result.classList.add("alert-danger");
    }
    else {
      result.classList.add("alert-success");
    }
  });
};

export { ajaxResults };