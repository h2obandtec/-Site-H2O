<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebH2O.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>H2O Web</title>
    <link href="/assets/css/style.css" rel="stylesheet" />
    
</head>
<body>

    <div class="container">
      <div class="row">
        <div class="col-md-offset-5 col-md-3">
            <div class="form-login">   
                               
                  <h4>LOGIN</h4>
                  <input type="text" id="userName" class="form-control input-sm chat-input" placeholder="EMAIL" />
                  <br />
                  <input type="text" id="userPassword" class="form-control input-sm chat-input" placeholder="SENHA" />
                  <br />
                

                
               <div class="wrapper">
                  <span class="group-btn">    
                      
                    <a href="#" class="btn btn-primary btn-md"> LOGIN <i class="fa fa-sign-in"></i></a>
                 </span>
               </div>
                <div class="wrapper">
                  <span class="group-btn">     
                    <a href="#" class="btn btn-primary btn-md"> CADASTRE-SE <i class="fa fa-sign-in"></i></a>
                 </span>
               </div>
                     
            </div>    
        </div>
     </div>
    </div>

</body>
</html>