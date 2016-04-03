<#assign var_tab_count = var_tab_count/>
<#switch var_attributeDefType>
<#case var_typeDef.NUMBER>
${""?left_pad(var_tab_count,"	")}${var_attributeName} = src.readDouble();
<#break>
<#case var_typeDef.INT>
${""?left_pad(var_tab_count,"	")}${var_attributeName} = src.getInt();
<#break>
<#case var_typeDef.SHORT>
${""?left_pad(var_tab_count,"	")}${var_attributeName} = src.getShort();
<#break>
<#case var_typeDef.STRING>
${""?left_pad(var_tab_count,"	")}${var_attributeName} = ByteUtil.getStringFromBuff(src);
<#break>
<#case var_typeDef.FLOAT>
${""?left_pad(var_tab_count,"	")}${var_attributeName} = src.readFloat();
<#break>
<#case var_typeDef.BYTE>
${""?left_pad(var_tab_count,"	")}${var_attributeName} = src.get();
<#break>
<#case var_typeDef.LONG>
${""?left_pad(var_tab_count,"	")}${var_attributeName} = src.getLong();
<#break>
</#switch>
