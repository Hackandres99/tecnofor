<?php
    session_unset();
    session_destroy();
    header('Location: ?p=inicio');
?>