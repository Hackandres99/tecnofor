<?php
    function make_unidad($f_image_src, $f_title, $f_phrase, $introductory_video, $e_title,
     $e_pagina, $t_account, $t_id, $t_video, $t_title, $t_cre_date, $q_link, $g_link){

        ?>  
            <iframe class="unidad_introductory_video" frameborder="0" allowfullscreen
            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
            src="<?= $introductory_video ?>"></iframe>
        <?php
        
        make_excerpt($e_title, $e_pagina);

?> 
            <div class="unidad_resources"> 
                <?php
                    make_thumbnail_container('unidad', 'unidad', $t_account, $t_id,
                    $f_image_src,$t_video, $t_title,
                    $t_cre_date, '',''); 

                    ?>
                        <a href="http://<?= $q_link ?>" target="_blank" class="unidad_resource_link">
                            Hacer Actividad
                        </a>
                        <a href="http://<?= $g_link ?>" target="_blank" class="unidad_resource_link">
                            Ir a geogebra
                        </a>
                    <?php 
                ?>  
            </div> 

<?php         
        make_light_box();
    }
?>