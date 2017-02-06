<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
 <sch:pattern>
     <sch:rule context="codeblock">
         <sch:report test="starts-with(text(), '$ ')" sqf:fix="remove_prompt" role="warn">
             Don’t include the command prompt.
         </sch:report>
         
         <sqf:fix id="remove_prompt">
             <sqf:description>
                 <sqf:title>Remove the command prompt</sqf:title>
             </sqf:description>
             <sqf:stringReplace match="text()" regex="\$ "/>
         </sqf:fix>
         
         
         <sch:report test="starts-with(text(), 'minikube') and contains(text(), '&#xA;')"
             sqf:fix="splitCodeblock">
             Commands and output should not be in the same codeblock.
         </sch:report>
         
         <sqf:fix id="splitCodeblock">
             <sqf:description>
                 <sqf:title>Split the command from the output</sqf:title>
             </sqf:description>
             <sch:let name="fistLine" value="substring-before(text(), '&#xA;')"/>
             <sch:let name="endLines" value="substring-after(text(), '&#xA;')"/>
             <sqf:replace>
                 <codeblock><xsl:value-of select="$fistLine"></xsl:value-of></codeblock>
                 <p></p>
                 <codeblock><xsl:value-of select="$endLines"></xsl:value-of></codeblock>
             </sqf:replace>
         </sqf:fix>
     </sch:rule>
     
     <sch:rule context="text()">
         
         <xsl:variable name="commandValue">
             <xsl:analyze-string select="." regex="&quot;(minikube[^&quot;]*)&quot;">
                 <xsl:matching-substring>
                     <xsl:value-of select="regex-group(0)"/>
                 </xsl:matching-substring>
             </xsl:analyze-string>
         </xsl:variable>
         
         <sch:report test="string-length($commandValue) > 0" sqf:fix="markupCode">
             Found quoted command: <sch:value-of select="$commandValue"/>. Use code style for inline code and commands.
         </sch:report>
         
         <sqf:fix id="markupCode">
             <sqf:description>
                 <sqf:title>Markup as inline code</sqf:title>
             </sqf:description>
             <sqf:stringReplace regex="&quot;(minikube[^&quot;]*)&quot;">
                 <codeph><xsl:value-of select="'$1'"/></codeph>
             </sqf:stringReplace>
         </sqf:fix>
     </sch:rule>
 </sch:pattern>   
</sch:schema>