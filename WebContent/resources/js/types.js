/**
 * 
 */

/* 3번째 결재자를 확인합니다. */
function IsThird() {
   console.log("THIRD");
   var third = document.getElementById("third_approval");
   var doc = document.getElementById("doc");
   
   /* var test="${!empty vo.user3}"; */
   var test = true;
   
   if(!test) {
      /* 하드 코딩 했습니다. */
      doc.style.width = "70%"; 
      third.parentNode.removeChild(third);
   }
}