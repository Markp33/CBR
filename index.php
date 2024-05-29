<?php
include_once("./header.php");
$servername = "localhost";
$username = "root"; 
$password = ""; 
$dbname = "TheorieToetsCBR"; 

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>
 <?php
                    $sqli_prepare = $conn->prepare("SELECT id, vraag, optieA, optieB, optieC, correct_antwoord, img FROM TheorieToetsCBR WHERE id = " . $_GET["id"] . ";");
                    if ($sqli_prepare === false) {
                        echo mysqli_error($conn);
                    } else{
                        if ($sqli_prepare->execute()) {
                            $sqli_prepare->bind_result($id, $vraag, $optieA, $optieB, $optieC, $correct, $img);
                            while($sqli_prepare->fetch()){
                                ?>
                               <header>
        <div class="topbar">
            <div class="topbar-flex">
                <div class="cbr">CBR Theorie Toets</div>
            </div>
        </div>
    </header>
    <main>
        <div class="flex">
            <div class="img-box">
                <img src="<?=$img?>" alt="logo" style="width: 700px; height: 700px; margin-left: 100px; margin-top: 50px;">
            </div>
            <div id="vragen-container" class="hide">
                <div class="titel"><?= $vraag ?></div>
                    <div class="vraag-a">
                        <div class="flex-box">
                            <div class="a"><?=$optieA ?></div>
                        </div>
                    </div>
                    <div class="vraag-b">
                        <div class="flex-box">                        
                            <div class="b"><?= $optieB ?></div>
                        </div>
                    </div>
                    <div class="vraag-c">
                        <div class="flex-box">                     
                            <div class="c"><?=$optieC ?></div>
                        </div>
                    </div>
                    <div class="volgende-vraag">
                        <div class="flex">
                            <i class="fa fa-caret-square-o-left" aria-hidden="true" style="font-size: 100px; cursor: pointer;"></i>
                            <div class="volgende-tekst">naar volgende vraag gaan</div>
                            <i id="incrementDiv" class="fa fa-caret-square-o-right" aria-hidden="true" style="font-size: 100px; margin-right: 150px; cursor: pointer;"></i>
                        </div>
                    </div>
            </div>
        </div>
    </main>
    <div class="gap"></div>
    <footer>
        <div class="footer">
            <div class="footer-flex">
                <div class="copyright">© 2024-2024 CBR</div>
            </div>
        </div>
    </footer>
                <?php 
            }
        }
    }
    $sqli_prepare->close();
?>
    <script>
        // Function to handle the click event
        document.getElementById('incrementDiv').addEventListener('click', function() {
            // Get the current ID from the URL or any other source
            let currentId = parseInt(window.location.search.substring(1)); // Assuming the ID is in the URL as a query parameter

            // Increment the ID
            let nextId = currentId + 1;

            // Update the URL to navigate to the next ID
            window.location.href = 'index.php?id=' + nextId; // Replace 'page.php' with your actual page name
        });
    </script>


</body>
</html>
