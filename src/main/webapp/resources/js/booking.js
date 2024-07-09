
        function redirectToController() {
            const checkinDate = document.getElementById('checkinDate').innerText;
            const checkoutDate = document.getElementById('checkoutDate').innerText;
            const peopleCount = document.querySelector('.adult-info').textContent;
            const url = `/travel/book.do?boardNo=${boardNo}&category=stay&checkinDate=${encodeURIComponent(checkinDate)}&checkoutDate=${encodeURIComponent(checkoutDate)}&peopleCount=${peopleCount}`;
            window.location.href = url;
        }