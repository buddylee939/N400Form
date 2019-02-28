// $( document ).ready(function() {
// 	document.getElementById('eligibile').onclick = function (evt) {
// 	evt = evt || window.event;
// 	targ = evt.target || evt.srcElement;
// 	if (targ.nodeName !== 'INPUT') {
// 		return;
// 	};
// 	els = targ.form;
// 	console.log(els)
// 	var elsLen = els.length;
 
// 	// Show div for all but the last one
// 	var elForAllButLast = document.getElementById('infoForAllButLast');
//     if (els[elsLen - 1].checked) {
//         elForAllButLast.style.display = 'none';
//     } else {
//         elForAllButLast.style.display = '';
//     }
 
// 	// Show div for only the first two options
// 	var elForFirstTwo = document.getElementById('infoForFirstTwo'),
// 		el,
// 		i;
//     for (i = 0; i < elsLen; i++) {
// 		el = els[i];
// 		if (el.checked) {
// 			if (i < 2) {
// 	        elForFirstTwo.style.display = '';
// 			} else {
// 				elForFirstTwo.style.display = 'none';
// 			}
// 	    }
// 	}
// }


// });


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

