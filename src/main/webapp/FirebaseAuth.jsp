<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="Assets/css/login.css">
    <script src="https://www.gstatic.com/firebasejs/8.6.8/firebase-app.js"></script>
    <script src="https://www.gstatic.com/firebasejs/8.6.8/firebase-auth.js"></script>
    <script src="https://www.gstatic.com/firebasejs/8.6.8/firebase-database.js"></script>
</head>
<body>
<div class="Log">
        <div class="Loginimg">
            <h1>
Invest & SIP<br>
                in Stocks, ETFs, FDs<br>
                Direct plan Mutual Funds
            </h1>
            <img class="lo" src="Assets/images/Login Img.jpg">

        </div>
        <div id="mobileenter" class="phone">
            <h2>Verify your Phone</h2>
            <!-- <label for="country">Choose your country:</label>
<select id="country">
  <option value="volvo">hello</option>
  <option value="saab">micseting</option>
  <option value="opel">Opel</option>
  <option value="audi">Audi</option>
</select>
        <br> -->
            <form>
                <div id="mobilediv">
                    <input id="mobilenum" class="phonenumber" type="number" name="phone"
                        placeholder="Enter your mobile number">
                </div>
                <br>

                <div class="captcha" id="recaptcha-container"></div>

                <p id="success" style="color:green" ;></p>
                <p id="error" style="color:red" ;></p>
                <button id="continue" onclick="login()" type="button" class="btn">Continue</button>
                <p>By clicking continue, you agree to our Terms & Conditions.</p>
                <h4>InvestX is secure and private.</h4>

            </form>
            <br>
            <!-- <a id="login" href="/Pages/indexx.html">Login</a> -->
        </div>
        <div id="otpenter" class="otp">
            <h2> Enter OTP </h2>
            <h4>We’ve sent you an SMS with a 6-digit verification code</h4>
            <form>
                <div id="otpdiv">
                    <input id="otpvalue" class="phonenumber" type="number" name="Otp" placeholder="Enter your OTP">
                </div>
                <p id="errorotp" style="color:red" ;></p>
                <button onclick="verify()" class="btn" type="button">Verify & Login</button>
                <h5>InvestX is secure and private.</h5>
        </div>

        <script>
            document.getElementById("otpenter").style.visibility = "hidden";  
        </script>

        <script>//JavaScript Code
            window.onload = function () {
                render();
            }

            const firebaseConfig = {
                apiKey: "AIzaSyDeShZJE8sgsJPqE16Q5IsOanm8Hnqz-4w",
                authDomain: "investx-38bc4.firebaseapp.com",
                projectId: "investx-38bc4",
                storageBucket: "investx-38bc4.appspot.com",
                messagingSenderId: "1025638660804",
                appId: "1:1025638660804:web:428ce653e8e2de1084a791",
                measurementId: "G-PPGTRQJ3TX"
            };

            firebase.initializeApp(firebaseConfig);
            const auth = firebase.auth()
            const database = firebase.database()
            const database_ref = database.ref()

            function render() {
                window.recaptchaVerifier = new firebase.auth.RecaptchaVerifier('recaptcha-container');
                recaptchaVerifier.render();
            }

            function login() {
                const mobilenum = document.getElementById("mobilenum").value
                console.log(mobilenum)
                const phonenumber = `+91${  mobilenum}`;
                console.log(phonenumber)
                firebase.auth().signInWithPhoneNumber(phonenumber, window.recaptchaVerifier).then((confirmResult) => {
                    window.confirmResult = confirmResult;
                    coderesult = confirmResult;
                    console.log(coderesult);
                    document.getElementById("success").innerHTML = "OTP has successfully generated."
                    const a = document.getElementById("mobileenter");
                    a.remove();
                    const b = document.getElementById("otpenter").style.visibility = "visible";

                }).catch((error) => {
                    document.getElementById("error").innerHTML = error.message;
                })

            }

            function verify() {
                const code = document.getElementById("otpvalue").value;
                coderesult.confirm(code).then((result) => {
                    const {user} = result;
                    window.location.replace("../logged.html");
                }).catch((error) => {
                    document.getElementById("errorotp").innerHTML = error.message;
                })
            }

            const btn = document.getElementById("continue")

            btn.addEventListener("click", () => {

                const mobile_num = document.getElementById("mobilenum")

                const profile_arr = JSON.parse(localStorage.getItem("profile_details"))
                const user_arr = JSON.parse(localStorage.getItem("arr"))

                profile_arr.mobile_number = mobile_num.value

                localStorage.setItem("profile_details", JSON.stringify(profile_arr))

                const user = user_arr.find((obj) => {

        if (profile_arr.user_email === obj.email) {
            obj.mob_num = mobile_num.value
            localStorage.setItem("arr", JSON.stringify(user))

        }

    })

                 window.location.href="Explore.jsp"

            })
        </script>
</body>
</html>