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