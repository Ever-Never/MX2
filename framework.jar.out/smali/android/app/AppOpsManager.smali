.class public Landroid/app/AppOpsManager;
.super Ljava/lang/Object;
.source "AppOpsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/AppOpsManager$OnOpChangedInternalListener;,
        Landroid/app/AppOpsManager$OnOpChangedListener;,
        Landroid/app/AppOpsManager$Callback;,
        Landroid/app/AppOpsManager$OpEntry;,
        Landroid/app/AppOpsManager$PackageOps;
    }
.end annotation


# static fields
.field public static final APPOPS_PREX:Ljava/lang/String; = "_op_"

.field public static final APPOPS_SETTINGS_ALLOWED:I = 0x1

.field public static final APPOPS_SETTINGS_DENIED:I = 0x0

.field public static final APPOPS_SETTINGS_INIT:I = 0x2

.field public static final MODE_ALLOWED:I = 0x0

.field public static final MODE_ERRORED:I = 0x2

.field public static final MODE_IGNORED:I = 0x1

.field public static final OP_ACCESS_NOTIFICATIONS:I = 0x2e

.field public static final OP_AUTORUN:I = 0x37

.field public static final OP_BLUETOOTH:I = 0x2b

.field public static final OP_BLUETOOTH_ADMIN:I = 0x2c

.field public static final OP_CALL_PHONE:I = 0x13

.field public static final OP_CALL_PRIVILEGED:I = 0x14

.field public static final OP_CAMERA:I = 0x23

.field public static final OP_CHANGE_NETWORK_STATE:I = 0x28

.field public static final OP_CHANGE_NETWORK_STATE_MMS:I = 0x33

.field public static final OP_CHANGE_WIFI_MULTICAST_STATE:I = 0x12

.field public static final OP_CHANGE_WIFI_STATE:I = 0x11

.field public static final OP_COARSE_LOCATION:I = 0x0

.field public static final OP_FINE_LOCATION:I = 0x1

.field public static final OP_GPS:I = 0x6

.field public static final OP_GROUP_BLUETOOTH:I = 0x8

.field public static final OP_GROUP_BOOTCOMPLETED:I = 0x9

.field public static final OP_GROUP_CAMERA:I = 0x7

.field public static final OP_GROUP_GPS:I = 0x16

.field public static final OP_GROUP_LOCATION:I = 0x5

.field public static final OP_GROUP_NETWORK:I = 0x3

.field public static final OP_GROUP_NFC:I = 0xd

.field public static final OP_GROUP_NONE:I = -0x1

.field public static final OP_GROUP_PHONE_CALL:I = 0x0

.field public static final OP_GROUP_PHONE_OUT_GOING_CALL:I = 0x17

.field public static final OP_GROUP_PHONE_READ_CALLLOG:I = 0xa

.field public static final OP_GROUP_PHONE_WRITE_CALLLOG:I = 0x15

.field public static final OP_GROUP_READ_CONTACTS:I = 0x1

.field public static final OP_GROUP_READ_MMS:I = 0xb

.field public static final OP_GROUP_READ_SMS:I = 0x2

.field public static final OP_GROUP_RECEIVE_MMS:I = 0x14

.field public static final OP_GROUP_RECEIVE_SMS:I = 0x11

.field public static final OP_GROUP_RECORDAUDIO:I = 0x6

.field public static final OP_GROUP_RECORDAUDIO_PHONE:I = 0xc

.field public static final OP_GROUP_SEND_MMS:I = 0x13

.field public static final OP_GROUP_SEND_SMS:I = 0x10

.field public static final OP_GROUP_SYSTEM_ALERT:I = 0x18

.field public static final OP_GROUP_WLAN:I = 0x4

.field public static final OP_GROUP_WRITE_CONTACTS:I = 0xe

.field public static final OP_GROUP_WRITE_MMS:I = 0x12

.field public static final OP_GROUP_WRITE_SMS:I = 0xf

.field public static final OP_HARDWARE_ACCELERATED:I = 0x36

.field public static final OP_LOCATION_EXTRA_COMMANDS:I = 0x2

.field public static final OP_LOCATION_MOCK_LOCATIO:I = 0x3

.field public static final OP_LOCATION_PROVIDER:I = 0x5

.field public static final OP_LOCATION_UPDATES:I = 0x4

.field public static final OP_MODIFY_PHONE_STATE:I = 0x16

.field public static final OP_NEIGHBORING_CELLS:I = 0x2f

.field public static final OP_NFC:I = 0x35

.field public static final OP_NONE:I = -0x1

.field public static final OP_PLAY_AUDIO:I = 0x25

.field public static final OP_POST_NOTIFICATION:I = 0x2d

.field public static final OP_PROCESS_OUTGOING_CALLS:I = 0x15

.field public static final OP_READ_CALENDAR:I = 0xe

.field public static final OP_READ_CALL_LOG:I = 0xc

.field public static final OP_READ_CLIPBOARD:I = 0x26

.field public static final OP_READ_CONTACTS:I = 0x8

.field public static final OP_READ_ICC_SMS:I = 0x1f

.field public static final OP_READ_MMS:I = 0x30

.field public static final OP_READ_PRIVILEGED_PHONE_STATE:I = 0x17

.field public static final OP_READ_PROFILE_:I = 0x9

.field public static final OP_READ_SMS:I = 0x18

.field public static final OP_RECEIVE_BOOT_COMPLETED:I = 0x2a

.field public static final OP_RECEIVE_EMERGECY_SMS:I = 0x1b

.field public static final OP_RECEIVE_MMS:I = 0x1c

.field public static final OP_RECEIVE_SMS:I = 0x1a

.field public static final OP_RECEIVE_WAP_PUSH:I = 0x1d

.field public static final OP_RECORD_AUDIO:I = 0x24

.field public static final OP_RECORD_AUDIO_PHONE:I = 0x34

.field public static final OP_SEND_MMS:I = 0x32

.field public static final OP_SEND_SMS:I = 0x1e

.field public static final OP_SYSTEM_ALERT_WINDOW:I = 0x22

.field public static final OP_VIBRATE:I = 0x7

.field public static final OP_WIFI_SCAN:I = 0x10

.field public static final OP_WRITE_APN_SETTINGS:I = 0x29

.field public static final OP_WRITE_CALENDAR:I = 0xf

.field public static final OP_WRITE_CALL_LOG:I = 0xd

.field public static final OP_WRITE_CLIPBOARD:I = 0x27

.field public static final OP_WRITE_CONTACTS:I = 0xa

.field public static final OP_WRITE_ICC_SMS:I = 0x20

.field public static final OP_WRITE_MMS:I = 0x31

.field public static final OP_WRITE_PROFILE:I = 0xb

.field public static final OP_WRITE_SETTINGS:I = 0x21

.field public static final OP_WRITE_SMS:I = 0x19

.field public static final _NUM_OP:I = 0x38

.field public static mOpBluetooth:[I

.field public static mOpBootCompleted:[I

.field public static mOpCamera:[I

.field public static mOpGPS:[I

.field public static mOpLocation:[I

.field public static mOpNFC:[I

.field public static mOpNetWork:[I

.field public static mOpPhoneCall:[I

.field public static mOpPhoneOutGoingCall:[I

.field public static mOpPhoneReadCallLog:[I

.field public static mOpPhoneWriteCallLog:[I

.field public static mOpReadContacts:[I

.field public static mOpReadMms:[I

.field public static mOpReadSms:[I

.field public static mOpReceiveMms:[I

.field public static mOpReceiveSms:[I

.field public static mOpRecordAudio:[I

.field public static mOpRecordAudioPhone:[I

.field public static mOpSendMms:[I

.field public static mOpSendSms:[I

.field public static mOpSystemAlert:[I

.field public static mOpWlan:[I

.field public static mOpWriteContacts:[I

.field public static mOpWriteMms:[I

.field public static mOpWriteSms:[I

.field private static sOpNames:[Ljava/lang/String;

.field public static sOpPerms:[Ljava/lang/String;

.field private static sOpToSwitch:[I


# instance fields
.field final mContext:Landroid/content/Context;

.field final mModeWatchers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/app/AppOpsManager$Callback;",
            "Lcom/android/internal/app/IAppOpsCallback;",
            ">;"
        }
    .end annotation
.end field

.field final mService:Lcom/android/internal/app/IAppOpsService;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 174
    const/16 v0, 0x38

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/app/AppOpsManager;->sOpToSwitch:[I

    .line 261
    const/16 v0, 0x1f

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "COARSE_LOCATION"

    aput-object v1, v0, v3

    const-string v1, "FINE_LOCATION"

    aput-object v1, v0, v4

    const-string v1, "GPS"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "VIBRATE"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "READ_CONTACTS"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "WRITE_CONTACTS"

    aput-object v2, v0, v1

    const-string v1, "READ_CALL_LOG"

    aput-object v1, v0, v7

    const/4 v1, 0x7

    const-string v2, "WRITE_CALL_LOG"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "READ_CALENDAR"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "WRITE_CALENDAR"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "WIFI_SCAN"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "POST_NOTIFICATION"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "NEIGHBORING_CELLS"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "CALL_PHONE"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "READ_SMS"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "WRITE_SMS"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "RECEIVE_SMS"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "RECEIVE_EMERGECY_SMS"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "RECEIVE_MMS"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "RECEIVE_WAP_PUSH"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "SEND_SMS"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "READ_ICC_SMS"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "WRITE_ICC_SMS"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "WRITE_SETTINGS"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "SYSTEM_ALERT_WINDOW"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "ACCESS_NOTIFICATIONS"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "CAMERA"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "RECORD_AUDIO"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "PLAY_AUDIO"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "READ_CLIPBOARD"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "WRITE_CLIPBOARD"

    aput-object v2, v0, v1

    sput-object v0, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    .line 299
    const/16 v0, 0x38

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v1, v0, v3

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v1, v0, v4

    const-string v1, "android.permission.ACCESS_LOCATION_EXTRA_COMMANDS"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "android.permission.ACCESS_MOCK_LOCATION"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "android.permission.CONTROL_LOCATION_UPDATES"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "android.permission.INSTALL_LOCATION_PROVIDER"

    aput-object v2, v0, v1

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v1, v0, v7

    const/4 v1, 0x7

    const-string v2, "android.permission.VIBRATE"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "android.permission.READ_CONTACTS"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "android.permission.READ_PROFILE"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "android.permission.WRITE_CONTACTS"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "android.permission.WRITE_PROFILE"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "android.permission.READ_CALL_LOG"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "android.permission.WRITE_CALL_LOG"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "android.permission.READ_CALENDAR"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "android.permission.WRITE_CALENDAR"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "android.permission.ACCESS_WIFI_STATE"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "android.permission.CHANGE_WIFI_STATE"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "android.permission.CHANGE_WIFI_MULTICAST_STATE"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "android.permission.CALL_PHONE"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "android.permission.CALL_PRIVILEGED"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "android.permission.PROCESS_OUTGOING_CALLS"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "android.permission.READ_SMS"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "android.permission.WRITE_SMS"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "android.permission.RECEIVE_SMS"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "android.permission.RECEIVE_MMS"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "android.permission.RECEIVE_WAP_PUSH"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "android.permission.SEND_SMS"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "android.permission.READ_SMS"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "android.permission.WRITE_SMS"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "android.permission.WRITE_SETTINGS"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "android.permission.SYSTEM_ALERT_WINDOW"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "android.permission.CAMERA"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "android.permission.RECORD_AUDIO"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    aput-object v6, v0, v1

    const/16 v1, 0x26

    aput-object v6, v0, v1

    const/16 v1, 0x27

    aput-object v6, v0, v1

    const/16 v1, 0x28

    const-string v2, "android.permission.CHANGE_NETWORK_STATE"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "android.permission.WRITE_APN_SETTINGS"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "android.permission.RECEIVE_BOOT_COMPLETED"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "android.permission.BLUETOOTH"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    aput-object v6, v0, v1

    const/16 v1, 0x2e

    aput-object v6, v0, v1

    const/16 v1, 0x2f

    aput-object v6, v0, v1

    const/16 v1, 0x30

    const-string v2, "android.permission.READ_SMS"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "android.permission.WRITE_SMS"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "android.permission.SEND_SMS"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "android.permission.CHANGE_NETWORK_STATE"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "android.permission.RECORD_AUDIO"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "android.permission.NFC"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    aput-object v6, v0, v1

    const/16 v1, 0x37

    aput-object v6, v0, v1

    sput-object v0, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    .line 429
    new-array v0, v5, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/app/AppOpsManager;->mOpPhoneCall:[I

    .line 434
    new-array v0, v4, [I

    const/16 v1, 0x15

    aput v1, v0, v3

    sput-object v0, Landroid/app/AppOpsManager;->mOpPhoneOutGoingCall:[I

    .line 440
    new-array v0, v4, [I

    const/16 v1, 0xc

    aput v1, v0, v3

    sput-object v0, Landroid/app/AppOpsManager;->mOpPhoneReadCallLog:[I

    .line 444
    new-array v0, v4, [I

    const/16 v1, 0xd

    aput v1, v0, v3

    sput-object v0, Landroid/app/AppOpsManager;->mOpPhoneWriteCallLog:[I

    .line 449
    new-array v0, v5, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroid/app/AppOpsManager;->mOpReadContacts:[I

    .line 454
    new-array v0, v5, [I

    fill-array-data v0, :array_3

    sput-object v0, Landroid/app/AppOpsManager;->mOpWriteContacts:[I

    .line 459
    new-array v0, v5, [I

    fill-array-data v0, :array_4

    sput-object v0, Landroid/app/AppOpsManager;->mOpReadSms:[I

    .line 464
    new-array v0, v5, [I

    fill-array-data v0, :array_5

    sput-object v0, Landroid/app/AppOpsManager;->mOpWriteSms:[I

    .line 470
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_6

    sput-object v0, Landroid/app/AppOpsManager;->mOpReceiveSms:[I

    .line 478
    new-array v0, v4, [I

    const/16 v1, 0x1e

    aput v1, v0, v3

    sput-object v0, Landroid/app/AppOpsManager;->mOpSendSms:[I

    .line 483
    new-array v0, v4, [I

    const/16 v1, 0x30

    aput v1, v0, v3

    sput-object v0, Landroid/app/AppOpsManager;->mOpReadMms:[I

    .line 487
    new-array v0, v4, [I

    const/16 v1, 0x31

    aput v1, v0, v3

    sput-object v0, Landroid/app/AppOpsManager;->mOpWriteMms:[I

    .line 491
    new-array v0, v5, [I

    fill-array-data v0, :array_7

    sput-object v0, Landroid/app/AppOpsManager;->mOpReceiveMms:[I

    .line 496
    new-array v0, v4, [I

    const/16 v1, 0x32

    aput v1, v0, v3

    sput-object v0, Landroid/app/AppOpsManager;->mOpSendMms:[I

    .line 501
    new-array v0, v5, [I

    fill-array-data v0, :array_8

    sput-object v0, Landroid/app/AppOpsManager;->mOpNetWork:[I

    .line 506
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_9

    sput-object v0, Landroid/app/AppOpsManager;->mOpWlan:[I

    .line 512
    new-array v0, v7, [I

    fill-array-data v0, :array_a

    sput-object v0, Landroid/app/AppOpsManager;->mOpLocation:[I

    .line 521
    new-array v0, v4, [I

    const/16 v1, 0x24

    aput v1, v0, v3

    sput-object v0, Landroid/app/AppOpsManager;->mOpRecordAudio:[I

    .line 525
    new-array v0, v4, [I

    const/16 v1, 0x34

    aput v1, v0, v3

    sput-object v0, Landroid/app/AppOpsManager;->mOpRecordAudioPhone:[I

    .line 529
    new-array v0, v4, [I

    const/16 v1, 0x23

    aput v1, v0, v3

    sput-object v0, Landroid/app/AppOpsManager;->mOpCamera:[I

    .line 533
    new-array v0, v5, [I

    fill-array-data v0, :array_b

    sput-object v0, Landroid/app/AppOpsManager;->mOpBluetooth:[I

    .line 538
    new-array v0, v4, [I

    const/16 v1, 0x2a

    aput v1, v0, v3

    sput-object v0, Landroid/app/AppOpsManager;->mOpBootCompleted:[I

    .line 542
    new-array v0, v4, [I

    const/16 v1, 0x35

    aput v1, v0, v3

    sput-object v0, Landroid/app/AppOpsManager;->mOpNFC:[I

    .line 545
    new-array v0, v4, [I

    aput v7, v0, v3

    sput-object v0, Landroid/app/AppOpsManager;->mOpGPS:[I

    .line 549
    new-array v0, v4, [I

    const/16 v1, 0x22

    aput v1, v0, v3

    sput-object v0, Landroid/app/AppOpsManager;->mOpSystemAlert:[I

    return-void

    .line 174
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x2et 0x0t 0x0t 0x0t
        0x2ft 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x33t 0x0t 0x0t 0x0t
        0x34t 0x0t 0x0t 0x0t
        0x35t 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
        0x37t 0x0t 0x0t 0x0t
    .end array-data

    .line 429
    :array_1
    .array-data 0x4
        0x13t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
    .end array-data

    .line 449
    :array_2
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
    .end array-data

    .line 454
    :array_3
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
    .end array-data

    .line 459
    :array_4
    .array-data 0x4
        0x18t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
    .end array-data

    .line 464
    :array_5
    .array-data 0x4
        0x19t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
    .end array-data

    .line 470
    :array_6
    .array-data 0x4
        0x1at 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
    .end array-data

    .line 491
    :array_7
    .array-data 0x4
        0x1ct 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
    .end array-data

    .line 501
    :array_8
    .array-data 0x4
        0x28t 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
    .end array-data

    .line 506
    :array_9
    .array-data 0x4
        0x10t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
    .end array-data

    .line 512
    :array_a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    .line 533
    :array_b
    .array-data 0x4
        0x2bt 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/app/IAppOpsService;)V
    .locals 1
    .parameter "context"
    .parameter "service"

    .prologue
    .line 738
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/AppOpsManager;->mModeWatchers:Ljava/util/HashMap;

    .line 739
    iput-object p1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    .line 740
    iput-object p2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    .line 741
    return-void
.end method

.method public static opToName(I)Ljava/lang/String;
    .locals 2
    .parameter "op"

    .prologue
    .line 563
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const-string v0, "NONE"

    .line 564
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_1

    sget-object v0, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    aget-object v0, v0, p0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static opToPermission(I)Ljava/lang/String;
    .locals 1
    .parameter "op"

    .prologue
    .line 571
    sget-object v0, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static opToSwitch(I)I
    .locals 1
    .parameter "op"

    .prologue
    .line 556
    sget-object v0, Landroid/app/AppOpsManager;->sOpToSwitch:[I

    aget v0, v0, p0

    return v0
.end method


# virtual methods
.method public checkOp(IILjava/lang/String;)I
    .locals 3
    .parameter "op"
    .parameter "uid"
    .parameter "packageName"

    .prologue
    .line 825
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v0

    .line 826
    .local v0, mode:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 827
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Operation not allowed"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 830
    .end local v0           #mode:I
    :catch_0
    move-exception v1

    .line 832
    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public checkOpNoThrow(IILjava/lang/String;)I
    .locals 1
    .parameter "op"
    .parameter "uid"
    .parameter "packageName"

    .prologue
    .line 837
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 840
    :goto_0
    return v0

    .line 838
    :catch_0
    move-exception v0

    .line 840
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public createFactoryFile()V
    .locals 1

    .prologue
    .line 1124
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0}, Lcom/android/internal/app/IAppOpsService;->createFactoryFile()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1127
    :goto_0
    return-void

    .line 1125
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public dimissDialog(IILjava/lang/String;IZ)V
    .locals 6
    .parameter "code"
    .parameter "uid"
    .parameter "packageName"
    .parameter "result"
    .parameter "enable"

    .prologue
    .line 787
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IAppOpsService;->dimissDialog(IILjava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 790
    :goto_0
    return-void

    .line 788
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public finishOp(I)V
    .locals 2
    .parameter "op"

    .prologue
    .line 1111
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 1112
    return-void
.end method

.method public finishOp(IILjava/lang/String;)V
    .locals 1
    .parameter "op"
    .parameter "uid"
    .parameter "packageName"

    .prologue
    .line 1105
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->finishOperation(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1108
    :goto_0
    return-void

    .line 1106
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getFactoryState()Z
    .locals 1

    .prologue
    .line 1116
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0}, Lcom/android/internal/app/IAppOpsService;->getFactoryState()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1119
    :goto_0
    return v0

    .line 1117
    :catch_0
    move-exception v0

    .line 1119
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;
    .locals 1
    .parameter "uid"
    .parameter "packageName"
    .parameter "ops"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .prologue
    .line 765
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 768
    :goto_0
    return-object v0

    .line 766
    :catch_0
    move-exception v0

    .line 768
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPackagesForOps([I)Ljava/util/List;
    .locals 1
    .parameter "ops"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .prologue
    .line 750
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IAppOpsService;->getPackagesForOps([I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 753
    :goto_0
    return-object v0

    .line 751
    :catch_0
    move-exception v0

    .line 753
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPermissionGroupOp(I)I
    .locals 3
    .parameter "op"

    .prologue
    .line 844
    sget-object v2, Landroid/app/AppOpsManager;->mOpPhoneCall:[I

    array-length v1, v2

    .line 845
    .local v1, lenght:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 846
    sget-object v2, Landroid/app/AppOpsManager;->mOpPhoneCall:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_0

    .line 847
    const/4 v2, 0x0

    .line 1003
    :goto_1
    return v2

    .line 845
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 850
    :cond_1
    sget-object v2, Landroid/app/AppOpsManager;->mOpPhoneOutGoingCall:[I

    array-length v1, v2

    .line 851
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_3

    .line 852
    sget-object v2, Landroid/app/AppOpsManager;->mOpPhoneOutGoingCall:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_2

    .line 853
    const/16 v2, 0x17

    goto :goto_1

    .line 851
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 858
    :cond_3
    sget-object v2, Landroid/app/AppOpsManager;->mOpPhoneReadCallLog:[I

    array-length v1, v2

    .line 859
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v1, :cond_5

    .line 860
    sget-object v2, Landroid/app/AppOpsManager;->mOpPhoneReadCallLog:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_4

    .line 861
    const/16 v2, 0xa

    goto :goto_1

    .line 859
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 864
    :cond_5
    sget-object v2, Landroid/app/AppOpsManager;->mOpPhoneWriteCallLog:[I

    array-length v1, v2

    .line 865
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v1, :cond_7

    .line 866
    sget-object v2, Landroid/app/AppOpsManager;->mOpPhoneWriteCallLog:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_6

    .line 867
    const/16 v2, 0x15

    goto :goto_1

    .line 865
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 870
    :cond_7
    sget-object v2, Landroid/app/AppOpsManager;->mOpReadContacts:[I

    array-length v1, v2

    .line 871
    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_9

    .line 872
    sget-object v2, Landroid/app/AppOpsManager;->mOpReadContacts:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_8

    .line 873
    const/4 v2, 0x1

    goto :goto_1

    .line 871
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 876
    :cond_9
    sget-object v2, Landroid/app/AppOpsManager;->mOpWriteContacts:[I

    array-length v1, v2

    .line 877
    const/4 v0, 0x0

    :goto_6
    if-ge v0, v1, :cond_b

    .line 878
    sget-object v2, Landroid/app/AppOpsManager;->mOpWriteContacts:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_a

    .line 879
    const/16 v2, 0xe

    goto :goto_1

    .line 877
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 882
    :cond_b
    sget-object v2, Landroid/app/AppOpsManager;->mOpReadSms:[I

    array-length v1, v2

    .line 883
    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_d

    .line 884
    sget-object v2, Landroid/app/AppOpsManager;->mOpReadSms:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_c

    .line 885
    const/4 v2, 0x2

    goto :goto_1

    .line 883
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 888
    :cond_d
    sget-object v2, Landroid/app/AppOpsManager;->mOpWriteSms:[I

    array-length v1, v2

    .line 889
    const/4 v0, 0x0

    :goto_8
    if-ge v0, v1, :cond_f

    .line 890
    sget-object v2, Landroid/app/AppOpsManager;->mOpWriteSms:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_e

    .line 891
    const/16 v2, 0xf

    goto :goto_1

    .line 889
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 894
    :cond_f
    sget-object v2, Landroid/app/AppOpsManager;->mOpSendSms:[I

    array-length v1, v2

    .line 895
    const/4 v0, 0x0

    :goto_9
    if-ge v0, v1, :cond_11

    .line 896
    sget-object v2, Landroid/app/AppOpsManager;->mOpSendSms:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_10

    .line 897
    const/16 v2, 0x10

    goto/16 :goto_1

    .line 895
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 900
    :cond_11
    sget-object v2, Landroid/app/AppOpsManager;->mOpReceiveSms:[I

    array-length v1, v2

    .line 901
    const/4 v0, 0x0

    :goto_a
    if-ge v0, v1, :cond_13

    .line 902
    sget-object v2, Landroid/app/AppOpsManager;->mOpReceiveSms:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_12

    .line 903
    const/16 v2, 0x11

    goto/16 :goto_1

    .line 901
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 907
    :cond_13
    sget-object v2, Landroid/app/AppOpsManager;->mOpReadMms:[I

    array-length v1, v2

    .line 908
    const/4 v0, 0x0

    :goto_b
    if-ge v0, v1, :cond_15

    .line 909
    sget-object v2, Landroid/app/AppOpsManager;->mOpReadMms:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_14

    .line 910
    const/16 v2, 0xb

    goto/16 :goto_1

    .line 908
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 913
    :cond_15
    sget-object v2, Landroid/app/AppOpsManager;->mOpWriteMms:[I

    array-length v1, v2

    .line 914
    const/4 v0, 0x0

    :goto_c
    if-ge v0, v1, :cond_17

    .line 915
    sget-object v2, Landroid/app/AppOpsManager;->mOpWriteMms:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_16

    .line 916
    const/16 v2, 0x12

    goto/16 :goto_1

    .line 914
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 919
    :cond_17
    sget-object v2, Landroid/app/AppOpsManager;->mOpSendMms:[I

    array-length v1, v2

    .line 920
    const/4 v0, 0x0

    :goto_d
    if-ge v0, v1, :cond_19

    .line 921
    sget-object v2, Landroid/app/AppOpsManager;->mOpSendMms:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_18

    .line 922
    const/16 v2, 0x13

    goto/16 :goto_1

    .line 920
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 925
    :cond_19
    sget-object v2, Landroid/app/AppOpsManager;->mOpReceiveMms:[I

    array-length v1, v2

    .line 926
    const/4 v0, 0x0

    :goto_e
    if-ge v0, v1, :cond_1b

    .line 927
    sget-object v2, Landroid/app/AppOpsManager;->mOpReceiveMms:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_1a

    .line 928
    const/16 v2, 0x14

    goto/16 :goto_1

    .line 926
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 932
    :cond_1b
    sget-object v2, Landroid/app/AppOpsManager;->mOpNetWork:[I

    array-length v1, v2

    .line 933
    const/4 v0, 0x0

    :goto_f
    if-ge v0, v1, :cond_1d

    .line 934
    sget-object v2, Landroid/app/AppOpsManager;->mOpNetWork:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_1c

    .line 935
    const/4 v2, 0x3

    goto/16 :goto_1

    .line 933
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 938
    :cond_1d
    sget-object v2, Landroid/app/AppOpsManager;->mOpWlan:[I

    array-length v1, v2

    .line 939
    const/4 v0, 0x0

    :goto_10
    if-ge v0, v1, :cond_1f

    .line 940
    sget-object v2, Landroid/app/AppOpsManager;->mOpWlan:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_1e

    .line 941
    const/4 v2, 0x4

    goto/16 :goto_1

    .line 939
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 944
    :cond_1f
    sget-object v2, Landroid/app/AppOpsManager;->mOpLocation:[I

    array-length v1, v2

    .line 945
    const/4 v0, 0x0

    :goto_11
    if-ge v0, v1, :cond_21

    .line 946
    sget-object v2, Landroid/app/AppOpsManager;->mOpLocation:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_20

    .line 947
    const/4 v2, 0x5

    goto/16 :goto_1

    .line 945
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 950
    :cond_21
    sget-object v2, Landroid/app/AppOpsManager;->mOpRecordAudio:[I

    array-length v1, v2

    .line 951
    const/4 v0, 0x0

    :goto_12
    if-ge v0, v1, :cond_23

    .line 952
    sget-object v2, Landroid/app/AppOpsManager;->mOpRecordAudio:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_22

    .line 953
    const/4 v2, 0x6

    goto/16 :goto_1

    .line 951
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 957
    :cond_23
    sget-object v2, Landroid/app/AppOpsManager;->mOpRecordAudioPhone:[I

    array-length v1, v2

    .line 958
    const/4 v0, 0x0

    :goto_13
    if-ge v0, v1, :cond_25

    .line 959
    sget-object v2, Landroid/app/AppOpsManager;->mOpRecordAudioPhone:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_24

    .line 960
    const/16 v2, 0xc

    goto/16 :goto_1

    .line 958
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 963
    :cond_25
    sget-object v2, Landroid/app/AppOpsManager;->mOpCamera:[I

    array-length v1, v2

    .line 964
    const/4 v0, 0x0

    :goto_14
    if-ge v0, v1, :cond_27

    .line 965
    sget-object v2, Landroid/app/AppOpsManager;->mOpCamera:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_26

    .line 966
    const/4 v2, 0x7

    goto/16 :goto_1

    .line 964
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 970
    :cond_27
    sget-object v2, Landroid/app/AppOpsManager;->mOpBluetooth:[I

    array-length v1, v2

    .line 971
    const/4 v0, 0x0

    :goto_15
    if-ge v0, v1, :cond_29

    .line 972
    sget-object v2, Landroid/app/AppOpsManager;->mOpBluetooth:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_28

    .line 973
    const/16 v2, 0x8

    goto/16 :goto_1

    .line 971
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 976
    :cond_29
    sget-object v2, Landroid/app/AppOpsManager;->mOpBootCompleted:[I

    array-length v1, v2

    .line 977
    const/4 v0, 0x0

    :goto_16
    if-ge v0, v1, :cond_2b

    .line 978
    sget-object v2, Landroid/app/AppOpsManager;->mOpBootCompleted:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_2a

    .line 979
    const/16 v2, 0x9

    goto/16 :goto_1

    .line 977
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 982
    :cond_2b
    sget-object v2, Landroid/app/AppOpsManager;->mOpNFC:[I

    array-length v1, v2

    .line 983
    const/4 v0, 0x0

    :goto_17
    if-ge v0, v1, :cond_2d

    .line 984
    sget-object v2, Landroid/app/AppOpsManager;->mOpNFC:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_2c

    .line 985
    const/16 v2, 0xd

    goto/16 :goto_1

    .line 983
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 989
    :cond_2d
    sget-object v2, Landroid/app/AppOpsManager;->mOpGPS:[I

    array-length v1, v2

    .line 990
    const/4 v0, 0x0

    :goto_18
    if-ge v0, v1, :cond_2f

    .line 991
    sget-object v2, Landroid/app/AppOpsManager;->mOpGPS:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_2e

    .line 992
    const/16 v2, 0x16

    goto/16 :goto_1

    .line 990
    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 996
    :cond_2f
    sget-object v2, Landroid/app/AppOpsManager;->mOpSystemAlert:[I

    array-length v1, v2

    .line 997
    const/4 v0, 0x0

    :goto_19
    if-ge v0, v1, :cond_31

    .line 998
    sget-object v2, Landroid/app/AppOpsManager;->mOpSystemAlert:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_30

    .line 999
    const/16 v2, 0x18

    goto/16 :goto_1

    .line 997
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 1003
    :cond_31
    const/4 v2, -0x1

    goto/16 :goto_1
.end method

.method public getPermissionOP(Ljava/lang/String;ILjava/lang/String;)I
    .locals 6
    .parameter "permission"
    .parameter "uid"
    .parameter "packageName"

    .prologue
    const/4 v4, -0x1

    .line 1008
    if-nez p1, :cond_1

    move v3, v4

    .line 1034
    :cond_0
    :goto_0
    return v3

    .line 1011
    :cond_1
    const/4 v3, -0x1

    .line 1012
    .local v3, op:I
    :try_start_0
    sget-object v5, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    array-length v2, v5

    .line 1013
    .local v2, lenght:I
    const/4 v1, -0x1

    .line 1014
    .local v1, index:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 1015
    sget-object v5, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    aget-object v5, v5, v0

    if-eqz v5, :cond_3

    sget-object v5, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1016
    move v1, v0

    .line 1021
    :cond_2
    if-ne v1, v4, :cond_4

    .line 1022
    const/4 v3, 0x1

    goto :goto_0

    .line 1014
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1025
    :cond_4
    sget-object v5, Landroid/app/AppOpsManager;->sOpToSwitch:[I

    aget v3, v5, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1027
    if-ne v3, v4, :cond_0

    move v3, v4

    .line 1028
    goto :goto_0

    .line 1032
    .end local v0           #i:I
    .end local v1           #index:I
    .end local v2           #lenght:I
    :catch_0
    move-exception v5

    move v3, v4

    .line 1034
    goto :goto_0
.end method

.method public noteOp(I)I
    .locals 2
    .parameter "op"

    .prologue
    .line 1068
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public noteOp(IILjava/lang/String;)I
    .locals 3
    .parameter "op"
    .parameter "uid"
    .parameter "packageName"

    .prologue
    .line 1049
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v0

    .line 1050
    .local v0, mode:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1051
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Operation not allowed"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1054
    .end local v0           #mode:I
    :catch_0
    move-exception v1

    .line 1056
    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public noteOpNoThrow(IILjava/lang/String;)I
    .locals 1
    .parameter "op"
    .parameter "uid"
    .parameter "packageName"

    .prologue
    .line 1061
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->noteOperation(IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1064
    :goto_0
    return v0

    .line 1062
    :catch_0
    move-exception v0

    .line 1064
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public sendOperationBroadcast(IILjava/lang/String;IZ)V
    .locals 6
    .parameter "code"
    .parameter "uid"
    .parameter "packageName"
    .parameter "result"
    .parameter "enable"

    .prologue
    .line 780
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IAppOpsService;->sendOperationBroadcast(IILjava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 783
    :goto_0
    return-void

    .line 781
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setMode(IILjava/lang/String;I)V
    .locals 1
    .parameter "code"
    .parameter "uid"
    .parameter "packageName"
    .parameter "mode"

    .prologue
    .line 773
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/app/IAppOpsService;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 776
    :goto_0
    return-void

    .line 774
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public startOp(I)I
    .locals 2
    .parameter "op"

    .prologue
    .line 1100
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/AppOpsManager;->startOp(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public startOp(IILjava/lang/String;)I
    .locals 3
    .parameter "op"
    .parameter "uid"
    .parameter "packageName"

    .prologue
    .line 1073
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->startOperation(IILjava/lang/String;)I

    move-result v0

    .line 1074
    .local v0, mode:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1075
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Operation not allowed"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1078
    .end local v0           #mode:I
    :catch_0
    move-exception v1

    .line 1080
    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public startOpExNoThrow(III)I
    .locals 1
    .parameter "op"
    .parameter "pid"
    .parameter "uid"

    .prologue
    .line 1093
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->startOperationEx(III)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1096
    :goto_0
    return v0

    .line 1094
    :catch_0
    move-exception v0

    .line 1096
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public startOpNoThrow(IILjava/lang/String;)I
    .locals 1
    .parameter "op"
    .parameter "uid"
    .parameter "packageName"

    .prologue
    .line 1085
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->startOperation(IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1088
    :goto_0
    return v0

    .line 1086
    :catch_0
    move-exception v0

    .line 1088
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$Callback;)V
    .locals 3
    .parameter "op"
    .parameter "packageName"
    .parameter "callback"

    .prologue
    .line 794
    iget-object v2, p0, Landroid/app/AppOpsManager;->mModeWatchers:Ljava/util/HashMap;

    monitor-enter v2

    .line 795
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mModeWatchers:Ljava/util/HashMap;

    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/IAppOpsCallback;

    .line 796
    .local v0, cb:Lcom/android/internal/app/IAppOpsCallback;
    if-nez v0, :cond_0

    .line 797
    new-instance v0, Landroid/app/AppOpsManager$1;

    .end local v0           #cb:Lcom/android/internal/app/IAppOpsCallback;
    invoke-direct {v0, p0, p3}, Landroid/app/AppOpsManager$1;-><init>(Landroid/app/AppOpsManager;Landroid/app/AppOpsManager$Callback;)V

    .line 802
    .restart local v0       #cb:Lcom/android/internal/app/IAppOpsCallback;
    iget-object v1, p0, Landroid/app/AppOpsManager;->mModeWatchers:Ljava/util/HashMap;

    invoke-virtual {v1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 805
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2, v0}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 808
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 809
    return-void

    .line 808
    .end local v0           #cb:Lcom/android/internal/app/IAppOpsCallback;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 806
    .restart local v0       #cb:Lcom/android/internal/app/IAppOpsCallback;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public stopWatchingMode(Landroid/app/AppOpsManager$Callback;)V
    .locals 3
    .parameter "callback"

    .prologue
    .line 812
    iget-object v2, p0, Landroid/app/AppOpsManager;->mModeWatchers:Ljava/util/HashMap;

    monitor-enter v2

    .line 813
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mModeWatchers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/IAppOpsCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 814
    .local v0, cb:Lcom/android/internal/app/IAppOpsCallback;
    if-eqz v0, :cond_0

    .line 816
    :try_start_1
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, v0}, Lcom/android/internal/app/IAppOpsService;->stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 820
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 821
    return-void

    .line 820
    .end local v0           #cb:Lcom/android/internal/app/IAppOpsCallback;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 817
    .restart local v0       #cb:Lcom/android/internal/app/IAppOpsCallback;
    :catch_0
    move-exception v1

    goto :goto_0
.end method
