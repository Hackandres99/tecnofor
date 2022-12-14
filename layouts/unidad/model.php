<?php
    function make_unidad($f_image_src, $f_title, $f_phrase, $introductory_video, $e_title,
     $e_pagina, $t_account, $t_id, $t_video, $t_title, $t_cre_date, $q_link, $q_gif, $q_text, $g_link, $g_gif, $g_text){

        ?>  
            <iframe class="unidad_introductory_video" frameborder="0" allowfullscreen
            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
            src="<?= $introductory_video ?>"></iframe>

            <div class="unidad_container">

        <?php
        
        make_excerpt($e_title, $e_pagina);

?> 
                <div class="unidad_resources"> 
                    <?php
                        make_thumbnail_container('unidad', 'unidad', $t_account, $t_id,
                        $f_image_src, $t_video, $t_title,
                        $t_cre_date, '',''); 

                        ?>

                            <a href="http://<?= $q_link ?>" target="_blank" class="unidad_resource_link">
                                <img class="resource_link_img" src="<?= $q_gif ?>" alt="actividad">
                                <span class="resource_link_text"> 
                                    <?= $q_text ?> 
                                </span>
                            </a>
                            <a href="http://<?= $g_link ?>" target="_blank" class="unidad_resource_link">
                                <img class="resource_link_img" src="<?= $g_gif ?>" alt="geogebra">
                                <span class="resource_link_text"> 
                                    <?= $g_text ?> 
                                </span>
                            </a>

                        <?php 
                    ?>  
                </div> 
            </div>

<?php         
        make_light_box();
    }
?>