        function redirectToController() {
        	
            const checkinDate = document.getElementById('checkinDate').innerText;
            const checkoutDate = document.getElementById('checkoutDate').innerText;
            const peopleCount = document.querySelector('.adult-info').textContent;
            const boardName = document.getElementById('HEADING').innerText;
            const priceText = document.getElementById('price').innerText;
          
            const price = priceText.replace(/[^0-9]/g, '');

         
            
            
            const url = `/travel/book.do?board_no=${boardNo}&boardName=${boardName}&category=stay&start_date=${encodeURIComponent(checkinDate)}&end_date=${encodeURIComponent(checkoutDate)}&people_count=${peopleCount}&price=${price}`;
            window.location.href = url;
        }
        
 $(document).ready(function(){
 	$('#submitReview').click(function(){
 		var selectedRating = $('input[name="rating"]:checked').val();
 		var reviewText = $('#reviewText').val();
 		var reviewImage = $('#reviewImage')[0].files[0];
 		
 		if(selectedRating && reviewText) {
 			var formData = new FormData();
 			formData.append('rating', selectedRating);
 			formData.append('reviewText', reviewText);
 			if(reviewImage) {
 				formData.append('reviewImage', reviewImage);
 			}
 			
 			$.ajax({
 				type: 'POST',
 				url: '/writeReview.do',
 				data: formData,
 				processData: false,
 				contentType: false,
 				success: function(response) {
 					alert("작성되었습니다.");					
 				},
 				error: function(error) {
 					alert("실패");
 				}
 			});
 		} else {
 			alert("점수와 내용은 필수항목입니다.");
 		}
 	});
 });