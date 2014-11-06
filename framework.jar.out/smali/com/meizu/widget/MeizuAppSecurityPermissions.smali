.class public Lcom/meizu/widget/MeizuAppSecurityPermissions;
.super Ljava/lang/Object;
.source "MeizuAppSecurityPermissions.java"


# static fields
.field public static final CONTROL_ALL:I = 0x0

.field public static final CONTROL_BLUETOOTH:I = 0xa

.field public static final CONTROL_BOOTCOMPLETED:I = 0x9

.field public static final CONTROL_CALLLOG_TYPE:I = 0xb

.field public static final CONTROL_CAMERA:I = 0x8

.field public static final CONTROL_CONTACTS_TYPE:I = 0x2

.field public static final CONTROL_LOCATION_TYPE:I = 0x6

.field public static final CONTROL_MMS_TYPE:I = 0xc

.field public static final CONTROL_NETWORK_TYPE:I = 0x4

.field public static final CONTROL_NFC:I = 0xe

.field public static final CONTROL_PHONE_TYPE:I = 0x1

.field public static final CONTROL_RECORD_AUDIO:I = 0x7

.field public static final CONTROL_RECORD_AUDIO_PHONE:I = 0xd

.field public static final CONTROL_SMS_TYPE:I = 0x3

.field public static final CONTROL_WLAN_TYPE:I = 0x5

.field private static final TAG:Ljava/lang/String; = "MeizuAppSecurityPermissions"


# instance fields
.field private DEBUG:Z

.field private mContext:Landroid/content/Context;

.field private mControlAllPerms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mControlBluetooth:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mControlBootCompleted:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mControlCallLog:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mControlCamera:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mControlContacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mControlLocation:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mControlMms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mControlNetWork:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mControlNfc:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mControlPhone:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mControlRecordAudio:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mControlRecordAudioPhone:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mControlSms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mControlWlan:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneLimitedPerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneLimitedPerListReceiver:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mzSecurityPermissions:Landroid/widget/AppSecurityPermissions;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->DEBUG:Z

    .line 98
    iput-object p1, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mContext:Landroid/content/Context;

    .line 99
    new-instance v0, Landroid/widget/AppSecurityPermissions;

    invoke-direct {v0, p1}, Landroid/widget/AppSecurityPermissions;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mzSecurityPermissions:Landroid/widget/AppSecurityPermissions;

    .line 100
    return-void
.end method

.method private getPhoneLimitedPermission()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 297
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mPhoneLimitedPerList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 298
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mPhoneLimitedPerList:Ljava/util/ArrayList;

    .line 299
    sget-object v0, Landroid/os/Build;->MeizuSecurity:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mPhoneLimitedPerList:Ljava/util/ArrayList;

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mPhoneLimitedPerList:Ljava/util/ArrayList;

    const-string v1, "android.permission.READ_SMS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mPhoneLimitedPerList:Ljava/util/ArrayList;

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mPhoneLimitedPerList:Ljava/util/ArrayList;

    const-string v1, "android.permission.WRITE_SMS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mPhoneLimitedPerList:Ljava/util/ArrayList;

    const-string v1, "android.permission.RECEIVE_MMS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mPhoneLimitedPerList:Ljava/util/ArrayList;

    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mPhoneLimitedPerList:Ljava/util/ArrayList;

    const-string v1, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mPhoneLimitedPerList:Ljava/util/ArrayList;

    const-string v1, "android.permission.SEND_SMS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mPhoneLimitedPerList:Ljava/util/ArrayList;

    const-string v1, "android.permission.READ_CALL_LOG"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mPhoneLimitedPerList:Ljava/util/ArrayList;

    const-string v1, "android.permission.WRITE_CALL_LOG"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mPhoneLimitedPerList:Ljava/util/ArrayList;

    const-string v1, "android.permission.READ_PROFILE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mPhoneLimitedPerList:Ljava/util/ArrayList;

    const-string v1, "android.permission.WRITE_PROFILE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mPhoneLimitedPerList:Ljava/util/ArrayList;

    const-string v1, "com.android.voicemail.permission.READ_WRITE_ALL_VOICEMAIL"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mPhoneLimitedPerList:Ljava/util/ArrayList;

    const-string v1, "com.android.voicemail.permission.ADD_VOICEMAIL"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mPhoneLimitedPerList:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public checkContentPermission(Landroid/app/AppOpsManager;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I
    .locals 13
    .parameter "mAppOps"
    .parameter "op"
    .parameter "opgroup"
    .parameter "pkgName"
    .parameter "permission"
    .parameter "pkgLabel"
    .parameter "uid"
    .parameter "enable"

    .prologue
    .line 494
    move-object/from16 v4, p4

    .line 495
    .local v4, rPkgName:Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_op_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 496
    iget-object v1, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x2

    move-object/from16 v0, p4

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 497
    .local v11, isOpen:I
    iget-boolean v1, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 498
    const-string v1, "MeizuAppSecurityPermissions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isOpen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pkgName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_0
    const/4 v1, 0x1

    if-eq v11, v1, :cond_1

    if-nez v11, :cond_3

    :cond_1
    const/4 v1, 0x3

    move/from16 v0, p3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    move/from16 v0, p3

    if-eq v0, v1, :cond_3

    const/16 v1, 0x8

    move/from16 v0, p3

    if-eq v0, v1, :cond_3

    .line 505
    move/from16 v0, p7

    invoke-virtual {p1, p2, v0, v4}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v7

    .line 506
    .local v7, check:I
    if-eqz v7, :cond_2

    .line 507
    const/4 v1, -0x1

    .line 570
    .end local v7           #check:I
    .end local v11           #isOpen:I
    :goto_0
    return v1

    .line 509
    .restart local v7       #check:I
    .restart local v11       #isOpen:I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 513
    .end local v7           #check:I
    :cond_3
    iget-boolean v1, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 514
    const-string v1, "MeizuAppSecurityPermissions"

    const-string/jumbo v2, "sendBroadcast:  ACTION_CHECK_APP_INTENT"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_4
    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v1, "meizu.intent.action.CHECK_APP"

    invoke-direct {v10, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 518
    .local v10, intent:Landroid/content/Intent;
    const-string/jumbo v1, "pkgName"

    invoke-virtual {v10, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 519
    const-string/jumbo v1, "pkgNameOp"

    move-object/from16 v0, p4

    invoke-virtual {v10, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 520
    const-string/jumbo v1, "op"

    invoke-virtual {v10, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 521
    const-string/jumbo v1, "pkgLabel"

    move-object/from16 v0, p6

    invoke-virtual {v10, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 522
    const-string/jumbo v1, "pkgPerm"

    move-object/from16 v0, p5

    invoke-virtual {v10, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 523
    const-string/jumbo v1, "uid"

    move/from16 v0, p7

    invoke-virtual {v10, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 524
    const-string/jumbo v1, "opgroup"

    move/from16 v0, p3

    invoke-virtual {v10, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 525
    const/4 v5, 0x1

    move-object v1, p1

    move v2, p2

    move/from16 v3, p7

    move/from16 v6, p8

    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->sendOperationBroadcast(IILjava/lang/String;IZ)V

    .line 527
    const/4 v1, 0x3

    move/from16 v0, p3

    if-ne v0, v1, :cond_5

    .line 529
    const/4 v1, -0x1

    goto :goto_0

    .line 533
    :cond_5
    iget-object v1, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x2

    move-object/from16 v0, p4

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 534
    .local v12, res:I
    const/4 v9, 0x0

    .line 535
    .local v9, i:I
    iget-boolean v1, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->DEBUG:Z

    if-eqz v1, :cond_6

    .line 536
    const-string v1, "MeizuAppSecurityPermissions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pkg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " res"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " permission: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    :cond_6
    :goto_1
    const/4 v1, 0x2

    if-ne v12, v1, :cond_8

    const/16 v1, 0x64

    if-ge v9, v1, :cond_8

    .line 540
    const-wide/16 v1, 0xc8

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 541
    add-int/lit8 v9, v9, 0x1

    .line 542
    iget-boolean v1, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->DEBUG:Z

    if-eqz v1, :cond_7

    .line 543
    const-string v1, "MeizuAppSecurityPermissions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pkg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " res"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " permission: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " i: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 548
    :cond_7
    :goto_2
    :try_start_2
    iget-object v1, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x2

    move-object/from16 v0, p4

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    goto :goto_1

    .line 552
    :cond_8
    iget-object v1, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x2

    move-object/from16 v0, p4

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 553
    const/4 v1, -0x1

    if-eq v12, v1, :cond_9

    const/4 v1, 0x2

    if-ne v12, v1, :cond_a

    .line 554
    :cond_9
    const/4 v1, -0x1

    goto/16 :goto_0

    .line 556
    :cond_a
    move/from16 v0, p7

    invoke-virtual {p1, p2, v0, v4}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v7

    .line 557
    .restart local v7       #check:I
    if-eqz v7, :cond_c

    .line 558
    iget-boolean v1, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->DEBUG:Z

    if-eqz v1, :cond_b

    .line 559
    const-string v1, "MeizuAppSecurityPermissions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pkg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " permission: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " denied"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :cond_b
    const/4 v1, -0x1

    goto/16 :goto_0

    .line 563
    :cond_c
    iget-boolean v1, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->DEBUG:Z

    if-eqz v1, :cond_d

    .line 564
    const-string v1, "MeizuAppSecurityPermissions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pkg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " permission: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " grant"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 566
    :cond_d
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 568
    .end local v7           #check:I
    .end local v9           #i:I
    .end local v10           #intent:Landroid/content/Intent;
    .end local v11           #isOpen:I
    .end local v12           #res:I
    :catch_0
    move-exception v8

    .line 569
    .local v8, e:Ljava/lang/Exception;
    const-string v1, "MeizuAppSecurityPermissions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkContentPermission:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    const/4 v1, -0x1

    goto/16 :goto_0

    .line 545
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v9       #i:I
    .restart local v10       #intent:Landroid/content/Intent;
    .restart local v11       #isOpen:I
    .restart local v12       #res:I
    :catch_1
    move-exception v1

    goto/16 :goto_2
.end method

.method public checkContentPermissionReceiver(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .locals 11
    .parameter "pkgName"
    .parameter "uid"
    .parameter "permission"
    .parameter "pkgLabel"

    .prologue
    .line 249
    :try_start_0
    iget-object v8, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mContext:Landroid/content/Context;

    const-string v9, "appops"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager;

    .line 251
    .local v4, mAppOps:Landroid/app/AppOpsManager;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/app/AppOpsManager;->getFactoryState()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 252
    :cond_0
    const/4 v8, 0x0

    .line 283
    .end local v4           #mAppOps:Landroid/app/AppOpsManager;
    :goto_0
    return v8

    .line 255
    .restart local v4       #mAppOps:Landroid/app/AppOpsManager;
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/widget/MeizuAppSecurityPermissions;->getPhoneLimitedPermissionReceiver()Ljava/util/ArrayList;

    move-result-object v6

    .line 256
    .local v6, mLimitedPermission:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/meizu/widget/MeizuAppSecurityPermissions;->getCallPermission()Ljava/util/ArrayList;

    move-result-object v5

    .line 258
    .local v5, mCallPermission:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 259
    const/16 v8, 0x18

    invoke-virtual {v4, v8, p2, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v2

    .line 261
    .local v2, checkSms:I
    const/16 v8, 0x30

    invoke-virtual {v4, v8, p2, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v1

    .line 263
    .local v1, checkMms:I
    if-nez v2, :cond_2

    if-eqz v1, :cond_5

    .line 264
    :cond_2
    const/4 v8, 0x1

    goto :goto_0

    .line 266
    .end local v1           #checkMms:I
    .end local v2           #checkSms:I
    :cond_3
    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 267
    invoke-virtual {v4, p3, p2, p1}, Landroid/app/AppOpsManager;->getPermissionOP(Ljava/lang/String;ILjava/lang/String;)I

    move-result v7

    .line 268
    .local v7, op:I
    const/4 v8, -0x1

    if-ne v7, v8, :cond_4

    .line 269
    const/4 v8, 0x0

    goto :goto_0

    .line 272
    :cond_4
    invoke-virtual {v4, v7, p2, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 274
    .local v0, check:I
    if-eqz v0, :cond_5

    .line 275
    const/4 v8, -0x1

    goto :goto_0

    .line 278
    .end local v0           #check:I
    .end local v4           #mAppOps:Landroid/app/AppOpsManager;
    .end local v5           #mCallPermission:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #mLimitedPermission:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #op:I
    :catch_0
    move-exception v3

    .line 279
    .local v3, e:Ljava/lang/Exception;
    const-string v8, "MeizuAppSecurityPermissions"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkContentPermission:  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const/4 v8, -0x1

    goto :goto_0

    .line 283
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v4       #mAppOps:Landroid/app/AppOpsManager;
    .restart local v5       #mCallPermission:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6       #mLimitedPermission:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public checkLimitedPermission(III)I
    .locals 17
    .parameter "op"
    .parameter "pid"
    .parameter "uid"

    .prologue
    .line 414
    const/4 v15, 0x0

    .line 416
    .local v15, result:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mContext:Landroid/content/Context;

    const-string v4, "appops"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    .line 418
    .local v3, mAppOps:Landroid/app/AppOpsManager;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/app/AppOpsManager;->getFactoryState()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move/from16 v16, v15

    .line 478
    .end local v15           #result:I
    .local v16, result:I
    :goto_0
    return v16

    .line 423
    .end local v16           #result:I
    .restart local v15       #result:I
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v4, 0x0

    move/from16 v0, p3

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1, v4}, Landroid/content/pm/PackageManager;->getInstalledPackagesExtralPm(III)Ljava/util/List;

    move-result-object v13

    .line 425
    .local v13, pList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 426
    const-string v2, "MeizuAppSecurityPermissions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "op: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    const-string v2, "MeizuAppSecurityPermissions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pList: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " pid:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " uid:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_2
    const-string v6, ""

    .line 430
    .local v6, pkgName:Ljava/lang/String;
    const-string v8, ""

    .line 431
    .local v8, pkgLabel:Ljava/lang/String;
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_6

    .line 432
    const/4 v2, 0x0

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 433
    const/4 v2, 0x0

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    .line 435
    .local v12, lable:Ljava/lang/CharSequence;
    if-eqz v12, :cond_3

    .line 436
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 438
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 439
    const-string v2, "MeizuAppSecurityPermissions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "op: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, "\u3000system pkgNameString: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " mContext.getBasepackageName: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " getpackageName: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_4
    const/4 v2, 0x0

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_8

    const/4 v2, 0x0

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_8

    .line 446
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->DEBUG:Z

    if-eqz v2, :cond_5

    .line 447
    const-string v2, "MeizuAppSecurityPermissions"

    const-string v4, "FLAG_SYSTEM return PERMISSION_GRANTED"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move/from16 v16, v15

    .line 450
    .end local v15           #result:I
    .restart local v16       #result:I
    goto/16 :goto_0

    .line 453
    .end local v12           #lable:Ljava/lang/CharSequence;
    .end local v16           #result:I
    .restart local v15       #result:I
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->DEBUG:Z

    if-eqz v2, :cond_7

    .line 454
    const-string v2, "MeizuAppSecurityPermissions"

    const-string/jumbo v4, "\u3000pList is null "

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move/from16 v16, v15

    .line 456
    .end local v15           #result:I
    .restart local v16       #result:I
    goto/16 :goto_0

    .line 459
    .end local v16           #result:I
    .restart local v12       #lable:Ljava/lang/CharSequence;
    .restart local v15       #result:I
    :cond_8
    move/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/app/AppOpsManager;->getPermissionGroupOp(I)I

    move-result v5

    .line 460
    .local v5, opgroup:I
    const/4 v2, -0x1

    if-ne v5, v2, :cond_9

    move/from16 v16, v15

    .line 461
    .end local v15           #result:I
    .restart local v16       #result:I
    goto/16 :goto_0

    .line 463
    .end local v16           #result:I
    .restart local v15       #result:I
    :cond_9
    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v9, p3

    invoke-virtual/range {v2 .. v10}, Lcom/meizu/widget/MeizuAppSecurityPermissions;->checkContentPermission(Landroid/app/AppOpsManager;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result v14

    .line 465
    .local v14, pr:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->DEBUG:Z

    if-eqz v2, :cond_a

    .line 466
    const-string v2, "MeizuAppSecurityPermissions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u3000third app pkgNameString: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ",pr: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_a
    if-eqz v14, :cond_b

    .line 470
    const/4 v15, 0x1

    .line 471
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->DEBUG:Z

    if-eqz v2, :cond_b

    .line 472
    const-string v2, "MeizuAppSecurityPermissions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pkgLabel: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " PackageManager.PERMISSION_LIMITED"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5           #opgroup:I
    .end local v6           #pkgName:Ljava/lang/String;
    .end local v8           #pkgLabel:Ljava/lang/String;
    .end local v12           #lable:Ljava/lang/CharSequence;
    .end local v13           #pList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v14           #pr:I
    :cond_b
    :goto_1
    move/from16 v16, v15

    .line 478
    .end local v15           #result:I
    .restart local v16       #result:I
    goto/16 :goto_0

    .line 475
    .end local v16           #result:I
    .restart local v15       #result:I
    :catch_0
    move-exception v11

    .line 476
    .local v11, e:Ljava/lang/Exception;
    const-string v2, "MeizuAppSecurityPermissions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkLimitedPermission: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public checkLimitedPermission(Ljava/lang/String;IIIZ)I
    .locals 18
    .parameter "permission"
    .parameter "pid"
    .parameter "uid"
    .parameter "value"
    .parameter "enable"

    .prologue
    .line 335
    move/from16 v16, p4

    .line 337
    .local v16, result:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mContext:Landroid/content/Context;

    const-string v7, "appops"

    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    .line 339
    .local v3, mAppOps:Landroid/app/AppOpsManager;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/app/AppOpsManager;->getFactoryState()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move/from16 v17, v16

    .line 410
    .end local v16           #result:I
    .local v17, result:I
    :goto_0
    return v17

    .line 344
    .end local v17           #result:I
    .restart local v16       #result:I
    :cond_1
    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/widget/MeizuAppSecurityPermissions;->getControlPermissions(I)Ljava/util/ArrayList;

    move-result-object v13

    .line 346
    .local v13, mLimitedPermission:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 347
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v7, 0x0

    move/from16 v0, p3

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1, v7}, Landroid/content/pm/PackageManager;->getInstalledPackagesExtralPm(III)Ljava/util/List;

    move-result-object v14

    .line 348
    .local v14, pList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 349
    const-string v2, "MeizuAppSecurityPermissions"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "permission: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const-string v2, "MeizuAppSecurityPermissions"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "pList: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " pid:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " uid:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_2
    const-string v6, ""

    .line 354
    .local v6, pkgName:Ljava/lang/String;
    const-string v8, ""

    .line 355
    .local v8, pkgLabel:Ljava/lang/String;
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_6

    .line 356
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 357
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    .line 358
    .local v12, lable:Ljava/lang/CharSequence;
    if-eqz v12, :cond_3

    .line 359
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 361
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 362
    const-string v2, "MeizuAppSecurityPermissions"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "permission: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, "\u3000system pkgNameString: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " mContext.getBasepackageName: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " getpackageName: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_4
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_8

    const/4 v2, 0x0

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_8

    .line 369
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->DEBUG:Z

    if-eqz v2, :cond_5

    .line 370
    const-string v2, "MeizuAppSecurityPermissions"

    const-string v7, "FLAG_SYSTEM return PERMISSION_GRANTED"

    invoke-static {v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move/from16 v17, v16

    .line 374
    .end local v16           #result:I
    .restart local v17       #result:I
    goto/16 :goto_0

    .line 377
    .end local v12           #lable:Ljava/lang/CharSequence;
    .end local v17           #result:I
    .restart local v16       #result:I
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->DEBUG:Z

    if-eqz v2, :cond_7

    .line 378
    const-string v2, "MeizuAppSecurityPermissions"

    const-string/jumbo v7, "\u3000pList is null "

    invoke-static {v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move/from16 v17, v16

    .line 380
    .end local v16           #result:I
    .restart local v17       #result:I
    goto/16 :goto_0

    .line 384
    .end local v17           #result:I
    .restart local v12       #lable:Ljava/lang/CharSequence;
    .restart local v16       #result:I
    :cond_8
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v3, v0, v1, v6}, Landroid/app/AppOpsManager;->getPermissionOP(Ljava/lang/String;ILjava/lang/String;)I

    move-result v4

    .line 385
    .local v4, op:I
    const/4 v2, -0x1

    if-ne v4, v2, :cond_9

    move/from16 v17, v16

    .line 386
    .end local v16           #result:I
    .restart local v17       #result:I
    goto/16 :goto_0

    .line 389
    .end local v17           #result:I
    .restart local v16       #result:I
    :cond_9
    invoke-virtual {v3, v4}, Landroid/app/AppOpsManager;->getPermissionGroupOp(I)I

    move-result v5

    .line 390
    .local v5, opgroup:I
    const/4 v2, -0x1

    if-ne v5, v2, :cond_a

    move/from16 v17, v16

    .line 391
    .end local v16           #result:I
    .restart local v17       #result:I
    goto/16 :goto_0

    .end local v17           #result:I
    .restart local v16       #result:I
    :cond_a
    move-object/from16 v2, p0

    move-object/from16 v7, p1

    move/from16 v9, p3

    move/from16 v10, p5

    .line 394
    invoke-virtual/range {v2 .. v10}, Lcom/meizu/widget/MeizuAppSecurityPermissions;->checkContentPermission(Landroid/app/AppOpsManager;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result v15

    .line 395
    .local v15, pr:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->DEBUG:Z

    if-eqz v2, :cond_b

    .line 396
    const-string v2, "MeizuAppSecurityPermissions"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\u3000third app pkgNameString: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ",pr: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_b
    if-eqz v15, :cond_c

    .line 400
    const/16 v16, 0x1

    .line 401
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->DEBUG:Z

    if-eqz v2, :cond_c

    .line 402
    const-string v2, "MeizuAppSecurityPermissions"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "pkgLabel: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " PackageManager.PERMISSION_LIMITED"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4           #op:I
    .end local v5           #opgroup:I
    .end local v6           #pkgName:Ljava/lang/String;
    .end local v8           #pkgLabel:Ljava/lang/String;
    .end local v12           #lable:Ljava/lang/CharSequence;
    .end local v13           #mLimitedPermission:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14           #pList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v15           #pr:I
    :cond_c
    :goto_1
    move/from16 v17, v16

    .line 410
    .end local v16           #result:I
    .restart local v17       #result:I
    goto/16 :goto_0

    .line 407
    .end local v17           #result:I
    .restart local v16       #result:I
    :catch_0
    move-exception v11

    .line 408
    .local v11, e:Ljava/lang/Exception;
    const-string v2, "MeizuAppSecurityPermissions"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkLimitedPermission: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public checkLimitedPermissionReceiver(Ljava/lang/String;III)I
    .locals 23
    .parameter "permission"
    .parameter "pid"
    .parameter "uid"
    .parameter "value"

    .prologue
    .line 155
    move/from16 v18, p4

    .line 156
    .local v18, result:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    if-nez v20, :cond_0

    .line 157
    const-string v20, "MeizuAppSecurityPermissions"

    const-string v21, "mContext is null: "

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v19, v18

    .line 233
    .end local v18           #result:I
    .local v19, result:I
    :goto_0
    return v19

    .line 160
    .end local v19           #result:I
    .restart local v18       #result:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "appops"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/AppOpsManager;

    .line 162
    .local v10, mAppOps:Landroid/app/AppOpsManager;
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Landroid/app/AppOpsManager;->getFactoryState()Z

    move-result v20

    if-eqz v20, :cond_2

    :cond_1
    move/from16 v19, v18

    .line 163
    .end local v18           #result:I
    .restart local v19       #result:I
    goto :goto_0

    .line 166
    .end local v19           #result:I
    .restart local v18       #result:I
    :cond_2
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/MeizuAppSecurityPermissions;->getPhoneLimitedPermissionReceiver()Ljava/util/ArrayList;

    move-result-object v12

    .line 167
    .local v12, mLimitedPermission:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/MeizuAppSecurityPermissions;->getCallPermission()Ljava/util/ArrayList;

    move-result-object v11

    .line 168
    .local v11, mCallPermission:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    .line 169
    .local v15, phone:Z
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 172
    .local v4, call:Z
    if-nez v15, :cond_3

    if-eqz v4, :cond_c

    .line 173
    :cond_3
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, p3

    move/from16 v2, p2

    move/from16 v3, v21

    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getInstalledPackagesExtralPm(III)Ljava/util/List;

    move-result-object v14

    .line 174
    .local v14, pList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->DEBUG:Z

    move/from16 v20, v0

    if-eqz v20, :cond_4

    .line 175
    const-string v20, "MeizuAppSecurityPermissions"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "permission: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const-string v20, "MeizuAppSecurityPermissions"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "pList: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " pid:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " uid:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_4
    const-string v17, ""

    .line 180
    .local v17, pkgName:Ljava/lang/String;
    const-string v16, ""

    .line 181
    .local v16, pkgLabel:Ljava/lang/String;
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v20

    if-eqz v20, :cond_8

    .line 182
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/PackageInfo;

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 183
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/PackageInfo;

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 184
    .local v9, lable:Ljava/lang/CharSequence;
    if-eqz v9, :cond_5

    .line 185
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    .line 187
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->DEBUG:Z

    move/from16 v20, v0

    if-eqz v20, :cond_6

    .line 188
    const-string v20, "MeizuAppSecurityPermissions"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "\u3000system pkgNameString: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const-string v20, "MeizuAppSecurityPermissions"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "  system pkgLabel: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_6
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/PackageInfo;

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    if-eqz v20, :cond_a

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/PackageInfo;

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v20, v0

    and-int/lit8 v20, v20, 0x1

    if-eqz v20, :cond_a

    .line 194
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->DEBUG:Z

    move/from16 v20, v0

    if-eqz v20, :cond_7

    .line 195
    const-string v20, "MeizuAppSecurityPermissions"

    const-string v21, "FLAG_SYSTEM return PERMISSION_GRANTED"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move/from16 v19, v18

    .line 199
    .end local v18           #result:I
    .restart local v19       #result:I
    goto/16 :goto_0

    .line 202
    .end local v9           #lable:Ljava/lang/CharSequence;
    .end local v19           #result:I
    .restart local v18       #result:I
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->DEBUG:Z

    move/from16 v20, v0

    if-eqz v20, :cond_9

    .line 203
    const-string v20, "MeizuAppSecurityPermissions"

    const-string/jumbo v21, "\u3000pList is null "

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move/from16 v19, v18

    .line 205
    .end local v18           #result:I
    .restart local v19       #result:I
    goto/16 :goto_0

    .line 208
    .end local v19           #result:I
    .restart local v9       #lable:Ljava/lang/CharSequence;
    .restart local v18       #result:I
    :cond_a
    if-eqz v15, :cond_d

    .line 209
    const/16 v20, 0x18

    move/from16 v0, v20

    move/from16 v1, p3

    move-object/from16 v2, v17

    invoke-virtual {v10, v0, v1, v2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v7

    .line 211
    .local v7, checkSms:I
    const/16 v20, 0x30

    move/from16 v0, v20

    move/from16 v1, p3

    move-object/from16 v2, v17

    invoke-virtual {v10, v0, v1, v2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v6

    .line 213
    .local v6, checkMms:I
    if-nez v7, :cond_b

    if-eqz v6, :cond_c

    .line 215
    :cond_b
    const/16 v18, 0x1

    .end local v4           #call:Z
    .end local v6           #checkMms:I
    .end local v7           #checkSms:I
    .end local v9           #lable:Ljava/lang/CharSequence;
    .end local v11           #mCallPermission:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12           #mLimitedPermission:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14           #pList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v15           #phone:Z
    .end local v16           #pkgLabel:Ljava/lang/String;
    .end local v17           #pkgName:Ljava/lang/String;
    :cond_c
    :goto_1
    move/from16 v19, v18

    .line 233
    .end local v18           #result:I
    .restart local v19       #result:I
    goto/16 :goto_0

    .line 218
    .end local v19           #result:I
    .restart local v4       #call:Z
    .restart local v9       #lable:Ljava/lang/CharSequence;
    .restart local v11       #mCallPermission:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v12       #mLimitedPermission:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v14       #pList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v15       #phone:Z
    .restart local v16       #pkgLabel:Ljava/lang/String;
    .restart local v17       #pkgName:Ljava/lang/String;
    .restart local v18       #result:I
    :cond_d
    move-object/from16 v0, p1

    move/from16 v1, p3

    move-object/from16 v2, v17

    invoke-virtual {v10, v0, v1, v2}, Landroid/app/AppOpsManager;->getPermissionOP(Ljava/lang/String;ILjava/lang/String;)I

    move-result v13

    .line 219
    .local v13, op:I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v13, v0, :cond_e

    move/from16 v19, v18

    .line 220
    .end local v18           #result:I
    .restart local v19       #result:I
    goto/16 :goto_0

    .line 223
    .end local v19           #result:I
    .restart local v18       #result:I
    :cond_e
    move/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v10, v13, v0, v1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 225
    .local v5, check:I
    if-eqz v5, :cond_c

    .line 226
    const/16 v18, 0x1

    goto :goto_1

    .line 230
    .end local v4           #call:Z
    .end local v5           #check:I
    .end local v9           #lable:Ljava/lang/CharSequence;
    .end local v11           #mCallPermission:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12           #mLimitedPermission:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v13           #op:I
    .end local v14           #pList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v15           #phone:Z
    .end local v16           #pkgLabel:Ljava/lang/String;
    .end local v17           #pkgName:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 231
    .local v8, e:Ljava/lang/Exception;
    const-string v20, "MeizuAppSecurityPermissions"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "checkLimitedPermission: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getBootCompletedPermission()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v0, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "android.permission.RECEIVE_BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    return-object v0
.end method

.method public getCallPermission()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .local v0, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "android.permission.PROCESS_OUTGOING_CALLS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    return-object v0
.end method

.method public getControlPermissions(I)Ljava/util/ArrayList;
    .locals 2
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 611
    packed-switch p1, :pswitch_data_0

    .line 792
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    .line 613
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlPhone:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 614
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlPhone:Ljava/util/ArrayList;

    .line 615
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlPhone:Ljava/util/ArrayList;

    const-string v1, "android.permission.CALL_PHONE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 616
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlPhone:Ljava/util/ArrayList;

    const-string v1, "android.permission.CALL_PRIVILEGED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 617
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlPhone:Ljava/util/ArrayList;

    const-string v1, "android.permission.PROCESS_OUTGOING_CALLS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 620
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlPhone:Ljava/util/ArrayList;

    goto :goto_0

    .line 622
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlCallLog:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 623
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlCallLog:Ljava/util/ArrayList;

    .line 624
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlCallLog:Ljava/util/ArrayList;

    const-string v1, "android.permission.READ_CALL_LOG"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 625
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlCallLog:Ljava/util/ArrayList;

    const-string v1, "android.permission.WRITE_CALL_LOG"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 628
    :cond_1
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlCallLog:Ljava/util/ArrayList;

    goto :goto_0

    .line 630
    :pswitch_2
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlContacts:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 631
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlContacts:Ljava/util/ArrayList;

    .line 632
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlContacts:Ljava/util/ArrayList;

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlContacts:Ljava/util/ArrayList;

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlContacts:Ljava/util/ArrayList;

    const-string v1, "android.permission.READ_PROFILE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlContacts:Ljava/util/ArrayList;

    const-string v1, "android.permission.WRITE_PROFILE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 636
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlContacts:Ljava/util/ArrayList;

    const-string v1, "com.android.voicemail.permission.READ_WRITE_ALL_VOICEMAIL"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 638
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlContacts:Ljava/util/ArrayList;

    const-string v1, "com.android.voicemail.permission.ADD_VOICEMAIL"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 641
    :cond_2
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlContacts:Ljava/util/ArrayList;

    goto :goto_0

    .line 644
    :pswitch_3
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlSms:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 645
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlSms:Ljava/util/ArrayList;

    .line 646
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlSms:Ljava/util/ArrayList;

    const-string v1, "android.permission.READ_SMS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 647
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlSms:Ljava/util/ArrayList;

    const-string v1, "android.permission.WRITE_SMS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlSms:Ljava/util/ArrayList;

    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 649
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlSms:Ljava/util/ArrayList;

    const-string v1, "android.permission.SEND_SMS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 650
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlSms:Ljava/util/ArrayList;

    const-string v1, "android.permission.SEND_SMS_NO_CONFIRMATION"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlSms:Ljava/util/ArrayList;

    const-string v1, "android.permission.BROADCAST_SMS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 652
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlSms:Ljava/util/ArrayList;

    const-string v1, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlSms:Ljava/util/ArrayList;

    const-string v1, "android.permission.BROADCAST_WAP_PUSH"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 656
    :cond_3
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlSms:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 658
    :pswitch_4
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlMms:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    .line 659
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlMms:Ljava/util/ArrayList;

    .line 660
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlMms:Ljava/util/ArrayList;

    const-string v1, "android.permission.READ_SMS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 661
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlMms:Ljava/util/ArrayList;

    const-string v1, "android.permission.WRITE_SMS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 662
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlMms:Ljava/util/ArrayList;

    const-string v1, "android.permission.SEND_SMS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 663
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlMms:Ljava/util/ArrayList;

    const-string v1, "android.permission.SEND_SMS_NO_CONFIRMATION"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 664
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlMms:Ljava/util/ArrayList;

    const-string v1, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 665
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlMms:Ljava/util/ArrayList;

    const-string v1, "android.permission.BROADCAST_WAP_PUSH"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 666
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlMms:Ljava/util/ArrayList;

    const-string v1, "android.permission.RECEIVE_MMS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 668
    :cond_4
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlMms:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 670
    :pswitch_5
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlNetWork:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 671
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlNetWork:Ljava/util/ArrayList;

    .line 673
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlNetWork:Ljava/util/ArrayList;

    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 674
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlNetWork:Ljava/util/ArrayList;

    const-string v1, "android.permission.WRITE_APN_SETTINGS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 679
    :cond_5
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlNetWork:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 681
    :pswitch_6
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlWlan:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    .line 682
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlWlan:Ljava/util/ArrayList;

    .line 684
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlWlan:Ljava/util/ArrayList;

    const-string v1, "android.permission.CHANGE_WIFI_MULTICAST_STATE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 686
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlWlan:Ljava/util/ArrayList;

    const-string v1, "android.permission.CHANGE_WIFI_STATE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 688
    :cond_6
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlWlan:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 690
    :pswitch_7
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlLocation:Ljava/util/ArrayList;

    if-nez v0, :cond_7

    .line 691
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlLocation:Ljava/util/ArrayList;

    .line 692
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlLocation:Ljava/util/ArrayList;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 693
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlLocation:Ljava/util/ArrayList;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 694
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlLocation:Ljava/util/ArrayList;

    const-string v1, "android.permission.ACCESS_LOCATION_EXTRA_COMMANDS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 695
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlLocation:Ljava/util/ArrayList;

    const-string v1, "android.permission.ACCESS_MOCK_LOCATION"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 696
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlLocation:Ljava/util/ArrayList;

    const-string v1, "android.permission.CONTROL_LOCATION_UPDATES"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 697
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlLocation:Ljava/util/ArrayList;

    const-string v1, "android.permission.INSTALL_LOCATION_PROVIDER"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 700
    :cond_7
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlLocation:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 703
    :pswitch_8
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlRecordAudio:Ljava/util/ArrayList;

    if-nez v0, :cond_8

    .line 704
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlRecordAudio:Ljava/util/ArrayList;

    .line 705
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlRecordAudio:Ljava/util/ArrayList;

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 707
    :cond_8
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlRecordAudio:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 709
    :pswitch_9
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlCamera:Ljava/util/ArrayList;

    if-nez v0, :cond_9

    .line 710
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlCamera:Ljava/util/ArrayList;

    .line 711
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlCamera:Ljava/util/ArrayList;

    const-string v1, "android.permission.CAMERA"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 713
    :cond_9
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlCamera:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 715
    :pswitch_a
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlBootCompleted:Ljava/util/ArrayList;

    if-nez v0, :cond_a

    .line 716
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlBootCompleted:Ljava/util/ArrayList;

    .line 717
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlBootCompleted:Ljava/util/ArrayList;

    const-string v1, "android.permission.RECEIVE_BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 719
    :cond_a
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlBootCompleted:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 721
    :pswitch_b
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlBluetooth:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 722
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlBluetooth:Ljava/util/ArrayList;

    .line 723
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlBluetooth:Ljava/util/ArrayList;

    const-string v1, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 724
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlBluetooth:Ljava/util/ArrayList;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 726
    :cond_b
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlBluetooth:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 728
    :pswitch_c
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlNfc:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    .line 729
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlNfc:Ljava/util/ArrayList;

    .line 730
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlNfc:Ljava/util/ArrayList;

    const-string v1, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 732
    :cond_c
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlNfc:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 734
    :pswitch_d
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlAllPerms:Ljava/util/ArrayList;

    if-nez v0, :cond_d

    .line 735
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlAllPerms:Ljava/util/ArrayList;

    .line 736
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlAllPerms:Ljava/util/ArrayList;

    const-string v1, "android.permission.READ_CALL_LOG"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 737
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlAllPerms:Ljava/util/ArrayList;

    const-string v1, "android.permission.WRITE_CALL_LOG"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 738
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlAllPerms:Ljava/util/ArrayList;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 740
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlAllPerms:Ljava/util/ArrayList;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 741
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlAllPerms:Ljava/util/ArrayList;

    const-string v1, "android.permission.CALL_PHONE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 742
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlAllPerms:Ljava/util/ArrayList;

    const-string v1, "android.permission.CALL_PRIVILEGED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 743
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlAllPerms:Ljava/util/ArrayList;

    const-string v1, "android.permission.PROCESS_OUTGOING_CALLS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 745
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlAllPerms:Ljava/util/ArrayList;

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 746
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlAllPerms:Ljava/util/ArrayList;

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 747
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlAllPerms:Ljava/util/ArrayList;

    const-string v1, "android.permission.READ_PROFILE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 748
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlAllPerms:Ljava/util/ArrayList;

    const-string v1, "android.permission.WRITE_PROFILE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 749
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlAllPerms:Ljava/util/ArrayList;

    const-string v1, "com.android.voicemail.permission.READ_WRITE_ALL_VOICEMAIL"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 750
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlAllPerms:Ljava/util/ArrayList;

    const-string v1, "com.android.voicemail.permission.ADD_VOICEMAIL"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 752
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlAllPerms:Ljava/util/ArrayList;

    const-string v1, "android.permission.READ_SMS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 753
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlAllPerms:Ljava/util/ArrayList;

    const-string v1, "android.permission.WRITE_SMS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 754
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlAllPerms:Ljava/util/ArrayList;

    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 755
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlAllPerms:Ljava/util/ArrayList;

    const-string v1, "android.permission.SEND_SMS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 756
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlAllPerms:Ljava/util/ArrayList;

    const-string v1, "android.permission.SEND_SMS_NO_CONFIRMATION"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 757
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlAllPerms:Ljava/util/ArrayList;

    const-string v1, "android.permission.BROADCAST_SMS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 758
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlAllPerms:Ljava/util/ArrayList;

    const-string v1, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlAllPerms:Ljava/util/ArrayList;

    const-string v1, "android.permission.BROADCAST_WAP_PUSH"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 760
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlAllPerms:Ljava/util/ArrayList;

    const-string v1, "android.permission.RECEIVE_MMS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 763
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlAllPerms:Ljava/util/ArrayList;

    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 764
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlAllPerms:Ljava/util/ArrayList;

    const-string v1, "android.permission.WRITE_APN_SETTINGS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 767
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlAllPerms:Ljava/util/ArrayList;

    const-string v1, "android.permission.CHANGE_WIFI_MULTICAST_STATE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 768
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlAllPerms:Ljava/util/ArrayList;

    const-string v1, "android.permission.CHANGE_WIFI_STATE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 770
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlAllPerms:Ljava/util/ArrayList;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 771
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlAllPerms:Ljava/util/ArrayList;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 772
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlAllPerms:Ljava/util/ArrayList;

    const-string v1, "android.permission.ACCESS_LOCATION_EXTRA_COMMANDS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 773
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlAllPerms:Ljava/util/ArrayList;

    const-string v1, "android.permission.ACCESS_MOCK_LOCATION"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 774
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlAllPerms:Ljava/util/ArrayList;

    const-string v1, "android.permission.CONTROL_LOCATION_UPDATES"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 775
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlAllPerms:Ljava/util/ArrayList;

    const-string v1, "android.permission.INSTALL_LOCATION_PROVIDER"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 777
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlAllPerms:Ljava/util/ArrayList;

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 779
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlAllPerms:Ljava/util/ArrayList;

    const-string v1, "android.permission.CAMERA"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 781
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlAllPerms:Ljava/util/ArrayList;

    const-string v1, "android.permission.RECEIVE_BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 783
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlAllPerms:Ljava/util/ArrayList;

    const-string v1, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 784
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlAllPerms:Ljava/util/ArrayList;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 787
    :cond_d
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mControlAllPerms:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 611
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_1
        :pswitch_4
        :pswitch_8
        :pswitch_c
    .end packed-switch
.end method

.method public getPhoneLimitedPermissionReceiver()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mPhoneLimitedPerListReceiver:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mPhoneLimitedPerListReceiver:Ljava/util/ArrayList;

    .line 121
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mPhoneLimitedPerListReceiver:Ljava/util/ArrayList;

    const-string v1, "android.permission.RECEIVE_MMS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mPhoneLimitedPerListReceiver:Ljava/util/ArrayList;

    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mPhoneLimitedPerListReceiver:Ljava/util/ArrayList;

    const-string v1, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mPhoneLimitedPerListReceiver:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSpecifiedPermissionPkg()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 586
    invoke-direct {p0}, Lcom/meizu/widget/MeizuAppSecurityPermissions;->getPhoneLimitedPermission()Ljava/util/ArrayList;

    move-result-object v4

    .line 587
    .local v4, mFilterList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/16 v9, 0x1000

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 588
    .local v0, allList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 589
    .local v1, finalList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    .line 591
    .local v6, pkgInfo:Landroid/content/pm/PackageInfo;
    iget-object v8, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v8, :cond_1

    iget-object v8, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_0

    .line 594
    :cond_1
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 595
    .local v5, permSet:Ljava/util/Set;,"Ljava/util/Set<Landroid/widget/AppSecurityPermissions$MyPermissionInfo;>;"
    iget-object v8, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v8, :cond_2

    iget-object v8, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    .line 597
    iget-object v8, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mzSecurityPermissions:Landroid/widget/AppSecurityPermissions;

    iget-object v9, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v8, v9, v5}, Landroid/widget/AppSecurityPermissions;->getAllUsedPermissions(ILjava/util/Set;)V

    .line 599
    :cond_2
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

    .line 601
    .local v7, tmpInfo:Landroid/content/pm/PermissionInfo;
    iget-object v8, v7, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-interface {v4, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 602
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 607
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #permSet:Ljava/util/Set;,"Ljava/util/Set<Landroid/widget/AppSecurityPermissions$MyPermissionInfo;>;"
    .end local v6           #pkgInfo:Landroid/content/pm/PackageInfo;
    .end local v7           #tmpInfo:Landroid/content/pm/PermissionInfo;
    :cond_4
    return-object v1
.end method

.method public getTypeOfPermission(Ljava/lang/String;)I
    .locals 6
    .parameter "permission"

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 796
    invoke-virtual {p0, v0}, Lcom/meizu/widget/MeizuAppSecurityPermissions;->getControlPermissions(I)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 823
    :goto_0
    return v0

    .line 798
    :cond_0
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/meizu/widget/MeizuAppSecurityPermissions;->getControlPermissions(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 799
    const/16 v0, 0xb

    goto :goto_0

    .line 800
    :cond_1
    invoke-virtual {p0, v1}, Lcom/meizu/widget/MeizuAppSecurityPermissions;->getControlPermissions(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 801
    goto :goto_0

    .line 802
    :cond_2
    invoke-virtual {p0, v2}, Lcom/meizu/widget/MeizuAppSecurityPermissions;->getControlPermissions(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    .line 803
    goto :goto_0

    .line 804
    :cond_3
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/meizu/widget/MeizuAppSecurityPermissions;->getControlPermissions(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 805
    const/16 v0, 0xc

    goto :goto_0

    .line 806
    :cond_4
    invoke-virtual {p0, v3}, Lcom/meizu/widget/MeizuAppSecurityPermissions;->getControlPermissions(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v3

    .line 807
    goto :goto_0

    .line 808
    :cond_5
    invoke-virtual {p0, v4}, Lcom/meizu/widget/MeizuAppSecurityPermissions;->getControlPermissions(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v4

    .line 809
    goto :goto_0

    .line 810
    :cond_6
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/meizu/widget/MeizuAppSecurityPermissions;->getControlPermissions(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 811
    const/4 v0, 0x6

    goto :goto_0

    .line 812
    :cond_7
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/meizu/widget/MeizuAppSecurityPermissions;->getControlPermissions(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 813
    const/4 v0, 0x7

    goto :goto_0

    .line 814
    :cond_8
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/meizu/widget/MeizuAppSecurityPermissions;->getControlPermissions(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 815
    const/16 v0, 0xd

    goto :goto_0

    .line 816
    :cond_9
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/meizu/widget/MeizuAppSecurityPermissions;->getControlPermissions(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 817
    const/16 v0, 0x8

    goto/16 :goto_0

    .line 818
    :cond_a
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/meizu/widget/MeizuAppSecurityPermissions;->getControlPermissions(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 819
    const/16 v0, 0x9

    goto/16 :goto_0

    .line 820
    :cond_b
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/meizu/widget/MeizuAppSecurityPermissions;->getControlPermissions(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 821
    const/16 v0, 0xa

    goto/16 :goto_0

    .line 823
    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 104
    iput-object p1, p0, Lcom/meizu/widget/MeizuAppSecurityPermissions;->mContext:Landroid/content/Context;

    .line 106
    :cond_0
    return-void
.end method
