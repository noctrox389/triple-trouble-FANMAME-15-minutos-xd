function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Ring' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'Ring-Notes');
			setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true)
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0');
		end
	end
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Ring' then
		setScore(score - 350)
		characterPlayAnim('boyfriend', 'hey', true);
	end
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
    if noteType == 'Ring' then
	   playSound('ring', 1);
	end
end