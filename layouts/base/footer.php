<?php 
    $footer_class = '';
    switch ($pagina) {
        case 'unidades': 
        case 'unidad':
        case 'unidad1':
        case 'unidad2':
        case 'unidad3':
        case 'unidad4':
        case 'unidad5':
        case 'unidad6':
            $footer_class = 'unidades'; 
        break;
    } 
?> 
<footer class="<?= $footer_class ?>">

    <?php include 'header/logo.php' ?>
    
    <div class="footer_medias">
        <a href="?p=contacto"><i class="fas fa-envelope footer_media_icon"></i></a>
    </div>

    <p class="footer_copy">
        ©<?php echo date('Y') ?> Tecnofor - Todos los Derechos Reservados.
    </p>
    
</footer>