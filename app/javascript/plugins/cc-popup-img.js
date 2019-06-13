import { S_IFMT } from "constants";

const popUpImg = () => {
  const modal = document.getElementById("myModal");
  const images = document.querySelectorAll("#myImg");
  const modalImg = document.getElementById("img01");
   images.forEach((img) => {
     img.onclick = function(){
       modal.style.display = "block";
       modalImg.src = img.src;
     }
   });

  const span = document.getElementsByClassName("close")[0];

  span.onclick = function() { 
    modal.style.display = "none";
  }
};

export { popUpImg };