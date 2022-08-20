<ul class="default_menu <?php echo $unidades ?>" id="default_menu">
    <?php 
        make_link('inicio', $inicioS, 
        $inicioMS, 'home', 'Inicio'); 
        
        include 'menu_items/unidades.php';
        
        make_link('contacto', $contactoS,
        $contactoMS, 'file-alt','Contacto' );

        include 'menu_items/session.php'; 
    ?>
</ul>