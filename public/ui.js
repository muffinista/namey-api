
var formSubmit = function() {
  var opts = {  
    count:  parseInt(document.querySelector("[name=count]").value, 10),
    with_surname:  document.querySelector("[name=with_surname]:checked") !== null,
    frequency: document.querySelector("input[name=frequency]:checked").value
  };
    
  var type =  document.querySelector("input[name=type]:checked").value;
  if ( type !== "both" ) {
	  opts.type = type;
  }
  
  opts.callback = function(r) {
    document.querySelector('#nameList').value = r.join("\n");
  };

  namey.get(opts);
  
  return false;
}


document.onreadystatechange = function() {
  if (document.readyState === 'complete') {
    const button = document.querySelector('button');
    
    button.addEventListener('click', event => {
      formSubmit();
    });
  }
};
