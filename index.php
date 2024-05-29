<?php
// Database connection
$servername = "localhost"; // Or your database hostname
$username = "root"; // Your database username
$password = ""; // Your database password
$dbname = "TheorieToetsCBR"; // Your database name

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Fetch data from database
$sql = "SELECT * FROM TheorieToetsCBR";
$result = $conn->query($sql);

// Close database connection
$conn->close();
?>

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
    <title>Ontwikkelweek</title>
</head>
<body>
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
                <img src="./test.jpg" alt="logo" style="width: 700px; height: 700px; margin-left: 100px; margin-top: 50px;">
            </div>
            <div id="vragen-container" class="hide">
                <div class="titel"><?= $row["vraag"] ?></div>
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
                            <div class="volgende-tekst">naar volgende vraag gaan</div>
                            <i class="fa fa-caret-square-o-right" aria-hidden="true" style="font-size: 100px; margin-right: 150px; cursor: pointer;"></i>
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
document.addEventListener('DOMContentLoaded', (event) => {
    const vraagA = document.querySelector('.vraag-a');
    const vraagB = document.querySelector('.vraag-b');
    const vraagC = document.querySelector('.vraag-c');

    vraagA.addEventListener('click', () => {
        vraagA.classList.add('clicked');
    });

    vraagB.addEventListener('click', () => {
        vraagB.classList.add('clicked');
    });

    vraagC.addEventListener('click', () => {
        vraagC.classList.add('clicked');
    });
});

    </script>
       <table>
        <tr>
            <th>ID</th>
            <th>Vraag</th>
            <th>Optie A</th>
            <th>Optie B</th>
            <th>Optie C</th>
            <th>Correct Antwoord</th>
        </tr>
        <?php
        // Output data of each row
        if ($result->num_rows > 0) {
            while($row = $result->fetch_assoc()) {
                echo "<tr>";
                echo "<td>" . $row["id"] . "</td>";
                echo "<td>" . $row["vraag"] . "</td>";
                echo "<td>" . $row["optieA"] . "</td>";
                echo "<td>" . $row["optieB"] . "</td>";
                echo "<td>" . $row["optieC"] . "</td>";
                echo "<td>" . $row["correct_antwoord"] . "</td>";
                echo "</tr>";
            }
        } else {
            echo "0 results";
        }
        ?>
    </table>
</body>
</html>
