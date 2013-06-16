�
 TI2C_SETTINGS 0�  TPF0TI2C_SettingsI2C_SettingsLeft�Top� WidthmHeightUHelpContext�  CaptionEbrew 2.0 Hardware SettingsColor	clBtnFaceFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameComic Sans MS
Font.Style OldCreateOrderPositionpoScreenCenterScaledPixelsPerInch`
TextHeight TLabelCOM_Port_Nr_lblLeft
TopWidth� HeightHintBIO Port Address of PCF8584. Valid addresses are 300..340, 378, 278Caption&USB Virtual COM PortFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameComic Sans MS
Font.Style 
ParentFontParentShowHintShowHint	  TLabelLabel6LeftTop� Width� HeightHint9Upper limit for the temperature of the Power Electronics Caption"Electronics High Temperature LimitFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameComic Sans MS
Font.Style 
ParentFontParentShowHintShowHint	  TLabelLabel7LeftTop� Width� HeightHint9Lower limit for the temperature of the Power Electronics Caption!Electronics Low Temperature LimitFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameComic Sans MS
Font.Style 
ParentFontParentShowHintShowHint	  TLabelLabel9Left
TopHWidthzHeightHintSList of I2C Devices, every bit represent one I2C device. See help-file for details.CaptionI2C Devices PresentFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameComic Sans MS
Font.Style 
ParentFontParentShowHintShowHint	  TLabelLabel10Left� TopHWidthHeightHintSList of I2C Devices, every bit represent one I2C device. See help-file for details.CaptionHex.Font.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameComic Sans MS
Font.Style 
ParentFontParentShowHintShowHint	  TLabelLabel11Left
TophWidth� HeightHintaSelect a proper SCL clock frequency. Note that the I2C bus can lock if the frequency is too high!CaptionI2C Clock-FrequencyFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameComic Sans MS
Font.Style 
ParentFontParentShowHintShowHint	  TLabelLabel2Left Top� WidthHeightHint9Upper limit for the temperature of the Power Electronics Caption   °CFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameComic Sans MS
Font.Style 
ParentFontParentShowHintShowHint	  TLabelLabel3Left Top� WidthHeightHint9Lower limit for the temperature of the Power Electronics Caption   °CFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameComic Sans MS
Font.Style 
ParentFontParentShowHintShowHint	  TLabelCOM_Port_Settings_lblLeft
Top(Width� HeightHintBBaud-Rate, Parity (N,O,E), #databits, #stopbits. E.g.: 19200,N,8,1CaptionUSB COM Port SettingsFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameComic Sans MS
Font.Style 
ParentFontParentShowHintShowHint	  TButtonButton1Left\TopWidthKHeightCaption&OKDefault	Font.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameComic Sans MS
Font.Style ModalResult
ParentFontTabOrder	  TButtonButton2Left� TopWidthKHeightCancel	Caption&CancelFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameComic Sans MS
Font.Style ModalResult
ParentFontTabOrder
  TButtonHelp_ButtonLeft� TopWidthKHeightCaption&HelpFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameComic Sans MS
Font.Style 
ParentFontTabOrderOnClickHelp_ButtonClick  TEditCOM_Port_EditLeft� TopWidthHeightHint4COM-port number for Connection to Ebrew 2.0 HardwareFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameComic Sans MS
Font.Style 
ParentFontReadOnly	TabOrderText1  TUpDownUpDown1Left� TopWidthHeightHint4COM-port number for Connection to Ebrew 2.0 Hardware	AssociateCOM_Port_EditMinMax
ParentShowHintPositionShowHint	TabOrder Wrap  TEdit
Thlim_editLeft� Top� Width1HeightHint9Upper limit for the temperature of the Power Electronics Font.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameComic Sans MS
Font.Style 
ParentFontParentShowHintShowHint	TabOrderText0  TEdit
Tllim_editLeft� Top� Width1HeightHint9Lower limit for the temperature of the Power Electronics Font.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameComic Sans MS
Font.Style 
ParentFontTabOrderText0  	TCheckBoxcb_i2c_err_msgLeftTop� WidthAHeightHintSCheck this box if you want a message to appear after every successful I2C bus resetCaption0Give message on successful reset after I2C errorFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameComic Sans MS
Font.Style 
ParentFontParentShowHintShowHint	TabOrder  TEditHw_devices_EditLeft� TopHWidth1HeightHintSList of I2C Devices, every bit represent one I2C device. See help-file for details.Font.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameComic Sans MS
Font.Style 
ParentFontParentShowHintShowHint	TabOrder  	TComboBox
fscl_comboLeft� TophWidth� HeightHintaSelect a proper SCL clock frequency. Note that the I2C bus can lock if the frequency is too high!DropDownCountFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameComic Sans MS
Font.Style 
ItemHeight
ParentFontParentShowHintShowHint	TabOrderItems.Strings   ÷ 8192 (fscl = 1.46 kHz)   ÷ 5120 (fscl = 2.34 kHz)   ÷ 4096 (fscl = 2.93 kHz)   ÷ 3072 (fscl = 3.91 kHz)   ÷ 2048 (fscl = 5.86 kHz)   ÷ 1024 (fscl = 11.72 kHz)   ÷ 640 (fscl = 18.75 kHz)   ÷ 512 (fscl = 22.44 kHz)   ÷ 384 (fscl = 31.25 kHz)   ÷ 256 (fscl = 46.88 kHz)   ÷ 160 (fscl = 75.00 kHz)   ÷ 128 (fscl = 93.75 kHz)   ÷ 96 (fscl = 125.00 kHz)   TEditCOM_Port_Settings_EditLeft� Top(WidthYHeightHintBBaud-Rate, Parity (N,O,E), #databits, #stopbits. E.g.: 19200,N,8,1Font.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameComic Sans MS
Font.Style 
ParentFontParentShowHintShowHint	TabOrder  	TCheckBoxcb_debug_com_portLeftTop� WidthAHeightHint;Check this box if you want COM-port debugging to a log-fileCaption-Debug: File-logging of COM-port communicationFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameComic Sans MS
Font.Style 
ParentFontParentShowHintShowHint	TabOrder   