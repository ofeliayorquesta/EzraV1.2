// scans audio inputs & outputs
ServerOptions.devices

/* PART 1: START TIDALCYCLES

There might be occasions where you only want to use samples in tidal, and PART 2 may not be needed.

*/



// QUICK WAY
(
/* increase the number of buffers to make space for the samples &
optional: increase the memSize */

s.options.numBuffers = 1024 * 256;
s.options.memSize = 8192 * 32;

// sets the audio output
o = Server.default.options;
o.device = "BlackHole 16ch";

// start the server
s.boot;

SuperDirt.start
)



// STEREO
(
s.options.numOutputBusChannels = 10;
s.options.numBuffers = 1024 * 256;
s.options.memSize = 8192 * 32;
o = Server.default.options;
o.device = "BlackHole 16ch";
s.quit;

s.waitForBoot {

        ~dirt = SuperDirt(2, s);
        ~dirt.loadSoundFiles;
        s.sync;
        ~dirt.start(57120);
}
);

/* test a sound in TidalCycles Editor and verify output is 2 channels: */
s.meter

/* load custom bank sounds (M1 path) */
~dirt.loadSoundFiles("/Users/Ofelia/Music/Ofelia/SP/cymatics/*")




// MULTICHANNEL
(
s.reboot {
	s.options.numBuffers = 1024 * 256;
	s.options.memSize = 8192 * 32;
	s.options.maxNodes = 1024 * 512;

	/* Create 24 channels grouped in pairs for stereo: */
	s.options.numOutputBusChannels = 24;
	s.options.numInputBusChannels = 2;

	o = Server.default.options;
	o.device = "BlackHole 16ch";
	s.quit;

	s.waitForBoot {
		~dirt = SuperDirt(2, s);
		~dirt.loadSoundFiles;
		~dirt.start(57120, [0,2,4,6,8,10,12,14,16,18,20,22]);
		~dirt.loadSoundFiles("/Users/Ofelia/Music/Ofelia/SP/custom/*")

	};

	s.latency = 0.1;
//	s.options.outDevice = 1;

// Uncomment if you want to start sending MIDI messages right away:
/*

MIDIClient.init;

~midiOut1 = MIDIOut.newByName("IAC", "Tidal1");
~midiOut2 = MIDIOut.newByName("IAC", "Tidal2");

~dirt.soundLibrary.addMIDI(\midi1, ~midiOut1);
~dirt.soundLibrary.addMIDI(\midi2, ~midiOut2); */

};
)
;

// Test examples from multichannel.tidal and verify output is multichannel
s.meter



// Go to: MIDIconfig.scd









