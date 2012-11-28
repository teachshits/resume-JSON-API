$(document).ready(function(){
	$.getJSON('/resume',function(data){
		if(data){
			var animateSpeed = 1500;
			
			//Name
			document.title = "Résumé of " + data.contact.name;
			$('#name').append(data.contact.name);
			
			//Contact Information
			var contactInfo = data.contact;
			var contactStr = contactInfo.address + "<br />";
			contactStr += contactInfo.city + ", " + contactInfo.state + " " + contactInfo.zip + "<br />";
			contactStr += contactInfo.phone + "<br />";
			contactStr += '<a href="mailto:' + contactInfo.email + '">' + contactInfo.email + "</a><br />";
			if(contactInfo.link != null){
				$.each(contactInfo.link, function(key,value){
					contactStr += '<a href="' + value.address + '" target="blank">' + value.title + "</a><br />";
				});
			}
			$('#contact').append(contactStr);
			
			//Skills
			var skillsStr = "";
			$.each(data.skills, function(key, value){
				skillsStr += "<li>" + value + "</li>";
			});
			$('#skills-list').append(skillsStr);
			$('#skills-list').fadeIn(animateSpeed);
			
			var months = new Array("January","February","March","April","May","June","July","August","September","October","November","December");
			
			//Education
			var eduStr = "";
			$.each(data.education, function(key,value){
				eduStr += "<li><dl><dt style=\"font-weight:bold;\">";
				if(value.link != null){
					eduStr += "<a href=\"" + value.link + "\" target=\"blank\">" + value.name + "</a>";
				}
				else{
					eduStr += value.name;
				}
				eduStr += "</dt>";
				
				eduStr += "<dd>";
				eduStr += "<table><tr><td>" + value.degree + "</td><td>";
				if(isNaN(value.graduation)){
					eduStr += "Graduation: " + value.graduation;
				}
				else{
					var gradDate = new Date(value.graduation * 1000);
					eduStr += "Graduation: " + months[gradDate.getUTCMonth()] + ", " + gradDate.getUTCFullYear();
					
				}
				eduStr += "</td></tr></table></dd>";
				eduStr += "<dt>" + value.details + "</dt>";
				eduStr += "</dl></li>";
			});
			$('#education-list').append(eduStr);
			$('#education-list').fadeIn(animateSpeed);
			
			//Work Experience
			var workStr = "";
			$.each(data.jobs,function(key,value){
				workStr += "<li><dl><dt style=\"font-weight:bold;\">";
				if(value.link != null){
					workStr += "<a href=\"" + value.link + "\" target=\"blank\">" + value.name + "</a>";
				}
				else{
					workStr += value.name;
				}
				workStr += " (" + value.location + ")</dt>";
				
				workStr += "<dd>";
				
				var detailsStr = "";
				if(value.details != null){
					detailsStr += value.details + " ";
				}
				
				workStr += "<table>";
				$.each(value.positions, function(key2, value2){
					workStr += "<tr><td>" + value2.title + "</td><td>";
					if(isNaN(value2.start)){
						workStr += value2.start;
					}
					else{
						var startDate = new Date(value2.start * 1000);
						workStr += months[startDate.getUTCMonth()] + ", " + startDate.getUTCFullYear();
					}
					if(isNaN(value2.end)){
						workStr += " - " + value2.end;
					}
					else{
						var endDate = new Date(value2.end * 1000);
						workStr += " - " + months[endDate.getUTCMonth()] + ", " + endDate.getUTCFullYear();
					}
					workStr += "</td></tr>";
					
					detailsStr += value2.details + " ";
				});
				
				workStr += "</table></dd>";
				workStr += "<dt>" + detailsStr + "</dt>";
				workStr += "</dl></li>";
			});
			$('#jobs-list').append(workStr);
			$('#jobs-list').fadeIn(animateSpeed);
		}
	});
});