<script>
    //function that display value
    function dis(val)
    {
        document.getElementById("result").value+=val+", "
    }

    function clr()
         {
            document.getElementById("result").value = "" 
            bchecked = 0;

            for (var i=0; i<100; i++) 
              {document.getElementsByName("symp")[i].checked = false;}
      
            }
            
    
  </script>


<script>

function checking() {

  var bchecked = 0
  
  let illness = [
    { num: 0, name:"Covid", value:0, nsymptoms: 2 },
    { num: 1, name:"Flu", value:0, nsymptoms: 3  },
    { num: 2, name:"Dengue", value:0, nsymptoms: 2 },
    { num: 3, name:"Zika", value:0, nsymptoms: 3  },
  ]

  // Based on symptom checkbox, take these actions.
    if (bchecked < 1){
      if (document.getElementById("Headache").checked) 
      {illness[0].value = illness[0].value + 1;
      illness[1].value = illness[1].value + 1;
      illness[3].value = illness[3].value + 1;
      bchecked = bchecked + 1;}

      if (document.getElementById("Cough").checked) 
      {illness[0].value = illness[0].value + 1;
      illness[1].value = illness[1].value + 1;
      bchecked = bchecked + 1;}

      if (document.getElementById("SmellLoss").checked) 
      {illness[0].value = illness[0].value + 1;
      bchecked = bchecked + 1;}

      if (document.getElementById("RunnyNose").checked) 
      {illness[1].value = illness[1].value + 1;
      bchecked = bchecked + 1;}

      if (document.getElementById("Nausea").checked) 
      {illness[2].value = illness[2].value + 1;
      bchecked = bchecked + 1;}
      
      if (document.getElementById("Vomiting").checked) 
      {illness[2].value = illness[2].value + 1;
      bchecked = bchecked + 1;}

      if (document.getElementById("Fever").checked) 
      {illness[3].value = illness[3].value + 1;
      bchecked = bchecked + 1;}
      
      if (document.getElementById("Rash").checked) 
      {illness[3].value = illness[3].value + 1;
      bchecked = bchecked + 1;}

    }

    if (bchecked >= 1)
    {
      var currentval = 0;
      var currentill = "none"
    for (let i = 0; i < illness.length; i++) {
      if (illness[i].value > currentval)
      {
        currentval = illness[i].value
        currentill= illness[i].name
      }
    }

    {alert ("Most Likely Illness: " + currentill + ".");}}

    else 
    {alert("Nothing is checked!.");}
    }

// Need to make an object oriented array list (array of objects) and add the values to the value section of each object. The Array will have the diseas and how likely the value is, then compare it to the bchecked variable since that shows all checked boxes.

</script>
