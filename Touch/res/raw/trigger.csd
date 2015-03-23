<CsoundSynthesizer>
<CsOptions>
-o dac -i adc -d -+msg_color=0 -m0 -b64 -B1024
</CsOptions>
<CsInstruments>

sr = 44100
ksmps = 128
nchnls = 2
0dbfs = 1.0

	instr 1
ktrig chnget "trigger"

if (ktrig > 0) then
	event "i", 2, 0, 1, 0.5
endif

	endin
	
	instr 2
kenv linen p4, 0.01, p3, p3 * 0.99
aosc oscil kenv, 440
	outs aosc, aosc
	endin

</CsInstruments>
<CsScore>

i1 0 3600

</CsScore>
</CsoundSynthesizer>
<bsbPanel>
 <label>Widgets</label>
 <objectName/>
 <x>100</x>
 <y>100</y>
 <width>320</width>
 <height>240</height>
 <visible>true</visible>
 <uuid/>
 <bgcolor mode="nobackground">
  <r>255</r>
  <g>255</g>
  <b>255</b>
 </bgcolor>
</bsbPanel>
<bsbPresets>
</bsbPresets>
