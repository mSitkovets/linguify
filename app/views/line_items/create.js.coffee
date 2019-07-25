list = document.getElementById("list") 
list.innerHTML = "<%= j render(@list) %>"
notice = document.getElementById("notice")
if notice
  notice.style.display = "none"