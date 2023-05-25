/*! DataTables bdtUIkit 3 integration
 */
!function(e){"function"==typeof define&&define.amd?define(["jquery","datatables.net"],(function(t){return e(t,window,document)})):"object"==typeof exports?module.exports=function(t,a){return t||(t=window),a&&a.fn.dataTable||(a=require("datatables.net")(t,a).$),e(a,t,t.document)}:e(jQuery,window,document)}((function(e,t,a,d){"use strict";var i=e.fn.dataTable;return e.extend(!0,i.defaults,{dom:"<'row bdt-grid'<'bdt-width-1-2'l><'bdt-width-1-2'f>><'row bdt-grid dt-merge-grid'<'bdt-width-1-1'tr>><'row bdt-grid dt-merge-grid'<'bdt-width-2-5'i><'bdt-width-3-5'p>>",renderer:"uikit"}),e.extend(i.ext.classes,{sWrapper:"dataTables_wrapper dt-uikit",sProcessing:"dataTables_processing bdt-panel"}),i.ext.renderer.pageButton.uikit=function(t,d,n,s,r,l){var o,b,c,u=new i.Api(t),g=t.oClasses,f=t.oLanguage.oPaginate,p=t.oLanguage.oAria.paginate||{},h=0,w=function(a,d){var i,s,c,x,m=function(t){t.preventDefault(),e(t.currentTarget).hasClass("disabled")||u.page()==t.data.action||u.page(t.data.action).draw("page")};for(i=0,s=d.length;i<s;i++)if(x=d[i],e.isArray(x))w(a,x);else{switch(o="",b="",x){case"ellipsis":o='<i class="bdt-icon-ellipsis-h"></i>',b="bdt-disabled disabled";break;case"first":o='<i class="bdt-icon-angle-double-left"></i> '+f.sFirst,b=r>0?"":" bdt-disabled disabled";break;case"previous":o='<i class="bdt-icon-angle-left"></i> '+f.sPrevious,b=r>0?"":"bdt-disabled disabled";break;case"next":o=f.sNext+' <i class="bdt-icon-angle-right"></i>',b=r<l-1?"":"bdt-disabled disabled";break;case"last":o=f.sLast+' <i class="bdt-icon-angle-double-right"></i>',b=r<l-1?"":" bdt-disabled disabled";break;default:o=x+1,b=r===x?"bdt-active":""}o&&(c=e("<li>",{class:g.sPageButton+" "+b,id:0===n&&"string"==typeof x?t.sTableId+"_"+x:null}).append(e(-1!=b.indexOf("disabled")||-1!=b.indexOf("active")?"<span>":"<a>",{href:"#","aria-controls":t.sTableId,"aria-label":p[x],"data-dt-idx":h,tabindex:t.iTabIndex}).html(o)).appendTo(a),t.oApi._fnBindAction(c,{action:x},m),h++)}};try{c=e(d).find(a.activeElement).data("dt-idx")}catch(e){}w(e(d).empty().html('<ul class="bdt-pagination bdt-pagination-right bdt-flex-right"/>').children("ul"),s),c&&e(d).find("[data-dt-idx="+c+"]").trigger("focus")},i}));