<!DOCTYPE html>
<html lang ="en">
    <head>
        <title>ALUMNI</title>
        <meta charset="UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <link rel ="stylesheet" href ="style.css"/>
        
    </head>
    <body>
        <header class="header">
          <div class="logo-text-container">
            <div class="qcu-logo">
              <img src="qculogo.png" alt="QC University">
            </div>
            <div class="headings">
              <h2 class="qcu">QUEZON CITY UNIVERSITY</h2>
              <h1 class="alumni">ALUMNI</h1>
            </div>
        <nav>
            <div class="nav">
                <ul>
                    <div class="nav-button"><img src="home.png"/> <a href="index.php"><li>Home</li></a></div>
                    <div class="nav-button"><img src="events-icon.png" /><a href="events.php"><li>Events</li></a></div>
                    <div class="nav-button" style="background: linear-gradient(95deg, rgba(0, 0, 0, 0.76), rgb(99, 99, 235));"><img src="community-icon.png" style="filter: brightness(0) invert(1);"/> <a href="community.php" style="color: white;"><li>Community</li></a></div>
                    <div class="nav-button"><img src="alumni-icon.png" /><a href="alumni-login.php"><li>Alumni</li></a></div>
                    <div class="nav-button"><img src="icon-admin.png"><a href="admin-login.php"><li>Admin</li></a></div> 
                    <div class="nav-button"><img src="about-icon.png"><a href="about.php"><li>About</li></a></div> 
                </ul>
            </div>
        </nav>
        </header>
        <div class="community-container">
        <div class="left-community-container">
            <div class="top-left-community-container">
              
            </div>
            <div class="bottom-left-community-container">
                <button type="button" class="button-kyusimunity2" onclick="window.location.href='community.php'">Kyusimunity</button>
                <button type="button" class="button-topics2" onclick="window.location.href='topics.php'">Topics</button>
            </div>
        </div>
        <div class="scrollable">
        <div class="top-community-container-kyusimunity">
        <form id="topic-form" method="GET" action="">
    <label for="topic" class="filter-by-topic">Filter by Topic:</label><br>
    <select name="topic" id="topic">
        <option value="">All Topics</option>
        <option value="job">Job</option>
        <option value="qcu">QCU</option>
        <!-- Add more options as needed -->
    </select>
</form>

            </div>
            <div class="bottom-community-container-kyusimunity">
            <?php

$conn = new mysqli("localhost", "root", "", "testdb");

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Initialize variables for filtering
$whereClause = ""; // This will hold the WHERE clause for filtering
$selectedTopic = isset($_GET['topic']) ? $_GET['topic'] : ""; // Get the selected topic from the form

// If a topic is selected, add it to the WHERE clause
if (!empty($selectedTopic)) {
    $whereClause = "WHERE asks_table.related_topic = '$selectedTopic'";
}

// Construct the SQL query with the WHERE clause
$selectQuery = "SELECT asks_table.post_id, asks_table.title, asks_table.description, asks_table.related_topic, asks_table.alumni_id, alumni_profile.firstname, alumni_profile.middlename, alumni_profile.lastname, alumni_profile.profile_picture,
                comments.comment_id, comments.comment_content, comments.commenter_id, comments.created_at,
                commenter_profile.firstname AS commenter_firstname, commenter_profile.lastname AS commenter_lastname, commenter_profile.profile_picture AS commenter_profile_picture
                FROM asks_table
                LEFT JOIN add_alumni_profile AS alumni_profile ON asks_table.alumni_id = alumni_profile.alumni_id
                LEFT JOIN comments ON asks_table.post_id = comments.post_id
                LEFT JOIN add_alumni_profile AS commenter_profile ON comments.commenter_id = commenter_profile.alumni_id
                $whereClause"; // Add the WHERE clause here

$result = $conn->query($selectQuery);

// Check if there are asks available
if ($result->num_rows > 0) {
    // Create an associative array to store asks and their comments
    $asks = [];
    while ($row = $result->fetch_assoc()) {
        // Store the row data in the asks array using the post_id as the key
        $postId = $row["post_id"];
        if (!isset($asks[$postId])) {
            $asks[$postId] = [
                "post_id" => $row["post_id"],
                "title" => $row["title"],
                "description" => $row["description"],
                "related_topic" => $row["related_topic"],
                "alumni_id" => $row["alumni_id"],
                "firstname" => $row["firstname"],
                "middlename" => $row["middlename"],
                "lastname" => $row["lastname"],
                "profile_picture" => $row["profile_picture"],
                "comments" => [] // Initialize an empty array to store comments
            ];
        }
        // Add comment data to the comments array of the respective post_id
        if (!empty($row["comment_id"])) {
            $asks[$postId]["comments"][] = [
                "comment_id" => $row["comment_id"],
                "comment_content" => $row["comment_content"],
                "commenter_id" => $row["commenter_id"],
                "commenter_firstname" => $row["commenter_firstname"],
                "commenter_lastname" => $row["commenter_lastname"],
                "commenter_profile_picture" => $row["commenter_profile_picture"],
                "created_at" => $row["created_at"]
            ];
        }
    }

    // Loop through each ask to display asks and their comments
    foreach ($asks as $ask) {
        $askId = $ask["post_id"];
        $title = $ask["title"];
        $description = $ask["description"];
        $relatedTopic = $ask["related_topic"];
        $alumniId = $ask["alumni_id"];

        // Display each ask
        echo "<div class='ask-container' id='ask_" . $askId . "'>";
        echo "<h3 class='ask-title'>$title</h3>";
        echo "<p class='ask-description'>$description</p>";
        echo "<p class='ask-related-topic'>Related Topic: $relatedTopic</p>";
        echo "<img src='' alt='' class='posted-profile' style='background: #fff;> '<br><br>";
        echo "<p class='ask-name'>" . "Anonymous". "</p>";

        // Display comments for this ask
        echo "<div class='comments-container' style='display:none;'>";
        echo "<h4>Comments:</h4>";
        foreach ($ask["comments"] as $comment) {
            echo "<div class='comment'>";
            echo "<img src='' alt='' class='commenter-profile-picture' style='background: #fff;'>";
            echo "<p class='comment-content'>" . $comment["comment_content"] . "</p>";
            echo "<p class='comment-info'>Comment by: " . "Anonymous". "</p>";
            echo "</div>";
        }
        echo "</div>"; // Close comments-container

        // Form to allow users to submit new comments for this ask
        echo "<form method='POST' action='add_comment.php'>";
        echo "<input type='hidden' name='ask_id' value='$askId'>";
        echo "<textarea name='comment_content' placeholder='Write a comment...' required class='textarea-comment'></textarea><br>";
        echo "<button type='submit' class='comment-button' onclick='redirectToLogin()'>Comment</button>";
        echo "</form>";
        echo"<button type='button' id='showCommentsButton' class='show-comments' onclick='toggleHighlight()'    >Show Comments</button>";

        echo "</div>"; // Close ask-container
    }
} else {
    echo "No asks found.";
}

// Close connection
$conn->close();
?>



            </div>
        </div>
        </div>
    </div>
      
    <script>
  document.querySelectorAll('.show-comments').forEach(function(button) {
    button.addEventListener('click', function() {
        var commentsContainer = this.parentNode.querySelector('.comments-container');
        if (commentsContainer.style.display === 'none' || commentsContainer.style.display === '') {
            commentsContainer.style.display = 'block';
        } else {
            commentsContainer.style.display = 'none';
        }
    });
});

var topicDropdown = document.getElementById('topic');

// Store the selected topic in local storage when dropdown changes
topicDropdown.addEventListener('change', function() {
    localStorage.setItem('selectedTopic', topicDropdown.value);
    // Submit the form
    document.getElementById('topic-form').submit();
});

// Retrieve the selected topic from local storage and set the dropdown value
var selectedTopic = localStorage.getItem('selectedTopic');
if (selectedTopic) {
    topicDropdown.value = selectedTopic;
}

function redirectToLogin() {
        // Redirect to the login page
        window.location.href = 'alumni-sign-up.php'; // Replace 'login.html' with the URL of your login page
    }
</script>
        <script src ="main.js"></script>
    </body>
</html>