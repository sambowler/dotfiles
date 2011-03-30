if !exists('loaded_snippet') || &cp
    finish
	endif

	let st = g:snip_start_tag
	let et = g:snip_end_tag
	let cd = g:snip_elem_delim

	function! SelectDoctype()
	    let st = g:snip_start_tag
		    let et = g:snip_end_tag
			    let cd = g:snip_elem_delim
				    let dt = inputlist(['Select doctype:',
					                \ '1. HTML 5',
									                \ '2. HTML 4.01',
													                \ '3. HTML 4.01 Transitional',
																	                \ '4. HTML 4.01 Frameset',
																					                \ '5. XHTML 1.0 Frameset',
																									                \ '6. XHTML Strict',
																													                \ '7. XHTML Transitional',
																																	                \ '8. XHTML Frameset'])
																																					    let dts = {1: "<!DOCTYPE html>\n".st.et,
																																						             \ 2: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01//EN\"\n\"http://www.w3.org/TR/html4/strict.dtd\">\n".st.et,
																																									              \ 3: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"\n\"http://www.w3.org/TR/html4/loose.dtd\">\n".st.et,
																																												               \ 4: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Frameset//EN\"\n\"http://www.w3.org/TR/html4/frameset.dtd\">\n".st.et,
																																															                \ 5: "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Frameset//EN\"\n\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd\">\n".st.et,
																																																			             \ 6: "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML Strict//EN\"\n\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\n".st.et,
																																																						              \ 7: "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML Transitional//EN\"\n\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n".st.et,
																																																									               \ 8: "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML Frameset//EN\"\n\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd\">\n".st.et}
																																																												       
																																																													       return dts[dt]
																																																														   endfunction

																																																														   exec "Snippet doct ``SelectDoctype()``"
																																																														   exec "Snippet doctype <!DOCTYPE html><CR>".st.et
																																																														   exec "Snippet doc4s <!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01//EN\"<CR>\"http://www.w3.org/TR/html4/strict.dtd\"><CR>".st.et
																																																														   exec "Snippet doc4t <!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"<CR>\"http://www.w3.org/TR/html4/loose.dtd\"><CR>".st.et
																																																														   exec "Snippet doc4f <!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Frameset//EN\"<CR>\"http://www.w3.org/TR/html4/frameset.dtd\"><CR>".st.et
																																																														   exec "Snippet docxs <!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML Strict//EN\"<CR>\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\"><CR>".st.et
																																																														   exec "Snippet docxt <!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML Transitional//EN\"<CR>\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\"><CR>".st.et
																																																														   exec "Snippet docxf <!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML Frameset//EN\"<CR>\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd\"><CR>".st.et
																																																														   exec "Snippet htmlfile <!DOCTYPE html><CR><html><CR><head><CR><title>".st.et."</title><CR><meta charset=\"utf-8\" /><CR>".st.et."<CR></head><CR><body><CR>".st.et."<CR></body><CR></html>"
																																																														   exec "Snippet scriptjs <script type=\"text/javascript\"><CR>".st.et."<CR></script>"
																																																														   exec "Snippet script <script><CR>".st.et."<CR></script>"
																																																														   exec "Snippet jquery <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.min.js\"></script>".st.et
																																																														   exec "Snippet title <title>".st.et."</title>"
																																																														   exec "Snippet body <body><CR>".st.et."<CR></body>"
																																																														   exec "Snippet scriptjssrc <script src=\"".st.et."\" type=\"text/javascript\"></script>"
																																																														   exec "Snippet scriptsrc <script src=\"".st.et."\"></script>"
																																																														   exec "Snippet textarea <textarea name=\"".st.et."\" rows=\"".st.et."\" cols=\"".st.et."\">".st.et."</textarea>"
																																																														   exec "Snippet meta <meta name=\"".st.et."\" content=\"".st.et."\" />"
																																																														   exec "Snippet movie <object width=\"".st.et."\" height=\"".st.et."\"<CR>classid=\"clsid:02BF25D5-8C17-4B23-BC80-D3488ABDDC6B\"<CR>codebase=\"http://www.apple.com/qtactivex/qtplugin.cab\"><CR><param name=\"src\"<CR>value=\"".st.et."\" /><CR><param name=\"controller\" value=\"".st.et."\" /><CR><param name=\"autoplay\" value=\"".st.et."\" /><CR><embed src=\"".st.et."\"<CR>width=\"".st.et."\" height=\"".st.et."\"<CR>controller=\"".st.et."\" autoplay=\"".st.et."\"<CR>scale=\"tofit\" cache=\"true\"<CR>pluginspage=\"http://www.apple.com/quicktime/download/\"<CR>/><CR></object><CR>"
																																																														   exec "Snippet div <div ".st.et."><CR>".st.et."<CR></div>"
																																																														   exec "Snippet mailto <a href=\"mailto:".st.et."?subject=".st.et."\">".st.et."</a>"
																																																														   exec "Snippet table <table border=\"".st.et."\"".st.et." cellpadding=\"".st.et."\"><CR><tr><th>".st.et."</th></tr><CR><tr><td>".st.et."</td></tr><CR></table>"
																																																														   exec "Snippet csslink4 <link rel=\"Stylesheet\" href=\"".st.et."\" type=\"text/css\" media=\"screen\" />"
																																																														   exec "Snippet csslink <link rel=\"Stylesheet\" href=\"".st.et."\" />"
																																																														   exec "Snippet link <link rel=\"".st.et."\" href=\"".st.et."\" media=\"".st.et."\" />"
																																																														   exec "Snippet form <form action=\"".st.et."\" method=\"".st.et."\"><CR>".st.et."<CR></form><CR>"
																																																														   exec "Snippet href <a href=\"".st.et."\">".st.et."</a>"
																																																														   exec "Snippet img <img src=\"".st.et."\" alt=\"".st.et."\" />"
																																																														   exec "Snippet h1 <h1>".st.et."</h1>"
																																																														   exec "Snippet h2 <h2>".st.et."</h2>"
																																																														   exec "Snippet h3 <h3>".st.et."</h3>"
																																																														   exec "Snippet h4 <h4>".st.et."</h4>"
																																																														   exec "Snippet h5 <h5>".st.et."</h5>"
																																																														   exec "Snippet input <input type=\"".st.et."\" name=\"".st.et."\" value=\"".st.et."\" />"
																																																														   exec "Snippet button <button type=\"".st.et."\" name=\"".st.et."\" value=\"".st.et."\">".st.et."</button>"
																																																														   exec "Snippet style4 <style type=\"text/css\" media=\"screen\"><CR>".st.et."<CR></style>"
																																																														   exec "Snippet style <style><CR>".st.et."<CR></style>"
																																																														   exec "Snippet base <base href=\"".st.et."\"".st.et." />"
																																																														   exec "Snippet video <video src=\"".st.et."\" width=\"".st.et."\" height=\"".st.et."\" controls>".st.et."</video>"
																																																														   exec "Snippet closure (function(){\n".st.et."\n}());"
																																																														   exec "Snippet proto ".st."className".et.".prototype = {\n".st.et."\n};"
																																																														   exec "Snippet protomethod ".st."className".et.".prototype.".st."methodName".et." = function(".st.et.") {\n".st.et."\n};"
																																																														   exec "Snippet afun function ".st.et."(".st."arguments".et.") {\n".st.et."\n}"
																																																														   exec "Snippet fun var ".st."functionName".et." = function (".st."arguments".et.") {\n".st.et."\n};"
																																																														   exec "Snippet alert alert(".st.et.");"
																																																														   exec "Snippet clog console.log(".st.et.");"
																																																														   exec "Snippet cdebug console.debug(".st.et.");"
																																																														   exec "Snippet vardoc /**\n".st."description".et."\n@var {".st."type".et."} ".st."name".et."\n/"
																																																														   exec "Snippet fundoc /**\n@function {".st."type".et."} ? ".st."description".et."\n/"
																																																														   exec "Snippet voidfundoc /**\n@function ? ".st."description".et."\n/"
																																																														   exec "Snippet param @param {".st."type".et."} ".st."name".et." - ".st."description".et."\n"
																																																														   exec "Snippet subparam \t@... {".st."type".et."} ".st."name".et." - ".st."description".et."\n"
