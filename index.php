<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script defer scr="script.js"></script>
    <title>Ontwikkelweek</title>
</head>
<body>
    <header>
        <div class="topbar"></div>
    </header>
    <main>
        <div class="flex">
            <div class="img-box">
                <img src="./test.jpg" alt="logo" style="width: 700px; height: 700px; margin-left: 100px; margin-top: 50px;">
            </div>
            <div id="vragen-container" class="hide">
                <div class="titel">1. Hier komt een vraag</div>
                    <div class="vraag-a">
                        <div class="flex-box">
                            <div class="check">
                                <i class="fa fa-check-square" aria-hidden="true" style="font-size: 50px;"></i>
                            </div>
                            <div class="a">A</div>
                        </div>
                    </div>
                    <div class="vraag-b">
                        <div class="flex-box">
                            <div class="check">
                                <i class="fa fa-check-square" aria-hidden="true" style="font-size: 50px;"></i>
                            </div>
                            <div class="b">B</div>
                        </div>
                    </div>
                    <div class="vraag-c">
                        <div class="flex-box">
                            <div class="check">
                                <i class="fa fa-check-square" aria-hidden="true" style="font-size: 50px;"></i>
                            </div>
                            <div class="c">C</div>
                        </div>
                    </div>
                    <div class="volgende-vraag">
                        <div class="flex">
                            <i class="fa fa-caret-square-o-left" aria-hidden="true" style="font-size: 100px; cursor: pointer;"></i>
                            <i class="fa fa-caret-square-o-right" aria-hidden="true" style="font-size: 100px; margin-right: 150px; cursor: pointer;"></i>
                        </div>
                    </div>
            </div>
        </div>
    </main>
    <div class="gap"></div>
    <footer>
        <div class="footer"></div>
     
    </footer>
</body>
</html>