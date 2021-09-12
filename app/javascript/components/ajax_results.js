
const ajaxResults = () => {
  document.querySelector("#new_long").addEventListener("ajax:complete", (event) => {
    // console.log(event.detail[0].response);
    const response = event.detail[0].response;
    document.querySelector("#result").innerText = response;
  });
};

export { ajaxResults };