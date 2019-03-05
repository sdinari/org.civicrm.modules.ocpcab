{literal}
<script type="text/javascript">
 //CRM/Contact/Form/Contact.tpl
   //alert("Hello! I am an alert box!!");
   
   //hide menu tag
   cj('#tab_tag').hide(); 
   //summary other info
   // type/institution/job title
   type = cj('#custom-set-content-9 > div > div:nth-child(8) > div.crm-content.crm-custom-data').html();
   institution = cj('#crm-contactinfo-content > div > div:nth-child(2) > div.crm-content.crm-contact-current_employer > a').html();
   jobtitle = cj('#crm-contactinfo-content > div > div:nth-child(3) > div.crm-content.crm-contact-job_title').html();
   
   if (typeof  type == 'undefined')  {type=' * ';} else { type = " * "+type}
   if (typeof institution == 'undefined')  {institution=' * ';} else { institution = " * "+institution}
   if (typeof jobtitle == 'undefined')  {jobtitle=' * ';} else { jobtitle = " * "+jobtitle}
   
   
   // hide nickname
   cj('#crm-contactinfo-content > div > div:nth-child(4)').hide();

  // hide tag
  cj('#contact-summary > div.contactTopBar.contact_panel > div.contactCardRight > div > div > div > div:nth-child(1)').hide();
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
   //alert(jobtitle);
   info_band = '<br><div><font color="#000000";font size=2px>\
         <strong> <div>&nbsp;&nbsp;   '+type+'</div>\
                  <div>&nbsp;&nbsp;   '+institution+'</div>\
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
   
   
   
      

</script>
{/literal}

