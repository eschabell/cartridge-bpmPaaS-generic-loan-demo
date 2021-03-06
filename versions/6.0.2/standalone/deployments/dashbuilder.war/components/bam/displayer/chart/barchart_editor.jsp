<%--

    Copyright (C) 2012 JBoss Inc

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

          http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.

--%>
<%@ taglib uri="factory.tld" prefix="factory"%>
<%@ taglib uri="bui_taglib.tld" prefix="panel"%>
<%@ taglib uri="resources.tld" prefix="resource" %>
<%@ taglib uri="mvc_taglib.tld" prefix="mvc"%>
<%@ taglib uri="http://dashboard.jboss.org/taglibs/i18n-1.0" prefix="i18n"%>
<%@ page import="org.jboss.dashboard.ui.components.chart.BarChartEditor"%>
<%@ page import="org.jboss.dashboard.LocaleManager" %>
<%@ page import="org.jboss.dashboard.factory.Factory" %>
<%@ page import="org.jboss.dashboard.displayer.chart.BarChartDisplayer" %>
<%@ page import="org.jboss.dashboard.ui.UIBeanLocator" %>
<%@ page import="org.jboss.dashboard.ui.components.DataDisplayerViewer" %>
<i18n:bundle baseName="org.jboss.dashboard.displayer.messages" locale="<%=LocaleManager.currentLocale()%>"/>
<%
    BarChartEditor editor = (BarChartEditor) Factory.lookup("org.jboss.dashboard.ui.components.BarChartEditor");
    request.setAttribute("editor", editor);

    BarChartDisplayer displayer = (BarChartDisplayer) editor.getDataDisplayer();
    DataDisplayerViewer viewer = UIBeanLocator.lookup().getViewer(displayer);
%>
<table width="100%" cellspacing="2">
    <tr>
        <!-- Include the properties -->
        <td align="right" valign="top">
            <table cellspacing="2" width="250px">
                <!-- Domain and axis selection -->
                <mvc:include page="axis_selection.jsp"  flush="true" />
                <!-- Select the renderer -->
                <mvc:include page="renderer_selection.jsp"  flush="true" />
                <!-- Select the type of the bar -->
                <mvc:include page="chart_type_selection.jsp"  flush="true" />
                <!-- Include the width, height, etc properties -->
                <mvc:include page="generic_properties.jsp"  flush="true" />
                <!-- Include the X-axis properties-->
                <mvc:include page="xaxis_properties.jsp"  flush="true" />
                <!-- Submit button -->
                <%--mvc:include page="../../kpi_submit.jsp"  flush="true" --%>
            </table>
        </td>
        <td valign="top">
            <!-- Include the graphic -->            
            <mvc:include page="<%= viewer.getComponentIncludeJSP() %>"/>
        </td>
    </tr>
</table>
