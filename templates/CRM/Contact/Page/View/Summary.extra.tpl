{literal}
<script type="text/javascript">
 //CRM/Contact/View/Summary.tpl
   //alert("Hello! I am an alert box!!");
   
   //hide menu tag
   cj('#tab_tag').hide(); 
   //summary other info

   
   // hide nickname
   cj('#crm-contactinfo-content > div > div:nth-child(4)').hide();

  // hide tag
  //@@cj('#contact-summary > div.contactTopBar.contact_panel > div.contactCardRight > div > div > div > div:nth-child(1)').hide();
  //hide IM Block
  cj('#im-block').hide();
  // hide xternal ID
  cj('#contact-summary > div.contactTopBar.contact_panel > div.contactCardRight > div > div > div > div:nth-child(4)').hide();
  //hide Email Greeting
  cj('#crm-communication-pref-content > div > div:nth-child(7)').hide();
  //hide Postal Greeting
  cj('#crm-communication-pref-content > div > div:nth-child(8)').hide();
  //hide Addressee
  cj('#crm-communication-pref-content > div > div:nth-child(9)').hide();
   //*******************************
   // hide all edit button helpers
   cj('#crm-contactinfo-content > div > div.crm-edit-help').hide();
   cj('#crm-contactinfo-content').attr('class','crm-inline-editXX');

   cj('#crm-email-content > div > div.crm-edit-help').hide();
   cj('#crm-email-content').attr('class','crm-inline-editXX');

   cj('#crm-phone-content > div > div.crm-edit-help').hide();
   cj('#crm-phone-content').attr('class','crm-inline-editXX');
   
   cj('#crm-website-content > div > div.crm-edit-help').hide();
   cj('#crm-website-content').attr('class','crm-inline-editXX');
   
   cj('#address-block-1 > div > div.crm-edit-help').hide();
   cj('#address-block-1').attr('class','crm-inline-editXX');
   
   cj('#address-block-2 > div > div.crm-edit-help').hide();
   cj('#address-block-2').attr('class','crm-inline-editXX');
   
   cj('#crm-communication-pref-content > div > div.crm-edit-help').hide();
   cj('#crm-communication-pref-content').attr('class','crm-inline-editXX');
   
   cj('#crm-demographic-content > div > div.crm-edit-help').hide();
   cj('#crm-demographic-content').attr('class','crm-inline-editXX');

   cj('#custom-set-content-9 > div > div.crm-edit-help').hide();
   cj('#custom-set-content-9').attr('class','crm-inline-editXX');

   
   
   
   //*******************************
   
   //alert(jobtitle);
   //crm-summary-block
   //page-civicrm
   // type/institution/job title
   type = cj('#custom-set-content-9 > div > div:nth-child(8) > div.crm-content.crm-custom-data').html();
   institution = cj('#crm-contactinfo-content > div > div:nth-child(2) > div.crm-content.crm-contact-current_employer > a').html();
   jobtitle = cj('#crm-contactinfo-content > div > div:nth-child(3) > div.crm-content.crm-contact-job_title').html();
   

      
   employer    = cj('#crm-contactinfo-content > div > div:nth-child(2) > div.crm-content.crm-contact-current_employer').html();
   university  = cj('#custom-set-content-9 > div > div:nth-child(9) > div.crm-content.crm-custom-data').html();
   institution = cj('#custom-set-content-9 > div > div:nth-child(10) > div.crm-content.crm-custom-data').html();
    //alert(university);
    employer = employer.replace('\n','');
    employer = employer.replace(/[\s]{2,}/gm,' '); //replace many spaces by one
    employer = employer.replace(/^[\s]$/gm,''); //replace one space by null
    //employer = employer.replace(/[\s]/gm,'*');
    
   /*
   if (typeof  type == 'undefined')        {type=null;alert('1');}        ;// else { type = " * "+type}
   if (typeof institution == 'undefined')  {institution=null;alert('2');} ;// else { institution = " * "+institution}
   if (typeof university == 'undefined')   {university=null;alert('3');}  ;// else { university = " * "+university}
   if (typeof employer == 'undefined')     {employer=null;alert('4');}    ;// else { employer = " * "+employer}
   if (typeof jobtitle == 'undefined')     {jobtitle=null;alert('5');}    ;// else { jobtitle = " * "+jobtitle}
   */
   //employer_inst_univ = '';
   /*
   alert('employer=#'+employer+'#');
   alert('institution=#'+institution+'#');
   alert('university#='+university+'#');
   */
   var employer_inst_univ = employer || institution ||  university ;
   /*
   if ( (employer_inst_univ == '') && ( employer !== '') )    { employer_inst_univ = employer ; }
   if ( (employer_inst_univ == '') && ( institution !== '') ) { employer_inst_univ = institution ; }
   if ( (employer_inst_univ == '') && ( university !== '') )  { employer_inst_univ = university ; }
   */
   //employer_inst_univ = university ;
  //alert('employer_inst_univ='+employer_inst_univ);


   info_band = '<br><div class="crm-summary-block"><font color="#000000";font size=2px>\
         <strong> <div>&nbsp;&nbsp;<br></div>\
                  <div>&nbsp;&nbsp;   '+type+'</div>\
                  <div>&nbsp;&nbsp;   '+employer_inst_univ+'</div>\
		              <div>&nbsp;&nbsp;   '+jobtitle+'</div>\
		 </font></strong></div>\
		 ';
   //                cj('#crm-contactname-content > div > div.crm-summary-display_name').after(info_band);
   SumDisplay = cj('#crm-contactname-content > div > div.crm-summary-display_name').parent().html();   
   SumDisplay = SumDisplay.replace(/(<div class="icon crm-icon Individual-icon"><\/div><\/a>)([\s\w\W]*)(<\/div>)/gm,'$1 $2  '+info_band+' $3');
   //SumDisplay = SumDisplay.replace(/div/gm,'***');
   //alert(SumDisplay);
   
   cj('#crm-contactname-content > div > div.crm-summary-display_name').html(SumDisplay);
   //#crm-contactname-content > div > div.crm-summary-display_name
   
   //** moving short bio elements
   jobt_sel  =  '#crm-contactinfo-content > div > div:nth-child(3)';
   nationality_sel ='#custom-set-content-9 > div > div:nth-child(7)';                 
   nationality = cj(nationality_sel).html();
   nationality = nationality.replace(/<td class="label"\>([\w\<\s="\-\>.*\/]*)(<\/td>)([\W]*)(<td class="html-adjust">)([\W\w]*)/gm,'<td class="html-adjust" colspan="3"">$1<br>$5');
   //nationality = nationality.replace('crm-custom-data','crm-contact_source')';
   nn = '<div class="crm-summary-row">'+nationality+'</div>' ;
   cj(jobt_sel).after(nn);
   cj(nationality_sel).remove();
   //**university
   university_sel ='#custom-set-content-9 > div > div:nth-child(8)';
   university = cj(university_sel).html();
   university = university.replace(/<td class="label"\>([\w\<\s="\-\>.*\/]*)(<\/td>)([\W]*)(<td class="html-adjust">)([\W\w]*)/gm,'<td class="html-adjust" colspan="3"">$1<br>$5');
   //university = nationality.replace('crm-custom-data','crm-contact_source')';
   nn = '<div class="crm-summary-row">'+university+'</div>' ;
   cj(jobt_sel).after(nn);
   cj(university_sel).remove();   
   //**institution
   
   institution_sel ='#custom-set-content-9 > div > div:nth-child(8)';
   institution = cj(institution_sel).html();
   institution = institution.replace(/<td class="label"\>([\w\<\s="\-\>.*\/]*)(<\/td>)([\W]*)(<td class="html-adjust">)([\W\w]*)/gm,'<td class="html-adjust" colspan="3"">$1<br>$5');
   //institution = institution.replace('crm-custom-data','crm-contact_source')';
   nn = '<div class="crm-summary-row">'+institution+'</div>' ;
   cj(jobt_sel).after(nn);
   cj(institution_sel).remove();  
   
   //**type   
   type_sel ='#custom-set-content-9 > div > div:nth-child(7)';
   type = cj(type_sel).html();
   type = type.replace(/<td class="label"\>([\w\<\s="\-\>.*\/]*)(<\/td>)([\W]*)(<td class="html-adjust">)([\W\w]*)/gm,'<td class="html-adjust" colspan="3"">$1<br>$5');
   //type = type.replace('crm-custom-data','crm-contact_source')';
   nn = '<div class="crm-summary-row">'+type+'</div>' ;
   cj(jobt_sel).after(nn);
   cj(type_sel).remove();     

   
      

</script>
{/literal}

