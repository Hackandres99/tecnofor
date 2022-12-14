<?php
    if(isset($email)){
        include 'unidades/button_resources.php';
        include 'unidades/circle_btn.php';
        include 'base/front_page/model.php';
        include 'unidad/excerpt.php';
        include 'base/thumbnails/models.php';
        include 'unidad/light_box.php';
        include 'unidad/model.php';
        require_once './phpCrud/thumbnails_modelo.php';

        $theresAnAccount = !isset($email) ? '?p=session' : '?p=unidad';
        $thumbnail = new Thumbnail_modelo();
        $results = $thumbnail->consult();

        make_unidad(
            $results[2]['image_src'], 'Unidad Número 3',
            $results[2]['title'], $results[2]['intro_video'], 
            $results[2]['theme'], $pagina, $theresAnAccount, 
            $results[2]['id'], $results[2]['video_src'], 
            $results[2]['theme'], $results[2]['creation_date'],
            'es.liveworksheets.com/kh3158079ma', '/img/unidades/gif/actividad5.gif', 'Actividad',
            'www.geogebra.org/classic?lang=es', '/img/unidades/gif/geogebra3.gif', 'Ir a Geogebra Clásico'
        );
        make_btn_link('yes', '', $visit_num, '', '');
    } else {
        header('Location: ?p=session');
    }
?>