
const optionMenu = document.querySelector(".select-menu"),
    selectBtn = optionMenu.querySelector(".select-btn"),
    options = optionMenu.querySelectorAll(".option"),
    sBtn_text = optionMenu.querySelector(".sBtn-text");

// Lấy giá trị đã chọn từ localStorage
const storedOption = localStorage.getItem("selectedOption");
if (storedOption) {
    sBtn_text.innerText = storedOption;
}

selectBtn.addEventListener("click", () => optionMenu.classList.toggle("active"));

options.forEach(option => {
    option.addEventListener("click", () => {
        let selectedOption = option.querySelector(".option-text").innerText;
        sBtn_text.innerText = selectedOption;

        // Lưu giá trị đã chọn vào localStorage
        localStorage.setItem("selectedOption", selectedOption);

        optionMenu.classList.remove("active");
    });
});
