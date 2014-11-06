.class public Landroid/os/Build;
.super Ljava/lang/Object;
.source "Build.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Build$VERSION_CODES;,
        Landroid/os/Build$VERSION;
    }
.end annotation


# static fields
.field public static final AUTORECORDER:Ljava/lang/String; = null

.field public static final BOARD:Ljava/lang/String; = null

.field public static final BOOTLOADER:Ljava/lang/String; = null

.field public static final BRAND:Ljava/lang/String; = null

.field public static final BUILD_MASK:Ljava/lang/String; = null

.field public static final CPU_ABI:Ljava/lang/String; = null

.field public static final CPU_ABI2:Ljava/lang/String; = null

.field public static final CTA:Ljava/lang/String; = null

.field public static final CUSTOMIZE_CHINAMOBILE:Ljava/lang/Boolean; = null

.field public static final CUSTOMIZE_CHINAUNICOM:Ljava/lang/Boolean; = null

.field private static final CUSTOMIZE_ISP_VALUE:Ljava/lang/String; = null

.field public static final CUSTOMIZE_PCCW:Ljava/lang/String; = null

.field public static final DEVICE:Ljava/lang/String; = null

.field public static final DISPLAY:Ljava/lang/String; = null

.field public static final FINGERPRINT:Ljava/lang/String; = null

.field public static final HARDWARE:Ljava/lang/String; = null

.field public static final HAS_PERMANENTKEY:Ljava/lang/Boolean; = null

.field public static final HAS_SMARTBAR:Ljava/lang/String; = null

.field public static final HOST:Ljava/lang/String; = null

.field public static final ID:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field public static final IS_DEBUGGABLE:Z = false

.field public static final IS_M9:Ljava/lang/Boolean; = null

.field public static final IS_MX:Ljava/lang/Boolean; = null

.field public static final IS_MX2:Ljava/lang/Boolean; = null

.field public static final IS_MX3:Ljava/lang/Boolean; = null

.field public static final IS_PCCW:Ljava/lang/Boolean; = null

.field public static final IS_PRODUCT:Ljava/lang/Boolean; = null

.field private static final IS_SHOPDEMO:Ljava/lang/Boolean; = null

.field public static final IS_TD_PLATFORM:Ljava/lang/Boolean; = null

.field public static final IS_WCDMA_PLATFORM:Ljava/lang/Boolean; = null

.field public static final M030:Ljava/lang/String; = "M030"

.field public static final M031:Ljava/lang/String; = "M031"

.field public static final M032:Ljava/lang/String; = "M032"

.field public static final M040:Ljava/lang/String; = "M040"

.field public static final M045:Ljava/lang/String; = "M045"

.field public static final M046:Ljava/lang/String; = "M046"

.field public static final M065:Ljava/lang/String; = "M353"

.field public static final M9:Ljava/lang/String; = "M9"

.field public static final M9_DEVICE:J = 0x1L

.field public static final MANUFACTURER:Ljava/lang/String; = null

.field public static final MEIZU_SECURITY:Ljava/lang/String; = null

.field public static final MODEL:Ljava/lang/String; = null

.field public static final MX2_DEVICE:J = 0x4L

.field public static final MX3_DEVICE:J = 0x8L

.field public static final MX_DEVICE:J = 0x2L

#the value of this static final field might be set in the static constructor
.field public static final MZ_USE_NAVBAR:Z = false

.field public static final MeizuSecurity:Ljava/lang/Boolean; = null

.field public static final NFC_INFO:Ljava/lang/String; = null

.field public static final PERMANENTKEY:Ljava/lang/String; = null

.field public static final PRODUCT:Ljava/lang/String; = null

.field public static final RADIO:Ljava/lang/String; = null
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SERIAL:Ljava/lang/String; = null

.field public static final SUPPORT_MZ_NFC_P2P_FEATURE:J = 0x8L

.field public static final TAGS:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field public static final TIME:J = 0x0L

.field public static final TYPE:Ljava/lang/String; = null

.field public static final UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final USER:Ljava/lang/String;

.field public static final VOICEMAIL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 26
    const-string/jumbo v0, "ro.build.mz_use_navbar"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/os/Build;->MZ_USE_NAVBAR:Z

    .line 32
    const-string/jumbo v0, "ro.build.id"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 35
    const-string/jumbo v0, "ro.build.display.id"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 38
    const-string/jumbo v0, "ro.build.mask.id"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->BUILD_MASK:Ljava/lang/String;

    .line 41
    const-string/jumbo v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 44
    const-string/jumbo v0, "ro.product.device"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 46
    const-string/jumbo v0, "ro.meizu.hardware.nfc"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->NFC_INFO:Ljava/lang/String;

    .line 49
    invoke-static {}, Landroid/os/Build;->isMX3()Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->IS_MX3:Ljava/lang/Boolean;

    .line 50
    invoke-static {}, Landroid/os/Build;->isMX2()Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->IS_MX2:Ljava/lang/Boolean;

    .line 51
    invoke-static {}, Landroid/os/Build;->isMX()Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->IS_MX:Ljava/lang/Boolean;

    .line 52
    invoke-static {}, Landroid/os/Build;->isM9()Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->IS_M9:Ljava/lang/Boolean;

    .line 62
    const-string/jumbo v0, "ro.product.board"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 65
    const-string/jumbo v0, "ro.product.cpu.abi"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 68
    const-string/jumbo v0, "ro.product.cpu.abi2"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    .line 71
    const-string/jumbo v0, "ro.product.manufacturer"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 74
    const-string/jumbo v0, "ro.product.brand"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 79
    const-string/jumbo v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 82
    const-string/jumbo v0, "ro.bootloader"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    .line 93
    const-string v0, "gsm.version.baseband"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->RADIO:Ljava/lang/String;

    .line 96
    const-string/jumbo v0, "ro.hardware"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 99
    const-string/jumbo v0, "ro.serialno"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 101
    const-string/jumbo v0, "ro.build.cta"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->CTA:Ljava/lang/String;

    .line 103
    const-string/jumbo v0, "ro.meizu.permanentkey"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->PERMANENTKEY:Ljava/lang/String;

    .line 114
    const-string/jumbo v0, "ro.meizu.hardware.modem"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "td-scdma"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->IS_TD_PLATFORM:Ljava/lang/Boolean;

    .line 115
    const-string/jumbo v0, "ro.meizu.hardware.modem"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "wcdma"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->IS_WCDMA_PLATFORM:Ljava/lang/Boolean;

    .line 117
    const-string/jumbo v0, "ro.error.receiver.default"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.howell.logsnapshot"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->IS_PRODUCT:Ljava/lang/Boolean;

    .line 483
    const-string/jumbo v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 486
    const-string/jumbo v0, "ro.build.tags"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 489
    const-string/jumbo v0, "ro.build.fingerprint"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 492
    const-string/jumbo v0, "ro.build.date.utc"

    invoke-static {v0}, Landroid/os/Build;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    sput-wide v3, Landroid/os/Build;->TIME:J

    .line 493
    const-string/jumbo v0, "ro.build.user"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->USER:Ljava/lang/String;

    .line 494
    const-string/jumbo v0, "ro.build.host"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->HOST:Ljava/lang/String;

    .line 496
    const-string/jumbo v0, "ro.meizu.customize.pccw"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->CUSTOMIZE_PCCW:Ljava/lang/String;

    .line 497
    const-string/jumbo v0, "ro.meizu.autorecorder"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->AUTORECORDER:Ljava/lang/String;

    .line 498
    const-string/jumbo v0, "ro.meizu.visualvoicemail"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->VOICEMAIL:Ljava/lang/String;

    .line 499
    const-string/jumbo v0, "ro.meizu.security"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->MEIZU_SECURITY:Ljava/lang/String;

    .line 502
    invoke-static {}, Landroid/os/Build;->isPCCW()Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->IS_PCCW:Ljava/lang/Boolean;

    .line 503
    invoke-static {}, Landroid/os/Build;->isMeizuSecurity()Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->MeizuSecurity:Ljava/lang/Boolean;

    .line 504
    invoke-static {}, Landroid/os/Build;->hasPermanentKey()Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->HAS_PERMANENTKEY:Ljava/lang/Boolean;

    .line 507
    const-string/jumbo v0, "ro.customize.isp"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->CUSTOMIZE_ISP_VALUE:Ljava/lang/String;

    .line 508
    invoke-static {}, Landroid/os/Build;->isChinaUnicom()Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->CUSTOMIZE_CHINAUNICOM:Ljava/lang/Boolean;

    .line 509
    invoke-static {}, Landroid/os/Build;->isChinaMobile()Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->CUSTOMIZE_CHINAMOBILE:Ljava/lang/Boolean;

    .line 510
    const-string/jumbo v0, "ro.meizu.customize.demo"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->IS_SHOPDEMO:Ljava/lang/Boolean;

    .line 515
    const-string/jumbo v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    sput-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 634
    const-string/jumbo v0, "ro.meizu.has_smartbar"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->HAS_SMARTBAR:Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 117
    goto/16 :goto_0

    :cond_1
    move v1, v2

    .line 515
    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    invoke-static {p0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getLong(Ljava/lang/String;)J
    .locals 3
    .parameter "property"

    .prologue
    .line 581
    :try_start_0
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 583
    :goto_0
    return-wide v1

    .line 582
    :catch_0
    move-exception v0

    .line 583
    .local v0, e:Ljava/lang/NumberFormatException;
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public static getRadioVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 523
    const-string v0, "gsm.version.baseband"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "property"

    .prologue
    .line 527
    const-string/jumbo v0, "unknown"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasNFC()Z
    .locals 2

    .prologue
    .line 658
    sget-object v0, Landroid/os/Build;->NFC_INFO:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->NFC_INFO:Ljava/lang/String;

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 659
    const/4 v0, 0x1

    .line 661
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static hasPermanentKey()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 574
    sget-object v0, Landroid/os/Build;->PERMANENTKEY:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->PERMANENTKEY:Ljava/lang/String;

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 575
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 577
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public static hasSmartBar()Z
    .locals 2

    .prologue
    .line 642
    sget-object v0, Landroid/os/Build;->HAS_SMARTBAR:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->HAS_SMARTBAR:Ljava/lang/String;

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 643
    const/4 v0, 0x1

    .line 646
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isChinaMobile()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 624
    sget-object v0, Landroid/os/Build;->CUSTOMIZE_ISP_VALUE:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->CUSTOMIZE_ISP_VALUE:Ljava/lang/String;

    const-string v1, "chinamobile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 625
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 627
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private static isChinaUnicom()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 610
    sget-object v0, Landroid/os/Build;->CUSTOMIZE_ISP_VALUE:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->CUSTOMIZE_ISP_VALUE:Ljava/lang/String;

    const-string v1, "chinaunicom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 613
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private static isM9()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 553
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "m9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 556
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private static isMX()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 546
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v1, "mx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 549
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private static isMX2()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 539
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v1, "mx2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 542
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private static isMX3()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 531
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v1, "mx3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 532
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 534
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private static isMeizuSecurity()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 567
    sget-object v0, Landroid/os/Build;->MEIZU_SECURITY:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->MEIZU_SECURITY:Ljava/lang/String;

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 570
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private static isPCCW()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 560
    sget-object v0, Landroid/os/Build;->CUSTOMIZE_PCCW:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->CUSTOMIZE_PCCW:Ljava/lang/String;

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 563
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public static isProductInternational()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 594
    :try_start_0
    const-string/jumbo v2, "ro.product.locale.language"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "zh"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "ro.product.locale.region"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 598
    .local v0, e:Ljava/lang/Exception;
    :cond_1
    :goto_0
    return v1

    .line 595
    .end local v0           #e:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 596
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static isShopDemoVersion()Z
    .locals 1

    .prologue
    .line 674
    sget-object v0, Landroid/os/Build;->IS_SHOPDEMO:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
