# Automated_Circuit_To_MAGIC_VLSI
Project Name: Automated Circuit To MAGIC VLSI layout Using Open Source EDA Tools.

VLSI design flow includes system specifcation, architectural ddesign, functional & logic design, circuit design, physical design, fabrication, pacakging & testing, chip. In physical esign process like  layouting, routing, placement, etc are involved.
This project aims to convert a circuit into its MAGIC Layout format. MAGIC software is a open source EDA tool which is used for making layout of circuit. 

Basically if we are representing a circuit into code format then using some coding algorithm we can implement its magic VLSI layout.
So, here circuit netlist,design rules, librecell layout are used to generate output.
Basic algorithm is :  


Input files [Spice Netlist + Design Rules]   ----->   Librecell Layout as conversion tool    ----->    Output i.e layout [GDS,LEF,MAG]

We can generate spice netlist of any circuit using circuit design tools,open source EDA tools. Design rules are the rules which are associated with ƛ rule used in stick diagram, layout. Stick diagram represents layer information through color code. Layout consists of contacts, metal, polysilicon, etc. This layers are represented using color code in stick diagram.

## Lets Start

Steps Involved : 

- Installing Python3, Ngspice, Z3 Solver
- Creating a python virtual environment
- Installing librecell using git
- Applying Conversion Commands
- Installing MAGIC TO see Layout

### Downloading Python3, Ngspice, Z3 Solver 

For ubuntu, using terminal we will download required tools.
Command to install ngspice & install  is : 
```
sudo pacman -S install ngspice z3
```

To install python3 use following command : 
```
sudo apt-get install python3
```

We will also require MAGIC software to check/read Layout(.mag file)
To download MAGIC :

```
sudo apt-get install magic
```

To check whether all tools are installed : Try for checkpoint

Checkpoint1 : Type `ngspice` for ngspic; Give command `z3 --help` for z3 solver ; Give command `python3` for python.

