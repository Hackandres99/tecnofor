<?php
    if(isset($email)){
        include 'unidades/button_resources.php';
        include 'base/front_page/model.php';
        include 'unidad/excerpt.php';
        include 'base/thumbnails/models.php';
        include 'unidad/light_box.php';
        include 'unidad/model.php';
        require_once './phpCrud/thumbnails_modelo.php';
        include 'unidades/circle_btn.php';

        $theresAnAccount = !isset($email) ? '?p=session' : '?p=unidad';
        $thumbnail = new Thumbnail_modelo();
        $results = $thumbnail->consult();

        make_unidad(
            $results[3]['image_src'], 'Unidad Número 4',
            $results[3]['title'], $results[3]['intro_video'],
            $results[3]['theme'], $pagina, $theresAnAccount, 
            $results[3]['id'], $results[3]['video_src'], 
            $results[3]['theme'], $results[3]['creation_date'],
            'quizizz.com/join/quiz/63058a8feaa315001e3cb8af/start?studentShare=true/', '/img/unidades/gif/computadora.gif','Actividad',
            'www.geogebra.org/graphing?lang=es/', '/img/unidades/gif/geogebra.gif', 'Ir a Geogebra'
        );
        make_btn_link('yes', '', $visit_num, '', '');
    } else {
        header('Location: ?p=session');
    }
?>