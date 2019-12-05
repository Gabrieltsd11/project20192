<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" class="gr__201_149_127_174">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">

    <link rel="Shortcut Icon" href="Acomp.jpg" type="image/jpg">
    <link href="StyleLogin.css" rel="stylesheet" />
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <script type="text/javascript">
        function resize() {
            bodyObj = document.body;
            bodyObj.style.width = (document.documentElement.clientWidth < 1000 ? 1000 : document.documentElement.clientWidth) + "px"
        }

        function pageLoad() {
            resize();
            window.onresize = resize;
        };
    </script>


    <title>Status</title>
</head>

<body onload="pageLoad()" style="width: 1000px;">

    <div class="topLogo">
        <table cellspacing="0" width="100%">
            <tbody>
                <tr>
                    <td>
                        <table border="0" cellspacing="0" width="100%">
                            <tbody>
                                <tr>
                                    <td id="ft-td">
                                        <img src="Acomp.jpg" height="100px" width="150px" />
                                        </a>
                                    </td>
                                    <td id="sd-td">
                                        <table>
                                            <tbody>
                                                <tr>
                                                    <td id="tname" class="st1">AcomP
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td id="tdesc" class="st2">Acompanhamento de pedidos, Entrega e Portal de Acompanhamento</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
    </div><br>
    <br>
 <div class="p-4">
    <h3>Status</h3>
    <table class="table table-bordered track_tbl">
        <thead>
            <tr>
                <th></th>
                <th>Número</th>
                <th>Status</th>
                <th>Nome do Produto</th>
                <th>Data</th>
            </tr>
        </thead>
        <tbody>
            <tr class="active">
                <td class="track_dot">
                    <span class="track_line"></span>
                </td>
                <td>01</td>
                <td>Fabricando</td>
                <td>XKPDO</td>
                <td>04/12/2019</td>
            </tr>
            <tr>
                <td class="track_dot">
                    <span class="track_line"></span>
                </td>
                <td>02</td>
                <td>Entregue</td>
                <td>XKPDO</td>
                <td>04/12/2019</td>
            </tr>
            <tr>
                <td class="track_dot">
                    <span class="track_line"></span>
                </td>
                <td>03</td>
                <td>Enviando</td>
                <td>XKPDO</td>
                <td>04/12/2019</td>
            </tr>
        </tbody>
    </table>
    </div>
</div>
</div>
</div>
</div>

</body>

</html>