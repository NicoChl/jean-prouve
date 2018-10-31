'use strict'

document.addEventListener('DOMContentLoaded', function()
{
	var mobilier = document.querySelector('#section-mobilier');

	if (mobilier) 
	{
		var xmlhttp = new XMLHttpRequest();
		xmlhttp.onreadystatechange = function() 
		{
			if (this.readyState == 4 && this.status == 200) 
			{
				var myObj = JSON.parse(this.responseText);
				document.getElementById("full-image").src = 'img/'+myObj[0].imageBig;
				document.getElementById("full-image").alt = 'img/'+myObj[0].nom;
				document.getElementById("titre").innerHTML = myObj[0].nom;
				document.getElementById("date").innerHTML = myObj[0].date;
				document.getElementById("description").innerHTML = myObj[0].description;
			}
		};

		xmlhttp.open("GET", "furniture.php", true);
		xmlhttp.send();


		var img = document.querySelectorAll('.furniture');

		var index;

		function onclickDisplayInfo () 
		{
			var id = this.getAttribute('id');

			var xmlhttp = new XMLHttpRequest();
			xmlhttp.onreadystatechange = function() 
			{

				if (this.readyState == 4 && this.status == 200) 
				{
					var myObj = JSON.parse(this.responseText);
					document.getElementById("full-image").src = 'img/'+myObj[id-1].imageBig;
					document.getElementById("full-image").alt = 'img/'+myObj[id-1].nom;
					document.getElementById("titre").innerHTML = myObj[id-1].nom;
					document.getElementById("date").innerHTML = myObj[id-1].date;
					document.getElementById("description").innerHTML = myObj[id-1].description;
				}
			};
			
			xmlhttp.open("GET", "furniture.php", true);
			xmlhttp.send();
		}


		for (index = 0; index < img.length; index++) 
		{
			img[index].addEventListener('click', onclickDisplayInfo);
		}

	}
	
});