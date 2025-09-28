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

STEREO

10abril.tidal is the piece to start with. 
capply.tidal is the same piece but set up for use with MIDI pedal. 

If you want to trigger tidalcycles patterns from a MIDI pedal, start with capply.tidal . A possible use case is playing guitar while acompanying yourself with patterns which can be quickly updated on the fly. Plus, cc's are not exclusive, so you can use the same buttons to control something else at the same time.      

MULTICHANNEL

First go to multichannel.tidal to test the code. Then go to 10abril_orbits.tidal to see a piece converted to multichannel via the function "orbit". You only need to send each sound to the orbit that you want, and it is a simple addon of code once you already have a stereo file. 

Multichannel can be tricky and even annoying as you'll probably need extra ports and tools like jack audio, blackhole or loopback, or even multichannel hardware. 

Note: 

Ezra V1.2 is the quick know how into Ofelia's preferred tidalcycles set up and it by no means substitutes the tidalcycles.org documentation neither it covers everything about TidalCycles live coding engine.  

## Scores

In the Scores folder you'll find pdf files of music score templates so to follow along a guitar riff with live coding. Download the respective audio files and upload them as samples in tidalcycles to compose over. Or play the riffs on guitar, then sync tidal to your playing tempo, and then you can add effects both ways. 
