const select = document.getElementById("category");

select.addEventListener("change", () => {
  const value = select.options[select.selectedIndex].value;
  console.log(value);

  switch (value) {
    case "kind":
      changeURL("/category/kind");
      break;
    case "brand":
      changeURL("/category/brand");
      break;
    default:
      changeURL("/404");
  }

  function changeURL(url) {
    window.location.href = url;
  }
});
