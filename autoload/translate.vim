" Translate
function! translate#do(text, source_lang, target_lang = "") abort
  let l:translator_path = "translate"

  let l:escaped_text = escape(a:text, '"')
  let l:escaped_text = escape(l:escaped_text, '(')
  let l:escaped_text = escape(l:escaped_text, ')')

  let l:cmd = '!'.l:translator_path
  let l:cmd = l:cmd.' -source-lang '.a:source_lang
  let l:cmd = l:cmd.' -target-lang '.a:target_lang
  let l:cmd = l:cmd.' -text \"'.l:escaped_text.'"'

  execute l:cmd
endfunction

" TODO: Translate from Visual mode
" function! translate#visual(source_lang = "JA", target_lang = "EN") range abort
"   normal! `<V`>y
"   echo(getreg('*'))
"   call translate#do(getreg('*'), source_lang, target_lang)
" endfunction
