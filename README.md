# llama-bsl

This is a nascent fork of the ever-popular [cc2538-bsl.py](https://github.com/JelmerT/cc2538-bsl/) script that is widely used with TI's serial bootloader for CC13xx/CC26xx/CC2538 series of chips. 

### Warning: This is an experimental fork with features that can disable BSL on your boards. Do not use if you're not comfortable with JTAG recovery until a fully tested release is published.


## Why fork?

We're adding features that only make sense in limited context, therefore unlikely to be ever merged upstream.

Any generally applicable additions/fixes will be submitted upstream.


## Usage

Documentation for new features will be added once fully tested, refer to commit history to see changes.

Original README can be found [here](https://github.com/JelmerT/cc2538-bsl/blob/master/README.md).


## Authors

[@OmerK](https://twitter.com/omerk) and [contributors](https://github.com/electrolama/llama-bsl/graphs/contributors).

llama-bsl is a fork of [cc2538-bsl.py](https://github.com/JelmerT/cc2538-bsl/) created by Jelmer Tiete <jelmer@tiete.be>, which is in turn based on [stm32loader](https://github.com/jsnyder/stm32loader) by Ivan A-R <ivan@tuxotronic.org>
