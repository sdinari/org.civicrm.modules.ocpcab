{literal}
<script type="text/javascript">
 //CRM/Contact/Form/Contact.tpl
 //alert("Hello! I am an alert box!!");
   
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
   cj('#Address_Block_1 > table > tbody > tr:nth-child(1)').remove();
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
   nationality = cj('#customData9 > table > tbody > tr.custom_field-row.custom_44_-1-row').html();
   //cj('#contactDetails > div.crm-section.contact_basic_information-section > table > tbody > tr:nth-child(1) > td:nth-child(1)').before('<tr>'+zz+'</tr><tr><td>88888</td></tr>');
   cj('#contactDetails > div.crm-section.contact_basic_information-section > table > tbody > tr:nth-child(1)').before('<tr>'+nationality+'</tr>');
   cj('#customData9 > table > tbody > tr.custom_field-row.custom_44_-1-row').hide();
   //copy type from shortbio to top page 
   type = cj('#customData9 > table > tbody > tr.custom_field-row.custom_48_-1-row').html();
   cj('#contactDetails > div.crm-section.contact_basic_information-section > table > tbody > tr:nth-child(1)').before('<tr>'+type+'</tr>');
   cj('#customData9 > table > tbody > tr.custom_field-row.custom_48_-1-row').hide();
   //alert(zz);
   // copy gender from demographic to top page
   
   gender = cj('#demographics > div:nth-child(1)').html();
   cj('#contactDetails > div.crm-section.contact_basic_information-section > table > tbody > tr:nth-child(1)').before('<td>'+gender+'</td>');
   cj('#demographics > div:nth-child(1)').hide();
   //alert(gender);
   //change label : "Current Employer"
   //#contactDetails > div.crm-section.contact_basic_information-section > table > tbody > tr:nth-child(5) > td:nth-child(1) > label
   //zz = cj('#contactDetails > div.crm-section.contact_basic_information-section > table > tbody > tr:nth-child(5) > td:nth-child(1) > label').html();
   //zz =cj('label[for="employer_id"]').html();
   cj('label[for="employer_id"]').html('Current Employer/University/Institution');
   //alert(zz);
   
   //Add cv print  button
   btn_cv ='<span class="crm-button crm-button-type-upload crm-button_qf_Contact_upload_view crm-i-button">\
              <i class="crm-i fa-check"></i>\
			  <input class="crm-form-submit default validate" accesskey="b" crm-icon="fa-check" name="_qf_Contact_cv_view" value="print cv" type="submit" id="_qf_Contact_cv_view-bottom">\
			</span>';
   cj('#Contact > div.crm-form-block.crm-search-form-block > div:nth-child(14) > span.crm-button.crm-button-type-upload.crm-button_qf_Contact_upload_view.crm-i-button').before(btn_cv);
</script>
{/literal}

