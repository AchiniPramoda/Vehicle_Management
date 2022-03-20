<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

	<html lang="en">
  <head>
<style>   
Body {  
  background-image: url(images/images.jpg);
   font-family: Calibri, Helvetica, sans-serif;  
   max-width: 500px;
   margin: auto;
   text-algin:center;
   background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}  
h1{
 font-size: 35px;
  font-weight: 600;
  text-align: center;
  line-height: 80px;
  color: #fff;

  background: linear-gradient(-135deg, #e83e8c, #730b0b);
}
button {   
		width: 40%;   
        background-color:#730b0b;    
        color: black;   
        padding: 10px;   
        margin: 13px;
        display: inline-block;   
        cursor: pointer; 
        border: 1px solid black;
        border-radius: 25px;  
         }   
 input[type=text], input[type=password] {   
        width: 90%;   
        margin: 8px 12px;  
        padding: 12px 20px;   
        display: inline-block;   
        border: 1px solid lightgrey;
        border-radius: 25px;   
        box-sizing: border-box;   
    }  
 button:hover {   
        opacity: 0.7;   
    }   
  .cancelbtn {   
        width: auto;   
        padding: 10px 10px;  
        margin: 10px 5px;  
    }   
        
     
 .container { 
   		margin-top:60px; 
        padding: 25px;   
        background:#E1D6DB;  
        max-width:90%;
        border: 2px solid black;  
        box-shadow: 0 0 10px #000;
        opacity: ;
      
        
        
    } 
    </style>
</head>

<body>
  
       
	<form action="login" method="post">
	 <div class="container">   
	<h1> User Login </h1>
	
    <label>Username  </label><br>   
	<input type="text"  class="form-control"  name="username"   placeholder="Enter your username" required><br>
	<label>Password  </label>   
	<br><input type="password"  class="form-control"  name="password" placeholder="Enter your password"  required><br>
		
                <input type="checkbox" class="form-check-input" id="login_check">
                <label class="form-check-label" for="login_check">Stay signed in</label>
                <a href="customerinsert.jsp"></a><br>
         
              <button type="submit" name="submit" class="btn btn-primary" onclick="validate();">LOG IN</button> 
              <button type="submit" class="btn btn-outline-primary" onclick="document.forms[0].action = 'customerinsert.jsp'; return true;">SIGN UP</a></button></button>
       
		</div>
		</form>
		</body>
		</html>