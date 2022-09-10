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
            $results[5]['image_src'], 'Unidad numero 6',
            $results[5]['title'], $results[5]['intro_video'],
            $results[5]['theme'], $pagina, $theresAnAccount, 
            $results[5]['id'], $results[5]['video_src'], 
            $results[5]['theme'], $results[5]['creation_date'],
            'es.liveworksheets.com/go3159887ii', '/img/unidades/actividad.gif', 'Hacer actividad',
            'calculadorasonline.com/calculadora-de-division-de-polinomios-paso-a-paso/#Calculadora_de_division_de_polinomios', '/img/unidades/geo.gif', 'Ir a geogebra'
        );
        make_btn_link('yes', '', $visit_num, '', '');
    } else {
        header('Location: ?p=session');
    }
?>