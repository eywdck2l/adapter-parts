onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib adapter_opt

do {wave.do}

view wave
view structure
view signals

do {adapter.udo}

run -all

quit -force
