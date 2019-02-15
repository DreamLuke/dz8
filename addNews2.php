<?php

$host = 'localhost';
$db = 'online';
$user = 'root';
$pass = '';
$charset = 'utf8';

$dsn = "mysql:host=$host;dbname=$db;charset=$charset";

$opt = [
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
    PDO::ATTR_EMULATE_PREPARES => false,
];
$pdo = new PDO($dsn, $user, $pass, $opt);

?>

<form style="width: 100%" id="id-news-form" method="post">
    <div class="form-group row">
    	<label for="title" class="col-md-2 col-form-label">Называние новости</label>
    	<div class="col-md-10">
    		<input
        		type="text"
        		class="form-control"
        		id="title"
        		name="title"
        		value=""
    		>
    	</div>
		<br>
    </div>

    <div class="form-group row">
		<label for="publication" class="col-md-2 col-form-label">Дата публикации</label>
		<div class="col-md-10">
			<input
				type="date"
				class="form-control"
				id="publication"
				name="publication"
				value=""
			>
		</div>
		<br>
	</div>

	<div class="form-group row">
		<label for="status" class="col-md-2 col-form-label">Статус</label>
		<div class="col-md-10">
			<div class="form-check">
				<input class="form-check-input" type="radio" name="status" id="status_draft" value="draft" checked>
				<label class="form-check-label" for="publish_in_index_yes">
					Черновик
				</label>
			</div>
			<div class="form-check">
				<input class="form-check-input" type="radio" name="status" id="status_published" value="published">
				<label class="form-check-label" for="publish_in_index_no">
					Опубликована
				</label>
			</div>
		</div>
		<br>
	</div>

	<div class="form-group row">
		<label for="category" class="col-md-2 col-form-label">Раздел новости</label>
		<div class="col-md-10">
			<select id="category" class="form-control" name="category">
				<option disabled selected>Выберете раздел из списка...</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
			</select>
		</div>
		<br>
	</div>

	<div class="form-group row">
		<label for="content" class="col-md-2 col-form-label">Текст новости</label>
		<div class="col-md-10">
			<textarea
					name="content"
					id="content"
					class="form-control"
					cols="30"
					rows="10"></textarea>
		</div>
		<br>
	</div>

	<div class="form-group row">
    	<label for="author" class="col-md-2 col-form-label">Автор</label>
    	<div class="col-md-10">
    		<input
	        	type="text"
    	    	class="form-control"
        		id="author"
        		name="author"
        		value=""
    		>
    	</div>
    	<br>
    </div>

	<div class="form-group row">
		<div class="col-md-9">
			<button type="submit" class="btn btn-primary">Опубликовать новость</button>
		</div>
		<div class="col-md-3">
			<div class="alert alert-success" style="display: none;">Форма валидна</div>
		</div>
	</div>
</form>

<script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>

<script>
    $(function() {
        $("#id-news-form").submit(function(e) {
            e.preventDefault();
            var form = $(this);
            $.ajax({
                type: "POST",
                // url: '/dz8/news.php',
                url: '/news2.php',
                data: form.serialize(),
                dataType: 'json',
                success: function(data)
                {
                    if(data.isValid) {
                    	//alert(data.isValid);
                    	alert('Выбрана категория ' + data.row.category_title);
                    	alert();
                    } else {
                    	alert(data.isValid);
                    }
                }
            });
        });
    });
</script>
