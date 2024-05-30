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

$id = isset($_GET['id']) ? intval($_GET['id']) : 1;

$sqli_prepare = $conn->prepare("SELECT id, vraag, optieA, optieB, optieC, correct_antwoord, img FROM TheorieToetsCBR WHERE id = ?");
$sqli_prepare->bind_param("i", $id);

if ($sqli_prepare === false) {
    echo mysqli_error($conn);
} else {
    if ($sqli_prepare->execute()) {
        $sqli_prepare->bind_result($id, $vraag, $optieA, $optieB, $optieC, $correct, $img);
        while($sqli_prepare->fetch()) {
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
        <div id="vragen-container">
            <div class="titel"><?= $vraag ?></div>
            <form id="quizForm">
                <div class="vraag-a">
                    <div class="flex-box">
                        <input type="radio" name="answer" value="A" id="optieA">
                        <label for="optieA"><?=$optieA ?></label>
                    </div>
                </div>
                <div class="vraag-b">
                    <div class="flex-box">                        
                        <input type="radio" name="answer" value="B" id="optieB">
                        <label for="optieB"><?= $optieB ?></label>
                    </div>
                </div>
                <div class="vraag-c">
                    <div class="flex-box">                     
                        <input type="radio" name="answer" value="C" id="optieC">
                        <label for="optieC"><?=$optieC ?></label>
                    </div>
                </div>
                <div class="footer-flex">
                <button type="button" class="beautiful-button" id="submitAnswer">Sturen</button>
            </div>
            </form>
            <div class="volgende-vraag">
                <div class="flex">
                    <i id="incrementDivmin" class="fa fa-caret-square-o-left" aria-hidden="true" style="font-size: 100px; cursor: pointer;"></i>
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
<script>
document.getElementById('submitAnswer').addEventListener('click', function() {
    const selectedOption = document.querySelector('input[name="answer"]:checked');
    if (selectedOption) {
        const userAnswer = selectedOption.value;
        const correctAnswer = '<?= $correct ?>';
        if (userAnswer === correctAnswer) {
            document.body.style.backgroundColor = 'lime';
        } else {
            document.body.style.backgroundColor = 'red';
        }
    } else {
        alert('Please select an answer!');
    }
});

document.getElementById('incrementDiv').addEventListener('click', function() {
    let currentId = new URLSearchParams(window.location.search).get('id'); 
    if (!currentId) currentId = 1;
    let nextId = parseInt(currentId) + 1;
    window.location.href = 'index.php?id=' + nextId; 
});

document.getElementById('incrementDivmin').addEventListener('click', function() {
    let currentId = new URLSearchParams(window.location.search).get('id'); 
    if (!currentId) currentId = 1;
    let nextId = parseInt(currentId) - 1;
    window.location.href = 'index.php?id=' + nextId; 
});
</script>
</body>
</html>
<?php 
        }
    }
    $sqli_prepare->close();
}
$conn->close();
?>
