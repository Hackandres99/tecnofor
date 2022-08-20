<ul class="resources_menu" id="resources_menu">
    <?php
        make_link('', 'resource_selected','menu_selected',
        'archive', 'Todos los recursos');

        for ($i=1; $i < 7; $i++) { 
            make_link('', '', '', 'file', 'recurso '.$i);
        }
    ?>
</ul>