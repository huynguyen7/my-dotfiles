" Draw startify header
let g:startify_custom_header = [
	\ '						  :::!~!!!!!:.            ',
	\ '					  .xUHWH!! !!?M88WHX:.        ',
	\ '					.X*#M@$!!  !X!M$$$$$$WWx:.    ',
	\ '				   :!!!!!!?H! :!$!$$$$$$$$$$8X:   ',
	\ '				  !!~  ~:~!! :~!$!#$$$$$$$$$$8X:  ',
	\ '				 :!~::!H!<   ~.U$X!?R$$$$$$$$MM!  ',
	\ '				 ~!~!!!!~~ .:XW$$$U!!?$$$$$$RMM!  ',
	\ '				   !:~~~ .:!M"T#$$$$WX??#MRRMMM!  ',
	\ '				   ~?WuxiW*`   `"#$$$$8!!!!??!!!  ',
	\ '				 :X- M$$$$       `"T#$T~!8$WUXU~  ',
	\ '				:%`  ~#$$$m:        ~!~ ?$$$$$$   ',
	\ '			  :!`.-   ~T$$$$8xx.  .xWW- ~""##*"   ',
	\ '	.....   -~~:<` !    ~?T#$$@@W@*?$$      /`    ',
	\ '	W$@@M!!! .!~~ !!     .:XUW$W!~ `"~:    :      ',
	\ '	#"~~`.:x%`!!  !H:   !WM$$$$Ti.: .!WUn+!`      ',
	\ '	:::~:!!`:X~ .: ?H.!u "$$$B$$$!W:U!T$$M~       ',
	\ '	.~~   :X@!.-~   ?@WTWo("*$$$W$TH$! `          ',
	\ '	Wi.~!X$?!-~    : ?$$$B$Wu("**$RM!             ',
	\ '	$R@i.~~ !     :   ~$$$$$B$$en:``              ',
	\ '	?MXT@Wx.~    :     ~"##*$$$$M~                ',
    \]


" Defines startify list
let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']                        },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']                    },
          \ ]


" Defines bookmarks
let g:startify_bookmarks = [
            \ { 'i': '~/.config/nvim/init.vim' },
            \ { 'z': '~/.zshrc' },
            \ ]


let g:startify_enable_special = 0
