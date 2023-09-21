// invest now btn
const invest_btn = document.getElementById("now");

invest_btn.addEventListener("click", (e) => {

	const get_company_name = document.getElementById("company_name").innerHTML;
	window.location.href = `Graph.jsp?name=${get_company_name}`;
})
const percentage = {

	"Apple": [3, 5, 10]
	,
	"Adobe": [2.30, 3.30, 9.30]
	,
	"Amazon": [2.60, 3.90, 9.80, "selected"]
	,
	"Google": [2.70, 3.70, 9.70]
	,
	"Freshworks": [1.9, 3.20, 8.]
	,
	"Microsoft": [2.50, 3.50, 9.50]
	,
	"Qualcom": [2.65, 3.65, 9.55]
	,
	"Tesla": [2.75, 3.80, 9.90]
	,
	"Texas": [2.15, 3.25, 9.88]
	,
	"Shopify": [2, 3, 6]

}

function investedamount() {

	const investedamount = document.getElementById('SIP').value;

	document.getElementById("amount").innerHTML = investedamount;

	const company_value = document.querySelector('input[name="years"]:checked').value;
	const company_id = document.querySelector('input[name="years"]:checked').getAttribute("id");

	console.log((investedamount * company_value).toFixed(2) + "valuesss");

	display_amt.innerHTML = ` &#x20B9; ${(investedamount * company_value)} *`;

	document.querySelector(".number_of_years").innerHTML = `(in ${company_id}yrs)`

	return Number(investedamount);

}

document.getElementById('SIP').addEventListener('input', (e) => {
	investedamount();
	console.log(investedamount().toFixed(2));
}
)

const radio_button = document.querySelectorAll('input[type="radio"]');

console.log(radio_button);

radio_button.forEach((btn) => {

	btn.addEventListener("click", (e) => {

		const company_id = document.querySelector('input[name="years"]:checked').getAttribute("id");

		document.getElementById("display_amt").innerHTML;

		console.log((investedamount() * btn.value).toFixed(2));
		document.querySelector(".number_of_years").innerHTML = `(in ${company_id}yrs)`;

	});

});

//   while click on the image 

const all_image = document.querySelectorAll(".row_images");

all_image.forEach((btn) => {

	btn.addEventListener("click", function() {
		document.querySelector(".selected").classList.remove("selected");

		this.classList.add("selected");

		const get_key = btn.getAttribute("id");

		Object.keys(percentage).find((obj) => {

			if (get_key == obj) {

				document.getElementById("company_name").innerHTML = obj;

				radio_button[0].value = percentage[obj][0];
				radio_button[1].value = percentage[obj][1];
				radio_button[2].value = percentage[obj][2];

			}

		})


		investedamount()


		console.log(investedamount());


	});
});




