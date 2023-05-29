import sys
sys.path.append("..")

import llama_bsl

if __name__ == "__main__":
    conf = {
            'port': 'COM37',
            'baud': 500000,
            'force_speed': 0,
            'address': None,
            'force': 0,
            'erase': 1,
            'write': 1,
            'erase_page': 0,
            'verify': 1,
            'read': 0,
            'len': 0x80000,
            'fname': '',
            'ieee_address': 0,
            'bootloader_active_high': False,
            'bootloader_invert_lines': False,
            'disable-bootloader': 0,
            'board_type': None,
            "fw_role": None,
            "fw_stack": None,
            "download": False,
            "fw_downloaded": None,
            "fw_file": "blink_LED-DIO7_BSL-DIO13_zzh-only.bin",
            "index_url": None
        }

    llama_bsl.run(conf)