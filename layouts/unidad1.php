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
            $results[0]['image_src'], 'Unidad Número 1',
            $results[0]['title'],$results[0]['intro_video'],
            $results[0]['theme'], $pagina, $theresAnAccount, 
            $results[0]['id'], $results[0]['video_src'], 
            $results[0]['theme'], $results[0]['creation_date'],
            'es.liveworksheets.com/he3174350lj', '/img/unidades/gif/actividad5.gif', 'Actividad',
            'es.symbolab.com/', '/img/unidades/gif/symbolab3.gif', 'Ir a Symbolab'
        );
        make_btn_link('yes', '', $visit_num, '', '');
    } else {
        header('Location: ?p=session');
    }

?>