<?php 
    
    include 'form_group.php';
    
    if(!empty($_POST['input_email']) && !empty($_POST['input_password'])){
        $password = password_hash($_POST['input_password'], PASSWORD_BCRYPT);
        if($pagina == 'registrarse'){
            
            $register_user = [
                'email' => $_POST['input_email'],
                'account_pass' => $password
            ];
            $register_visit = [
                'email' => $_POST['input_email']
            ];
            $signlog->insert($register_user, $register_visit, '');

            $student_fields = ['email', 'account_pass'];
            $student_conditions = ['email =' => "'{$_POST['input_email']}'"];
            $student_results = $signlog->consult($student_fields, $student_conditions);

            if(password_verify($_POST['input_password'], $student_results['account_pass'])){
                $_SESSION['student_email'] = $student_results['email'];
                header('Location: ?p=unidades');
            }

        }else{
            $student_fields = ['email', 'account_pass'];
            $student_conditions = ['email =' => "'{$_POST['input_email']}'"];
            $student_results = $signlog->consult($student_fields, $student_conditions);

            if(password_verify($_POST['input_password'], $student_results['account_pass'])){

                $register_visit = [
                    'email' => $_POST['input_email']
                ];
                $signlog->insert(null, $register_visit, 'visit');

                $_SESSION['student_email'] = $student_results['email'];
                header('Location: ?p=unidades');
            }else{
                $signlog->setVerify('Sus credenciales no coinciden');
            }

        }
    }  
    
?>
<form action="" method="post" class="form">
    <h2 class="form_title"> 
        <?php 
        if($pagina == 'registrarse'){
            echo 'Registro';
        }else{
            if($signlog->getVerify() != ''){
                echo $signlog->getVerify();
            }else{
                echo 'Inicio de sesión';
            }  
        }          
        ?>
    </h2>
    <?php
        make_form_group(
            'email',
            'input_email',
            'Correo'
        );
        make_form_group(
            'password', 
            'input_password', 
            'Contraseña'
        );
        if($pagina == 'registrarse'){
            make_form_group(
                'password',
                'input_conf-pass',
                'Confirmar contraseña'
            );
        }
    ?>
    <button type="submit" class="form_btn" id="btn_log">
        <?php 
            echo 
                $pagina == 'registrarse' ? 
                    'Registrarse':
                    'Ingresar'
        ?>
    </button>
    <?php 
        if($pagina == 'session'){
            ?>  <label>o</label>
                <a href="?p=registrarse" class="form_btn">
                    Registrese
                </a>
            <?php
        }
    ?>
    
</form>
