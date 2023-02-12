const checkboxes = document.querySelectorAll("input[type='checkbox']");

checkboxes.forEach(checkbox => {
  checkbox.addEventListener("click", function() {
    console.log(`${checkbox.id} was ${this.checked ? "checked" : "unchecked"}`);
  });
});
