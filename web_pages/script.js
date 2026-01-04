async function updateSensors() {
    try
    {

        const response = await fetch('/status.xml?t=' + Date.now());
        const text = await response.text();


        const xml = new DOMParser().parseFromString(text, "text/xml");


        ['sens1', 'sens2', 'voltage'].forEach(id => {
            const node = xml.querySelector(id);
            if (node) {
                const element = document.getElementById(id);
                const value = parseFloat(node.textContent);

                element.textContent = node.textContent;

                if (value > 1500)
                {
                    element.style.color = "red";
                }
                else
                {
                    element.style.color = "green";
                }
            }
        });

    }
    catch (e)
    {
        console.error('Ошибка обновления:', e);
    }
}


window.onload = () => {
    updateSensors();
    setInterval(updateSensors, 500);
};
