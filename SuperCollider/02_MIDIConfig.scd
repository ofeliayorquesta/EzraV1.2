// PART 2. CONFIGURE MIDI.


// SEND MIDI FROM TIDAL

// If you want to play tidalcycles patterns using sounds from a DAW (or synth).


(
// Find Midi sources and destinations
MIDIClient.init;

// Use your port (or device)
~midiOut = MIDIOut.newByName("Driver IAC", "Tidal1");

// Connect to dirt
~dirt.soundLibrary.addMIDI(\my, ~midiOut);

// Fix  latency
~midiOut.latency = 0.45;

// Go to midiOut.tidal for test examples
)



// RECEIVE MIDI IN TIDAL

// If you want to trigger patterns from a pedal or midi controller.

/* Just evaluate. This code converts midi messages to osc messages (because tidal listens for osc messages). 
It sets a port, then finds your midi devices and defines functions for the type of messages it'll be receiving. */

(
var on, off, cc;
var osc;

osc = NetAddr.new("127.0.0.1", 6010);

MIDIClient.init;
MIDIIn.connectAll;

on = MIDIFunc.noteOn({ |val, num, chan, src|
    osc.sendMsg("/ctrl", num.asString, val/127);
});

off = MIDIFunc.noteOff({ |val, num, chan, src|
    osc.sendMsg("/ctrl", num.asString, 0);
});

cc = MIDIFunc.cc({ |val, num, chan, src|
    osc.sendMsg("/ctrl", num.asString, val/127);
});

if (~stopMidiToOsc != nil, {
    ~stopMidiToOsc.value;
});

~stopMidiToOsc = {
    on.free;
    off.free;
    cc.free;
};
// Go to capply.tidal for test examples
)
