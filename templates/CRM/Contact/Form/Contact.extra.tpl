{literal}
<script type="text/javascript">
 //CRM/Contact/Form/Contact.tpl
 //alert("Hello! I am an alert box!!");
   
   Gurl = window.location.href;
   GpageType='';
   if ( Gurl.includes("action=update") ) { 
     GpageType = "update";
     }   else { GpageType ="new"; }

   if (GpageType == "new") {
   //cj("#select2-drop").hide();
   cj('label[for="middle_name"]').parents("td").remove(); // hide cell of middle_name
   cj('label[for="nick_name"]').parents("td").remove(); //nick_name
   cj('label[for="suffix_id"]').parents("td").remove();//hide suffix
   cj("#email_1_location_type_id").hide();//email location 
   cj('#email_1_location_type_id').attr("selected",true);//set default value for email (mandatory)
   //sigature
   cj('.email-signature').remove();	
   
   //phone location
     cj('#contactDetails > table.crm-section.contact_information-section.form-layout-compressed > tbody > tr:nth-child(3) > td:nth-child(2)').hide();
     cj('#Phone_Block_1 > td:nth-child(2)').hide();
     cj('#Phone_Block_1 > td:nth-child(2)').attr("selected",true);//set default value for email (mandatory)
   //"Add another phone number" --> link
     cj('#contactDetails > table.crm-section.contact_information-section.form-layout-compressed > tbody > tr:nth-child(5) > td').remove();
  
   //hide block IM
     cj('#contactDetails > table.crm-section.contact_information-section.form-layout-compressed > tbody > tr:nth-child(6)').remove();
	 cj('#IM_Block_1').remove();
   // "Add another IM" --> link
     cj('#contactDetails > table.crm-section.contact_information-section.form-layout-compressed > tbody > tr:nth-child(6) > td > a').remove();

   //external id
   cj('#contactDetails > table.crm-section.contact_source-section.form-layout-compressed > tbody > tr > td:nth-child(2)').remove();
   
   //Address Location Type
   cj('#Address_Block_1 > table > tbody > tr:nth-child(1)').hide();
   //Supplemental Address 2 / Supplemental Address 3
   cj('#address_table_1 > tbody > tr:nth-child(3)').hide();
   cj('#address_table_1 > tbody > tr:nth-child(4)').hide();
   //County
   cj('#address_table_1 > tbody > tr:nth-child(7)').hide();
   //Greeting : emil,postal ,addresse
   cj('#commPrefs > table > tbody > tr:nth-child(3)').hide();
   cj('#commPrefs > table > tbody > tr:nth-child(4)').hide();
   //tags
   cj('#tagGroup > table > tbody > tr > td:nth-child(1)').hide();
   
   /////
   //copy nationality from shortbio to top page
   nationality_sel ='#customData9 > table > tbody > tr.custom_field-row[class*="custom_44"]';	
   nationality = cj(nationality_sel).html();
   nationality = nationality.replace(/<td class="label"\>([\w\<\s="\-\>.*\/]*)(<\/td>)([\W]*)(<td class="html-adjust">)([\W\w]*)/gm,'<td class="html-adjust" colspan="3"">$1<br>$5');
   //alert(nationality); 
   cj('#contactDetails > div.crm-section.contact_basic_information-section > table > tbody > tr:nth-child(1)').before('<tr>'+nationality+'</tr>');
   cj(nationality_sel).hide();
                
   //alert(nationality); 
   //console.log(lbnationality)                ;

   //copy type from shortbio to top page 
   type_sel = '#customData9 > table > tbody > tr.custom_field-row[class*="custom_48"]' ;
   type = cj(type_sel).html();
   type = type.replace('crm-form-select','crm-select2'); //crm-form-select  --> crm-select2 huge
   
   type = type.replace('<td class="label"><label for="custom_48_-1">Type</label>','');
   type = type.replace('          </td>','');
   type = type.replace('<td class="html-adjust">','<td class="html-adjust" colspan="3"> <label for="custom_48_-1">Type</label><br>');

   cj('#contactDetails > div.crm-section.contact_basic_information-section > table > tbody > tr:nth-child(1)').before('<tr>'+type+'</tr>');
   cj(type_sel).hide();
 
   // type = cj('#contactDetails > div.crm-section.contact_basic_information-section > table > tbody > tr:nth-child(1)').html();
              
   //alert(type);
   //console.log(type);
   // copy gender from demographic to top page
   
   gender = cj('#demographics > div:nth-child(1)').html();
   gender = gender.replace('<span class="label"><label>Gender</label></span>','<label for="lbGender">Gender</label><br>');
   cj('#contactDetails > div.crm-section.contact_basic_information-section > table > tbody > tr:nth-child(1)').before('<td colspan="3">'+gender+'</td>');
   cj('#demographics > div:nth-child(1)').hide();
   //alert(gender);
   //console.log(gender);

   //change label : "Current Employer"
   //#contactDetails > div.crm-section.contact_basic_information-section > table > tbody > tr:nth-child(5) > td:nth-child(1) > label
   //zz = cj('#contactDetails > div.crm-section.contact_basic_information-section > table > tbody > tr:nth-child(5) > td:nth-child(1) > label').html();
   //zz =cj('label[for="employer_id"]').html();
   //----->>>>cj('label[for="employer_id"]').html('Current Employer/University/Institution');
   //alert(zz);
   
   // shortbio Univeristy moving
   university_sel = '#customData9 > table > tbody > tr.custom_field-row[class*="custom_49"]' ;
   university = cj(university_sel).html();
   university = university.replace(/<td class="label"\>([\w\<\s="\-\>.*\/]*)(<\/td>)([\W]*)(<td class="html-adjust">)([\W\w]*)/gm,'<td class="html-adjust">$1<br>$5');
   cj('#contactDetails > div.crm-section.contact_basic_information-section > table > tbody > tr:nth-child(5)').after('<tr>'+university+'</tr>');
   cj(university_sel).hide();
   // shortbio Institution moving
  institution_sel = '#customData9 > table > tbody > tr.custom_field-row[class*="custom_50"]' ;
  institution = cj(institution_sel).html();
  institution = institution.replace(/<td class="label"\>([\w\<\s="\-\>.*\/]*)(<\/td>)([\W]*)(<td class="html-adjust">)([\W\w]*)/gm,'<td class="html-adjust">$1<br>$5');
  cj('#contactDetails > div.crm-section.contact_basic_information-section > table > tbody > tr:nth-child(6)').after('<tr>'+institution+'</tr>');
  
  cj(institution_sel).hide();
   //Add cv print  button
   btn_cv ='<span class="crm-button crm-button-type-upload crm-button_qf_Contact_upload_view crm-i-button">\
              <i class="crm-i fa-check"></i>\
			  <input class="crm-form-submit default validate" accesskey="b" crm-icon="fa-check" name="_qf_Contact_cv_view" value="print cv" type="submit" id="_qf_Contact_cv_view-bottom">\
			</span>';
   cj('#Contact > div.crm-form-block.crm-search-form-block > div:nth-child(14) > span.crm-button.crm-button-type-upload.crm-button_qf_Contact_upload_view.crm-i-button').before(btn_cv);

   } //<end> GpageType=="new"
    else if (GpageType == "update") {
    /////////////////////////////////////////////////////  
    // 
    ////////////////////////////////////////////////////
    cj('label[for="middle_name"]').parents("td").remove(); // hide cell of middle_name
    cj('label[for="nick_name"]').parents("td").remove(); //nick_name
    cj('label[for="suffix_id"]').parents("td").remove();//hide suffix
    cj("#email_1_location_type_id").hide();//email location 
    cj('#email_1_location_type_id').attr("selected",true);//set default value for email (mandatory)
    //sigature
    cj('.email-signature').remove();	

   //phone location
     cj('#contactDetails > table.crm-section.contact_information-section.form-layout-compressed > tbody > tr:nth-child(3) > td:nth-child(2)').hide();
     cj('#Phone_Block_1 > td:nth-child(2)').hide();
     cj('#Phone_Block_1 > td:nth-child(2)').attr("selected",true);//set default value for email (mandatory)
   //"Add another phone number" --> link
     cj('#contactDetails > table.crm-section.contact_information-section.form-layout-compressed > tbody > tr:nth-child(5) > td').remove();
   //hide block IM
     cj('#contactDetails > table.crm-section.contact_information-section.form-layout-compressed > tbody > tr:nth-child(6)').remove();
	 cj('#IM_Block_1').remove();
   // "Add another IM" --> link
     cj('#contactDetails > table.crm-section.contact_information-section.form-layout-compressed > tbody > tr:nth-child(6) > td > a').remove();

   //external id
   cj('#contactDetails > table.crm-section.contact_source-section.form-layout-compressed > tbody > tr > td:nth-child(2)').remove();
   // contact id 
   cj('#contactDetails > table.crm-section.contact_source-section.form-layout-compressed > tbody > tr > td:nth-child(2)').hide();

   //Address Location Type
   cj('#Address_Block_1 > table > tbody > tr:nth-child(1)').hide();
   //Supplemental Address 2 / Supplemental Address 3
   cj('#address_table_1 > tbody > tr:nth-child(3)').hide();
   cj('#address_table_1 > tbody > tr:nth-child(4)').hide();
   //County
   cj('#address_table_1 > tbody > tr:nth-child(7)').hide();
   //Greeting : email,postal ,addresse
   cj('#commPrefs > table > tbody > tr:nth-child(3)').hide();
   cj('#commPrefs > table > tbody > tr:nth-child(4)').hide();
   //tags
   cj('#tagGroup > table > tbody > tr > td:nth-child(1)').hide();      
   //123*****
   /////
   //moving nationality from shortbio to top page  (update  page)
                
   nationality_sel ='#customData9 > table > tbody > tr.custom_field-row[class*="custom_44"]';                 
   nationality = cj(nationality_sel).html();
   nationality = nationality.replace(/<td class="label"\>([\w\<\s="\-\>.*\/]*)(<\/td>)([\W]*)(<td class="html-adjust">)([\W\w]*)/gm,'<td class="html-adjust" colspan="3"">$1<br>$5');
   //alert(nationality); 
   cj('#contactDetails > div.crm-section.contact_basic_information-section > table > tbody > tr:nth-child(1)').before('<tr>'+nationality+'</tr>');
   cj(nationality_sel).remove();

   //copy type from shortbio to top page 
   type_sel = '#customData9 > table > tbody > tr.custom_field-row[class*="custom_48"]' ;          
   type = cj(type_sel).html();
   type = type.replace('crm-form-select','crm-select2'); //crm-form-select  --> crm-select2 huge
   
   //type = type.replace('<td class="label"><label for="custom_48_-67">Type</label>','');
   //type = type.replace('          </td>','');
   //type = type.replace('<td class="html-adjust">','<td class="html-adjust" colspan="3"> <label for="custom_48_-67">Type</label><br>');
   type = type.replace(/<td class="label"\>([\w\<\s="\-\>.*\/]*)(<\/td>)([\W]*)(<td class="html-adjust">)([\W\w]*)/gm,'<td class="html-adjust">$1<br>$5');
   cj('#contactDetails > div.crm-section.contact_basic_information-section > table > tbody > tr:nth-child(1)').before('<tr>'+type+'</tr>');
   cj(type_sel).remove();


   // move gender from demographic to top page
   gender = cj('#demographics > div:nth-child(1)').html();
   gender = gender.replace('<span class="label"><label>Gender</label></span>','<label for="lbGender">Gender</label><br>');
   cj('#contactDetails > div.crm-section.contact_basic_information-section > table > tbody > tr:nth-child(1)').before('<td colspan="3">'+gender+'</td>');
   cj('#demographics > div:nth-child(1)').hide(); 
   
   // shortbio University moving
   university_sel = '#customData9 > table > tbody > tr.custom_field-row[class*="custom_49"]' 
   university = cj(university_sel).html();
   university = university.replace(/<td class="label"\>([\w\<\s="\-\>.*\/]*)(<\/td>)([\W]*)(<td class="html-adjust">)([\W\w]*)/gm,'<td class="html-adjust">$1<br>$5');
   cj('#contactDetails > div.crm-section.contact_basic_information-section > table > tbody > tr:nth-child(5)').after('<tr>'+university+'</tr>');
   cj(university_sel).remove();   

   // shortbio Institution moving
  institution_sel = '#customData9 > table > tbody > tr.custom_field-row[class*="custom_50"]' ;
  //institution_sel = '#customData9 > table > tbody > tr.custom_field-row.custom_50_67-row' ;
  institution = cj(institution_sel).html();
  institution = institution.replace(/<td class="label"\>([\w\<\s="\-\>.*\/]*)(<\/td>)([\W]*)(<td class="html-adjust">)([\W\w]*)/gm,'<td class="html-adjust">$1<br>$5');
  cj('#contactDetails > div.crm-section.contact_basic_information-section > table > tbody > tr:nth-child(6)').after('<tr>'+institution+'</tr>');
  
  cj(institution_sel).remove();   
     
   //****************************** 
       
    }//<end> GpageType=="update"
</script>
{/literal}

