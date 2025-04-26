document.addEventListener("turbo:load", function () {
  console.log("custom.js loaded!");

  // --- Film Search ---
  const filmSearchInput = document.getElementById('filmSearch');
  console.log("filmSearchInput found:", filmSearchInput);

  if (filmSearchInput) {
    filmSearchInput.addEventListener('input', function () {
      const searchValue = filmSearchInput.value.toLowerCase();
      const rows = document.querySelectorAll('#filmsTable tbody tr');
      console.log("film rows:", rows);

      rows.forEach(row => {
        const rowText = row.textContent.toLowerCase();
        row.style.display = rowText.includes(searchValue) ? '' : 'none';
      });
    });
  }

  // --- Director Filter ---
  const relationshipFilterSelect = document.getElementById('relationshipFilter');
  console.log("relationshipFilterSelect found:", relationshipFilterSelect);

  if (relationshipFilterSelect) {
    relationshipFilterSelect.addEventListener('change', function () {
      const selectedValue = relationshipFilterSelect.value;
      const rows = document.querySelectorAll('#directorsTable tbody tr');
      console.log("director rows:", rows);

      rows.forEach(row => {
        const relationshipStatus = row.children[3].textContent.trim();
        row.style.display = (selectedValue === "" || relationshipStatus === selectedValue) ? '' : 'none';
      });
    });
  }
});
