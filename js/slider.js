'use strict';

document.addEventListener('DOMContentLoaded', function()
{
    var slides =
    [
        { image: 'img/slide1.jpg', alt: 'Jean Prouvé - Structure Nomade' },
        { image: 'img/slide2.jpg', alt: 'Jean Prouvé - Chaise Standard Zoom' },
        { image: 'img/slide3.jpg', alt: 'Jean Prouvé - Maison Tropicale' }
    ];
    
    var state;

    var c1 = document.querySelector('#c1');
    var c2 = document.querySelector('#c2');
    var c3 = document.querySelector('#c3');

    var slider = document.querySelector('#slider');


    if (slider) // Si l'élément avec un id="slider" existe, alors on applique le code. Sinon, on a des TypeError C1, C2, C3 et sliderImage is null sur les autres pages
    {
    
        function onSliderGoToNext()
        {
            // Passage à la slide suivante.
            state.index++;

            // Est-ce qu'on est arrivé à la fin de la liste des slides ?
            if (state.index == slides.length)
            {
                // Oui, on revient au début (le slider est circulaire).
                state.index = 0;
            }
        
            if (state.index == 0) 
            {
                c1.classList.add('gold')
                c2.classList.remove('gold')
                c3.classList.remove('gold')
            }
        
            else if (state.index == 1) 
            {
                c2.classList.add('gold')
                c3.classList.remove('gold')
                c1.classList.remove('gold')
            }
        
            else if (state.index == 2)  
            {
                c3.classList.toggle('gold')
                c2.classList.remove('gold')
                c1.classList.remove('gold')
            }

            // Mise à jour de l'affichage.
            refreshSlider();
        }
        
        
        function refreshSlider()
        {
            var sliderImage;
        
            // Recherche des balises de contenu du slider.
            sliderImage  = document.querySelector('#slider img');
        
            // Changement de la source de l'image et du alt du slider.
            sliderImage.src = slides[state.index].image;
            sliderImage.alt = slides[state.index].alt;  
        }


        state       = {};
        state.index = 0;                   
        state.timer = window.setInterval(onSliderGoToNext, 3000); 
        refreshSlider();

    }

});

