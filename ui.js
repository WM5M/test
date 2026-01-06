
document.addEventListener("DOMContentLoaded", () => {
    console.log("Kobra DUI Loaded");

    window.addEventListener("message", (event) => {
        const data = event.data;

        if (data.action === "updateElements") {
            renderMenu(data.menu);
        }
    });
});

function renderMenu(menu) {
    const container = document.getElementById("menu-container");
    container.innerHTML = "";

    menu.forEach((el, index) => {
        const row = document.createElement("div");
        row.className = "menu-row";

        const label = document.createElement("span");
        label.className = "menu-label";
        label.textContent = el.label || "Unknown";

        row.appendChild(label);

        // BUTTON
        if (el.type === "button") {
            row.classList.add("menu-button");
        }

        // INPUT FIELD
        if (el.type === "input") {
            const field = document.createElement("input");
            field.type = "text";
            field.className = "kobra-input";
            field.value = el.value || "";

            field.addEventListener("input", () => {
                fetch(`https://${GetParentResourceName()}/ui_input_update`, {
                    method: "POST",
                    headers: { "Content-Type": "application/json" },
                    body: JSON.stringify({ index: index, value: field.value })
                });
            });

            field.addEventListener("keydown", (ev) => {
                if (ev.key === "Enter") {
                    fetch(`https://${GetParentResourceName()}/ui_input_enter`, {
                        method: "POST",
                        headers: { "Content-Type": "application/json" },
                        body: JSON.stringify({ index: index, value: field.value })
                    });
                }
            });

            row.appendChild(field);
        }

        container.appendChild(row);
    });
}
