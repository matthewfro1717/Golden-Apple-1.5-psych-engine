local camOFFSET = 0;

function onCreate()
    --Iterate over all notes
    for i = 0, getProperty('unspawnNotes.length')-1 do
        if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'police note' then
            setPropertyFromGroup('unspawnNotes', i, 'texture', 'funnyAnimal/palooseNote');
            if getPropertyFromGroup('unspawnNotes', i, 'noteData') == 0 then
                setPropertyFromGroup('unspawnNotes', i, 'angle', -90);
            end
            if getPropertyFromGroup('unspawnNotes', i, 'noteData') == 1 then
                setPropertyFromGroup('unspawnNotes', i, 'flipY', true);
            end
            if getPropertyFromGroup('unspawnNotes', i, 'noteData') == 3 then
                setPropertyFromGroup('unspawnNotes', i, 'angle', 90);
            end
            if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
                setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has no penalties
            end
        end
    end
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'police note' then
		setProperty('health', getProperty('health') - 0.3); --Harm the player if hit
	end
end