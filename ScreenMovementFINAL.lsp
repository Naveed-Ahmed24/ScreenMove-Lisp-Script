(defun C:ScreenShift()
;Script to move the many AutoCad interfaces move the screen from one saved position to another;
;written by Naveed Ahmed;

(setq initialPrompt (getint))
(setq setter (getint))		;upon prompt activation request the two numbers to execute commands;
(cond 
	((= 7 initialPrompt) 
		(cond
			((= 1 setter)
				(setq viewCtr1    (getvar "viewctr")) 
 				(setq viewSize1   (getvar "viewsize")) 
			)
			((= 2 setter)
				(command "_camera" (list (nth 0 viewCtr1) (nth 1 viewCtr1) (/ viewsize1 0.465948)) (list (nth 0 viewCtr1) (nth 1 viewCtr1) 0.0) "view" "yes") 
				(command "'_perspective" 0)
			)
		)	
	)
	((= 8 initialPrompt) 
		(cond
			((= 1 setter)
				(setq viewCtr2    (getvar "viewctr")) 
 				(setq viewSize2   (getvar "viewsize")) 
			)
			((= 2 setter)
				(command "_camera" (list (nth 0 viewCtr2) (nth 1 viewCtr2) (/ viewsize2 0.465948)) (list (nth 0 viewCtr2) (nth 1 viewCtr2) 0.0) "view" "yes") 
				(command "'_perspective" 0)
			)
		)	
	)
	(t (princ))
)

(princ)	;exits quietly;
)
