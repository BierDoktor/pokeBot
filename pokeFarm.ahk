^p::pause

;^g::
;{
Sleep 10000

    Pull(true)

    Pull(initial) {
        if (initial) {
            Loop 6 {
                OutputDebug "Pulling..."
                Send "{2}"
                Sleep 15000
                
                /*
                    it breaks on the fourth pull, @todo find out why and fix it
                */

                Fight()
            }
    
            Berry()
        } else {
            Loop 5 {
                OutputDebug "Pulling..."
                Send "{2}"
                Sleep 15000
    
                Fight()
            }
    
            Berry()
        }
    }
    
    Fight() {
        OutputDebug "Fighting..."

        Send "{e}" 
        Sleep 500
        
        Send "{s}"
        Sleep 500
        
        Send "{e}"
        Sleep 500
        
        Send "{e}"
        OutputDebug "Waiting for hostile turn to end..."
        Sleep 30000
        
        Send "{e}"
        Sleep 500
        
        Send "{w}"
        Sleep 500
        
        Send "{e}"
        Sleep 500
        
        Send "{e}"
        OutputDebug "Waiting for combat to end..."
        Sleep 30000
    }

    Berry() {
        OutputDebug "Berrying..."
        Send "{s}"
        Sleep 1000

        Send "{e}"
        Sleep 1000

        Send "{e}"
        Sleep 1000

        Fight()
        Pull(false)
    }
;}