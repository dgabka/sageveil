export FZF_DEFAULT_OPTS="
	--color=fg:<%= it.ansi.base.white %>,bg:<%= it.ansi.base.black %>,hl:<%= it.ansi.base.cyan %>
	--color=fg+:<%= it.ansi.base.white %>,bg+:<%= it.extras.surface %>,hl+:<%= it.ansi.base.cyan %>
	--color=border:<%= it.ansi.dim.blue %>,header:<%= it.ansi.base.green %>,gutter:<%= it.ansi.dim.black %>
	--color=spinner:<%= it.ansi.base.yellow %>,info:<%= it.ansi.dim.blue %>,separator:<%= it.ansi.dim.blue %>
	--color=pointer:<%= it.ansi.base.cyan %>,marker:<%= it.ansi.base.green %>,prompt:<%= it.ansi.dim.white %>"
