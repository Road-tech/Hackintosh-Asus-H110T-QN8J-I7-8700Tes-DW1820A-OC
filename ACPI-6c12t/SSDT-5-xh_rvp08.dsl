/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of iASLOrn4Gb.aml, Tue May  5 13:16:10 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000705 (1797)
 *     Revision         0x02
 *     Checksum         0x35
 *     OEM ID           "INTEL"
 *     OEM Table ID     "xh_rvp08"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120913 (538052883)
 */
DefinitionBlock ("", "SSDT", 2, "INTEL", "xh_rvp08", 0x00000000)
{
    External (_SB_.PCI0.XHC_.RHUB, DeviceObj)    // Warning: Unknown object
    External (_SB_.PCI0.XHC_.RHUB.HS01, DeviceObj)    // Warning: Unknown object
    External (_SB_.PCI0.XHC_.RHUB.HS02, DeviceObj)    // Warning: Unknown object
    External (_SB_.PCI0.XHC_.RHUB.HS03, DeviceObj)    // Warning: Unknown object
    External (_SB_.PCI0.XHC_.RHUB.HS04, DeviceObj)    // Warning: Unknown object
    External (_SB_.PCI0.XHC_.RHUB.HS05, DeviceObj)    // Warning: Unknown object
    External (_SB_.PCI0.XHC_.RHUB.HS06, DeviceObj)    // Warning: Unknown object
    External (_SB_.PCI0.XHC_.RHUB.HS07, DeviceObj)    // Warning: Unknown object
    External (_SB_.PCI0.XHC_.RHUB.HS08, DeviceObj)    // Warning: Unknown object
    External (_SB_.PCI0.XHC_.RHUB.HS09, DeviceObj)    // Warning: Unknown object
    External (_SB_.PCI0.XHC_.RHUB.HS10, DeviceObj)    // Warning: Unknown object
    External (_SB_.PCI0.XHC_.RHUB.HS11, DeviceObj)    // Warning: Unknown object
    External (_SB_.PCI0.XHC_.RHUB.HS12, DeviceObj)    // Warning: Unknown object
    External (_SB_.PCI0.XHC_.RHUB.HS13, DeviceObj)    // Warning: Unknown object
    External (_SB_.PCI0.XHC_.RHUB.HS14, DeviceObj)    // Warning: Unknown object
    External (_SB_.PCI0.XHC_.RHUB.SS01, DeviceObj)    // Warning: Unknown object
    External (_SB_.PCI0.XHC_.RHUB.SS02, DeviceObj)    // Warning: Unknown object
    External (_SB_.PCI0.XHC_.RHUB.SS03, DeviceObj)    // Warning: Unknown object
    External (_SB_.PCI0.XHC_.RHUB.SS04, DeviceObj)    // Warning: Unknown object
    External (_SB_.PCI0.XHC_.RHUB.SS05, DeviceObj)    // Warning: Unknown object
    External (_SB_.PCI0.XHC_.RHUB.SS06, DeviceObj)    // Warning: Unknown object
    External (_SB_.PCI0.XHC_.RHUB.SS07, DeviceObj)    // Warning: Unknown object
    External (_SB_.PCI0.XHC_.RHUB.SS08, DeviceObj)    // Warning: Unknown object
    External (_SB_.PCI0.XHC_.RHUB.SS09, DeviceObj)    // Warning: Unknown object
    External (_SB_.PCI0.XHC_.RHUB.SS10, DeviceObj)    // Warning: Unknown object
    External (_SB_.PCI0.XHC_.RHUB.USR1, DeviceObj)    // Warning: Unknown object
    External (_SB_.PCI0.XHC_.RHUB.USR2, DeviceObj)    // Warning: Unknown object

    Scope (\_SB.PCI0.XHC.RHUB)
    {
        Method (GPLD, 2, Serialized)
        {
            Name (PCKG, Package (0x01)
            {
                Buffer (0x10){}
            })
            CreateField (DerefOf (Index (PCKG, Zero)), Zero, 0x07, REV)
            Store (One, REV)
            CreateField (DerefOf (Index (PCKG, Zero)), 0x40, One, VISI)
            Store (Arg0, VISI)
            CreateField (DerefOf (Index (PCKG, Zero)), 0x57, 0x08, GPOS)
            Store (Arg1, GPOS)
            Return (PCKG)
        }

        Method (GUPC, 1, Serialized)
        {
            Name (PCKG, Package (0x04)
            {
                Zero, 
                0xFF, 
                Zero, 
                Zero
            })
            Store (Arg0, Index (PCKG, Zero))
            Return (PCKG)
        }
    }

    Name (USSD, Package (0x10)
    {
        One, 
        One, 
        One, 
        One, 
        Zero, 
        Zero, 
        Zero, 
        Zero, 
        Zero, 
        Zero, 
        Zero, 
        Zero, 
        Zero, 
        Zero, 
        Zero, 
        Zero
    })
    Name (UHSD, Package (0x10)
    {
        One, 
        One, 
        One, 
        One, 
        One, 
        One, 
        One, 
        One, 
        One, 
        Zero, 
        Zero, 
        Zero, 
        Zero, 
        Zero, 
        Zero, 
        Zero
    })
    Scope (\_SB.PCI0.XHC.RHUB.HS01)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (DerefOf (Index (UHSD, Zero)), One))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS02)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (DerefOf (Index (UHSD, One)), 0x02))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS03)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (DerefOf (Index (UHSD, 0x02)), 0x03))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS04)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (DerefOf (Index (UHSD, 0x03)), 0x04))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS05)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (DerefOf (Index (UHSD, 0x04)), 0x05))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS06)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (DerefOf (Index (UHSD, 0x05)), 0x06))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS07)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (DerefOf (Index (UHSD, 0x06)), 0x07))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS08)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (DerefOf (Index (UHSD, 0x07)), 0x08))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS09)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (DerefOf (Index (UHSD, 0x08)), 0x09))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS10)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (DerefOf (Index (UHSD, 0x09)), 0x0A))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS11)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            If (_OSI ("Darwin"))
            {
                Return (Package ()
                {
                    0x00,
                    0x00,
                    0x00,
                    0x00
                })
            }
            Return (GUPC (One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (DerefOf (Index (UHSD, 0x0A)), 0x0B))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS12)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (DerefOf (Index (UHSD, 0x0B)), 0x0C))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS13)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (DerefOf (Index (UHSD, 0x0C)), 0x0D))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS14)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (DerefOf (Index (UHSD, 0x0D)), 0x0E))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.USR1)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (Zero))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (Zero, Zero))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.USR2)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (Zero))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (Zero, Zero))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.SS01)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (DerefOf (Index (USSD, Zero)), One))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.SS02)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (DerefOf (Index (USSD, One)), 0x02))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.SS03)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (DerefOf (Index (USSD, 0x02)), 0x03))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.SS04)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (DerefOf (Index (USSD, 0x03)), 0x04))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.SS05)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (DerefOf (Index (USSD, 0x04)), 0x05))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.SS06)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (DerefOf (Index (USSD, 0x05)), 0x06))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.SS07)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (DerefOf (Index (USSD, 0x06)), 0x07))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.SS08)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (DerefOf (Index (USSD, 0x07)), 0x08))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.SS09)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (DerefOf (Index (USSD, 0x08)), 0x09))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.SS10)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (DerefOf (Index (USSD, 0x09)), 0x0A))
        }
    }
}

