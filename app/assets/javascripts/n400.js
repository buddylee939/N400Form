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

