<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>

<html>


<head>
    <title>File Cyber Crime Complain</title>
    <link rel='stylesheet' href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link href="css/welcome.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>


<body>
<head>
        <script type="text/javascript">
            function ack(){
                alert("Your Complaint Acknowledgement Number is 5")
            }
        </script>
    </head>
    <div class="section section-white" id="Contact">
        <div class="container">
            <div class="section-heading">
                <h3 align="center" style="font-size:40px"><b><u>Passport Application Form</u></b></h3><br>
            </div>
            <div class="para">Fill in all the details precisely.<br>We appreciate your co-operation.</div>
            <form:form action="savePassportVerification" onsubmit="ack()" modelAttribute="applyForPassport" method="post">
            <form:hidden path="id" />
                <form:input type="text" placeholder="Your Name..." path="fullname"/>
                <form:input type="text" placeholder="Nationality" path="nationality"/>
                <form:input type="text" placeholder="Date of Birth" path="dob"/>
                <form:input type="text" placeholder="Gender" path="gender"/>
                <form:input type="text" placeholder="Father's Name" path="fathersname"/>
                <form:input type="text" placeholder="Mother's Name" path="mothersname"/>
                <form:input type="text" placeholder="Place of Birth" path="placeofbirth"/>
                <form:input type="text" placeholder="Country Code" path="countrycode"/>
                <input type="submit" value="File Application" />
            </form:form>
            <br><br>
            <div class="para">An acknowledgment will be sent your way shortly.</div>
             <p>
			<a href="${pageContext.request.contextPath}/home">Back to Home</a>
		</p>
        </div>
    </div>
   

</body>