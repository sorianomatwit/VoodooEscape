if(Unlockable) {
	if(linkedbutton.On){
		Unlocked = true;
	} else Unlocked = false;
	if(Unlocked) {
		
		if(UnlockedScript != setInvisible && UnlockedScript != -1){
			
			script_execute(UnlockedScript);
		} else {
			setInvisible();
		}
	} else {
		if(LockedScript != -1 && LockedScript != setVisible){
			
			script_execute(LockedScript);
		}
		setVisible();
	}
}