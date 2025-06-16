<?php
 require_once 'models/authentication.php';
// Store the username for the message
$username = "";
if (isset($_SESSION["username"])) {
    $username = $_SESSION["username"];
}

// Unset all of the session variables
$_SESSION = array();

// Destroy the session
session_destroy();

// Store the logout status for display
$logout_status = true;
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Logged Out - Inventory Management System</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/feather-icons/dist/feather.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet">
    <style>
        :root {
    --primary-color: #7f5735;
    --secondary-color: transparent;
    --accent-color: #6c5ce7;
    --text-color: transparent;
    --light-color: #f8fafc;
    --background-gradient: linear-gradient(135deg, #a5b4fc 0%, #818cf8 100%);
}

body {
    font-family: 'Poppins', sans-serif;
    min-height: 100vh;
    margin: 0;
    padding: 0;
    display: flex;
    align-items: center;
    justify-content: center;
    background-color: var(--light-color);
    color: var(--text-color);
    overflow: hidden;
    position: relative;
}

.profile-icon {
    color: white;
    stroke-width: 1.5; /* Optional: adjust the line thickness */
}

.page-container {
    display: flex;
    align-items: center;
    justify-content: center;
    width: 100%;
    min-height: 100vh;
    padding: 2rem;
    position: relative;
    z-index: 5;
}

.logout-container {
    text-align: center;
    padding: 3.5rem;
    border-radius: 24px;
    background-color: var(--primary-color);
    color: white;
    box-shadow: 
        0 10px 25px rgba(0, 0, 0, 0.05),
        0 5px 10px rgba(0, 0, 0, 0.02);
    max-width: 500px;
    width: 100%;
    transition: all 0.3s ease;
    transform: translateY(0);
    position: relative;
    z-index: 2;
    margin: 0 auto;
}

.logout-container:hover {
    transform: translateY(-5px);
    box-shadow: 
        0 15px 35px rgba(0, 0, 0, 0.1),
        0 5px 15px rgba(0, 0, 0, 0.05);
}

.icon-container {
    width: 110px;
    height: 110px;
    border-radius: 50%;
    background: rgb(112, 170, 247);
    margin: 0 auto 2rem;
    display: flex;
    align-items: center;
    justify-content: center;
    position: relative;
    /* box-shadow: 0 10px 20px rgba(74, 108, 247, 0.2); */
}

.profile-icon {
    font-size: 4.5rem;
    color: white;
}

.logout-message {
    font-size: 1.75rem;
    font-weight: 600;
    margin-bottom: 0.5rem;
    color: white;
}

.logout-subtext {
    font-size: 1rem;
    color: white;
    margin-bottom: 2rem;
}

.logout-spinner {
    margin: 2rem auto;
    width: 50px;
    height: 50px;
    border: 3px solid rgba(255, 255, 255, 0.2);
    border-top: 3px solid white;
    border-radius: 50%;
    animation: spin 1.2s cubic-bezier(0.68, -0.55, 0.27, 1.55) infinite;
}

.redirect-text {
    font-size: 0.95rem;
    color: white;
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 0.5rem;
}

.redirect-text i {
    font-size: 0.85rem;
}

@keyframes spin {
    0% { transform: rotate(0deg); }
    100% { transform: rotate(360deg); }
}

.fade-out {
    animation: fadeOut 1.5s ease forwards;
}

@keyframes fadeOut {
    0% { opacity: 1; transform: translateY(0); }
    100% { opacity: 0; transform: translateY(-30px); }
}

/* Decorative background elements
.bg-shape {
    position: fixed;
    z-index: 1;
    opacity: 0.4;
}

/* .bg-shape-1 {
    width: 300px;
    height: 300px;
    background-color: var(--primary-color);
    border-radius: 50%;
    top: -150px;
    right: -100px;
    filter: blur(90px);
} */

/* .bg-shape-2 {
    width: 200px;
    height: 200px;
    background-color: var(--accent-color);
    border-radius: 50%;
    bottom: -100px;
    left: -50px;
    filter: blur(70px);
} */ 
    </style>
</head>

<body>
    <!-- Background decorative elements -->
    <div class="bg-shape bg-shape-1"></div>
    <div class="bg-shape bg-shape-2"></div>

    <div class="page-container">
        <div class="logout-container">
            <div class="icon-container">
                <div class="icon-container">
                    <i data-feather="user" class="profile-icon"></i>
                </div>
            </div>
            <h2 class="logout-message">
                <?php echo !empty($username) ? "Goodbye, {$username}!" : "You've Been Logged Out"; ?>
            </h2>
            <p class="logout-subtext">Thanks for using our Inventory Management System</p>
            <div class="logout-spinner"></div>
            <p class="redirect-text">
                Redirecting you to the login page...
            </p>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/feather-icons/dist/feather.min.js"></script>
    <script>
        // Initialize Feather icons
        document.addEventListener('DOMContentLoaded', function () {
            feather.replace();

            const container = document.querySelector('.logout-container');
            container.style.opacity = 0;
            container.style.transform = 'translateY(20px)';

            setTimeout(function () {
                container.style.transition = 'opacity 0.8s ease, transform 0.8s ease';
                container.style.opacity = 1;
                container.style.transform = 'translateY(0)';
            }, 100);
        });

        // Add fade-out animation after 2.5 seconds
        setTimeout(function () {
            document.querySelector('.logout-container').classList.add('fade-out');
            // Redirect to login page after fade-out animation
            setTimeout(function () {
                window.location.href = "login.php";
            },1400);
        }, 2500);

        // Initialize Feather icons with custom size
        feather.replace({
            width: 72,
            height: 72
        });
    </script>
</body>

</html>