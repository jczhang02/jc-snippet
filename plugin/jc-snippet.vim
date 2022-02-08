" command! RefreshLineNumber call snip_util#RefreshLineNumber()

if !has("python") && !has("python3")
   finish
end

" This will fail if UltiSnips is not installed.
try
   call UltiSnips#bootstrap#Bootstrap()
catch /E117/
   finish
endtry


" This should have been set by UltiSnips, otherwise something is wrong.
" if !exists("g:_jcpy")
"    finish
" end
"
" let s:jc_SourcedFile=expand("<sfile>")
" exec g:_jcpy "import vim, os, sys"
" exec g:_jcpy "sourced_file = vim.eval('s:jc_SourcedFile')"
" exec g:_jcpy "while not os.path.exists(os.path.join(sourced_file, 'pythonx')):
"    \ sourced_file = os.path.dirname(sourced_file)"
" exec g:_jcpy "module_path = os.path.join(sourced_file, 'pythonx')"
" exec g:_jcpy "sys.path.append(module_path)"

au Filetype tex UltiSnipsAddFiletypes mathtex
au Filetype markdown UltiSnipsAddFiletypes mathtex
