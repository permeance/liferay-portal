<%
/**
 * Copyright (c) 2000-2009 Liferay, Inc. All rights reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 */
%>

<%@ include file="/html/taglib/init.jsp" %>

<%
String cssClass = GetterUtil.getString((String)request.getAttribute("liferay-ui:input-checkbox:cssClass"));
String formName = namespace + request.getAttribute("liferay-ui:input-checkbox:formName");
String param = (String)request.getAttribute("liferay-ui:input-checkbox:param");
String id = (String)request.getAttribute("liferay-ui:input-checkbox:id");
Boolean defaultValue = (Boolean)request.getAttribute("liferay-ui:input-checkbox:defaultValue");
String onClick = GetterUtil.getString((String)request.getAttribute("liferay-ui:input-checkbox:onClick"));
boolean disabled = GetterUtil.getBoolean((String)request.getAttribute("liferay-ui:input-checkbox:disabled"));

boolean value = ParamUtil.getBoolean(request, param, defaultValue.booleanValue());

if (Validator.isNull(id)) {
	id = namespace + param;
}
%>

<input id="<%= id %>" name="<%= namespace %><%= param %>" type="hidden" value="<%= value %>" />

<input <%= value ? "checked" : "" %> <%= Validator.isNotNull(cssClass) ? "class=\"" + cssClass + "\"" : StringPool.BLANK %> <%= disabled ? "disabled=\"disabled\"" : "" %> id="<%= id %>Checkbox" name="<%= namespace %><%= param %>Checkbox" type="checkbox" onClick="AUI().one(this).previous().val(this.checked); <%= onClick %>" />