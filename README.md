# Automated_Circuit_To_MAGIC_VLSI
Project Name: Automated Circuit To MAGIC VLSI layout Using Open Source EDA Tools.

VLSI design flow includes system specifcation, architectural ddesign, functional & logic design, circuit design, physical design, fabrication, pacakging & testing, chip. In physical esign process like  layouting, routing, placement, etc are involved.
This project aims to convert a circuit into its MAGIC Layout format. MAGIC software is a open source EDA tool which is used for making layout of circuit. 

Basically if we are representing a circuit into code format then using some coding algorithm we can implement its magic VLSI layout.
So, here circuit netlist,design rules, librecell layout are used to generate output.

Basic algorithm is :  


Input files [Spice Netlist + Design Rules]   ----->   Librecell Layout as conversion tool    ----->    Output i.e layout [GDS,LEF,MAG]

We can generate spice netlist of any circuit using circuit design tools,open source EDA tools. Design rules are the rules which are associated with ƛ rule used in stick diagram, layout. Stick diagram represents layer information through color code. Layout consists of contacts, metal, polysilicon, etc. This layers are represented using color code in stick diagram.

## Let's Start

Steps Involved : 

- Installing Python3, Ngspice, Z3 Solver
- Creating a python virtual environment
- Installing librecell using git
- Applying Conversion Commands
- Installing MAGIC To see Layout
- Installing klayout to see Layout.



### Downloading Python3, Ngspice, Z3 Solver 



Requirement Of Python3 : In layouting process, designing rules are described by the tech file in form of python file.
Requirement Of z3 solver : Routing process is invloved in layouting which is carried out by z3 solver.Here dijkstra's algorithm is used to routing.
Requirement of ngspice : Here we are using spice netlist as input, this spice netlist is checked by ngspice.
Requirement of magic: MAGIC software is used to view,edit layout.It is VLSI layout tool.
Requirement Of klayout : Klayout is used to see graphic data database system i.e GDS file.
{Openscad : We can use openscad software to view 3D design of layout. Openscad uses gds3xtrude to cinvert layout from 2D to 3D . In this project it is used fo visualization purpose.}

### Input & Output Files
 
 So using librecell we get to know that we can convert spice netlist to its layout.
 
 Input files used :   
 - Spice netlist [.sp]
 - Tech file [.py]
 - cell name
     
     
     
 Output Files obtained :  
 - Graphic Database System File .gds]
 - Library Exchange Format [.lef]

To install python3 use following command :
```
sudo apt-get install python3 `

```

To install ngspice use following command :
``` 
sudo apt-get install ngspice `
```

To install z3 solver use following command : 
``` 
sudo apt-get install z3 `
```

We will also require MAGIC software to check/read Layout(.mag file)
To download MAGIC :

```
sudo apt-get install magic
```

 To download KLayout :
- Click On klayout here  :  KLAYOUT(https://www.klayout.de/build.html)
- Download appropriate version of klayout ; it depends on your operating system.
- Open it & Install Klayout



To check whether all tools are installed : Try for checkpoint

Checkpoint1 : Type `ngspice` for ngspice; Give command `z3 --help` for z3 solver ; Give command `python3` for python.

Now next we need to work on python virtual environment :
Using following commands we can work on python virtual envrionment

```
python3 -m venv my-librecell-env

source ./my-librecell-env/bin/activate
```
### Installing librecell

Now we need to install librecell from git .
Commands to download & install :
```
git clone https://codeberg.org/tok/librecell.git
cd librecell
```

```
cd librecell-common
python3 setup.py develop
cd ..
```

```
cd librecell-layout
python3 setup.py develop
cd ..
```

```
cd librecell-lib
python3 setup.py develop
cd ..
```

Checkpoint 2: 
To make sure that llibrecell is installed or not use command :
`librecell --h`

If terminal is showing information or help commands then librecell is installed.

Next we need to deal with actual files that is spice netlist files, tech files, directories,etc.
 We need to make directory in lbrecell layout folder.
 Make sure that you are in librecell folder right now [From librecell folder we will go to librecell-layout]
 
 `cd librecell-layout`
 
 Make directory :
 'mkdir /tmp/mylibrary'
 
 ### Conversion command
 
 ```
 lclayout --output-dir [Here your output will be stored] --tech [design_tech_file.py] --netlist [Spice_netlist.sp] --cell [Cell_Name]
 ````
 
 For example : Use dummy_tech.py file as design tech file.Use AND2X1.sp OR AND4.sp as spice netlist file. Use corresponding cell name ex: --cell AND2X1   OR   --cell AND4.
 
 File name must be with location of file. Ex : If my all files are stored in Desktop then I will use 
 ```
 lclayout --output-dir /home/user/Desktop --tech /home/user/Desktop/librecell_tech.py --netlist /home/user/Desktop/cells.sp --cell AND4
 ```
 OR 
 
 ```
 lclayout --output-dir /tmp/mylibrary --tech examples/dummy_tech.py --netlist examples/cells.sp --cell AND2X1
 
 ```
 
 ### MAGIC Layout 
 
 Checkpoint 3 : 
 
 To make sure MAGIC is installed make a file of magic using `magic checkpoint3.mag`
 If MAGIC with blank project is opened then MAGIC is installed.
 
 To make sure klayout is installed give command ` klayout -h `
 
 i. AND2X1 : I have used AND2X1 Sspice netlist & cell to generate layout of AND2X1.
 
 Use command to generate layout 
 
 ```
 magic AND2X1.mag
 
 ```
 
 Output AND2X1 :
 
 <img src ="https://github.com/BhushanKolhe1920/internship_project_Automated_Circuit_To_VLSI_Layout/blob/master/Images/Output_AND2X1_SS.png">
 
 ii. AND4 : I have used AND4 spice netlist & cell name to generate layout of AND4.
 
 ```
 magic AND4.mag
 
 ```
 
 Ouput AND4 :
 
 <img src ="https://github.com/BhushanKolhe1920/internship_project_Automated_Circuit_To_VLSI_Layout/blob/master/Images/Output_AND4_SS.png">
 
 [Hit CTRL if cursor is blinking again & again & Make sure that ouput gd files is stored on Desktop]
 
 
 ### Klayout :
 
 i. AND2X1 Klayout : To view klayout of circuit use following command :
 
 ```
 klayout AND2X1.gds
 
 ```
 
 Output AND2X1 Klayout : 
 <img src="https://github.com/BhushanKolhe1920/internship_project_Automated_Circuit_To_VLSI_Layout/blob/master/AND2X1_klayout_SS.png">
 
 
 ii. AND4 Klayout : 
 
 Use following command :
 
 ```
 klayout AND4.gds
 ```
 
 Output AND4 Klayout : 
 
 <img src="https://github.com/BhushanKolhe1920/internship_project_Automated_Circuit_To_VLSI_Layout/blob/master/AND4_Klayout_SS.png">
 
 ## Contact Information 
 
 - Bhushan Kolhe, B.E [Electronics & Telecommunication Engineering], Don Bosco Institute Of Technology, Mumbai. bhushank1920@gmail.com
 - Philipp Guhring, Software Architect at Libresilicon Association. pg@futureware.at
 - Kunal Ghosh, Director, VSD Corp. Pvt. Ltd. kunalpghosh@gmail.com
 - Dr. Gaurav Trivedi, Co-principal & Associative Professor, EEE Department, IIT Guwahati. trivedi@iitg.ac.in
