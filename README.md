# Ezra V1.2
Code for the live sound of Ezra V1.2

## Start TidalCycles

### PART 1. START TIDALCYCLES ( 01_tidal_init.scd )

There might be occasions where you will only want to use samples in tidal, and PART 2 may not be needed.

QUICK WAY is for when you have an urge to live code as plain as possible. 

STEREO is a fancier way of doing the quick way. It specifies things explicitly, rather than assumes your default settings. Might serve as an alternative code for debugging. 

MULTICHANNEL is for when you want to send separate signals to a DAW for mixing. 

### PART 2. CONFIGURE MIDI ( 02_MIDIConfig.scd )

-- SEND MIDI FROM TIDAL

When you want to play tidalcycles patterns using sounds from a DAW (or synth).

-- RECEIVE MIDI IN TIDAL

When you want to trigger patterns from a pedal (or midi controller).

### PART 3. CONFIGURE GLOBAL CLOCK AND LOCAL CLOCKS (BPM & CPS)

-- GLOBAL CLOCK 

For when you seek to sync tidalcycles and a DAW, (and a synth, and maybe even supercollider) into a same pulse. 

-- LOCAL CLOCKS

Usually, the tidalcycles local clock in Cycles Per Second dictates what the global clock is, but your DAW might specify Beats Per Minute only. There are also some tidalcycles patterns which use a local cps, but also, different versions in tidalcycles have different tempo notations. 

## Examples 



