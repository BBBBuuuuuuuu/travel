function search(){
	const word = document.getElementById('searchedWord').value;
	console.log(word);
	
	const url = `/travel/search.do?word=${word}`;
            window.location.href = url;
}