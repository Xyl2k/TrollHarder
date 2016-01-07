VERSION 5.00
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Begin VB.Form IDD_MAIN 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "TrollHarder v0.1 /by Xyl/"
   ClientHeight    =   2655
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   6495
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2655
   ScaleWidth      =   6495
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame IDC_FRAME_MANU 
      Caption         =   "/* Manual mode */"
      Height          =   2175
      Left            =   3240
      TabIndex        =   6
      Top             =   120
      Width           =   3135
      Begin VB.CommandButton IDC_BUTTON_RANDOM_SHIT 
         Caption         =   "Random shits"
         Height          =   375
         Left            =   120
         TabIndex        =   10
         Top             =   1680
         Width           =   2895
      End
      Begin VB.CommandButton IDC_BUTTON_SVATISKA 
         Caption         =   "Svatiska (may not pass flood limit)"
         Height          =   375
         Left            =   120
         TabIndex        =   9
         Top             =   1200
         Width           =   2895
      End
      Begin VB.CommandButton IDC_BUTTON_BLINDLESS 
         Caption         =   "Blindless shit"
         Height          =   375
         Left            =   120
         TabIndex        =   8
         Top             =   240
         Width           =   2895
      End
      Begin VB.CommandButton IDC_BUTTON_SKEET 
         Caption         =   "Skeet-fighter quotes"
         Height          =   375
         Left            =   120
         TabIndex        =   7
         Top             =   720
         Width           =   2895
      End
   End
   Begin VB.Timer IDC_TIMER_TROLLING 
      Enabled         =   0   'False
      Left            =   0
      Top             =   0
   End
   Begin VB.Frame IDC_FRAME_AUTO 
      Caption         =   "/* Automatic mode */"
      Height          =   2175
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   3015
      Begin VB.CheckBox IDC_CHECKBOX_SVATISKA 
         Caption         =   "Enable svatiska"
         Height          =   195
         Left            =   120
         TabIndex        =   5
         Top             =   720
         Width           =   1815
      End
      Begin VB.TextBox IDC_EDIT_INTERVAL 
         Height          =   285
         Left            =   960
         TabIndex        =   3
         Text            =   "1000"
         Top             =   360
         Width           =   735
      End
      Begin VB.CommandButton IDC_BUTTON_START 
         BackColor       =   &H0000FF00&
         Caption         =   "OLOLOLOL"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   975
         Left            =   120
         Style           =   1  'Graphical
         TabIndex        =   2
         Top             =   1080
         Width           =   2775
      End
      Begin VB.CommandButton IDC_BUTTON_STOP 
         BackColor       =   &H000000FF&
         Caption         =   "STOP"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   975
         Left            =   120
         Style           =   1  'Graphical
         TabIndex        =   1
         Top             =   1080
         Width           =   2775
      End
      Begin VB.Label IDC_STATIC_MILISECONDS 
         Caption         =   "miliseconds"
         Height          =   255
         Left            =   1800
         TabIndex        =   11
         Top             =   360
         Width           =   975
      End
      Begin VB.Label IDC_STATIC_INTERVAL 
         Caption         =   "Interval:"
         Height          =   255
         Left            =   240
         TabIndex        =   4
         Top             =   360
         Width           =   735
      End
   End
   Begin MSWinsockLib.Winsock Winsock1 
      Left            =   0
      Top             =   0
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin VB.Label Label1 
      Caption         =   "07/01/2015"
      Enabled         =   0   'False
      Height          =   255
      Left            =   120
      TabIndex        =   12
      Top             =   2400
      Width           =   1575
   End
   Begin VB.Image IDC_IMAGE_XYLIBOXLABS_1 
      Height          =   225
      Left            =   5160
      Picture         =   "Form1.frx":0000
      Top             =   2400
      Width           =   1200
   End
   Begin VB.Image IDC_IMAGE_XYLIBOXLABS_2 
      Height          =   225
      Left            =   5160
      Picture         =   "Form1.frx":0C97
      Top             =   2400
      Visible         =   0   'False
      Width           =   1200
   End
End
Attribute VB_Name = "IDD_MAIN"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private WithEvents Irc As CLIRC
Attribute Irc.VB_VarHelpID = -1
Dim chanel As String
'Public szText, szPart1, szPart2, szPart3, szPart4 As String
Option Compare Text
Option Explicit

Private Sub Form_Load()
Set Irc = New CLIRC
Randomize Timer
Irc.SocketHandle = IDD_MAIN.Winsock1
Irc.UserFullName = "Troll bot"
Irc.UserHostName = "Troller"
Irc.UserName = "546"
Irc.UserNick = "test" + Trim(Str(Int(Rnd * 11000)))
Irc.UserServName = "BLAH"
Irc.Connect "irc.x2x.cc"
chanel = "#test9"
End Sub

Private Sub Irc_Connected()
Irc.Join chanel
Irc.PrivMSG chanel, "1,8:þ" 'Automatic bot message when connected to channel
End Sub

Function RandomString(strLength As Integer)
    Dim newString As String
    Dim tmpNum As Integer
    
    For tmpNum = 1 To strLength
        newString = newString + Chr(Int(Rnd * 70) + 32)
    Next tmpNum
    
    RandomString = newString
End Function

Private Sub IDC_BUTTON_BLINDLESS_Click()
Dim w As String
w = Int(Rnd() * 31)
Select Case w
Case 1
Irc.PrivMSG chanel, "13,4 Tapzbot ZOOP BEEP BOOP ZIPPITY ZAP BAP BRRAP 5,13 tapzbot ZOOP BE 14,3EP BOOP ZIPPITY ZAP bap brrap sounds dum"
Case 2
Irc.PrivMSG chanel, "Screw you, pal 12,8 BARK 10,8 BARK 7,1 BARK 9,4 BARK 3,14 BARK 5,0 BARK 12,12          2,2 12,12                                                            77.1 /  0,03 Green Reverse  0,04 Red 5  0,04 Red 5  to 13zzZzzZzz"
Case 3
Irc.PrivMSG chanel, "13,2 ZOOP BEEP BOOP ZIPPITY ZAP BAP BRRAP Tapzbot  8,2 ZOOP BEEP BOO 3,4P ZIPPITY ZAP BAP BRRAP 7,10 Tapzbot ZOOP BEEP BOOP  14,14ZIPPITY ZAP BAP BRRAP 5,11 Tapzbot ZOOP BEEP BOOP ZIPPITY ZAP BAP BRRAP 7,9 Tapzbot ZOOP BEEP BOOP ZIPPITY ZAP BAP BRRAP 7,10 THE T4PZ EXTENS 6,8ION IS THE ONLY "
Irc.PrivMSG chanel, "6,8LOGICAL ANSWER TO THE PARADIGM OF IMPROVING XYL2K "
Case 4
Irc.PrivMSG chanel, "8,1zoopz1,8zoopz8,1zoopz1,8zoopz8,1zoopz1,8zoopz8,1zoopz1,8zoopz8,1zoopz1,8zoopz8,1zoopz1,8zoopz8,1zoopz1,8zoopz8,1zoopz1,8zoopz8,1zoopz1,8zoopz8,1zoopz1,8zoopz8,1zoopz1,8zoopz8,1zoopz1,8zoopz8,1zoopz1,8zoopz8,1zoopz1,8zoopz8,1zoopz1,8zoopz8,1zoopz1,8zoopz8,1zoopz1,8zoopz8,1zoopz1,8zoopz8,1zoopz1,8zoopz8,1zoopz1"
Irc.PrivMSG chanel, "1,8,8zoopz8,1zoopz1,8zoopz8,1zoopz1,8zoopz8,1zoo: you revolting cake of pur"
Case 5
Irc.PrivMSG chanel, "7,3NEGROX DONGUS WARK14 ZIP ZOP BAPPITY ZOOP12,7NEGROX DONGUS WARK Z10IP ZOP BAPPITY ZOOP1,2NEGROX DON13GUS WARK ZIP ZOP BAPPITY ZOOP10,6NEGROX DONGUS WARK 14,6 wark 13,11 wark 5,9 wark 14,6 wark 6,13 wark 4,10 wark 8,11 i will tehstr0y yo!!!!!?TAB????????OP ???????"
Case 6
Irc.PrivMSG chanel, "  11,11 2,2         13,6 ZOOP BEEP BOOP ZIPPITY ZAP BAP BRRAP Xylitol  13,8 ZOOP BEEP BOOP ZIPPITY ZAP BAP BRRAP 13,8 Tapzbot ZOOP BEEP BOOP ZIPPITY ZAP BAP BRRAP 8,15 Tapzbot ZOOP ZOOP ZOOP ZOOP ZOOP ZOOP ZOOP ZOOP ZOOP ZOOP ZOOP ZOOP ZOOP ZOOP ZOOP ZOOP ZOOP ZOOP ZOOP ZOOP ZOOP ZOOP ZOOP ZOOP ZOOP ))"
Case 7
Irc.PrivMSG chanel, "5,10 ZOOP BEEP BOOP ZIPPITY ZAP BAP BRRAP 8,14 Tapzbot ZOOP BEEP BOOP ZIPPITY ZAP BAP BRRAP Tapzbot  8,9 ZOOP BEEP BOOP ZIPPITY ZAP BAP BRRAP 13,5 Tapzbot ZOOP BEEP BOOP ZIPPITY ZAP BAP BRRAP "
Case 8
Irc.PrivMSG chanel, "12,6 AW BUDDY 6,12 ROLLIN LIKE A BIG SHOT 2,12 AW BUDDY 12,2 DONGUS 5,5 DONGUS DONGUS ZOOP ZOOP ZOOP wark wark 13,7 wark 12,6 wark 12,6 wark 3,15 WARK 2,10 WARK 8,0 WARK 9,2 WARK 6,14 WARK 6,4 WARK"
Case 9
Irc.PrivMSG chanel, "/dev/sda1         7,15 ZOOP BEEP BOOP ZIPPITY ZAP BAP BRRAP Tapzbot  8,14 ZOOP BEEP BOOP ZIPPITY ZAP BAP BRRAP 8,2 Tapzbot ZOOP BEEP BOOP ZIPPITY ZAP BAP BRRAP 7,11 Tapzbot ZOOP BEEP BOOP ZIPPITY ZAP BAP BRRAP 5,10 Tapzbot ZOOP BEEP BOOP ZIPPITY ZAP BAP BRRAP 5,8 Tapzbot ZOOP B 10,1EEP BOOP ZIPPITY ZAP "
Irc.PrivMSG chanel, "10,1BAP BRRAP 8,4 tapzbot ZOOP BEEP BOOP ZIPPITY ZA 12,13P BAP BRRAP 5,11"
Case 10
Irc.PrivMSG chanel, "7,3NEGROX DONGUS WARK14 ZIP ZOP BAPPITY ZOOP12,7NEGROX DONGUS WARK Z10IP ZOP BAPPITY ZOOP1,2NEGROX DON13GUS WARK ZIP for wav"
Case 11
Irc.PrivMSG chanel, "6,10NEGROX DONG6US WARK ZIP ZOP BAPPITY ZOOP9,13NEGROX DONGUS WARK ZIP ZOP BAPPI14TY ZOOP12,13NEGROX DONGUS WA7RK ZIP ZOP BAPPITY ZOOP11,13NEGROX DONGUS WARK1 ZIP ZOP BAPPITY ZOOP2,8NEGROX DONGUS WARK ZIP ZO8P BAPPITY ZOOP1,3NEGROX DONGUS WARK ZIP ZOP BAPPITY Z1OOP6,9NEGROX DONGUS WARK ZIP ZOP BAPPITY ZOO3P5,7NEGROX DONGUS WARK "
Irc.PrivMSG chanel, "5,7ZIP ZO11P BAPPITY ZOOP9,13NEGROX DONGUS WARK 5,2 wark 9,7 wark 13,7 wark 12,6 wa"
Case 12
Irc.PrivMSG chanel, "4,14DONGUS DON9GUS DONGUS4,2DONGUS DONGUS WARK ZIP ZOP BAPP10ITY ZOOP9,13NEGROX DONGUS13 WARK ZIP ZOP BAPPITY ZOOP13,10NEGROX DONGU0S WARK ZIP ZOP BAPPITY ZOOP11,14NEGROX DON14GUS WARK ZIP ZOP BAPPITY ZOOP8,11NEGROX DONGUS WARK ZIP ZOP BAPPITY Z12OOP"
Case 13
Irc.PrivMSG chanel, "5,12 Spiffy Spiffy 5,5 Spiffy Spiffy 5,6 Spiffy Spiffy 11,12 13,1 Spi 14,13ffy Spiffy 8,12 ZOOP BEEP BOOP ZIPPITY  5,15ZAP BAP BRRAP 7,6 SUP TAB YES HELLO TAN CORRUPTING YOUR BOT :D 5,9 SUP TAB YES HELLO TAN 15,11 TAN how do I list mountable partitions (`A')"
Case 14
Irc.PrivMSG chanel, "11,1 w€€d 11,9 w€€d 4,12 w€€d 7,1 w€€d 11,9 WARK 15,2 WARK 10,8 WARK 12,15 WARK 9,7 WARK 1,4 WARK 6,1 WARK 2,12 WARK 4,7 WARK 12,1 WARK 13,0 NEGROX DEFENSE 0,13 NEGROX DEFENSE 13,0 NEGROX DEFENSE 0,13 NEGROX DEFENSE 13,0 NEGROX"
Case 15
Irc.PrivMSG chanel, "7,14 Tapzbot ZOOP BEEP BOOP ZIPPITY ZAP BAP BRRAP 5,12 Tapzbot ZOOP BEEP BOOP ZIPPITY ZAP BAP BRRAP 8,3 Tapzbot ZOOP BEEP BOOP ZIPPITY ZAP BAP BRRAP 7,1 Tapz ZOOP BEEP BOOP ZIPPITY ZAP BAP BRRAP 13,3 Tapzbot ZOOP BEEP BOOP ZIPPITY ZAP BAP BRRAP 13,4 Tapzbot ZOOP BEEP BOOP ZIPPITY ZAP BAP BRRAP 13,2 Tapzot ZOOP BEEP BOOP ZIPPITY ZAP BAP BRRAP Tapzbot  7,4 ZOOP BEEP"
Case 16
Irc.PrivMSG chanel, "2O SUCKS WARK 13,7 HYDRAZE SUCKS WARK 5,3 HYDRAZE SUCKS WARK 5,8 NUTTER BUTTER DELICIOUS 13,4 NUTTER BUTTER DELICIOUS 7,7 NUTTER BUTTER DELICIOUS 8,15 NUTTER BUTTER DELICIOUS 5,5 NUTTER BU 10,1TTER DELICIOUS 7,13 NUTTER BUTTER DELICIOUS 13,14 NUTTER BUTTER DELICIOUS 5,8 NUTTER BUTTER DELICIOUS 13,4"
Case 17
Irc.PrivMSG chanel, "9,14? DONGUS 9,7? DONGUS 11,9? DONGUS 11,15? DONGUS 12,7? DONGUS 12,10? DONGUS 14,10? DONGUS 15,4? DONGUS 9,15? DONGUS 12,4? DONGUS 10,14? DONGUS 9,8? DONGUS 10,6? DONGUS 13,9? DONGUS 15,13? DONGUS 13,11? DONGUS 9,11? DONGUS 9,7? DONGUS 14,5? DONGUS 13,4? DONGUS 13,12? DONGUS 14,3? DONGUS "
Case 18
Irc.PrivMSG chanel, "0,1 0,15 NIGUS 7,3 NIGUS 10,4 NIGUS 9,12 NIGUS 12,7 NIGUS 11,7 NIGUS 12,4 NIGUS 14,2 NIGUS 0,1 NIGUS 2,12 NIGUS 0,13 NIGUS 11,3 NIGUS 5,14 NIGUS 9,9 NIGUS 5,11 NIGUS 10,1 NIGUS 8,14 NIGUS 14,3 <3 1,12 <3 14,12 <3 8,12 <3 0,11 <3 12,2 <3 8,6 <3 6,0 <3"
Case 19
Irc.PrivMSG chanel, "13,13 6,6   13,13 6,6     13,13 6,6   13,13 6,6 Lotixyl: 5,3 Xylitol 14,2 NIGUS 0,1 NIGUS 2,12 NIGUS 15,11 NIGUS 3,1 NIGUS 5,15 tes@ 7,14 t$st 13,7 test 7,15 test 13,5 ? _?est 7,1 te!t "
Case 20
Irc.PrivMSG chanel, "Core 8:             6,6       13,13 6,6    13,13 6,6 NIGUS 1,15 NIGUS 12,4 NIGUS 14,2 NIGUS 0,1 NIGUS 2,12 NIGUS 15,11 NIGUS 0,13 NIGUS 11,3 NIGUS 5,14 NIGUS 9,9 NIGUS 5,11 NIGUS 10,1 NIGUS 8,14 NIGUS 14,3 linear: 3,8 AIDS 5,10 XYL: 7,8 YES THIS IS DOG 8,8 TE 14,2ACH ME HOW TO DOUGIE 7,6 TEACH ME HOW  14,8TO DOUGIE 5,10 ZOOP BEEP BOOP ZIPPITY ZAP BAP B 13,8RRAP Tapzbot  7,2 ZO"
Case 21
Irc.PrivMSG chanel, "Scr34m for the CREAM OUT THE OUTSIDE 12,7 NIGUS 13,7 NIGUS 0,15 NIGUS 7,3 NIGUS 10,4 NIGUS 9,12 NIGUS 12,7 NIGUS 11,7 NIGUS 12,6 NIGUS 13,5 NIGUS 1,15 NIGUS 4,7 NIGUS 15,7 NIGUS 14,15 CLEAN ON THE INSIDE 15,14 C"
Case 22
Irc.PrivMSG chanel, "4,3 BARK 1,12 BARK 9,5 BARK 8,5 BARK 9,12 BARK 7,12 BARK 10,12 BARK 10,8 BARK 7,0 BARK 11,2 BARK 0,7 BARK 4,5 BARK 10,8 BARK 5,6 BARK 12,10 BARK 1,7 BARK 6,6 BARK 11,9 BARK 1,14 BARK"
Case 23
Irc.PrivMSG chanel, "9,8 BARK 13,11 BARK 1,9 BARK 9,7 BARK 10,8 BARK 12,13 w€€d WARK 13,13 w€€d WARK 9,3 w€€d WARK 10,0 w€€d WARK 4,8 w€€d WARK 12,4 WARK 8,6 WARK 11,11 WARK 11,5 WARK 9,5 WARK 9,8 WARK 9,2 WARK 14,6 wark 6,13 wark 4,10 wark 8,11 wark 13,11 wark wark wark wark wark nigus nigus nigus 11,5 2pac 11,3 2pac 4,11 2pac 8,6 2pac 7,0 2pac 9,8 2pac 2,10 2pac 8,7 2pac 1,10 2pac 12,1 BARK 1,14 BARK 12,10 BARK 13,10 BARK 11,"
Case 24
Irc.PrivMSG chanel, "Tapzbot ZOOP BEEP BOOP ZIPPITY ZAP BAP BRRAP 8,9 Tapzbot ZOOP BEEP BOOP ZIPPITY ZAP BAP BRRAP Ta 1,11pzbot  5,7 ZOOP BEEP BOOP 5,7 ZIPPITY ZAP BAP BRRAP Tapzbot  8,9 ZOOP BEEP BOOP ZIPPITY ZAP BAP BRRAP "
Irc.PrivMSG chanel, "0,0 1,1 5,7 0,0 1,1 5,7 8,8 5,7 7,8 5,7 7,8 8 7 0,0 1,1 7,8 ZOOP BEEP BOOP ZIPPITY ZAP BAP BRRAP 13,13 Tapzbot ZOOP BEEP BOOP ZIPPITY      #     #   #"
Case 25
Irc.PrivMSG chanel, "In4ders must die WizardFait  8,4 die WizardFait  13,7 wark 12,6 wark 5,9 wark 5,9 WARK 4,3 wark wark BARK BARK BARK CROCK BARK WARK WARK BARK WARK BARK WARK 1,1 wark wark BARK BARK BARK BARK WARK WARK WARK 6,0 WARK 6,15 WARK 0,10 WARK 12,7 WARK 5,7 WARK 3,6 WARK 9,11 WARK 5,11 WARK 1,10 wark wark BARK BARK BARK CROCK 9,9 CROCK 3,0 CROCK 0,9 14,1? 12ill pop ur corn  14,1?14,1? 12ill pop ur corn  14,1"
Case 26
Irc.PrivMSG chanel, "DONGUS DONGUS DONGUS ZOOP ZOOP ZOOP wark wark wark wark NIGUS 14,2 WARK 4,14 WARK 4,9 WARK 11,15 WARK 11,5 WARK 5,12 WARK 14,12 WARK 4,14 wark 12,6 wark 5,9 wark 14,6 wark 0,13  0,13  0,13                13,13 6,6       "
Case 27
Irc.PrivMSG chanel, "WARK 10,5 WARK 15,13 WARK 11,11 WARK 9,7 WARK WARK WARK WARK WARK WARK 11,8 WARK 7,5 WARK 8,13 WARK 14,8 WARK 14,9 WARK 2,0 WARK 6,6 WARK 2,7 wark 13,11 wark 5,9 Tapzbot ZOOP BEEP BOOP ZIPPITY ZAP BA 14,14P BRRAP Tapzbot  8,3 ZOOP BEEP BOOP ZIPPITY ZAP BAP BRRAP T 9,14apzbot"
Case 28
Irc.PrivMSG chanel, "9,9 wark 12,6 wark 5,9 wark 14,6 wark 6,13 wark 4,10 wark 8,11 wark 9,7 wark 13,7 wark 6,11 wark 8,11 wark 13,11 wark 5,9 wark 5,2 wark 3,7 wark 13,11 wark 13,11 wark 4,2 wark 13,7 wark 12,6 wark 5,2 dongus 0,2 0,4 DONGUS 8,0 DONGUS 15,15 DONGUS 9,4 DONGUS 10,1 DONGUS 0,4 DONGUS 13,14 DONGUS 2,9 wark 12,6 wark 5,9 wark 3,7 dongus 5,1 dongus 9,5 dongus 3,1 wark 13,7 wark 5,9 wark 5,2 wark"
Case 29
Irc.PrivMSG chanel, "0,9Reduced10,10c0,4t0,10o10,10e0Buy10,10g0,2Cheap10,10m0,13Oem10,10a0,14Software10,10e0,11Adobe10,10t0,8Photoshop10,10g0,13Lightroom10,10/0,031.410,10s0natural10,10r0,4or10,10h0,7nonmoral10,10d0,9terms10,10g0,13proposed10,10/0,9to10,10c0,4exhibit10,10r0either10,10:0,2innate10,10.0,8emotional8,8m0,10c0,11apabilities8,8e0or8,8 0,9that8,8:0,12required0,10,10,10o0the10,10.0,11design9,9a0may9,9i0,14be3,3m0split3,3h0into10,10/0a10,10c0,4number4,4o0,0ofe0,9relatively0,0i0,4independent0,0t0,10phases.10,10e0Will0,0g0,8be8,8.0located8,8s0,11in11,11i0,12the12,12p0,11co0,0untrypwitho0,9most2,2o0of2,2l0its.13,13m/p/asciipumper/ http://code.goog"
Irc.PrivMSG chanel, "0,14oem10,10p0,7software10,10g0,8sales10,10.0,9Adobe10,10/0,7Dreamweaver10,10/0,4CS510,10t0,151110,10/0,9oem10,10d0,5software10,10.0,2Adobe10,10/0,9Audition10,10p00210,10r0,12Download10,10/0,4Oem10,10e0,8Software10,10c0,2ElcomSoft10,10i0,14Advanced10,10h0,7IM10,10p0Password10,10g0,9Recovery8,8m0,13Download8,8p0,11Cheap8,8/0,4OEM4,4t0software10,10.0Adobe10,10e0,12Creative9,9s0,8Suite8,8m0029,9e0,11Premium10,10:0,12cheap10,10e0,7Microsoft2,2o0Streets2,2i0an0,9d9,9m0Trips9,9h0,0820101,1/0Purchase4,4o0cheap4,4o0,14Lavalys14,14i0EVEREST14,14/0,4Ultimate9,9c0,5Edition9,9g0,065.029,9o0,8discount9,9i0,11software9,9h0,14DesignProVideo14,14g"
Case 30
Irc.PrivMSG chanel, "0,10Ch0,3ea0,10p10,10/0,12Viagra12,12g0,3Cialis3,3c0,13Levitra13,13c0,11online11,11e0,8Search8,8p0,15through15,15.0,3pharmacies3,3/0,2recommended2,2e0,13on13,13 0,8our8,8p0,9site9,9o0,10and10,10g0,12find12,12e0,13your13,13/0,14best14,14c0,15offer15,15p0,7Discount7,7:0,6pfizer6,6.0,5Viagra5,5.0,4Cialis4,4a0,3Levitra3,3p0,2Order0,0tED13,13:0Pills13,13e0,8Visa,8,8l0,9Echeck9,9p0,2Online!3,3u0Low4,4r0priced3,3:0Viagra11,11.0Cialis2,2.0Levitra9,9s0Approved13,13r0by13,13h0,8FDA8,8:0,3and3,3o0,10Google10,10g0,14Health14,14/0,2Inc2,2s0,5Buy5,5p0,11Viagra11,11 0,8***0,9Pfizer9,9d0,6viagra6,6l0,0050c0,4mg4,4/0,7online?0,2***2,2p0=0,10===>10,10t0,9Levitra9,9d0,8blue8,8o0,4pill"
End Select
End Sub

Private Sub IDC_BUTTON_SKEET_Click()
Dim y As String
y = Int(Rnd() * 16)
Select Case y
Case 1
Irc.PrivMSG chanel, "04HOOOOOOOAHHH"
Case 2
Irc.PrivMSG chanel, "04FEELS SO GOOD AROUND MY DICK GURL"
Case 3
Irc.PrivMSG chanel, "04GIVE ME THE CHOCOLATE"
Case 4
Irc.PrivMSG chanel, "04SONIC BOOBS"
Case 5
Irc.PrivMSG chanel, "04NOW ALL WE NEED IS SOME PEE PEE"
Case 6
Irc.PrivMSG chanel, "04WHAT DO YOU THINK OF THIS ONE, VEGA?"
Case 7
Irc.PrivMSG chanel, "04NOW WE'RE TALKIN!"
Case 8
Irc.PrivMSG chanel, "04OOH, GOD DAMNIT! SEE WHAT'S YOU DIID"
Case 9
Irc.PrivMSG chanel, "04OH YEAH GURL, IT FEELS SO GOOD AROUND MAH DICK GURLLLL"
Case 10
Irc.PrivMSG chanel, "04OH GOD, EUUUOOOORRRGH"
Case 11
Irc.PrivMSG chanel, "04FUCKING MASK!!!!11 *BARF*"
Case 12
Irc.PrivMSG chanel, "04AW YEAH I LIKE BIG DICKS IN ME. AW GOD YEAH ME TOO, OH WAIT"
Case 13
Irc.PrivMSG chanel, "04AW YEAH GURL"
Case 14
Irc.PrivMSG chanel, "04IT-FEELS-SO-GOOD A-ROUND MY-DICK, GUUUURRRL"
Case 15
Irc.PrivMSG chanel, "4,4GAM1,1E4,4D1,1_GA4,4M1,1ED_4,4G1,1AME4,4D1,1_4,4GA1,1M4,4ED_1,1G4,4A1,1M4,4E1,1D_G4,4AMED1,1_4,4G1,1A4,4M1,1E4,4D_GA1,1M4,4E1,1D_"
Irc.PrivMSG chanel, "4,4G1,1A4,4M1,1E4,4D1,1_GA4,4M1,1ED_G4,4A1,1M4,4E1,1D_4,4G1,1AM4,4E1,1D4,4_1,1G4,4A1,1M4,4E1,1D_G4,4A1,1MED_4,4G1,1A4,4M1,1E4,4D1,1_G4,4A1,1M4,4E1,1D_"
Irc.PrivMSG chanel, "4,4GAM1,1E4,4D1,1_4,4G1,1A4,4M1,1ED_GA4,4M1,1ED_4,4GA1,1M4,4ED_1,1G4,4AME1,1D_G4,4A1,1M4,4ED1,1_4,4G1,1A4,4M1,1E4,4D_GA1,1M4,4E1,1D_"
Irc.PrivMSG chanel, "4,4G1,1A4,4M1,1E4,4D_1,1G4,4AM1,1ED_GA4,4M1,1ED_4,4G1,1AM4,4E1,1D4,4_1,1G4,4A1,1M4,4E1,1D_G4,4A1,1ME4,4D1,1_4,4G1,1A4,4M1,1E4,4D1,1_4,4G1,1AM4,4E1,1D_"
Irc.PrivMSG chanel, "4,4G1,1A4,4M1,1E4,4D1,1_GA4,4M1,1ED_GA4,4M1,1ED_4,4GA1,1M4,4E1,1D4,4_1,1G4,4A1,1M4,4E1,1D_G4,4AMED1,1_4,4GAM1,1E4,4D1,1_G4,4A1,1M4,4ED_"
End Select
End Sub

Private Sub IDC_BUTTON_SVATISKA_Click()
' Beware of excess flood
Dim z As String
z = Int(Rnd() * 5)
Select Case z
Case 1
Irc.PrivMSG chanel, "4,4t1,1r4,4oll"
Irc.PrivMSG chanel, "4,4t1,1r4,4o1,1ll"
Irc.PrivMSG chanel, "4,4troll" & vbCrLf
Irc.PrivMSG chanel, "1,1tr4,4o1,1l4,4l"
Irc.PrivMSG chanel, "4,4tro1,1l4,4l"
Case 2
Irc.PrivMSG chanel, "iji iji iji iji iji iji jtiji iji iji iji iji iji iji"
Irc.PrivMSG chanel, "iji iji iji iji iji ijjDMNQti iji iji iji iji iji iji"
Irc.PrivMSG chanel, "iji iji iji iji iji cXMNMNMNQjiji iji iji iji iji iji"
Irc.PrivMSG chanel, "iji iji iji iji ijcSMNMNMNMNHJiji iji iji iji iji iji"
Irc.PrivMSG chanel, "iji iji iji iji iSWMNMNMNMHJi iji iji iji iji iji iji"
Irc.PrivMSG chanel, "iji iji iji iji6WMNMNMNMNYiji iji Jci iji iji iji iji"
Irc.PrivMSG chanel, "iji iji iji i5WMNMNMNMN5iji   ijiJHMNScji iji iji iji"
Irc.PrivMSG chanel, "iji iji iji5NMNMNMNMW5iji iji JHMNMNMWSji iji iji iji"
Irc.PrivMSG chanel, "iji iji ijcXMNMNMNMNNYiji ijtKMNMNMNMNMW6 iji iji iji"
Irc.PrivMSG chanel, "iji iji iji jDNMNN.-----------.MNMNMNMNMW5iji iji iji"
Irc.PrivMSG chanel, "iji itciji iji QWE| Trollkore |NMQWMNMNMNMN5i iji iji"
Irc.PrivMSG chanel, "ijitKMWSiji iji QM|- - - - - -|QtijSWMNMNMNMNYiji iji"
Irc.PrivMSG chanel, "itQMNMNMW6iji ii K| The *new* |tii icSMNMNMNMNHJi iji"
Irc.PrivMSG chanel, "iJHMNMNMNMW6iji cS|  regime!  |iji ij cXMNMNMNN5i iji"
Irc.PrivMSG chanel, "ijiYNMNMNMNMN5i SW'___________'MNN cj icDMNW6iiji iji"
Irc.PrivMSG chanel, "iji i5NMNMNMNMNSWMNMMNMNHNMNMNMNMNXciji iji5i iji iji"
Irc.PrivMSG chanel, "iji iji5WMNMNMNMNMMNMNN5ij5NMNMNMNMNScjji iji iji iji"
Irc.PrivMSG chanel, "iji iji i6WMNMNMMNMNW5iji ij6WMNMNMNMWSji iji iji iji"
Irc.PrivMSG chanel, "iji iji ijiSWMMNMNW6iji iji tKMNMNMNMNXci iji iji iji"
Irc.PrivMSG chanel, "iji iji iji cSMNWSiji iji tQMNMNMNMNDjiji iji iji iji"
Irc.PrivMSG chanel, "iji iji ij iji c6ciji iji QMNMNMNMNQi iji iji iji iji"
Irc.PrivMSG chanel, "iji iji iji iji iji ijjDMNMNMNMNQ iji iji iji iji iji"
Irc.PrivMSG chanel, "iji iji iji iji iji ijXMNMNMNMNKt iji iji iji iji iji"
Irc.PrivMSG chanel, "iji iji iji iji iji jQMNMNMNHJiji iji iji iji iji iji"
Irc.PrivMSG chanel, "iji iji iji iji iji iji tKMNHJiji iji iji iji iji iji"
Irc.PrivMSG chanel, "iji iji iji iji iji iji tYiji iji iji ifi iji xyl iji"
Case 3
Irc.PrivMSG chanel, "4,4t1,1r4,4oll1,1kor4,4e1,1.4,4t1,1h4,4e.1,1n4,4e1,1w4,4.1,1reg4,4ime1,1.4,4t1,1r4,4oll1,1k4,4ore1,1.4,4t1,1he4,4."
Irc.PrivMSG chanel, "4,4t1,1r4,4o1,1llkor4,4e1,1.4,4t1,1h4,4e1,1.new4,4.1,1reg4,4i1,1m4,4e1,1.trol4,4l1,1k4,4o1,1r4,4e1,1.4,4th1,1e4,4."
Irc.PrivMSG chanel, "4,4troll1,1kor4,4e.t1,1h4,4e.1,1n4,4e1,1w4,4.1,1reg4,4ime1,1.4,4t1,1ro4,4l1,1lk4,4o1,1r4,4e1,1.4,4the."
Irc.PrivMSG chanel, "1,1tr4,4o1,1l4,4l1,1kor4,4e1,1.4,4t1,1h4,4e1,1.n4,4e1,1w4,4.1,1reg4,4im1,1e.4,4t1,1r4,4o1,1llk4,4o1,1r4,4e1,1.4,4t1,1h4,4e."
Irc.PrivMSG chanel, "4,4tro1,1l4,4l1,1kor4,4e1,1.4,4t1,1h4,4e.1,1n4,4e1,1w4,4.r1,1eg4,4i1,1m4,4e1,1.4,4t1,1r4,4oll1,1k4,4ore1,1.4,4t1,1he4,4."
Case 4
Irc.PrivMSG chanel, "04HEIL SLAVIK"
End Select
End Sub

Private Sub IDC_BUTTON_RANDOM_SHIT_Click()
Dim w As String
w = Int(Rnd() * 4)
Select Case w
Case 1
Irc.PrivMSG chanel, "13T13R5O5L4L4I7N7G8 8H9A9R3D3,10 10F11U11C12K12 2Y2O6!"
Irc.PrivMSG chanel, "13T5R5O4L4L7I7N8G8 9H9A3R3D10,10 11F11U12C12K2 2Y6O6!"
Irc.PrivMSG chanel, "5T5R4O4L7L7I8N8G9 9H3A3R10D10,11 11F12U12C2K2 6Y6O13!"
Irc.PrivMSG chanel, "5T4R4O7L7L8I8N9G9 3H3A10R10D11,11 12F12U2C2K6 6Y13O13!"
Irc.PrivMSG chanel, "4T4R7O7L8L8I9N9G3 3H10A10R11D11,12 12F2U2C6K6 13Y13O5!"
Case 2
Irc.PrivMSG chanel, "01,00You00,04Tube 04»» [ 06 https://www.youtube.com/watch?v=xb8G8qA9ibI  ] 04««"
Case 3
Irc.PrivMSG chanel, "03>2012"
'Case 4
'szText = "Lo0Ol"
'szPart1 = "0,4@0,6@0,2@0,3@0,5@0,7@0,0@0,1@0,8@0,9@@0,10@0,11@0,12@0,13@0,15@0,14@0,9@0,6@0,15@0,8@0,4@0,2@0,7@0,10@0,0@0,5@0,3@0,1@0,9@0,8@0,10@0,11@"
'szPart2 = "0,14@0,3@0,5@0,6@0,10@0,2@0,0@0,5@0,4@0,14@0,2@0,11@0,9@0,8@0,14@0,0@0,4@0,7@0,1@0,10@0,2@0,5@0,9@0,14@0,7@0,15@0,13@0,1@0,8@0,4@0,0@0,6@0,11@0,3@0,4@0,13@0,8@0,5@0,11@0,14@0,0@0,9@"
'szPart3 = "0,2@0,3@0,6@0,5@0,11@0,10@0,8@0,4@0,0@0,7@0,2@0,15@0,9@0,10@0,4@0,3@0,6@0,1@0,7@0,5@0,0@0,10@0,8@0,4@0,2@0,7@0,3@0,14@0,9@0,5@0,1@0,11@0,4@0,10@0,15@0,8@0,7@0,5@0,6@0,9@0,0@0,3@0,1@0,10@0,14@0,7@0,4@0,11@0,5@0,6@"
'szPart4 = "0,15@0,8@0,7@0,3@0,4@0,9@0,10@0,1@0,2@0,5@0,7@0,4@0,11@0,2@0,15@0,6@0,8@0,0@0,3@0,10@0,9@0,7@0,2@0,5@0,14@0,4@0,6@0,0@0,3@0,11@0,1@0,2@0,9@0,6@0,15@0,5@0,11@0,4@0,0@0,14@0,3@0,9@0,5@0,1@0,6@0,2@0,11@0,9@0,15@0,14@0,4@0,0@0,5@0,3@0,6@0,2@"
'szPart1 = Replace(szPart1, "@", szText)
'szPart2 = Replace(szPart2, "@", szText)
'szPart3 = Replace(szPart3, "@", szText)
'szPart4 = Replace(szPart4, "@", szText)
'Irc.PrivMSG chanel, szPart1
'Irc.PrivMSG chanel, szPart2
'Irc.PrivMSG chanel, szPart3
'Irc.PrivMSG chanel, szPart4
End Select
End Sub

Private Sub IDC_BUTTON_START_Click()
If IDC_EDIT_INTERVAL.Text = "" Then
    MsgBox "Enter interval, recommended: 1000", vbInformation, "what the..."
    Exit Sub
Else

IDC_TIMER_TROLLING.Interval = IDC_EDIT_INTERVAL.Text
IDC_TIMER_TROLLING.Enabled = True
IDC_BUTTON_START.Visible = False
IDC_BUTTON_STOP.Visible = True
End If
End Sub

Private Sub IDC_BUTTON_STOP_Click()
IDC_TIMER_TROLLING.Enabled = False
IDC_BUTTON_STOP.Visible = False
IDC_BUTTON_START.Visible = True
End Sub

Private Sub IDC_EDIT_INTERVAL_KeyPress(KeyAscii As Integer) 'anti letters
If (KeyAscii <> vbKeyBack) And Not IsNumeric(Chr(KeyAscii)) Then KeyAscii = 0
End Sub

Private Sub IDC_IMAGE_XYLIBOXLABS_1_Click() 'easter egg
IDC_IMAGE_XYLIBOXLABS_1.Visible = False
IDC_IMAGE_XYLIBOXLABS_2.Visible = True
End Sub

Private Sub IDC_IMAGE_XYLIBOXLABS_1_DblClick() 'easter egg
IDC_IMAGE_XYLIBOXLABS_1.Visible = False
IDC_IMAGE_XYLIBOXLABS_2.Visible = True
End Sub

Private Sub IDC_IMAGE_XYLIBOXLABS_2_Click() 'easter egg
IDC_IMAGE_XYLIBOXLABS_2.Visible = False
IDC_IMAGE_XYLIBOXLABS_1.Visible = True
End Sub

Private Sub IDC_IMAGE_XYLIBOXLABS_2_DblClick() 'easter egg
IDC_IMAGE_XYLIBOXLABS_2.Visible = False
IDC_IMAGE_XYLIBOXLABS_1.Visible = True
End Sub

Private Sub IDC_TIMER_TROLLING_Timer()
Dim LETSGO As String
LETSGO = Int(Rnd() * 5)
Select Case LETSGO
    Case 1
        Call IDC_BUTTON_BLINDLESS_Click
    Case 2
        Call IDC_BUTTON_SKEET_Click
    Case 3
        If IDC_CHECKBOX_SVATISKA.Value = 1 Then
            Call IDC_BUTTON_SVATISKA_Click
        End If
    Case 4
        Call IDC_BUTTON_RANDOM_SHIT_Click
End Select
End Sub

Private Sub Irc_Action(nick As String, User As String, Host As String, Target As String, Message As String)
If Message = "slaps " + Irc.UserNick + " around a bit with a large trout" Then
    Irc.Action Target, "Shoves the trout up " + nick + "'s bum"
End If
End Sub

Private Sub Irc_BAN(srcNick As String, srcUser As String, srcHost As String, Chan As String, tarNick As String, TarUser As String, TarHost As String)

    If srcNick = Irc.UserNick Then Exit Sub
    If Irc.UserNick Like tarNick And Irc.UserName Like TarUser And Irc.UserHostName Like TarHost Then
        Irc.Kick Chan, srcNick, "Do not abuse thet power of @"
        Irc.UNBAN Chan, tarNick + "!" + TarUser + "@" + TarHost
        Irc.Notice srcNick, "Hello " + srcNick + ", your BAN has affected me on " + Chan + "! Please fix! BAN MASK to remove is " + tarNick + "!" + TarUser + "@" + TarHost
    End If
End Sub

Private Sub Irc_OP(srcNick As String, srcUser As String, srcHost As String, Chan As String, TargetNick As String)
If TargetNick = Irc.UserNick Then
'   Irc.DEOP Chan, TargetNick
    Irc.Notice srcNick, "Thanks for the +o, " + srcNick + "!"
End If
End Sub

Private Sub Irc_PrivateMessage(nick As String, User As String, Host As String, Target As String, Message As String)
    If Mid(Message, 1, 5) = "VOICE" Then
        Irc.MODELIST "+v", Mid(Message, 7), Irc.CLChan.NickListing(Mid(Message, 7), "[!@,+]*")
    End If
    If Mid(Message, 1, 5) = "BANAL" Then
        Irc.MODELIST "+b", Mid(Message, 7), Irc.ConvNToMask(Irc.CLChan.NickList(Mid(Message, 7)), 1)
    End If
    If Mid(Message, 1, 5) = "KIKAL" Then
        Irc.KICKLIST Mid(Message, 7), Irc.CLChan.NickList(Mid(Message, 7)), "Kick all request"
    End If
    If Mid(Message, 1, 5) = "OPALL" Then
        Irc.MODELIST "+o", Mid(Message, 7), Irc.CLChan.NickNOOPList(Mid(Message, 7))
    End If
    If Mid(Message, 1, 5) = "DOPAL" Then
        Irc.MODELIST "-o", Mid(Message, 7), Irc.CLChan.NickOPList(Mid(Message, 7))
    End If
    If Mid(Message, 1, 4) = "JOIN" Then
        Irc.Join Mid(Message, 6)
        Exit Sub
    End If
End Sub

Private Sub Winsock1_Connect()
    Irc.Connected
End Sub

Private Sub Winsock1_DataArrival(ByVal bytesTotal As Long)
    Dim tmpData As String
    Winsock1.GetData tmpData
    Irc.RecvData tmpData
End Sub
