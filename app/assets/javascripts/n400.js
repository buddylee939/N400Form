$( document ).ready(function(){
	var eligible = $('input:radio[name="n400_form[eligibility]"]:checked' ).val()
	var value = 'Are a lawful permanent resident of the United States and you are the spouse of a U.S. citizen and your U.S. citizen spouse is regularly engaged in specified employment abroad. (See the Immigration and Nationality Act (INA) section 319(b).) If your residential address is outside the United States and you are filing under Section 319(b), select the USCIS Field Office from the list below where you would like to have your naturalization interview:';

	if (eligible == value) {
 		document.getElementById('field-office').style.display = '';	
	} else {
 		document.getElementById('field-office').style.display = 'none';			
	}
	$('input:radio[name="n400_form[eligibility]"]').change(function(){
	    if($(this).val() == value){
	       // alert("test");
	       document.getElementById('field-office').style.display = '';	
	    } else {
	       document.getElementById('field-office').style.display = 'none';		    	
	    }
	});
});

$( document ).ready(function(){
	var eligible = $('input:radio[name="n400_form[eligibility]"]:checked' ).val()
	var value = 'Other (Explain):';
	if (eligible == value) { 		
 		document.getElementById('other-explain').style.display = '';	
	} else {	
 		document.getElementById('other-explain').style.display = 'none';	
	}	

	$('input:radio[name="n400_form[eligibility]"]').change(function(){
	    if($(this).val() == value){
	       // alert("test");
	       document.getElementById('other-explain').style.display = '';	
	    } else {
	       document.getElementById('other-explain').style.display = 'none';		    	
	    }
	});
});

$( document ).ready(function(){
	var nameChange = $('input:radio[name="n400_form[name_change]"]:checked' ).val()
	var value = 'Yes';
	if ( nameChange  == value) { 	
 		document.getElementById('name-change-fields').style.display = '';	
	} else {	
 		document.getElementById('name-change-fields').style.display = 'none';	
	}	

	$('input:radio[name="n400_form[name_change]"]').change(function(){
	    if($(this).val() == value){
	       // alert("test");
	       document.getElementById('name-change-fields').style.display = '';	
	    } else {
	       document.getElementById('name-change-fields').style.display = 'none';		    	
	    }
	});
});

$( document ).ready(function(){
	var nameChange = $('input:radio[name="n400_form[disability_accomodation]"]:checked' ).val();
	var value = 'Yes';
	if ( nameChange  == value) { 	
 		document.getElementById('disability-accomodations').style.display = '';	
	} else {	
 		document.getElementById('disability-accomodations').style.display = 'none';	
	}	

	$('input:radio[name="n400_form[disability_accomodation]"]').change(function(){
	    if($(this).val() == value){
	       // alert("test");
	       document.getElementById('disability-accomodations').style.display = '';	
	    } else {
	       document.getElementById('disability-accomodations').style.display = 'none';		    	
	    }
	});
});

$(document).ready(function() { 
	if ($('.physical-address').is(":checked")) {
		$('#address-fieldset').prop('disabled', true);
	} else {
		$('#address-fieldset').prop('disabled', false);
	}

	$('.physical-address').change(function() {
		if ($('.physical-address').is(":checked")) {
			$('#address-fieldset').prop('disabled', true);
		} else {
			$('#address-fieldset').prop('disabled', false);
		}		
	});
});
