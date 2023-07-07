<?php
session_start();
?>

<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="../css/style.css">
	<?php include 'base.php'; ?>
	<title>Inscription</title>
</head>

<body>
	<?php include 'menu.php'; ?>
	<div class="container">
		<?php if (isset($_SESSION['flash'])) : ?>
			<?php foreach ($_SESSION['flash'] as $type => $message) : ?>
				<div class="ms-1 me-3 alert alert-<?= $type; ?>">
					<?= $message; ?>
				</div>
			<?php endforeach; ?>
			<?php unset($_SESSION['flash']); ?>
		<?php endif; ?>
		<section class="col-6">
		<h1 class="m-2">Inscription</h1>
		<form action="../action/register.php" method="post">

			<div class="m-2">
				<label for="nom">Votre nom</label>
				<input type="text" name="nom"  class="form-control">
			</div>

			<div class="m-2">
				<label for="mail">Votre email</label>
				<input type="email" name="mail"  class="form-control">
			</div>

			<div class="m-2">
				<label for="mp">Votre mot de passe</label>
				<input type="password" name="mp"  class="form-control">
			</div>

			<div class="m-2">
				<input class="btn btn-primary" type="submit" value="Envoyer" name="inscription"></div>
			</form>
			</section>
	</div>

</body>

</html>