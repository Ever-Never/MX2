.class public Lcom/android/server/NetworkUpgradeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkUpgradeReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NetworkUpgradeReceiver$BatteryRecevier;
    }
.end annotation


# static fields
.field static final BACKUP_FINISH_BROADCAST:Ljava/lang/String; = "com.android.contacts.BACKUP_FINISH_BROADCAST"

.field private static final TAG:Ljava/lang/String; = "NetworkUpgradeReceiver"

.field private static mBatteryFilter:Landroid/content/IntentFilter;

.field private static mBatteryRecevier:Lcom/android/server/NetworkUpgradeReceiver$BatteryRecevier;

.field private static mIsBatteryLow:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mUpgradeTipsDialog:Landroid/app/AlertDialog;

.field private rebootCMDF:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Lcom/android/server/NetworkUpgradeReceiver$BatteryRecevier;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/NetworkUpgradeReceiver$BatteryRecevier;-><init>(Lcom/android/server/NetworkUpgradeReceiver$1;)V

    sput-object v0, Lcom/android/server/NetworkUpgradeReceiver;->mBatteryRecevier:Lcom/android/server/NetworkUpgradeReceiver$BatteryRecevier;

    .line 51
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/NetworkUpgradeReceiver;->mBatteryFilter:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 255
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/NetworkUpgradeReceiver;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/server/NetworkUpgradeReceiver;->upGrade(Z)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/android/server/NetworkUpgradeReceiver;->mIsBatteryLow:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    sput-boolean p0, Lcom/android/server/NetworkUpgradeReceiver;->mIsBatteryLow:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/server/NetworkUpgradeReceiver;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/server/NetworkUpgradeReceiver;->mUpgradeTipsDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/NetworkUpgradeReceiver;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/server/NetworkUpgradeReceiver;->upGradeReally(Z)V

    return-void
.end method

.method private showLowBatteryDialog()V
    .locals 6

    .prologue
    .line 172
    iget-object v3, p0, Lcom/android/server/NetworkUpgradeReceiver;->mContext:Landroid/content/Context;

    const v4, 0x10900cd

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 173
    .local v2, v:Landroid/view/View;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/server/NetworkUpgradeReceiver;->mContext:Landroid/content/Context;

    const/4 v4, 0x5

    invoke-direct {v0, v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 174
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/server/NetworkUpgradeReceiver$4;

    invoke-direct {v5, p0}, Lcom/android/server/NetworkUpgradeReceiver$4;-><init>(Lcom/android/server/NetworkUpgradeReceiver;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 184
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 185
    .local v1, d:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d8

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 186
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 187
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 188
    return-void
.end method

.method private showSystemRootDialog()V
    .locals 5

    .prologue
    .line 191
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/server/NetworkUpgradeReceiver;->mContext:Landroid/content/Context;

    const/4 v3, 0x5

    invoke-direct {v0, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 194
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x10405d6

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x10405d7

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/server/NetworkUpgradeReceiver$6;

    invoke-direct {v4, p0}, Lcom/android/server/NetworkUpgradeReceiver$6;-><init>(Lcom/android/server/NetworkUpgradeReceiver;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    new-instance v4, Lcom/android/server/NetworkUpgradeReceiver$5;

    invoke-direct {v4, p0}, Lcom/android/server/NetworkUpgradeReceiver$5;-><init>(Lcom/android/server/NetworkUpgradeReceiver;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 213
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 214
    .local v1, d:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 215
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 216
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 217
    return-void
.end method

.method private upGrade(Z)V
    .locals 1
    .parameter "positive"

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/android/server/NetworkUpgradeReceiver;->isSystemRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 146
    invoke-direct {p0}, Lcom/android/server/NetworkUpgradeReceiver;->showSystemRootDialog()V

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/NetworkUpgradeReceiver;->upGradeReally(Z)V

    goto :goto_0
.end method

.method private upGradeReally(Z)V
    .locals 3
    .parameter "positive"

    .prologue
    .line 153
    if-eqz p1, :cond_3

    .line 154
    iget-object v1, p0, Lcom/android/server/NetworkUpgradeReceiver;->mUpgradeTipsDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/android/server/NetworkUpgradeReceiver;->mUpgradeTipsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 157
    :cond_0
    sget-boolean v1, Lcom/android/server/NetworkUpgradeReceiver;->mIsBatteryLow:Z

    if-eqz v1, :cond_2

    .line 158
    invoke-direct {p0}, Lcom/android/server/NetworkUpgradeReceiver;->showLowBatteryDialog()V

    .line 169
    :cond_1
    :goto_0
    return-void

    .line 160
    :cond_2
    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerService;

    .line 162
    .local v0, mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    iget-object v1, p0, Lcom/android/server/NetworkUpgradeReceiver;->rebootCMDF:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->mzReboot(Ljava/lang/String;Z)V

    goto :goto_0

    .line 165
    .end local v0           #mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    :cond_3
    iget-object v1, p0, Lcom/android/server/NetworkUpgradeReceiver;->mUpgradeTipsDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 166
    iget-object v1, p0, Lcom/android/server/NetworkUpgradeReceiver;->mUpgradeTipsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method

.method private static writeUpgradeFilePath(Ljava/lang/String;)V
    .locals 7
    .parameter "filePath"

    .prologue
    .line 220
    if-nez p0, :cond_0

    .line 245
    :goto_0
    return-void

    .line 224
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v5, "/cache/"

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 225
    .local v3, root:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v5, ".update_locate"

    invoke-direct {v2, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 227
    .local v2, mFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_1

    .line 229
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 230
    const-string v5, "NetworkUpgradeReceiver"

    const-string v6, "file created"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 237
    :cond_1
    :goto_1
    :try_start_2
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 238
    .local v4, stream:Ljava/io/FileOutputStream;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 239
    .local v0, buf:[B
    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write([B)V

    .line 240
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 241
    .end local v0           #buf:[B
    .end local v2           #mFile:Ljava/io/File;
    .end local v3           #root:Ljava/io/File;
    .end local v4           #stream:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 242
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "NetworkUpgradeReceiver"

    const-string v6, "Error on writeFile."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 231
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #mFile:Ljava/io/File;
    .restart local v3       #root:Ljava/io/File;
    :catch_1
    move-exception v1

    .line 232
    .local v1, e:Ljava/io/IOException;
    :try_start_3
    const-string v5, "NetworkUpgradeReceiver"

    const-string v6, "Could not create update_locate"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const-string v5, "NetworkUpgradeReceiver"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public isSystemRoot()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 248
    iget-object v3, p0, Lcom/android/server/NetworkUpgradeReceiver;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 250
    .local v0, pm:Landroid/os/PowerManager;
    sget-object v3, Landroid/os/PowerManager$RemoteHandle;->Root:Landroid/os/PowerManager$RemoteHandle;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/os/PowerManager;->doCheckState(I)I

    move-result v1

    .line 251
    .local v1, state:I
    const-string v3, "NetworkUpgradeReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "systemRoot state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    if-ne v1, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    const-string v13, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 55
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    sget-object v13, Lcom/android/server/NetworkUpgradeReceiver;->mBatteryRecevier:Lcom/android/server/NetworkUpgradeReceiver$BatteryRecevier;

    sget-object v14, Lcom/android/server/NetworkUpgradeReceiver;->mBatteryFilter:Landroid/content/IntentFilter;

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    const-string v13, "android.intent.action.NETWORK_UPGRADE"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 57
    const-string v12, "meizu.com"

    const-string v13, "from"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 58
    const-string v12, "NetworkUpgradeReceiver"

    const-string v13, "Ignoring system update request -- not from trusted server."

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 62
    :cond_2
    const-string v12, "false"

    const-string v13, "need_confirm"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    const/4 v5, 0x1

    .line 63
    .local v5, needConfirm:Z
    :goto_1
    const-string v12, "true"

    const-string v13, "wipe_userdata"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    const/4 v11, 0x1

    .line 64
    .local v11, wipe:Z
    :goto_2
    if-eqz v11, :cond_7

    const-string v6, "update_and_wipe"

    .line 65
    .local v6, rebootCMD:Ljava/lang/String;
    :goto_3
    const-string v12, "upgrade_locate_filepath"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 66
    if-eqz v11, :cond_8

    .line 67
    const-string v6, "update_and_wipe"

    .line 72
    :goto_4
    const-string v12, "upgrade_locate_filepath"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, filePath:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    .line 74
    .local v7, story:Ljava/io/File;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 75
    .local v8, storyPath:Ljava/lang/String;
    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 76
    const-string v12, ""

    invoke-virtual {v3, v8, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 78
    :cond_3
    invoke-static {v3}, Lcom/android/server/NetworkUpgradeReceiver;->writeUpgradeFilePath(Ljava/lang/String;)V

    .line 81
    .end local v3           #filePath:Ljava/lang/String;
    .end local v7           #story:Ljava/io/File;
    .end local v8           #storyPath:Ljava/lang/String;
    :cond_4
    const-string v12, "NetworkUpgradeReceiver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "NetworkUpgradeReceiver ,reboot cmd is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/android/server/NetworkUpgradeReceiver;->mContext:Landroid/content/Context;

    .line 83
    iput-object v6, p0, Lcom/android/server/NetworkUpgradeReceiver;->rebootCMDF:Ljava/lang/String;

    .line 84
    if-eqz v5, :cond_a

    .line 85
    new-instance v1, Landroid/app/AlertDialog$Builder;

    const/4 v12, 0x5

    move-object/from16 v0, p1

    invoke-direct {v1, v0, v12}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 86
    .local v1, b:Landroid/app/AlertDialog$Builder;
    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 87
    iget-object v12, p0, Lcom/android/server/NetworkUpgradeReceiver;->mContext:Landroid/content/Context;

    const v13, 0x109012d

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 88
    .local v10, view:Landroid/view/View;
    const v12, 0x102043f

    invoke-virtual {v10, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 89
    .local v9, textView:Landroid/widget/TextView;
    sget-boolean v12, Lcom/android/server/NetworkUpgradeReceiver;->mIsBatteryLow:Z

    if-eqz v12, :cond_9

    .line 90
    const v12, 0x10405d4

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(I)V

    .line 94
    :goto_5
    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 95
    const v12, 0x108059e

    invoke-virtual {v1, v12}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 98
    const v12, 0x10405d0

    new-instance v13, Lcom/android/server/NetworkUpgradeReceiver$1;

    invoke-direct {v13, p0}, Lcom/android/server/NetworkUpgradeReceiver$1;-><init>(Lcom/android/server/NetworkUpgradeReceiver;)V

    invoke-virtual {v1, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 105
    const v12, 0x10405d1

    new-instance v13, Lcom/android/server/NetworkUpgradeReceiver$2;

    invoke-direct {v13, p0}, Lcom/android/server/NetworkUpgradeReceiver$2;-><init>(Lcom/android/server/NetworkUpgradeReceiver;)V

    invoke-virtual {v1, v12, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 115
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 116
    .local v2, d:Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v12

    const/16 v13, 0x7d8

    invoke-virtual {v12, v13}, Landroid/view/Window;->setType(I)V

    .line 117
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 118
    iput-object v2, p0, Lcom/android/server/NetworkUpgradeReceiver;->mUpgradeTipsDialog:Landroid/app/AlertDialog;

    .line 119
    new-instance v12, Lcom/android/server/NetworkUpgradeReceiver$3;

    invoke-direct {v12, p0}, Lcom/android/server/NetworkUpgradeReceiver$3;-><init>(Lcom/android/server/NetworkUpgradeReceiver;)V

    invoke-virtual {v2, v12}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 134
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 62
    .end local v1           #b:Landroid/app/AlertDialog$Builder;
    .end local v2           #d:Landroid/app/AlertDialog;
    .end local v5           #needConfirm:Z
    .end local v6           #rebootCMD:Ljava/lang/String;
    .end local v9           #textView:Landroid/widget/TextView;
    .end local v10           #view:Landroid/view/View;
    .end local v11           #wipe:Z
    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 63
    .restart local v5       #needConfirm:Z
    :cond_6
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 64
    .restart local v11       #wipe:Z
    :cond_7
    const-string v6, "recovery--upgrade_firmware"

    goto/16 :goto_3

    .line 69
    .restart local v6       #rebootCMD:Ljava/lang/String;
    :cond_8
    const-string v6, "update_locate"

    goto/16 :goto_4

    .line 92
    .restart local v1       #b:Landroid/app/AlertDialog$Builder;
    .restart local v9       #textView:Landroid/widget/TextView;
    .restart local v10       #view:Landroid/view/View;
    :cond_9
    const v12, 0x10405ce

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(I)V

    goto :goto_5

    .line 136
    .end local v1           #b:Landroid/app/AlertDialog$Builder;
    .end local v9           #textView:Landroid/widget/TextView;
    .end local v10           #view:Landroid/view/View;
    :cond_a
    const-string v12, "window"

    invoke-static {v12}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowManagerService;

    .line 138
    .local v4, mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    iget-object v12, p0, Lcom/android/server/NetworkUpgradeReceiver;->rebootCMDF:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v4, v12, v13}, Lcom/android/server/wm/WindowManagerService;->mzReboot(Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method
