from setuptools import setup


setup(
    name="llama-bsl",
    description="Script to communicate with Texas Instruments CC13xx/CC2538/CC26xx Serial Boot Loader (Fork of cc2538-bsl.py)",
    long_description=open("README.md", encoding="utf-8").read(),
    keywords="cc2538, cc1310, cc13xx, bootloader, cc26xx, cc2650, cc2640",
    url="https://github.com/electrolama/llama-bsl",
    author="Omer Kilic",
    author_email="omerkilic@gmail.com",
    license="BSD-3-Clause",
    classifiers=[
        "Development Status :: 4 - Beta",
        "Environment :: Console",
        "Intended Audience :: Developers",
        "License :: OSI Approved :: BSD License",
        "Operating System :: POSIX :: Linux",
        "Operating System :: MacOS",
        "Operating System :: Microsoft :: Windows",
        "Programming Language :: Python :: 3",
        "Topic :: Scientific/Engineering",
    ],
    platforms="posix",
    python_requires=">=3.4",
    setup_requires=["setuptools_scm"],
    use_scm_version=lambda: {
        "version_scheme": "post-release",
        "local_scheme": "node-and-date",
        },
    install_requires=["pip>=10", "setuptools", "wheel", "pyserial"],
    extras_require={
        '': ["intelhex"],
        'intelhex': ["python-magic"]
    },
    scripts=["llama-bsl"],
)