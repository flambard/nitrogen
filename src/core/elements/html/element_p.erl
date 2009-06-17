% Nitrogen Web Framework for Erlang
% Copyright (c) 2008-2009 Rusty Klophaus
% See MIT-LICENSE for licensing information.

-module (element_p).
-compile(export_all).
-include ("wf.inc").

reflect() -> record_info(fields, p).

render_element(HtmlID, Record, Context) -> 
	Elements = wf_tags:emit_tag(p, Record#p.body, [
		{id, HtmlID}, 
		{class, [p, Record#p.class]},
		{style, Record#p.style}
	]),
	{ok, Elements, Context}.
	