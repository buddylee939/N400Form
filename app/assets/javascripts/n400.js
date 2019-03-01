$( document ).ready(function(){
	var eligible = $('input:radio[name="n400_form[eligibility]"]:checked' ).val()
	if (eligible == '2') {
 		document.getElementById('field-office').style.display = '';	
	} else {
 		document.getElementById('field-office').style.display = 'none';			
	}
	$('input:radio[name="n400_form[eligibility]"]').change(function(){
	    if($(this).val() == '2'){
	       // alert("test");
	       document.getElementById('field-office').style.display = '';	
	    } else {
	       document.getElementById('field-office').style.display = 'none';		    	
	    }
	});
});

$( document ).ready(function(){
	var eligible = $('input:radio[name="n400_form[eligibility]"]:checked' ).val()
	if (eligible == '4') { 		
 		document.getElementById('other-explain').style.display = '';	
	} else {	
 		document.getElementById('other-explain').style.display = 'none';	
	}	

	$('input:radio[name="n400_form[eligibility]"]').change(function(){
	    if($(this).val() == '4'){
	       // alert("test");
	       document.getElementById('other-explain').style.display = '';	
	    } else {
	       document.getElementById('other-explain').style.display = 'none';		    	
	    }
	});
});

$( document ).ready(function(){
	var nameChange = $('input:radio[name="n400_form[name_change]"]:checked' ).val()
	if ( nameChange  == '0') { 	
 		document.getElementById('name-change-fields').style.display = '';	
	} else {	
 		document.getElementById('name-change-fields').style.display = 'none';	
	}	

	$('input:radio[name="n400_form[name_change]"]').change(function(){
	    if($(this).val() == '0'){
	       // alert("test");
	       document.getElementById('name-change-fields').style.display = '';	
	    } else {
	       document.getElementById('name-change-fields').style.display = 'none';		    	
	    }
	});
});

$( document ).ready(function(){
	var nameChange = $('input:radio[name="n400_form[disability_accomodation]"]:checked' ).val()
	if ( nameChange  == '0') { 	
 		document.getElementById('disability-accomodations').style.display = '';	
	} else {	
 		document.getElementById('disability-accomodations').style.display = 'none';	
	}	

	$('input:radio[name="n400_form[disability_accomodation]"]').change(function(){
	    if($(this).val() == '0'){
	       // alert("test");
	       document.getElementById('disability-accomodations').style.display = '';	
	    } else {
	       document.getElementById('disability-accomodations').style.display = 'none';		    	
	    }
	});
});

