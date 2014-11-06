.class public Lcom/android/server/AppOpsService;
.super Lcom/android/internal/app/IAppOpsService$Stub;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AppOpsService$Callback;,
        Lcom/android/server/AppOpsService$Op;,
        Lcom/android/server/AppOpsService$Ops;,
        Lcom/android/server/AppOpsService$PushDialogItem;,
        Lcom/android/server/AppOpsService$DialogItem;
    }
.end annotation


# static fields
.field static final DEBUG:Z = true

.field private static final DISMISS:I = 0x2

.field static final FACTORY_TEST_FILE:Ljava/lang/String; = "/data/app/factoryTest/"

.field private static final SHOW:I = 0x1

.field static final TAG:Ljava/lang/String; = "AppOps"

.field private static final UPDATE_DEFUAT:I = 0x0

.field static final WRITE_DELAY:J = 0x3e8L

.field private static mListOp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private code:I

.field private currentType:I

.field dialogList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppOpsService$DialogItem;",
            ">;"
        }
    .end annotation
.end field

.field private dialogPush:Z

.field dismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private enable:Z

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mContext:Landroid/content/Context;

.field mFactoryTest:Z

.field final mFile:Landroid/util/AtomicFile;

.field final mHandler:Landroid/os/Handler;

.field private mIPm:Landroid/content/pm/IPackageManager;

.field final mModeWatchers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/AppOpsService$Callback;",
            ">;"
        }
    .end annotation
.end field

.field final mOpModeWatchers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPackageLabel:Ljava/lang/String;

.field final mPackageModeWatchers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPackageNameString:Ljava/lang/String;

.field private mPackageNameStringOp:Ljava/lang/String;

.field private mPermissonDetailsString:Ljava/lang/String;

.field private mPhHandler:Landroid/os/Handler;

.field final mUidOps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/AppOpsService$Ops;",
            ">;>;"
        }
    .end annotation
.end field

.field final mWriteRunner:Ljava/lang/Runnable;

.field mWriteScheduled:Z

.field private opGroup:I

.field private open:Z

.field private openOrClose:Z

.field private pkg:Ljava/lang/String;

.field private result:I

.field private uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/AppOpsService;->mListOp:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .parameter "storagePath"

    .prologue
    .line 261
    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsService$Stub;-><init>()V

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mPackageNameStringOp:Ljava/lang/String;

    .line 104
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mPackageLabel:Ljava/lang/String;

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/AppOpsService;->currentType:I

    .line 113
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mPackageNameString:Ljava/lang/String;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->dialogList:Ljava/util/ArrayList;

    .line 160
    new-instance v0, Lcom/android/server/AppOpsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/AppOpsService$1;-><init>(Lcom/android/server/AppOpsService;)V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mPhHandler:Landroid/os/Handler;

    .line 191
    new-instance v0, Lcom/android/server/AppOpsService$2;

    invoke-direct {v0, p0}, Lcom/android/server/AppOpsService$2;-><init>(Lcom/android/server/AppOpsService;)V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    .line 206
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    .line 233
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    .line 235
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Ljava/util/HashMap;

    .line 237
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mModeWatchers:Ljava/util/HashMap;

    .line 1606
    new-instance v0, Lcom/android/server/AppOpsService$6;

    invoke-direct {v0, p0}, Lcom/android/server/AppOpsService$6;-><init>(Lcom/android/server/AppOpsService;)V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 1919
    new-instance v0, Lcom/android/server/AppOpsService$7;

    invoke-direct {v0, p0}, Lcom/android/server/AppOpsService$7;-><init>(Lcom/android/server/AppOpsService;)V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 262
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    .line 263
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    .line 264
    invoke-virtual {p0}, Lcom/android/server/AppOpsService;->readState()V

    .line 265
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->readFactoryTestFile()V

    .line 266
    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mIPm:Landroid/content/pm/IPackageManager;

    .line 268
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/AppOpsService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mPackageNameString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/AppOpsService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/server/AppOpsService;->mPackageNameString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/AppOpsService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->showToastMessage(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/AppOpsService;Lcom/android/server/AppOpsService$DialogItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->updateDialogList(Lcom/android/server/AppOpsService$DialogItem;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/AppOpsService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mPackageNameStringOp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/AppOpsService;Landroid/content/DialogInterface;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/AppOpsService;->update(Landroid/content/DialogInterface;ZZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/AppOpsService;ZLandroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/server/AppOpsService;->removeWindow(ZLandroid/view/View;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/AppOpsService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->removeListOp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/AppOpsService;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->getPackaeList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/AppOpsService;Landroid/content/pm/PackageInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->setDefaultControlPermissions(Landroid/content/pm/PackageInfo;)V

    return-void
.end method

.method private addWindow(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1452
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    .line 1453
    .local v11, inflater:Landroid/view/LayoutInflater;
    const v1, 0x10900f4

    const/4 v2, 0x0

    invoke-virtual {v11, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 1454
    .local v8, inflateView:Landroid/view/View;
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/WindowManager;

    .line 1455
    .local v13, wm:Landroid/view/WindowManager;
    new-instance v14, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v14}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1457
    .local v14, wmParams:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x7e0

    iput v1, v14, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1458
    const/4 v1, 0x1

    iput v1, v14, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1459
    const/16 v1, 0x50

    iput v1, v14, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1460
    const/4 v1, -0x1

    iput v1, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1461
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050098

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1462
    const v1, 0x1030317

    iput v1, v14, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1465
    invoke-interface {v13, v8, v14}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1467
    const v1, 0x10203d9

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 1468
    .local v12, messgeTextView:Landroid/widget/TextView;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104064e

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/AppOpsService;->mPackageLabel:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1469
    const v1, 0x10203db

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 1470
    .local v9, button1:Landroid/widget/Button;
    const v1, 0x10203da

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 1471
    .local v10, button2:Landroid/widget/Button;
    new-instance v0, Lcom/android/server/AppOpsService$PushDialogItem;

    iget v2, p0, Lcom/android/server/AppOpsService;->code:I

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/server/AppOpsService;->opGroup:I

    iget v5, p0, Lcom/android/server/AppOpsService;->uid:I

    iget-object v6, p0, Lcom/android/server/AppOpsService;->pkg:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/android/server/AppOpsService;->openOrClose:Z

    move-object v1, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/server/AppOpsService$PushDialogItem;-><init>(Lcom/android/server/AppOpsService;ILandroid/app/AlertDialog;IILjava/lang/String;ZLandroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 1472
    .local v0, item:Lcom/android/server/AppOpsService$PushDialogItem;
    invoke-virtual {v9, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1473
    invoke-virtual {v10, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1474
    new-instance v1, Lcom/android/server/AppOpsService$4;

    invoke-direct {v1, p0}, Lcom/android/server/AppOpsService$4;-><init>(Lcom/android/server/AppOpsService;)V

    invoke-virtual {v9, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1483
    new-instance v1, Lcom/android/server/AppOpsService$5;

    invoke-direct {v1, p0}, Lcom/android/server/AppOpsService$5;-><init>(Lcom/android/server/AppOpsService;)V

    invoke-virtual {v10, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1492
    return-void
.end method

.method private checkDialogList(IIILjava/lang/String;)Z
    .locals 4
    .parameter "code"
    .parameter "opgroup"
    .parameter "uid"
    .parameter "pkg"

    .prologue
    .line 1537
    iget-object v2, p0, Lcom/android/server/AppOpsService;->dialogList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$DialogItem;

    .line 1538
    .local v0, aDialgItem:Lcom/android/server/AppOpsService$DialogItem;
    iget v2, v0, Lcom/android/server/AppOpsService$DialogItem;->code:I

    if-ne p1, v2, :cond_0

    iget v2, p0, Lcom/android/server/AppOpsService;->opGroup:I

    iget v3, v0, Lcom/android/server/AppOpsService$DialogItem;->opGroup:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/server/AppOpsService$DialogItem;->uid:I

    if-ne p3, v2, :cond_0

    iget-object v2, v0, Lcom/android/server/AppOpsService$DialogItem;->pkg:Ljava/lang/String;

    if-ne p4, v2, :cond_0

    .line 1540
    iget-object v2, v0, Lcom/android/server/AppOpsService$DialogItem;->dialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/server/AppOpsService$DialogItem;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1542
    const/4 v2, 0x1

    .line 1546
    .end local v0           #aDialgItem:Lcom/android/server/AppOpsService$DialogItem;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private checkStatusEquals()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1900
    iget v3, p0, Lcom/android/server/AppOpsService;->opGroup:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/android/server/AppOpsService;->opGroup:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/android/server/AppOpsService;->opGroup:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    .line 1904
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/AppOpsService;->open:Z

    iget-boolean v4, p0, Lcom/android/server/AppOpsService;->enable:Z

    if-ne v3, v4, :cond_1

    .line 1905
    const-string v3, "AppOps"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Equals inore opGroup : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/AppOpsService;->opGroup:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " open: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/AppOpsService;->open:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " enable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/AppOpsService;->enable:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1907
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/AppOpsService;->mPackageNameStringOp:Ljava/lang/String;

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1908
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1909
    .local v0, message:Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 1910
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mPackageNameStringOp:Ljava/lang/String;

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1911
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mPhHandler:Landroid/os/Handler;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1916
    .end local v0           #message:Landroid/os/Message;
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private collectOps(Lcom/android/server/AppOpsService$Ops;[I)Ljava/util/ArrayList;
    .locals 11
    .parameter "pkgOps"
    .parameter "ops"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/AppOpsService$Ops;",
            "[I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 393
    const/4 v10, 0x0

    .line 394
    .local v10, resOps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    if-nez p2, :cond_0

    .line 395
    new-instance v10, Ljava/util/ArrayList;

    .end local v10           #resOps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 396
    .restart local v10       #resOps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    const/4 v9, 0x0

    .local v9, j:I
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v9, v0, :cond_3

    .line 397
    invoke-virtual {p1, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AppOpsService$Op;

    .line 398
    .local v8, curOp:Lcom/android/server/AppOpsService$Op;
    new-instance v0, Landroid/app/AppOpsManager$OpEntry;

    iget v1, v8, Lcom/android/server/AppOpsService$Op;->op:I

    iget v2, v8, Lcom/android/server/AppOpsService$Op;->mode:I

    iget-wide v3, v8, Lcom/android/server/AppOpsService$Op;->time:J

    iget-wide v5, v8, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    iget v7, v8, Lcom/android/server/AppOpsService$Op;->duration:I

    invoke-direct/range {v0 .. v7}, Landroid/app/AppOpsManager$OpEntry;-><init>(IIJJI)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 402
    .end local v8           #curOp:Lcom/android/server/AppOpsService$Op;
    .end local v9           #j:I
    :cond_0
    const/4 v9, 0x0

    .restart local v9       #j:I
    :goto_1
    array-length v0, p2

    if-ge v9, v0, :cond_3

    .line 403
    aget v0, p2, v9

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AppOpsService$Op;

    .line 404
    .restart local v8       #curOp:Lcom/android/server/AppOpsService$Op;
    if-eqz v8, :cond_2

    .line 405
    if-nez v10, :cond_1

    .line 406
    new-instance v10, Ljava/util/ArrayList;

    .end local v10           #resOps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 408
    .restart local v10       #resOps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    :cond_1
    new-instance v0, Landroid/app/AppOpsManager$OpEntry;

    iget v1, v8, Lcom/android/server/AppOpsService$Op;->op:I

    iget v2, v8, Lcom/android/server/AppOpsService$Op;->mode:I

    iget-wide v3, v8, Lcom/android/server/AppOpsService$Op;->time:J

    iget-wide v5, v8, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    iget v7, v8, Lcom/android/server/AppOpsService$Op;->duration:I

    invoke-direct/range {v0 .. v7}, Landroid/app/AppOpsManager$OpEntry;-><init>(IIJJI)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 413
    .end local v8           #curOp:Lcom/android/server/AppOpsService$Op;
    :cond_3
    return-object v10
.end method

.method private getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;
    .locals 2
    .parameter "code"
    .parameter "uid"
    .parameter "packageName"
    .parameter "edit"

    .prologue
    .line 1072
    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/AppOpsService;->getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v0

    .line 1073
    .local v0, ops:Lcom/android/server/AppOpsService$Ops;
    if-nez v0, :cond_0

    .line 1074
    const/4 v1, 0x0

    .line 1076
    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, v0, p1, p4}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v1

    goto :goto_0
.end method

.method private getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;
    .locals 2
    .parameter "ops"
    .parameter "code"
    .parameter "edit"

    .prologue
    .line 1080
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Op;

    .line 1081
    .local v0, op:Lcom/android/server/AppOpsService$Op;
    if-nez v0, :cond_1

    .line 1082
    if-nez p3, :cond_0

    .line 1083
    const/4 v1, 0x0

    .line 1091
    :goto_0
    return-object v1

    .line 1085
    :cond_0
    new-instance v0, Lcom/android/server/AppOpsService$Op;

    .end local v0           #op:Lcom/android/server/AppOpsService$Op;
    invoke-direct {v0, p2}, Lcom/android/server/AppOpsService$Op;-><init>(I)V

    .line 1086
    .restart local v0       #op:Lcom/android/server/AppOpsService$Op;
    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1088
    :cond_1
    if-eqz p3, :cond_2

    .line 1089
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V

    :cond_2
    move-object v1, v0

    .line 1091
    goto :goto_0
.end method

.method private getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;
    .locals 9
    .parameter "uid"
    .parameter "packageName"
    .parameter "edit"

    .prologue
    const/4 v5, 0x0

    .line 1010
    iget-object v6, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 1011
    .local v3, pkgOps:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    if-nez v3, :cond_2

    .line 1012
    if-nez p3, :cond_1

    move-object v2, v5

    .line 1053
    :cond_0
    :goto_0
    return-object v2

    .line 1015
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    .end local v3           #pkgOps:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1016
    .restart local v3       #pkgOps:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    iget-object v6, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v6, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1018
    :cond_2
    if-nez p1, :cond_4

    .line 1019
    const-string p2, "root"

    .line 1023
    :cond_3
    :goto_1
    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppOpsService$Ops;

    .line 1024
    .local v2, ops:Lcom/android/server/AppOpsService$Ops;
    if-nez v2, :cond_0

    .line 1025
    if-nez p3, :cond_5

    move-object v2, v5

    .line 1026
    goto :goto_0

    .line 1020
    .end local v2           #ops:Lcom/android/server/AppOpsService$Ops;
    :cond_4
    const/16 v6, 0x7d0

    if-ne p1, v6, :cond_3

    .line 1021
    const-string p2, "com.android.shell"

    goto :goto_1

    .line 1030
    .restart local v2       #ops:Lcom/android/server/AppOpsService$Ops;
    :cond_5
    if-eqz p1, :cond_7

    .line 1031
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1033
    .local v0, ident:J
    const/4 v4, -0x1

    .line 1035
    .local v4, pkgUid:I
    :try_start_0
    iget-object v6, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-virtual {v6, p2, v7}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 1039
    :goto_2
    if-eq v4, p1, :cond_6

    .line 1042
    :try_start_1
    const-string v6, "AppOps"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad call: specified package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " under uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " but it is really "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1047
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v2, v5

    goto :goto_0

    :cond_6
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1050
    .end local v0           #ident:J
    .end local v4           #pkgUid:I
    :cond_7
    new-instance v2, Lcom/android/server/AppOpsService$Ops;

    .end local v2           #ops:Lcom/android/server/AppOpsService$Ops;
    invoke-direct {v2, p2, p1}, Lcom/android/server/AppOpsService$Ops;-><init>(Ljava/lang/String;I)V

    .line 1051
    .restart local v2       #ops:Lcom/android/server/AppOpsService$Ops;
    invoke-virtual {v3, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1047
    .restart local v0       #ident:J
    .restart local v4       #pkgUid:I
    :catchall_0
    move-exception v5

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 1037
    :catch_0
    move-exception v6

    goto :goto_2
.end method

.method private getPackaeList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .parameter "pkgName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1993
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1994
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "_op_"

    .line 1995
    .local v1, op:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1996
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x17

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1997
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1998
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1999
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2000
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2001
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xb

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2002
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x13

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2003
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2004
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xc

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2005
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2007
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2008
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2009
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x18

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2011
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2012
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2013
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2014
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xd

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2015
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x16

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2017
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xe

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2018
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xf

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2019
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x11

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2020
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x12

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2021
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x14

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2022
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x15

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2024
    return-object v0
.end method

.method private getPermissonTypeDetails(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "intent"
    .parameter "label"

    .prologue
    const v8, 0x104063d

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 1795
    iget v6, p0, Lcom/android/server/AppOpsService;->opGroup:I

    .line 1796
    .local v6, type:I
    iput v6, p0, Lcom/android/server/AppOpsService;->currentType:I

    .line 1797
    const/4 v5, 0x0

    .line 1798
    .local v5, trString:Ljava/lang/String;
    iput-boolean v12, p0, Lcom/android/server/AppOpsService;->openOrClose:Z

    .line 1799
    iput-boolean v12, p0, Lcom/android/server/AppOpsService;->open:Z

    .line 1800
    iput-boolean v12, p0, Lcom/android/server/AppOpsService;->dialogPush:Z

    .line 1802
    packed-switch v6, :pswitch_data_0

    .line 1880
    :goto_0
    :pswitch_0
    iget-boolean v7, p0, Lcom/android/server/AppOpsService;->openOrClose:Z

    if-eqz v7, :cond_2

    .line 1881
    iget-boolean v7, p0, Lcom/android/server/AppOpsService;->open:Z

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1040647

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1882
    .local v2, flag:Ljava/lang/String;
    :goto_1
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1040643

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v2, v9, v12

    iget-object v10, p0, Lcom/android/server/AppOpsService;->mPermissonDetailsString:Ljava/lang/String;

    aput-object v10, v9, v11

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1895
    .end local v2           #flag:Ljava/lang/String;
    :goto_2
    return-object v5

    .line 1804
    :pswitch_1
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1040634

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/AppOpsService;->mPermissonDetailsString:Ljava/lang/String;

    goto :goto_0

    .line 1807
    :pswitch_2
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1040635

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/AppOpsService;->mPermissonDetailsString:Ljava/lang/String;

    goto :goto_0

    .line 1810
    :pswitch_3
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1040636

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/AppOpsService;->mPermissonDetailsString:Ljava/lang/String;

    goto :goto_0

    .line 1813
    :pswitch_4
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1040637

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/AppOpsService;->mPermissonDetailsString:Ljava/lang/String;

    goto :goto_0

    .line 1816
    :pswitch_5
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1040638

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/AppOpsService;->mPermissonDetailsString:Ljava/lang/String;

    goto :goto_0

    .line 1819
    :pswitch_6
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1040639

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/AppOpsService;->mPermissonDetailsString:Ljava/lang/String;

    goto/16 :goto_0

    .line 1822
    :pswitch_7
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x104063a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/AppOpsService;->mPermissonDetailsString:Ljava/lang/String;

    goto/16 :goto_0

    .line 1825
    :pswitch_8
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x104063b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/AppOpsService;->mPermissonDetailsString:Ljava/lang/String;

    .line 1826
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v8, "connectivity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1828
    .local v1, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/AppOpsService;->open:Z

    .line 1829
    iput-boolean v11, p0, Lcom/android/server/AppOpsService;->openOrClose:Z

    goto/16 :goto_0

    .line 1832
    .end local v1           #cm:Landroid/net/ConnectivityManager;
    :pswitch_9
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x104063c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/AppOpsService;->mPermissonDetailsString:Ljava/lang/String;

    .line 1833
    iput-boolean v11, p0, Lcom/android/server/AppOpsService;->openOrClose:Z

    .line 1834
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v8, "wifi"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 1835
    .local v4, mWifiMgr:Landroid/net/wifi/WifiManager;
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/AppOpsService;->open:Z

    goto/16 :goto_0

    .line 1838
    .end local v4           #mWifiMgr:Landroid/net/wifi/WifiManager;
    :pswitch_a
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/AppOpsService;->mPermissonDetailsString:Ljava/lang/String;

    goto/16 :goto_0

    .line 1841
    :pswitch_b
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/AppOpsService;->mPermissonDetailsString:Ljava/lang/String;

    .line 1842
    iput-boolean v11, p0, Lcom/android/server/AppOpsService;->openOrClose:Z

    .line 1843
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "gps"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/AppOpsService;->open:Z

    goto/16 :goto_0

    .line 1847
    :pswitch_c
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x104063e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/AppOpsService;->mPermissonDetailsString:Ljava/lang/String;

    goto/16 :goto_0

    .line 1850
    :pswitch_d
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x104063f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/AppOpsService;->mPermissonDetailsString:Ljava/lang/String;

    goto/16 :goto_0

    .line 1853
    :pswitch_e
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1040640

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/AppOpsService;->mPermissonDetailsString:Ljava/lang/String;

    goto/16 :goto_0

    .line 1856
    :pswitch_f
    iput-boolean v11, p0, Lcom/android/server/AppOpsService;->openOrClose:Z

    .line 1857
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    .line 1858
    .local v3, mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/AppOpsService;->open:Z

    .line 1859
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x104064b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/AppOpsService;->mPermissonDetailsString:Ljava/lang/String;

    goto/16 :goto_0

    .line 1862
    .end local v3           #mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    :pswitch_10
    iput-boolean v11, p0, Lcom/android/server/AppOpsService;->openOrClose:Z

    .line 1863
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 1864
    .local v0, adapter:Landroid/nfc/NfcAdapter;
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_0

    .line 1865
    iput-boolean v11, p0, Lcom/android/server/AppOpsService;->open:Z

    .line 1869
    :goto_3
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x104064c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/AppOpsService;->mPermissonDetailsString:Ljava/lang/String;

    goto/16 :goto_0

    .line 1867
    :cond_0
    iput-boolean v12, p0, Lcom/android/server/AppOpsService;->open:Z

    goto :goto_3

    .line 1872
    .end local v0           #adapter:Landroid/nfc/NfcAdapter;
    :pswitch_11
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x104064d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/AppOpsService;->mPermissonDetailsString:Ljava/lang/String;

    .line 1873
    iput-boolean v11, p0, Lcom/android/server/AppOpsService;->dialogPush:Z

    goto/16 :goto_0

    .line 1881
    :cond_1
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1040646

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 1886
    :cond_2
    iget-boolean v7, p0, Lcom/android/server/AppOpsService;->dialogPush:Z

    if-eqz v7, :cond_3

    .line 1887
    iget-object v5, p0, Lcom/android/server/AppOpsService;->mPermissonDetailsString:Ljava/lang/String;

    goto/16 :goto_2

    .line 1889
    :cond_3
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1040641

    new-array v9, v11, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/android/server/AppOpsService;->mPermissonDetailsString:Ljava/lang/String;

    aput-object v10, v9, v12

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 1802
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_c
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_2
        :pswitch_6
        :pswitch_d
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_11
    .end packed-switch
.end method

.method private needPermissionControl()Z
    .locals 1

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/android/server/AppOpsService;->mFactoryTest:Z

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MeizuSecurity:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 304
    :cond_0
    const/4 v0, 0x0

    .line 306
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private readFactoryTestFile()V
    .locals 2

    .prologue
    .line 271
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/app/factoryTest/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 272
    .local v0, verifyDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/AppOpsService;->mFactoryTest:Z

    .line 275
    :cond_0
    return-void
.end method

.method private removeListOp(Ljava/lang/String;)V
    .locals 7
    .parameter "pkg"

    .prologue
    .line 1975
    sget-object v6, Lcom/android/server/AppOpsService;->mListOp:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1976
    .local v2, iter:Ljava/util/Iterator;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1977
    .local v4, rList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1978
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1979
    .local v0, entry:Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1980
    .local v3, key:Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1981
    .local v5, val:Ljava/lang/String;
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1982
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1986
    .end local v0           #entry:Ljava/util/Map$Entry;
    .end local v3           #key:Ljava/lang/String;
    .end local v5           #val:Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1987
    .restart local v3       #key:Ljava/lang/String;
    sget-object v6, Lcom/android/server/AppOpsService;->mListOp:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1990
    .end local v3           #key:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private removeWindow(ZLandroid/view/View;)V
    .locals 5
    .parameter "limit"
    .parameter "view"

    .prologue
    .line 1496
    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$PushDialogItem;

    .line 1497
    .local v0, item:Lcom/android/server/AppOpsService$PushDialogItem;
    if-eqz v0, :cond_0

    .line 1498
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/android/server/AppOpsService$DialogItem;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_op_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/server/AppOpsService$DialogItem;->opGroup:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1499
    .local v1, mPackageNameStringOp:Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 1500
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1501
    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Lcom/android/server/AppOpsService;->updatePermissionControl(Lcom/android/server/AppOpsService$DialogItem;Z)V

    .line 1507
    :goto_0
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 1508
    .local v2, wm:Landroid/view/WindowManager;
    iget-object v3, v0, Lcom/android/server/AppOpsService$PushDialogItem;->flateView:Landroid/view/View;

    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1514
    .end local v0           #item:Lcom/android/server/AppOpsService$PushDialogItem;
    .end local v1           #mPackageNameStringOp:Ljava/lang/String;
    .end local v2           #wm:Landroid/view/WindowManager;
    :cond_0
    :goto_1
    return-void

    .line 1503
    .restart local v0       #item:Lcom/android/server/AppOpsService$PushDialogItem;
    .restart local v1       #mPackageNameStringOp:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v1, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1504
    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Lcom/android/server/AppOpsService;->updatePermissionControl(Lcom/android/server/AppOpsService$DialogItem;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1510
    .end local v0           #item:Lcom/android/server/AppOpsService$PushDialogItem;
    .end local v1           #mPackageNameStringOp:Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private scheduleWriteLocked()V
    .locals 4

    .prologue
    .line 1057
    iget-boolean v0, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    if-nez v0, :cond_0

    .line 1058
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    .line 1059
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1061
    :cond_0
    return-void
.end method

.method private scheduleWriteNowLocked()V
    .locals 2

    .prologue
    .line 1064
    iget-boolean v0, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    if-nez v0, :cond_0

    .line 1065
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    .line 1067
    :cond_0
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1068
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1069
    return-void
.end method

.method private setDefaultControlPermissions(Landroid/content/pm/PackageInfo;)V
    .locals 51
    .parameter "packageInfo"

    .prologue
    .line 2070
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 2071
    .local v20, listaPermCall:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 2072
    .local v22, listaPermOutGoingCall:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 2073
    .local v21, listaPermCallLog:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 2074
    .local v23, listbPermContacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 2075
    .local v27, listcPermSms:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 2076
    .local v24, listcPermMms:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 2077
    .local v26, listcPermSendSms:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 2079
    .local v25, listcPermSendMms:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 2080
    .local v29, listiPermLocalRecord:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 2081
    .local v31, listiPermPhoneRecord:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 2082
    .local v28, listiPermCamera:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 2084
    .local v30, listiPermNfc:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v33, 0x0

    .line 2085
    .local v33, mContainsCallLog:Z
    const/16 v39, 0x0

    .line 2086
    .local v39, mContainsOutGoingCal:Z
    const/16 v32, 0x0

    .line 2087
    .local v32, mContainsCall:Z
    const/16 v35, 0x0

    .line 2088
    .local v35, mContainsContacts:Z
    const/16 v43, 0x0

    .line 2089
    .local v43, mContainsSms:Z
    const/16 v37, 0x0

    .line 2090
    .local v37, mContainsMms:Z
    const/16 v42, 0x0

    .line 2091
    .local v42, mContainsSendSms:Z
    const/16 v41, 0x0

    .line 2093
    .local v41, mContainsSendMms:Z
    const/16 v36, 0x0

    .line 2094
    .local v36, mContainsLocalRecord:Z
    const/16 v40, 0x0

    .line 2095
    .local v40, mContainsPhoneRecord:Z
    const/16 v34, 0x0

    .line 2097
    .local v34, mContainsCamera:Z
    const/16 v38, 0x0

    .line 2100
    .local v38, mContainsNfc:Z
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2101
    .local v9, listCallLog:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v49, Landroid/app/AppOpsManager;->mOpPhoneReadCallLog:[I

    move-object/from16 v0, v49

    array-length v5, v0

    .line 2102
    .local v5, N:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v5, :cond_1

    .line 2103
    sget-object v49, Landroid/app/AppOpsManager;->mOpPhoneReadCallLog:[I

    aget v49, v49, v7

    invoke-static/range {v49 .. v49}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v44

    .line 2105
    .local v44, perm:Ljava/lang/String;
    if-eqz v44, :cond_0

    .line 2106
    move-object/from16 v0, v44

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2102
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2109
    .end local v44           #perm:Ljava/lang/String;
    :cond_1
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 2110
    .local v15, listOutGoingCall:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v49, Landroid/app/AppOpsManager;->mOpPhoneOutGoingCall:[I

    move-object/from16 v0, v49

    array-length v5, v0

    .line 2111
    const/4 v7, 0x0

    :goto_1
    if-ge v7, v5, :cond_3

    .line 2112
    sget-object v49, Landroid/app/AppOpsManager;->mOpPhoneOutGoingCall:[I

    aget v49, v49, v7

    invoke-static/range {v49 .. v49}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v44

    .line 2114
    .restart local v44       #perm:Ljava/lang/String;
    if-eqz v44, :cond_2

    .line 2115
    move-object/from16 v0, v44

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2111
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2119
    .end local v44           #perm:Ljava/lang/String;
    :cond_3
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2120
    .local v8, listCall:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v49, Landroid/app/AppOpsManager;->mOpPhoneCall:[I

    move-object/from16 v0, v49

    array-length v5, v0

    .line 2121
    const/4 v7, 0x0

    :goto_2
    if-ge v7, v5, :cond_5

    .line 2122
    sget-object v49, Landroid/app/AppOpsManager;->mOpPhoneCall:[I

    aget v49, v49, v7

    invoke-static/range {v49 .. v49}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v44

    .line 2124
    .restart local v44       #perm:Ljava/lang/String;
    if-eqz v44, :cond_4

    .line 2125
    move-object/from16 v0, v44

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2121
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 2129
    .end local v44           #perm:Ljava/lang/String;
    :cond_5
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2130
    .local v11, listContacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v49, Landroid/app/AppOpsManager;->mOpReadContacts:[I

    move-object/from16 v0, v49

    array-length v5, v0

    .line 2131
    const/4 v7, 0x0

    :goto_3
    if-ge v7, v5, :cond_7

    .line 2132
    sget-object v49, Landroid/app/AppOpsManager;->mOpReadContacts:[I

    aget v49, v49, v7

    invoke-static/range {v49 .. v49}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v44

    .line 2134
    .restart local v44       #perm:Ljava/lang/String;
    if-eqz v44, :cond_6

    .line 2135
    move-object/from16 v0, v44

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2131
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 2139
    .end local v44           #perm:Ljava/lang/String;
    :cond_7
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 2140
    .local v19, listSms:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v49, Landroid/app/AppOpsManager;->mOpReadSms:[I

    move-object/from16 v0, v49

    array-length v5, v0

    .line 2141
    const/4 v7, 0x0

    :goto_4
    if-ge v7, v5, :cond_9

    .line 2142
    sget-object v49, Landroid/app/AppOpsManager;->mOpReadSms:[I

    aget v49, v49, v7

    invoke-static/range {v49 .. v49}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v44

    .line 2144
    .restart local v44       #perm:Ljava/lang/String;
    if-eqz v44, :cond_8

    .line 2145
    move-object/from16 v0, v19

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2141
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 2148
    .end local v44           #perm:Ljava/lang/String;
    :cond_9
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 2149
    .local v18, listSendSms:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v49, Landroid/app/AppOpsManager;->mOpSendSms:[I

    move-object/from16 v0, v49

    array-length v5, v0

    .line 2150
    const/4 v7, 0x0

    :goto_5
    if-ge v7, v5, :cond_b

    .line 2151
    sget-object v49, Landroid/app/AppOpsManager;->mOpSendSms:[I

    aget v49, v49, v7

    invoke-static/range {v49 .. v49}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v44

    .line 2153
    .restart local v44       #perm:Ljava/lang/String;
    if-eqz v44, :cond_a

    .line 2154
    move-object/from16 v0, v18

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2150
    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 2157
    .end local v44           #perm:Ljava/lang/String;
    :cond_b
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 2158
    .local v13, listMms:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v49, Landroid/app/AppOpsManager;->mOpReadMms:[I

    move-object/from16 v0, v49

    array-length v5, v0

    .line 2159
    const/4 v7, 0x0

    :goto_6
    if-ge v7, v5, :cond_d

    .line 2160
    sget-object v49, Landroid/app/AppOpsManager;->mOpReadMms:[I

    aget v49, v49, v7

    invoke-static/range {v49 .. v49}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v44

    .line 2162
    .restart local v44       #perm:Ljava/lang/String;
    if-eqz v44, :cond_c

    .line 2163
    move-object/from16 v0, v44

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2159
    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 2166
    .end local v44           #perm:Ljava/lang/String;
    :cond_d
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 2167
    .local v17, listSendMms:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v49, Landroid/app/AppOpsManager;->mOpSendMms:[I

    move-object/from16 v0, v49

    array-length v5, v0

    .line 2168
    const/4 v7, 0x0

    :goto_7
    if-ge v7, v5, :cond_f

    .line 2169
    sget-object v49, Landroid/app/AppOpsManager;->mOpSendMms:[I

    aget v49, v49, v7

    invoke-static/range {v49 .. v49}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v44

    .line 2171
    .restart local v44       #perm:Ljava/lang/String;
    if-eqz v44, :cond_e

    .line 2172
    move-object/from16 v0, v17

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2168
    :cond_e
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 2175
    .end local v44           #perm:Ljava/lang/String;
    :cond_f
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 2176
    .local v12, listLocalRecord:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v49, Landroid/app/AppOpsManager;->mOpRecordAudio:[I

    move-object/from16 v0, v49

    array-length v5, v0

    .line 2177
    const/4 v7, 0x0

    :goto_8
    if-ge v7, v5, :cond_11

    .line 2178
    sget-object v49, Landroid/app/AppOpsManager;->mOpRecordAudio:[I

    aget v49, v49, v7

    invoke-static/range {v49 .. v49}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v44

    .line 2180
    .restart local v44       #perm:Ljava/lang/String;
    if-eqz v44, :cond_10

    .line 2181
    move-object/from16 v0, v44

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2177
    :cond_10
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 2184
    .end local v44           #perm:Ljava/lang/String;
    :cond_11
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 2185
    .local v16, listPhoneRecord:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v49, Landroid/app/AppOpsManager;->mOpRecordAudioPhone:[I

    move-object/from16 v0, v49

    array-length v5, v0

    .line 2186
    const/4 v7, 0x0

    :goto_9
    if-ge v7, v5, :cond_13

    .line 2187
    sget-object v49, Landroid/app/AppOpsManager;->mOpRecordAudioPhone:[I

    aget v49, v49, v7

    invoke-static/range {v49 .. v49}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v44

    .line 2189
    .restart local v44       #perm:Ljava/lang/String;
    if-eqz v44, :cond_12

    .line 2190
    move-object/from16 v0, v16

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2186
    :cond_12
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 2193
    .end local v44           #perm:Ljava/lang/String;
    :cond_13
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2194
    .local v10, listCamera:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v49, Landroid/app/AppOpsManager;->mOpCamera:[I

    move-object/from16 v0, v49

    array-length v5, v0

    .line 2195
    const/4 v7, 0x0

    :goto_a
    if-ge v7, v5, :cond_15

    .line 2196
    sget-object v49, Landroid/app/AppOpsManager;->mOpCamera:[I

    aget v49, v49, v7

    invoke-static/range {v49 .. v49}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v44

    .line 2198
    .restart local v44       #perm:Ljava/lang/String;
    if-eqz v44, :cond_14

    .line 2199
    move-object/from16 v0, v44

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2195
    :cond_14
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    .line 2203
    .end local v44           #perm:Ljava/lang/String;
    :cond_15
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 2204
    .local v14, listNfc:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v49, Landroid/app/AppOpsManager;->mOpNFC:[I

    move-object/from16 v0, v49

    array-length v5, v0

    .line 2205
    const/4 v7, 0x0

    :goto_b
    if-ge v7, v5, :cond_17

    .line 2206
    sget-object v49, Landroid/app/AppOpsManager;->mOpNFC:[I

    aget v49, v49, v7

    invoke-static/range {v49 .. v49}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v44

    .line 2208
    .restart local v44       #perm:Ljava/lang/String;
    if-eqz v44, :cond_16

    .line 2209
    move-object/from16 v0, v44

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2205
    :cond_16
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    .line 2213
    .end local v44           #perm:Ljava/lang/String;
    :cond_17
    if-eqz p1, :cond_22

    .line 2214
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    move-object/from16 v47, v0

    .line 2216
    .local v47, strList:[Ljava/lang/String;
    if-eqz v47, :cond_22

    .line 2217
    const/4 v7, 0x0

    :goto_c
    move-object/from16 v0, v47

    array-length v0, v0

    move/from16 v49, v0

    move/from16 v0, v49

    if-ge v7, v0, :cond_22

    .line 2218
    aget-object v45, v47, v7

    .line 2219
    .local v45, permName:Ljava/lang/String;
    move-object/from16 v0, v45

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_19

    .line 2220
    const/16 v33, 0x1

    .line 2221
    move-object/from16 v0, v21

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2217
    :cond_18
    :goto_d
    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    .line 2222
    :cond_19
    move-object/from16 v0, v45

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_1a

    .line 2223
    const/16 v39, 0x1

    .line 2224
    move-object/from16 v0, v22

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 2225
    :cond_1a
    move-object/from16 v0, v45

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_1b

    .line 2226
    const/16 v32, 0x1

    .line 2227
    move-object/from16 v0, v20

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 2228
    :cond_1b
    move-object/from16 v0, v45

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_1c

    .line 2229
    const/16 v35, 0x1

    .line 2230
    move-object/from16 v0, v23

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 2231
    :cond_1c
    move-object/from16 v0, v19

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_1d

    .line 2232
    const/16 v43, 0x1

    .line 2233
    move-object/from16 v0, v27

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2234
    const/16 v37, 0x1

    .line 2235
    move-object/from16 v0, v24

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 2236
    :cond_1d
    move-object/from16 v0, v18

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_1e

    .line 2237
    const/16 v42, 0x1

    .line 2238
    move-object/from16 v0, v26

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2239
    const/16 v41, 0x1

    .line 2240
    move-object/from16 v0, v25

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 2241
    :cond_1e
    move-object/from16 v0, v45

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_1f

    .line 2242
    const/16 v36, 0x1

    .line 2243
    move-object/from16 v0, v29

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2244
    const/16 v40, 0x1

    .line 2245
    move-object/from16 v0, v31

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 2246
    :cond_1f
    move-object/from16 v0, v16

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_20

    .line 2247
    const/16 v40, 0x1

    .line 2248
    move-object/from16 v0, v31

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 2249
    :cond_20
    move-object/from16 v0, v45

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_21

    .line 2250
    const/16 v34, 0x1

    .line 2251
    move-object/from16 v0, v28

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 2252
    :cond_21
    move-object/from16 v0, v45

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_18

    .line 2253
    const/16 v38, 0x1

    .line 2254
    move-object/from16 v0, v30

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 2259
    .end local v45           #permName:Ljava/lang/String;
    .end local v47           #strList:[Ljava/lang/String;
    :cond_22
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v46, v0

    .line 2260
    .local v46, pkgName:Ljava/lang/String;
    const/16 v48, -0x1

    .line 2262
    .local v48, uid:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v49

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v50

    move-object/from16 v0, v49

    move-object/from16 v1, v46

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v48

    .line 2270
    :goto_e
    if-eqz v33, :cond_23

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v49

    if-lez v49, :cond_23

    .line 2271
    sget-object v49, Landroid/app/AppOpsManager;->mOpPhoneReadCallLog:[I

    move-object/from16 v0, v49

    array-length v5, v0

    .line 2272
    const/4 v7, 0x0

    :goto_f
    if-ge v7, v5, :cond_23

    .line 2273
    sget-object v49, Landroid/app/AppOpsManager;->mOpPhoneReadCallLog:[I

    aget v49, v49, v7

    const/16 v50, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v49

    move/from16 v2, v48

    move-object/from16 v3, v46

    move/from16 v4, v50

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/AppOpsService;->setMode(IILjava/lang/String;I)V

    .line 2272
    add-int/lit8 v7, v7, 0x1

    goto :goto_f

    .line 2264
    :catch_0
    move-exception v6

    .line 2267
    .local v6, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_e

    .line 2277
    .end local v6           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_23
    if-eqz v39, :cond_24

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v49

    if-lez v49, :cond_24

    .line 2278
    sget-object v49, Landroid/app/AppOpsManager;->mOpPhoneOutGoingCall:[I

    move-object/from16 v0, v49

    array-length v5, v0

    .line 2279
    const/4 v7, 0x0

    :goto_10
    if-ge v7, v5, :cond_24

    .line 2280
    sget-object v49, Landroid/app/AppOpsManager;->mOpPhoneOutGoingCall:[I

    aget v49, v49, v7

    const/16 v50, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v49

    move/from16 v2, v48

    move-object/from16 v3, v46

    move/from16 v4, v50

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/AppOpsService;->setMode(IILjava/lang/String;I)V

    .line 2279
    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    .line 2285
    :cond_24
    if-eqz v32, :cond_25

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v49

    if-lez v49, :cond_25

    .line 2286
    sget-object v49, Landroid/app/AppOpsManager;->mOpPhoneCall:[I

    move-object/from16 v0, v49

    array-length v5, v0

    .line 2287
    const/4 v7, 0x0

    :goto_11
    if-ge v7, v5, :cond_25

    .line 2288
    sget-object v49, Landroid/app/AppOpsManager;->mOpPhoneCall:[I

    aget v49, v49, v7

    const/16 v50, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v49

    move/from16 v2, v48

    move-object/from16 v3, v46

    move/from16 v4, v50

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/AppOpsService;->setMode(IILjava/lang/String;I)V

    .line 2287
    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    .line 2292
    :cond_25
    if-eqz v35, :cond_26

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v49

    if-lez v49, :cond_26

    .line 2293
    sget-object v49, Landroid/app/AppOpsManager;->mOpReadContacts:[I

    move-object/from16 v0, v49

    array-length v5, v0

    .line 2294
    const/4 v7, 0x0

    :goto_12
    if-ge v7, v5, :cond_26

    .line 2295
    sget-object v49, Landroid/app/AppOpsManager;->mOpReadContacts:[I

    aget v49, v49, v7

    const/16 v50, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v49

    move/from16 v2, v48

    move-object/from16 v3, v46

    move/from16 v4, v50

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/AppOpsService;->setMode(IILjava/lang/String;I)V

    .line 2294
    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    .line 2299
    :cond_26
    if-eqz v43, :cond_27

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v49

    if-lez v49, :cond_27

    .line 2300
    sget-object v49, Landroid/app/AppOpsManager;->mOpReadSms:[I

    move-object/from16 v0, v49

    array-length v5, v0

    .line 2301
    const/4 v7, 0x0

    :goto_13
    if-ge v7, v5, :cond_27

    .line 2302
    sget-object v49, Landroid/app/AppOpsManager;->mOpReadSms:[I

    aget v49, v49, v7

    const/16 v50, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v49

    move/from16 v2, v48

    move-object/from16 v3, v46

    move/from16 v4, v50

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/AppOpsService;->setMode(IILjava/lang/String;I)V

    .line 2301
    add-int/lit8 v7, v7, 0x1

    goto :goto_13

    .line 2306
    :cond_27
    if-eqz v42, :cond_28

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v49

    if-lez v49, :cond_28

    .line 2307
    sget-object v49, Landroid/app/AppOpsManager;->mOpSendSms:[I

    move-object/from16 v0, v49

    array-length v5, v0

    .line 2308
    const/4 v7, 0x0

    :goto_14
    if-ge v7, v5, :cond_28

    .line 2309
    sget-object v49, Landroid/app/AppOpsManager;->mOpSendSms:[I

    aget v49, v49, v7

    const/16 v50, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v49

    move/from16 v2, v48

    move-object/from16 v3, v46

    move/from16 v4, v50

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/AppOpsService;->setMode(IILjava/lang/String;I)V

    .line 2308
    add-int/lit8 v7, v7, 0x1

    goto :goto_14

    .line 2313
    :cond_28
    if-eqz v37, :cond_29

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v49

    if-lez v49, :cond_29

    .line 2314
    sget-object v49, Landroid/app/AppOpsManager;->mOpReadMms:[I

    move-object/from16 v0, v49

    array-length v5, v0

    .line 2315
    const/4 v7, 0x0

    :goto_15
    if-ge v7, v5, :cond_29

    .line 2316
    sget-object v49, Landroid/app/AppOpsManager;->mOpReadMms:[I

    aget v49, v49, v7

    const/16 v50, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v49

    move/from16 v2, v48

    move-object/from16 v3, v46

    move/from16 v4, v50

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/AppOpsService;->setMode(IILjava/lang/String;I)V

    .line 2315
    add-int/lit8 v7, v7, 0x1

    goto :goto_15

    .line 2320
    :cond_29
    if-eqz v41, :cond_2a

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v49

    if-lez v49, :cond_2a

    .line 2321
    sget-object v49, Landroid/app/AppOpsManager;->mOpSendMms:[I

    move-object/from16 v0, v49

    array-length v5, v0

    .line 2322
    const/4 v7, 0x0

    :goto_16
    if-ge v7, v5, :cond_2a

    .line 2323
    sget-object v49, Landroid/app/AppOpsManager;->mOpSendMms:[I

    aget v49, v49, v7

    const/16 v50, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v49

    move/from16 v2, v48

    move-object/from16 v3, v46

    move/from16 v4, v50

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/AppOpsService;->setMode(IILjava/lang/String;I)V

    .line 2322
    add-int/lit8 v7, v7, 0x1

    goto :goto_16

    .line 2327
    :cond_2a
    if-eqz v36, :cond_2b

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v49

    if-lez v49, :cond_2b

    .line 2328
    sget-object v49, Landroid/app/AppOpsManager;->mOpRecordAudio:[I

    move-object/from16 v0, v49

    array-length v5, v0

    .line 2329
    const/4 v7, 0x0

    :goto_17
    if-ge v7, v5, :cond_2b

    .line 2330
    sget-object v49, Landroid/app/AppOpsManager;->mOpRecordAudio:[I

    aget v49, v49, v7

    const/16 v50, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v49

    move/from16 v2, v48

    move-object/from16 v3, v46

    move/from16 v4, v50

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/AppOpsService;->setMode(IILjava/lang/String;I)V

    .line 2329
    add-int/lit8 v7, v7, 0x1

    goto :goto_17

    .line 2334
    :cond_2b
    if-eqz v40, :cond_2c

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v49

    if-lez v49, :cond_2c

    .line 2335
    sget-object v49, Landroid/app/AppOpsManager;->mOpRecordAudioPhone:[I

    move-object/from16 v0, v49

    array-length v5, v0

    .line 2336
    const/4 v7, 0x0

    :goto_18
    if-ge v7, v5, :cond_2c

    .line 2337
    sget-object v49, Landroid/app/AppOpsManager;->mOpRecordAudioPhone:[I

    aget v49, v49, v7

    const/16 v50, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v49

    move/from16 v2, v48

    move-object/from16 v3, v46

    move/from16 v4, v50

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/AppOpsService;->setMode(IILjava/lang/String;I)V

    .line 2336
    add-int/lit8 v7, v7, 0x1

    goto :goto_18

    .line 2342
    :cond_2c
    if-eqz v34, :cond_2d

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v49

    if-lez v49, :cond_2d

    .line 2343
    sget-object v49, Landroid/app/AppOpsManager;->mOpCamera:[I

    move-object/from16 v0, v49

    array-length v5, v0

    .line 2344
    const/4 v7, 0x0

    :goto_19
    if-ge v7, v5, :cond_2d

    .line 2345
    sget-object v49, Landroid/app/AppOpsManager;->mOpCamera:[I

    aget v49, v49, v7

    const/16 v50, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v49

    move/from16 v2, v48

    move-object/from16 v3, v46

    move/from16 v4, v50

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/AppOpsService;->setMode(IILjava/lang/String;I)V

    .line 2344
    add-int/lit8 v7, v7, 0x1

    goto :goto_19

    .line 2352
    :cond_2d
    sget-object v49, Landroid/app/AppOpsManager;->mOpNFC:[I

    move-object/from16 v0, v49

    array-length v5, v0

    .line 2353
    const/4 v7, 0x0

    :goto_1a
    if-ge v7, v5, :cond_2e

    .line 2354
    sget-object v49, Landroid/app/AppOpsManager;->mOpNFC:[I

    aget v49, v49, v7

    const/16 v50, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v49

    move/from16 v2, v48

    move-object/from16 v3, v46

    move/from16 v4, v50

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/AppOpsService;->setMode(IILjava/lang/String;I)V

    .line 2353
    add-int/lit8 v7, v7, 0x1

    goto :goto_1a

    .line 2359
    :cond_2e
    return-void
.end method

.method private setStatus(Lcom/android/server/AppOpsService$DialogItem;)V
    .locals 11
    .parameter "item"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2029
    iget v9, p1, Lcom/android/server/AppOpsService$DialogItem;->opGroup:I

    const/4 v10, 0x3

    if-eq v9, v10, :cond_0

    iget v9, p1, Lcom/android/server/AppOpsService$DialogItem;->opGroup:I

    const/16 v10, 0x16

    if-ne v9, v10, :cond_1

    .line 2031
    :cond_0
    iget v9, p1, Lcom/android/server/AppOpsService$DialogItem;->opGroup:I

    sparse-switch v9, :sswitch_data_0

    .line 2068
    :cond_1
    :goto_0
    return-void

    .line 2033
    :sswitch_0
    iget-object v9, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v10, "connectivity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 2036
    .local v1, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v9

    if-nez v9, :cond_2

    :goto_1
    invoke-virtual {v1, v7}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto :goto_0

    :cond_2
    move v7, v8

    goto :goto_1

    .line 2039
    .end local v1           #cm:Landroid/net/ConnectivityManager;
    :sswitch_1
    iget-object v9, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v10, "wifi"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 2041
    .local v4, mWifiMgr:Landroid/net/wifi/WifiManager;
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v9

    if-nez v9, :cond_3

    :goto_2
    invoke-virtual {v4, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_0

    :cond_3
    move v7, v8

    goto :goto_2

    .line 2044
    .end local v4           #mWifiMgr:Landroid/net/wifi/WifiManager;
    :sswitch_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    .line 2045
    .local v3, mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    .line 2046
    .local v2, enable:Z
    if-nez v2, :cond_4

    .line 2047
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    goto :goto_0

    .line 2049
    :cond_4
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_0

    .line 2054
    .end local v2           #enable:Z
    .end local v3           #mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    :sswitch_3
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 2055
    .local v0, adapter:Landroid/nfc/NfcAdapter;
    goto :goto_0

    .line 2057
    .end local v0           #adapter:Landroid/nfc/NfcAdapter;
    :sswitch_4
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "gps"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v5

    .line 2059
    .local v5, open:Z
    if-eqz v5, :cond_5

    const-string v6, "-gps"

    .line 2060
    .local v6, provider:Ljava/lang/String;
    :goto_3
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "location_providers_allowed"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-static {v7, v8, v6, v9}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    .line 2059
    .end local v6           #provider:Ljava/lang/String;
    :cond_5
    const-string v6, "+gps"

    goto :goto_3

    .line 2031
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
        0xd -> :sswitch_3
        0x16 -> :sswitch_4
    .end sparse-switch
.end method

.method private showSettingDialog(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v12, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1387
    const-string v1, "AppOps"

    const-string v2, "onReceive---showSettingDialog!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    new-instance v9, Lcom/android/server/AppOpsService$3;

    invoke-direct {v9, p0}, Lcom/android/server/AppOpsService$3;-><init>(Lcom/android/server/AppOpsService;)V

    .line 1401
    .local v9, listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v8, Landroid/app/AlertDialog$Builder;

    const v1, 0x103030f

    invoke-direct {v8, p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1402
    .local v8, b:Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mPackageLabel:Ljava/lang/String;

    invoke-direct {p0, p2, v1}, Lcom/android/server/AppOpsService;->getPermissonTypeDetails(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1403
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->checkStatusEquals()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1448
    :cond_0
    :goto_0
    return-void

    .line 1406
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/AppOpsService;->dialogPush:Z

    if-eqz v1, :cond_3

    .line 1407
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104064e

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/AppOpsService;->mPackageLabel:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1408
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104064f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1409
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040650

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1425
    :goto_1
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 1426
    .local v3, d:Landroid/app/AlertDialog;
    iget-object v1, p0, Lcom/android/server/AppOpsService;->dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v3, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1427
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7e0

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 1428
    iget-boolean v1, p0, Lcom/android/server/AppOpsService;->dialogPush:Z

    if-eqz v1, :cond_2

    .line 1429
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    .line 1430
    .local v10, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x50

    iput v1, v10, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1431
    iput v6, v10, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1432
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1437
    .end local v10           #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_2
    invoke-virtual {v3, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1438
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 1439
    new-instance v0, Lcom/android/server/AppOpsService$DialogItem;

    iget v2, p0, Lcom/android/server/AppOpsService;->code:I

    iget v4, p0, Lcom/android/server/AppOpsService;->opGroup:I

    iget v5, p0, Lcom/android/server/AppOpsService;->uid:I

    iget-object v6, p0, Lcom/android/server/AppOpsService;->pkg:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/android/server/AppOpsService;->openOrClose:Z

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/AppOpsService$DialogItem;-><init>(Lcom/android/server/AppOpsService;ILandroid/app/AlertDialog;IILjava/lang/String;Z)V

    .line 1440
    .local v0, item:Lcom/android/server/AppOpsService$DialogItem;
    iget-object v1, p0, Lcom/android/server/AppOpsService;->dialogList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1441
    iget-boolean v1, p0, Lcom/android/server/AppOpsService;->dialogPush:Z

    if-nez v1, :cond_0

    .line 1442
    new-instance v11, Landroid/os/Message;

    invoke-direct {v11}, Landroid/os/Message;-><init>()V

    .line 1443
    .local v11, message:Landroid/os/Message;
    iput v12, v11, Landroid/os/Message;->what:I

    .line 1444
    iput-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1445
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mPhHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x4fb0

    invoke-virtual {v1, v11, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1410
    .end local v0           #item:Lcom/android/server/AppOpsService$DialogItem;
    .end local v3           #d:Landroid/app/AlertDialog;
    .end local v11           #message:Landroid/os/Message;
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/AppOpsService;->openOrClose:Z

    if-nez v1, :cond_4

    .line 1411
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040642

    new-array v4, v12, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/AppOpsService;->mPackageLabel:Ljava/lang/String;

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/android/server/AppOpsService;->mPermissonDetailsString:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1412
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040648

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1413
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040649

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 1415
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/AppOpsService;->open:Z

    if-eqz v1, :cond_5

    .line 1416
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040645

    new-array v4, v12, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/AppOpsService;->mPackageLabel:Ljava/lang/String;

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/android/server/AppOpsService;->mPermissonDetailsString:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1421
    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104044a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1422
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104064a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 1418
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040644

    new-array v4, v12, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/AppOpsService;->mPackageLabel:Ljava/lang/String;

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/android/server/AppOpsService;->mPermissonDetailsString:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_2
.end method

.method private showToastMessage(Landroid/content/Intent;)V
    .locals 13
    .parameter "intent"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, -0x1

    .line 1550
    iget-object v8, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v9, "appops"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    .line 1552
    .local v3, mAppOps:Landroid/app/AppOpsManager;
    if-nez v3, :cond_1

    .line 1604
    :cond_0
    :goto_0
    return-void

    .line 1555
    :cond_1
    const-string v8, "code"

    invoke-virtual {p1, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/android/server/AppOpsService;->code:I

    .line 1556
    const-string v8, "uid"

    invoke-virtual {p1, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/android/server/AppOpsService;->uid:I

    .line 1557
    const-string v8, "pkg"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/AppOpsService;->pkg:Ljava/lang/String;

    .line 1558
    const-string v8, "result"

    invoke-virtual {p1, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/android/server/AppOpsService;->result:I

    .line 1559
    const-string v8, "enable"

    invoke-virtual {p1, v8, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/server/AppOpsService;->enable:Z

    .line 1560
    const-string v2, ""

    .line 1561
    .local v2, label:Ljava/lang/String;
    const-string v5, ""

    .line 1562
    .local v5, perM:Ljava/lang/String;
    iget v8, p0, Lcom/android/server/AppOpsService;->code:I

    invoke-virtual {v3, v8}, Landroid/app/AppOpsManager;->getPermissionGroupOp(I)I

    move-result v4

    .line 1563
    .local v4, opgroup:I
    if-eq v4, v10, :cond_0

    .line 1566
    iput v4, p0, Lcom/android/server/AppOpsService;->opGroup:I

    .line 1567
    iget-object v8, p0, Lcom/android/server/AppOpsService;->pkg:Ljava/lang/String;

    iput-object v8, p0, Lcom/android/server/AppOpsService;->mPackageNameString:Ljava/lang/String;

    .line 1568
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/server/AppOpsService;->pkg:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_op_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/AppOpsService;->mPackageNameStringOp:Ljava/lang/String;

    .line 1569
    iget-object v8, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/AppOpsService;->mPackageNameStringOp:Ljava/lang/String;

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 1570
    .local v7, value:I
    const-string v8, "AppOps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "code: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/AppOpsService;->code:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "uid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/AppOpsService;->uid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " pkg: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/AppOpsService;->pkg:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " result: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/AppOpsService;->result:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " groupop: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mPackageNameString :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/AppOpsService;->mPackageNameString:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " value: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    iget v8, p0, Lcom/android/server/AppOpsService;->code:I

    iget v9, p0, Lcom/android/server/AppOpsService;->uid:I

    iget-object v10, p0, Lcom/android/server/AppOpsService;->pkg:Ljava/lang/String;

    invoke-direct {p0, v8, v4, v9, v10}, Lcom/android/server/AppOpsService;->checkDialogList(IIILjava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1575
    if-ne v7, v12, :cond_2

    sget-object v8, Lcom/android/server/AppOpsService;->mListOp:Ljava/util/HashMap;

    iget-object v9, p0, Lcom/android/server/AppOpsService;->mPackageNameStringOp:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    const/4 v8, 0x3

    if-eq v4, v8, :cond_3

    const/4 v8, 0x4

    if-eq v4, v8, :cond_3

    const/16 v8, 0x8

    if-eq v4, v8, :cond_3

    const/16 v8, 0x16

    if-eq v4, v8, :cond_3

    const/16 v8, 0xd

    if-eq v4, v8, :cond_3

    const/4 v8, 0x7

    if-ne v4, v8, :cond_0

    .line 1578
    :cond_3
    const/4 v1, 0x0

    .line 1580
    .local v1, info:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v8, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/AppOpsService;->pkg:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1585
    :goto_1
    const-string v8, "AppOps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "info: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    if-eqz v1, :cond_4

    .line 1587
    iget-object v8, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1590
    :cond_4
    :try_start_1
    sget-object v8, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    iget v9, p0, Lcom/android/server/AppOpsService;->code:I

    aget-object v6, v8, v9

    .line 1591
    .local v6, perm:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 1592
    iput-object v2, p0, Lcom/android/server/AppOpsService;->mPackageLabel:Ljava/lang/String;

    .line 1593
    sget-object v8, Lcom/android/server/AppOpsService;->mListOp:Ljava/util/HashMap;

    iget-object v9, p0, Lcom/android/server/AppOpsService;->mPackageNameStringOp:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/server/AppOpsService;->mPackageNameString:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1595
    iget-object v8, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v8, p1}, Lcom/android/server/AppOpsService;->showSettingDialog(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1597
    .end local v6           #perm:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1598
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 1581
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1583
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private update(Landroid/content/DialogInterface;ZZ)V
    .locals 11
    .parameter "dialog"
    .parameter "postive"
    .parameter "dimiss"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1346
    const/4 v2, 0x0

    .line 1347
    .local v2, item:Lcom/android/server/AppOpsService$DialogItem;
    iget-object v5, p0, Lcom/android/server/AppOpsService;->dialogList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$DialogItem;

    .line 1348
    .local v0, aDialgItem:Lcom/android/server/AppOpsService$DialogItem;
    iget-object v5, v0, Lcom/android/server/AppOpsService$DialogItem;->dialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/android/server/AppOpsService$DialogItem;->dialog:Landroid/app/AlertDialog;

    if-eq v5, p1, :cond_1

    iget-object v5, v0, Lcom/android/server/AppOpsService$DialogItem;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1350
    :cond_1
    const-string v5, "AppOps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive---BUTTON_POSITIVE!!!  aDialgItem.pkg: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/AppOpsService$DialogItem;->pkg:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/android/server/AppOpsService$DialogItem;->opGroup:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    move-object v2, v0

    .line 1357
    .end local v0           #aDialgItem:Lcom/android/server/AppOpsService$DialogItem;
    :cond_2
    if-eqz v2, :cond_3

    .line 1358
    if-eqz p2, :cond_4

    .line 1359
    invoke-direct {p0, v2}, Lcom/android/server/AppOpsService;->setStatus(Lcom/android/server/AppOpsService$DialogItem;)V

    .line 1360
    iget-object v5, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v2, Lcom/android/server/AppOpsService$DialogItem;->pkg:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_op_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/android/server/AppOpsService$DialogItem;->opGroup:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1362
    invoke-direct {p0, v2, v8}, Lcom/android/server/AppOpsService;->updatePermissionControl(Lcom/android/server/AppOpsService$DialogItem;Z)V

    .line 1385
    :cond_3
    :goto_0
    return-void

    .line 1364
    :cond_4
    if-eqz p3, :cond_6

    .line 1365
    iget-object v5, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v2, Lcom/android/server/AppOpsService$DialogItem;->pkg:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_op_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/android/server/AppOpsService$DialogItem;->opGroup:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 1367
    .local v4, res:I
    if-ne v4, v10, :cond_5

    .line 1368
    iget-object v5, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v2, Lcom/android/server/AppOpsService$DialogItem;->pkg:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_op_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/android/server/AppOpsService$DialogItem;->opGroup:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 1370
    :cond_5
    iget-boolean v5, v2, Lcom/android/server/AppOpsService$DialogItem;->openOrClose:Z

    if-eqz v5, :cond_3

    .line 1371
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 1372
    .local v3, message:Landroid/os/Message;
    iput v8, v3, Landroid/os/Message;->what:I

    .line 1373
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Lcom/android/server/AppOpsService$DialogItem;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_op_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/android/server/AppOpsService$DialogItem;->opGroup:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1375
    iget-object v5, p0, Lcom/android/server/AppOpsService;->mPhHandler:Landroid/os/Handler;

    const-wide/16 v6, 0xbb8

    invoke-virtual {v5, v3, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1378
    .end local v3           #message:Landroid/os/Message;
    .end local v4           #res:I
    :cond_6
    invoke-direct {p0, v2, v9}, Lcom/android/server/AppOpsService;->updatePermissionControl(Lcom/android/server/AppOpsService$DialogItem;Z)V

    .line 1379
    iget-object v5, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v2, Lcom/android/server/AppOpsService$DialogItem;->pkg:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_op_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/android/server/AppOpsService$DialogItem;->opGroup:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method

.method private updateDialogList(Lcom/android/server/AppOpsService$DialogItem;)V
    .locals 7
    .parameter "item"

    .prologue
    const/4 v6, 0x0

    .line 1517
    iget-object v4, p0, Lcom/android/server/AppOpsService;->dialogList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$DialogItem;

    .line 1518
    .local v0, aDialgItem:Lcom/android/server/AppOpsService$DialogItem;
    iget v4, p1, Lcom/android/server/AppOpsService$DialogItem;->code:I

    iget v5, v0, Lcom/android/server/AppOpsService$DialogItem;->code:I

    if-ne v4, v5, :cond_0

    iget v4, p1, Lcom/android/server/AppOpsService$DialogItem;->opGroup:I

    iget v5, v0, Lcom/android/server/AppOpsService$DialogItem;->opGroup:I

    if-ne v4, v5, :cond_0

    iget v4, p1, Lcom/android/server/AppOpsService$DialogItem;->uid:I

    iget v5, v0, Lcom/android/server/AppOpsService$DialogItem;->uid:I

    if-ne v4, v5, :cond_0

    iget-object v4, p1, Lcom/android/server/AppOpsService$DialogItem;->pkg:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/server/AppOpsService$DialogItem;->pkg:Ljava/lang/String;

    if-ne v4, v5, :cond_0

    .line 1520
    iget-object v4, v0, Lcom/android/server/AppOpsService$DialogItem;->dialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/android/server/AppOpsService$DialogItem;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1521
    iget-object v4, v0, Lcom/android/server/AppOpsService$DialogItem;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 1522
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/android/server/AppOpsService$DialogItem;->pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_op_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/android/server/AppOpsService$DialogItem;->opGroup:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1523
    .local v2, mPackageNameStringOp:Ljava/lang/String;
    sget-object v4, Lcom/android/server/AppOpsService;->mListOp:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1524
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v2, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1525
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 1526
    .local v3, message:Landroid/os/Message;
    iput v6, v3, Landroid/os/Message;->what:I

    .line 1527
    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1528
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mPhHandler:Landroid/os/Handler;

    const-wide/16 v5, 0xbb8

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1530
    .end local v2           #mPackageNameStringOp:Ljava/lang/String;
    .end local v3           #message:Landroid/os/Message;
    :cond_1
    iget-object v4, p0, Lcom/android/server/AppOpsService;->dialogList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1534
    .end local v0           #aDialgItem:Lcom/android/server/AppOpsService$DialogItem;
    :cond_2
    return-void
.end method

.method private updatePermissionControl(Lcom/android/server/AppOpsService$DialogItem;Z)V
    .locals 8
    .parameter "item"
    .parameter "limit"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1613
    iget-object v2, p1, Lcom/android/server/AppOpsService$DialogItem;->pkg:Ljava/lang/String;

    .line 1614
    .local v2, pkgName:Ljava/lang/String;
    iget v3, p1, Lcom/android/server/AppOpsService$DialogItem;->uid:I

    .line 1616
    .local v3, uid:I
    iget v4, p1, Lcom/android/server/AppOpsService$DialogItem;->opGroup:I

    packed-switch v4, :pswitch_data_0

    .line 1792
    :cond_0
    :pswitch_0
    return-void

    .line 1618
    :pswitch_1
    sget-object v4, Landroid/app/AppOpsManager;->mOpPhoneCall:[I

    array-length v0, v4

    .line 1619
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1620
    sget-object v4, Landroid/app/AppOpsManager;->mOpPhoneCall:[I

    aget v7, v4, v1

    if-nez p2, :cond_1

    move v4, v5

    :goto_1
    invoke-virtual {p0, v7, v3, v2, v4}, Lcom/android/server/AppOpsService;->setMode(IILjava/lang/String;I)V

    .line 1619
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v4, v6

    .line 1620
    goto :goto_1

    .line 1627
    .end local v0           #N:I
    .end local v1           #i:I
    :pswitch_2
    sget-object v4, Landroid/app/AppOpsManager;->mOpPhoneReadCallLog:[I

    array-length v0, v4

    .line 1628
    .restart local v0       #N:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    if-ge v1, v0, :cond_0

    .line 1629
    sget-object v4, Landroid/app/AppOpsManager;->mOpPhoneReadCallLog:[I

    aget v7, v4, v1

    if-nez p2, :cond_2

    move v4, v5

    :goto_3
    invoke-virtual {p0, v7, v3, v2, v4}, Lcom/android/server/AppOpsService;->setMode(IILjava/lang/String;I)V

    .line 1628
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    move v4, v6

    .line 1629
    goto :goto_3

    .line 1636
    .end local v0           #N:I
    .end local v1           #i:I
    :pswitch_3
    sget-object v4, Landroid/app/AppOpsManager;->mOpReadContacts:[I

    array-length v0, v4

    .line 1637
    .restart local v0       #N:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_4
    if-ge v1, v0, :cond_0

    .line 1638
    sget-object v4, Landroid/app/AppOpsManager;->mOpReadContacts:[I

    aget v7, v4, v1

    if-nez p2, :cond_3

    move v4, v5

    :goto_5
    invoke-virtual {p0, v7, v3, v2, v4}, Lcom/android/server/AppOpsService;->setMode(IILjava/lang/String;I)V

    .line 1637
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_3
    move v4, v6

    .line 1638
    goto :goto_5

    .line 1645
    .end local v0           #N:I
    .end local v1           #i:I
    :pswitch_4
    sget-object v4, Landroid/app/AppOpsManager;->mOpReadSms:[I

    array-length v0, v4

    .line 1646
    .restart local v0       #N:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_6
    if-ge v1, v0, :cond_0

    .line 1647
    sget-object v4, Landroid/app/AppOpsManager;->mOpReadSms:[I

    aget v7, v4, v1

    if-nez p2, :cond_4

    move v4, v5

    :goto_7
    invoke-virtual {p0, v7, v3, v2, v4}, Lcom/android/server/AppOpsService;->setMode(IILjava/lang/String;I)V

    .line 1646
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_4
    move v4, v6

    .line 1647
    goto :goto_7

    .line 1655
    .end local v0           #N:I
    .end local v1           #i:I
    :pswitch_5
    sget-object v4, Landroid/app/AppOpsManager;->mOpSendSms:[I

    array-length v0, v4

    .line 1656
    .restart local v0       #N:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_8
    if-ge v1, v0, :cond_0

    .line 1657
    sget-object v4, Landroid/app/AppOpsManager;->mOpSendSms:[I

    aget v7, v4, v1

    if-nez p2, :cond_5

    move v4, v5

    :goto_9
    invoke-virtual {p0, v7, v3, v2, v4}, Lcom/android/server/AppOpsService;->setMode(IILjava/lang/String;I)V

    .line 1656
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_5
    move v4, v6

    .line 1657
    goto :goto_9

    .line 1665
    .end local v0           #N:I
    .end local v1           #i:I
    :pswitch_6
    sget-object v4, Landroid/app/AppOpsManager;->mOpReadMms:[I

    array-length v0, v4

    .line 1666
    .restart local v0       #N:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_a
    if-ge v1, v0, :cond_0

    .line 1667
    sget-object v4, Landroid/app/AppOpsManager;->mOpReadMms:[I

    aget v7, v4, v1

    if-nez p2, :cond_6

    move v4, v5

    :goto_b
    invoke-virtual {p0, v7, v3, v2, v4}, Lcom/android/server/AppOpsService;->setMode(IILjava/lang/String;I)V

    .line 1666
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_6
    move v4, v6

    .line 1667
    goto :goto_b

    .line 1675
    .end local v0           #N:I
    .end local v1           #i:I
    :pswitch_7
    sget-object v4, Landroid/app/AppOpsManager;->mOpSendMms:[I

    array-length v0, v4

    .line 1676
    .restart local v0       #N:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_c
    if-ge v1, v0, :cond_0

    .line 1677
    sget-object v4, Landroid/app/AppOpsManager;->mOpSendMms:[I

    aget v7, v4, v1

    if-nez p2, :cond_7

    move v4, v5

    :goto_d
    invoke-virtual {p0, v7, v3, v2, v4}, Lcom/android/server/AppOpsService;->setMode(IILjava/lang/String;I)V

    .line 1676
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_7
    move v4, v6

    .line 1677
    goto :goto_d

    .line 1684
    .end local v0           #N:I
    .end local v1           #i:I
    :pswitch_8
    sget-object v4, Landroid/app/AppOpsManager;->mOpNetWork:[I

    array-length v0, v4

    .line 1685
    .restart local v0       #N:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_e
    if-ge v1, v0, :cond_0

    .line 1686
    sget-object v4, Landroid/app/AppOpsManager;->mOpNetWork:[I

    aget v7, v4, v1

    if-nez p2, :cond_8

    move v4, v5

    :goto_f
    invoke-virtual {p0, v7, v3, v2, v4}, Lcom/android/server/AppOpsService;->setMode(IILjava/lang/String;I)V

    .line 1685
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_8
    move v4, v6

    .line 1686
    goto :goto_f

    .line 1693
    .end local v0           #N:I
    .end local v1           #i:I
    :pswitch_9
    sget-object v4, Landroid/app/AppOpsManager;->mOpWlan:[I

    array-length v0, v4

    .line 1694
    .restart local v0       #N:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_10
    if-ge v1, v0, :cond_0

    .line 1695
    sget-object v4, Landroid/app/AppOpsManager;->mOpWlan:[I

    aget v7, v4, v1

    if-nez p2, :cond_9

    move v4, v5

    :goto_11
    invoke-virtual {p0, v7, v3, v2, v4}, Lcom/android/server/AppOpsService;->setMode(IILjava/lang/String;I)V

    .line 1694
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_9
    move v4, v6

    .line 1695
    goto :goto_11

    .line 1702
    .end local v0           #N:I
    .end local v1           #i:I
    :pswitch_a
    sget-object v4, Landroid/app/AppOpsManager;->mOpLocation:[I

    array-length v0, v4

    .line 1703
    .restart local v0       #N:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_12
    if-ge v1, v0, :cond_0

    .line 1704
    sget-object v4, Landroid/app/AppOpsManager;->mOpLocation:[I

    aget v7, v4, v1

    if-nez p2, :cond_a

    move v4, v5

    :goto_13
    invoke-virtual {p0, v7, v3, v2, v4}, Lcom/android/server/AppOpsService;->setMode(IILjava/lang/String;I)V

    .line 1703
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_a
    move v4, v6

    .line 1704
    goto :goto_13

    .line 1712
    .end local v0           #N:I
    .end local v1           #i:I
    :pswitch_b
    sget-object v4, Landroid/app/AppOpsManager;->mOpRecordAudio:[I

    array-length v0, v4

    .line 1713
    .restart local v0       #N:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_14
    if-ge v1, v0, :cond_0

    .line 1714
    sget-object v4, Landroid/app/AppOpsManager;->mOpRecordAudio:[I

    aget v7, v4, v1

    if-nez p2, :cond_b

    move v4, v5

    :goto_15
    invoke-virtual {p0, v7, v3, v2, v4}, Lcom/android/server/AppOpsService;->setMode(IILjava/lang/String;I)V

    .line 1713
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_b
    move v4, v6

    .line 1714
    goto :goto_15

    .line 1723
    .end local v0           #N:I
    .end local v1           #i:I
    :pswitch_c
    sget-object v4, Landroid/app/AppOpsManager;->mOpRecordAudioPhone:[I

    array-length v0, v4

    .line 1724
    .restart local v0       #N:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_16
    if-ge v1, v0, :cond_0

    .line 1725
    sget-object v4, Landroid/app/AppOpsManager;->mOpRecordAudioPhone:[I

    aget v7, v4, v1

    if-nez p2, :cond_c

    move v4, v5

    :goto_17
    invoke-virtual {p0, v7, v3, v2, v4}, Lcom/android/server/AppOpsService;->setMode(IILjava/lang/String;I)V

    .line 1724
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_c
    move v4, v6

    .line 1725
    goto :goto_17

    .line 1734
    .end local v0           #N:I
    .end local v1           #i:I
    :pswitch_d
    sget-object v4, Landroid/app/AppOpsManager;->mOpCamera:[I

    array-length v0, v4

    .line 1735
    .restart local v0       #N:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_18
    if-ge v1, v0, :cond_0

    .line 1736
    sget-object v4, Landroid/app/AppOpsManager;->mOpCamera:[I

    aget v7, v4, v1

    if-nez p2, :cond_d

    move v4, v5

    :goto_19
    invoke-virtual {p0, v7, v3, v2, v4}, Lcom/android/server/AppOpsService;->setMode(IILjava/lang/String;I)V

    .line 1735
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_d
    move v4, v6

    .line 1736
    goto :goto_19

    .line 1744
    .end local v0           #N:I
    .end local v1           #i:I
    :pswitch_e
    sget-object v4, Landroid/app/AppOpsManager;->mOpBootCompleted:[I

    array-length v0, v4

    .line 1745
    .restart local v0       #N:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1a
    if-ge v1, v0, :cond_0

    .line 1746
    sget-object v4, Landroid/app/AppOpsManager;->mOpBootCompleted:[I

    aget v7, v4, v1

    if-nez p2, :cond_e

    move v4, v5

    :goto_1b
    invoke-virtual {p0, v7, v3, v2, v4}, Lcom/android/server/AppOpsService;->setMode(IILjava/lang/String;I)V

    .line 1745
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_e
    move v4, v6

    .line 1746
    goto :goto_1b

    .line 1754
    .end local v0           #N:I
    .end local v1           #i:I
    :pswitch_f
    sget-object v4, Landroid/app/AppOpsManager;->mOpBluetooth:[I

    array-length v0, v4

    .line 1755
    .restart local v0       #N:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1c
    if-ge v1, v0, :cond_0

    .line 1756
    sget-object v4, Landroid/app/AppOpsManager;->mOpBluetooth:[I

    aget v7, v4, v1

    if-nez p2, :cond_f

    move v4, v5

    :goto_1d
    invoke-virtual {p0, v7, v3, v2, v4}, Lcom/android/server/AppOpsService;->setMode(IILjava/lang/String;I)V

    .line 1755
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_f
    move v4, v6

    .line 1756
    goto :goto_1d

    .line 1763
    .end local v0           #N:I
    .end local v1           #i:I
    :pswitch_10
    sget-object v4, Landroid/app/AppOpsManager;->mOpNFC:[I

    array-length v0, v4

    .line 1764
    .restart local v0       #N:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1e
    if-ge v1, v0, :cond_0

    .line 1765
    sget-object v4, Landroid/app/AppOpsManager;->mOpNFC:[I

    aget v7, v4, v1

    if-nez p2, :cond_10

    move v4, v5

    :goto_1f
    invoke-virtual {p0, v7, v3, v2, v4}, Lcom/android/server/AppOpsService;->setMode(IILjava/lang/String;I)V

    .line 1764
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_10
    move v4, v6

    .line 1765
    goto :goto_1f

    .line 1771
    .end local v0           #N:I
    .end local v1           #i:I
    :pswitch_11
    sget-object v4, Landroid/app/AppOpsManager;->mOpGPS:[I

    array-length v0, v4

    .line 1772
    .restart local v0       #N:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_20
    if-ge v1, v0, :cond_0

    .line 1773
    sget-object v4, Landroid/app/AppOpsManager;->mOpGPS:[I

    aget v7, v4, v1

    if-nez p2, :cond_11

    move v4, v5

    :goto_21
    invoke-virtual {p0, v7, v3, v2, v4}, Lcom/android/server/AppOpsService;->setMode(IILjava/lang/String;I)V

    .line 1772
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_11
    move v4, v6

    .line 1773
    goto :goto_21

    .line 1779
    .end local v0           #N:I
    .end local v1           #i:I
    :pswitch_12
    sget-object v4, Landroid/app/AppOpsManager;->mOpSystemAlert:[I

    array-length v0, v4

    .line 1780
    .restart local v0       #N:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_22
    if-ge v1, v0, :cond_0

    .line 1781
    sget-object v4, Landroid/app/AppOpsManager;->mOpSystemAlert:[I

    aget v7, v4, v1

    if-nez p2, :cond_12

    move v4, v5

    :goto_23
    invoke-virtual {p0, v7, v3, v2, v4}, Lcom/android/server/AppOpsService;->setMode(IILjava/lang/String;I)V

    .line 1780
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_12
    move v4, v6

    .line 1781
    goto :goto_23

    .line 1616
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_d
        :pswitch_f
        :pswitch_e
        :pswitch_2
        :pswitch_6
        :pswitch_c
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_0
        :pswitch_12
    .end packed-switch
.end method

.method private verifyIncomingOp(I)V
    .locals 3
    .parameter "op"

    .prologue
    .line 1003
    if-ltz p1, :cond_0

    const/16 v0, 0x38

    if-ge p1, v0, :cond_0

    .line 1004
    return-void

    .line 1006
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad operation #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private verifyIncomingUid(IZ)V
    .locals 5
    .parameter "uid"
    .parameter "update"

    .prologue
    .line 976
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 987
    :cond_0
    :goto_0
    return-void

    .line 979
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 982
    if-eqz p2, :cond_0

    .line 983
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0
.end method

.method private verifyIncomingUidEnforce(I)V
    .locals 5
    .parameter "uid"

    .prologue
    .line 992
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1000
    :goto_0
    return-void

    .line 995
    :cond_0
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0
.end method

.method private verifySignatures()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 2377
    :try_start_0
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/AppOpsService;->mPackageNameString:Ljava/lang/String;

    const/16 v6, 0x40

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 2378
    .local v1, mPackageInfo:Landroid/content/pm/PackageInfo;
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android"

    const/16 v6, 0x40

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 2379
    .local v2, sys:Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v4, :cond_0

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 2384
    .end local v1           #mPackageInfo:Landroid/content/pm/PackageInfo;
    .end local v2           #sys:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v3

    .line 2382
    :catch_0
    move-exception v0

    .line 2383
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "AppOps"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ex :  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public checkOperation(IILjava/lang/String;)I
    .locals 5
    .parameter "code"
    .parameter "uid"
    .parameter "packageName"

    .prologue
    const/4 v1, 0x0

    .line 586
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->needPermissionControl()Z

    move-result v2

    if-nez v2, :cond_0

    .line 598
    :goto_0
    return v1

    .line 589
    :cond_0
    const-string v2, "AppOps"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkOperation:  code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    invoke-direct {p0, p2, v1}, Lcom/android/server/AppOpsService;->verifyIncomingUid(IZ)V

    .line 592
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 593
    monitor-enter p0

    .line 594
    :try_start_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, p2, p3, v3}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v0

    .line 595
    .local v0, op:Lcom/android/server/AppOpsService$Op;
    if-nez v0, :cond_1

    .line 596
    monitor-exit p0

    goto :goto_0

    .line 599
    .end local v0           #op:Lcom/android/server/AppOpsService$Op;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 598
    .restart local v0       #op:Lcom/android/server/AppOpsService$Op;
    :cond_1
    :try_start_1
    iget v1, v0, Lcom/android/server/AppOpsService$Op;->mode:I

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public checkOperationPkg(ILjava/lang/String;)I
    .locals 19
    .parameter "code"
    .parameter "packageName"

    .prologue
    .line 604
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->needPermissionControl()Z

    move-result v2

    if-nez v2, :cond_0

    .line 605
    const/4 v6, 0x0

    .line 722
    :goto_0
    return v6

    .line 608
    :cond_0
    const/4 v4, -0x1

    .line 609
    .local v4, uid:I
    const-string v2, "AppOps"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkOperationPkg:  code "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " uid "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " package "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    if-nez p2, :cond_2

    .line 613
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v17

    .line 614
    .local v17, pid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 615
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    move/from16 v0, v17

    invoke-virtual {v2, v4, v0, v3}, Landroid/content/pm/PackageManager;->getInstalledPackagesExtralPm(III)Ljava/util/List;

    move-result-object v16

    .line 618
    .local v16, pList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 619
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 p2, v0

    .line 620
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 623
    const-string v2, "AppOps"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkOperationPkg:  code "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " uid "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " package "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " system app allowed"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 629
    :cond_1
    const-string v2, "AppOps"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkOperationPkg:  code "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " uid "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " package "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " no  app allowed MODE_IGNORED"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 631
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 633
    .end local v16           #pList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v17           #pid:I
    :catch_0
    move-exception v9

    .line 634
    .local v9, e:Ljava/lang/Exception;
    const-string v2, "AppOps"

    invoke-static {v2, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 637
    .end local v9           #e:Ljava/lang/Exception;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AppOpsService;->mIPm:Landroid/content/pm/IPackageManager;

    if-nez v2, :cond_3

    .line 638
    const-string v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/AppOpsService;->mIPm:Landroid/content/pm/IPackageManager;

    .line 641
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AppOpsService;->mIPm:Landroid/content/pm/IPackageManager;

    if-eqz v2, :cond_4

    const/4 v2, -0x1

    if-ne v4, v2, :cond_4

    if-eqz p2, :cond_4

    .line 643
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AppOpsService;->mIPm:Landroid/content/pm/IPackageManager;

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-interface {v2, v0, v3}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v4

    .line 649
    :cond_4
    :goto_1
    const-string v2, "AppOps"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkOperationPkg:  code "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " uid "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " package "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " pid: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    const/4 v2, -0x1

    if-ne v4, v2, :cond_5

    .line 652
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 654
    :cond_5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2}, Lcom/android/server/AppOpsService;->verifyIncomingUid(IZ)V

    .line 655
    invoke-direct/range {p0 .. p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 656
    const/4 v6, 0x0

    .line 657
    .local v6, result:I
    monitor-enter p0

    .line 658
    :try_start_2
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v4, v1, v3}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v13

    .line 659
    .local v13, op:Lcom/android/server/AppOpsService$Op;
    if-nez v13, :cond_b

    .line 660
    const/4 v6, 0x0

    .line 664
    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 666
    const/16 v2, 0x23

    move/from16 v0, p1

    if-eq v0, v2, :cond_6

    const/16 v2, 0x24

    move/from16 v0, p1

    if-ne v0, v2, :cond_e

    :cond_6
    if-eqz v6, :cond_e

    .line 668
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v3, "appops"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/AppOpsManager;

    .line 670
    .local v11, mAppOps:Landroid/app/AppOpsManager;
    move/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/app/AppOpsManager;->getPermissionGroupOp(I)I

    move-result v15

    .line 671
    .local v15, opgroup:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_op_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 672
    .local v14, opName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v14, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    .line 674
    .local v18, res:I
    if-nez v18, :cond_c

    const/16 v2, 0x23

    move/from16 v0, p1

    if-ne v0, v2, :cond_c

    const/4 v8, 0x1

    .line 677
    .local v8, camera:Z
    :goto_3
    if-eqz v8, :cond_7

    .line 678
    new-instance v12, Landroid/os/Message;

    invoke-direct {v12}, Landroid/os/Message;-><init>()V

    .line 679
    .local v12, message:Landroid/os/Message;
    const/4 v2, 0x0

    iput v2, v12, Landroid/os/Message;->what:I

    .line 680
    iput-object v14, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 681
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AppOpsService;->mPhHandler:Landroid/os/Handler;

    invoke-virtual {v2, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 686
    .end local v12           #message:Landroid/os/Message;
    :cond_7
    const/4 v2, 0x2

    move/from16 v0, v18

    if-ne v0, v2, :cond_8

    const/4 v2, -0x1

    if-ne v15, v2, :cond_9

    :cond_8
    if-eqz v8, :cond_e

    .line 687
    :cond_9
    if-eqz v8, :cond_a

    .line 688
    const/16 v18, 0x2

    .line 690
    :cond_a
    const/4 v7, 0x0

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v5, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/AppOpsService;->sendOperationBroadcast(IILjava/lang/String;IZ)V

    .line 691
    const/4 v10, 0x0

    .line 693
    .local v10, i:I
    const-string v2, "AppOps"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pkg: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " res"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " opName: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    :goto_4
    const/4 v2, 0x2

    move/from16 v0, v18

    if-ne v0, v2, :cond_d

    const/16 v2, 0x64

    if-ge v10, v2, :cond_d

    .line 697
    const-wide/16 v2, 0xc8

    :try_start_3
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 698
    add-int/lit8 v10, v10, 0x1

    .line 700
    const-string v2, "AppOps"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pkg: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " res"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " opName: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " i: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 706
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v14, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    goto :goto_4

    .line 662
    .end local v8           #camera:Z
    .end local v10           #i:I
    .end local v11           #mAppOps:Landroid/app/AppOpsManager;
    .end local v14           #opName:Ljava/lang/String;
    .end local v15           #opgroup:I
    .end local v18           #res:I
    :cond_b
    :try_start_4
    iget v6, v13, Lcom/android/server/AppOpsService$Op;->mode:I

    goto/16 :goto_2

    .line 664
    .end local v13           #op:Lcom/android/server/AppOpsService$Op;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 674
    .restart local v11       #mAppOps:Landroid/app/AppOpsManager;
    .restart local v13       #op:Lcom/android/server/AppOpsService$Op;
    .restart local v14       #opName:Ljava/lang/String;
    .restart local v15       #opgroup:I
    .restart local v18       #res:I
    :cond_c
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 709
    .restart local v8       #camera:Z
    .restart local v10       #i:I
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v14, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    .line 710
    const/4 v2, 0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_e

    .line 712
    const-string v2, "AppOps"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pkg: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " res"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " opName: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " allowed"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 720
    .end local v8           #camera:Z
    .end local v10           #i:I
    .end local v11           #mAppOps:Landroid/app/AppOpsManager;
    .end local v14           #opName:Ljava/lang/String;
    .end local v15           #opgroup:I
    .end local v18           #res:I
    :cond_e
    const-string v2, "AppOps"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkOperationPkg:  code "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " uid "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " package "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " pid: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " result: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 703
    .restart local v8       #camera:Z
    .restart local v10       #i:I
    .restart local v11       #mAppOps:Landroid/app/AppOpsManager;
    .restart local v14       #opName:Ljava/lang/String;
    .restart local v15       #opgroup:I
    .restart local v18       #res:I
    :catch_1
    move-exception v2

    goto/16 :goto_5

    .line 644
    .end local v6           #result:I
    .end local v8           #camera:Z
    .end local v10           #i:I
    .end local v11           #mAppOps:Landroid/app/AppOpsManager;
    .end local v13           #op:Lcom/android/server/AppOpsService$Op;
    .end local v14           #opName:Ljava/lang/String;
    .end local v15           #opgroup:I
    .end local v18           #res:I
    :catch_2
    move-exception v2

    goto/16 :goto_1
.end method

.method public checkSignatures()V
    .locals 3

    .prologue
    .line 2362
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mPackageNameString:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/AppOpsService;->mPackageNameString:Ljava/lang/String;

    const-string v1, "com.meizu.test"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/AppOpsService;->verifySignatures()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2365
    const-string v0, "AppOps"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkSignatures -compareSignatures : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/AppOpsService;->mPackageNameString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " equals android"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2367
    invoke-virtual {p0}, Lcom/android/server/AppOpsService;->createFactoryFile()V

    .line 2373
    :goto_0
    return-void

    .line 2369
    :cond_0
    const-string v0, "AppOps"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkSignatures -compareSignatures : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/AppOpsService;->mPackageNameString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not equals android"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public createFactoryFile()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 282
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 285
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/app/factoryTest/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 286
    .local v1, verifyDir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 287
    const-string v2, "AppOps"

    const-string v3, "factory test file exists"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iput-boolean v7, p0, Lcom/android/server/AppOpsService;->mFactoryTest:Z

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 292
    const-string v2, "AppOps"

    const-string v3, "factroy test file create done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/AppOpsService;->mFactoryTest:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public dimissDialog(IILjava/lang/String;IZ)V
    .locals 0
    .parameter "code"
    .parameter "uid"
    .parameter "packageName"
    .parameter "result"
    .parameter "enable"

    .prologue
    .line 916
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 12
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    const-wide/16 v10, 0x0

    .line 1304
    iget-object v8, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.DUMP"

    invoke-virtual {v8, v9}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_0

    .line 1306
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Permission Denial: can\'t dump ApOps service from from pid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", uid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1343
    :goto_0
    return-void

    .line 1312
    :cond_0
    monitor-enter p0

    .line 1313
    :try_start_0
    const-string v8, "Current AppOps Service state:"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1314
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1315
    .local v3, now:J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v8, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v0, v8, :cond_6

    .line 1316
    const-string v8, "  Uid "

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-static {p2, v8}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v8, ":"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1317
    iget-object v8, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    .line 1318
    .local v7, pkgOps:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AppOpsService$Ops;

    .line 1319
    .local v6, ops:Lcom/android/server/AppOpsService$Ops;
    const-string v8, "    Package "

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, v6, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, ":"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1320
    const/4 v2, 0x0

    .local v2, j:I
    :goto_2
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v2, v8, :cond_1

    .line 1321
    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AppOpsService$Op;

    .line 1322
    .local v5, op:Lcom/android/server/AppOpsService$Op;
    const-string v8, "      "

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, v5, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v8}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1323
    const-string v8, ": mode="

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, v5, Lcom/android/server/AppOpsService$Op;->mode:I

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 1324
    iget-wide v8, v5, Lcom/android/server/AppOpsService$Op;->time:J

    cmp-long v8, v8, v10

    if-eqz v8, :cond_2

    .line 1325
    const-string v8, "; time="

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v8, v5, Lcom/android/server/AppOpsService$Op;->time:J

    sub-long v8, v3, v8

    invoke-static {v8, v9, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1326
    const-string v8, " ago"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1328
    :cond_2
    iget-wide v8, v5, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    cmp-long v8, v8, v10

    if-eqz v8, :cond_3

    .line 1329
    const-string v8, "; rejectTime="

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v8, v5, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    sub-long v8, v3, v8

    invoke-static {v8, v9, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1330
    const-string v8, " ago"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1332
    :cond_3
    iget v8, v5, Lcom/android/server/AppOpsService$Op;->duration:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_4

    .line 1333
    const-string v8, " (running)"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1320
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1335
    :cond_4
    const-string v8, "; duration="

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1336
    iget v8, v5, Lcom/android/server/AppOpsService$Op;->duration:I

    int-to-long v8, v8

    invoke-static {v8, v9, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1337
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_3

    .line 1342
    .end local v0           #i:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #j:I
    .end local v3           #now:J
    .end local v5           #op:Lcom/android/server/AppOpsService$Op;
    .end local v6           #ops:Lcom/android/server/AppOpsService$Ops;
    .end local v7           #pkgOps:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 1315
    .restart local v0       #i:I
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #now:J
    .restart local v7       #pkgOps:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 1342
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v7           #pkgOps:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    :cond_6
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public finishOperation(IILjava/lang/String;)V
    .locals 5
    .parameter "code"
    .parameter "uid"
    .parameter "packageName"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 873
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->needPermissionControl()Z

    move-result v1

    if-nez v1, :cond_0

    .line 897
    :goto_0
    return-void

    .line 876
    :cond_0
    invoke-direct {p0, p2, v3}, Lcom/android/server/AppOpsService;->verifyIncomingUid(IZ)V

    .line 877
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 878
    monitor-enter p0

    .line 879
    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v0

    .line 880
    .local v0, op:Lcom/android/server/AppOpsService$Op;
    if-nez v0, :cond_1

    .line 881
    monitor-exit p0

    goto :goto_0

    .line 896
    .end local v0           #op:Lcom/android/server/AppOpsService$Op;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 883
    .restart local v0       #op:Lcom/android/server/AppOpsService$Op;
    :cond_1
    :try_start_1
    iget v1, v0, Lcom/android/server/AppOpsService$Op;->nesting:I

    if-gt v1, v2, :cond_3

    .line 884
    iget v1, v0, Lcom/android/server/AppOpsService$Op;->nesting:I

    if-ne v1, v2, :cond_2

    .line 885
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/android/server/AppOpsService$Op;->time:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, v0, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 886
    iget-wide v1, v0, Lcom/android/server/AppOpsService$Op;->time:J

    iget v3, v0, Lcom/android/server/AppOpsService$Op;->duration:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/server/AppOpsService$Op;->time:J

    .line 892
    :goto_1
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/AppOpsService$Op;->nesting:I

    .line 896
    :goto_2
    monitor-exit p0

    goto :goto_0

    .line 888
    :cond_2
    const-string v1, "AppOps"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finishing op nesting under-run: uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pkg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Lcom/android/server/AppOpsService$Op;->time:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " duration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/AppOpsService$Op;->duration:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " nesting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/AppOpsService$Op;->nesting:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 894
    :cond_3
    iget v1, v0, Lcom/android/server/AppOpsService$Op;->nesting:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/android/server/AppOpsService$Op;->nesting:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public getFactoryState()Z
    .locals 1

    .prologue
    .line 278
    iget-boolean v0, p0, Lcom/android/server/AppOpsService;->mFactoryTest:Z

    return v0
.end method

.method public getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;
    .locals 8
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
    const/4 v1, 0x0

    .line 443
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.GET_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 445
    monitor-enter p0

    .line 446
    const/4 v4, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/AppOpsService;->getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v0

    .line 447
    .local v0, pkgOps:Lcom/android/server/AppOpsService$Ops;
    if-nez v0, :cond_0

    .line 448
    monitor-exit p0

    .line 458
    :goto_0
    return-object v1

    .line 450
    :cond_0
    invoke-direct {p0, v0, p3}, Lcom/android/server/AppOpsService;->collectOps(Lcom/android/server/AppOpsService$Ops;[I)Ljava/util/ArrayList;

    move-result-object v2

    .line 451
    .local v2, resOps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    if-nez v2, :cond_1

    .line 452
    monitor-exit p0

    goto :goto_0

    .line 459
    .end local v0           #pkgOps:Lcom/android/server/AppOpsService$Ops;
    .end local v2           #resOps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 454
    .restart local v0       #pkgOps:Lcom/android/server/AppOpsService$Ops;
    .restart local v2       #resOps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    :cond_1
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 455
    .local v1, res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    new-instance v3, Landroid/app/AppOpsManager$PackageOps;

    iget-object v4, v0, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget v5, v0, Lcom/android/server/AppOpsService$Ops;->uid:I

    invoke-direct {v3, v4, v5, v2}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 457
    .local v3, resPackage:Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getPackagesForOps([I)Ljava/util/List;
    .locals 13
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
    .line 418
    iget-object v8, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.GET_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 420
    const/4 v4, 0x0

    .line 421
    .local v4, res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    monitor-enter p0

    .line 422
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget-object v8, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v0, v8, :cond_1

    .line 423
    iget-object v8, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 424
    .local v2, packages:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    move-object v5, v4

    .end local v4           #res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .local v5, res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppOpsService$Ops;

    .line 425
    .local v3, pkgOps:Lcom/android/server/AppOpsService$Ops;
    invoke-direct {p0, v3, p1}, Lcom/android/server/AppOpsService;->collectOps(Lcom/android/server/AppOpsService$Ops;[I)Ljava/util/ArrayList;

    move-result-object v6

    .line 426
    .local v6, resOps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    if-eqz v6, :cond_3

    .line 427
    if-nez v5, :cond_2

    .line 428
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 430
    .end local v5           #res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v4       #res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_2
    :try_start_2
    new-instance v7, Landroid/app/AppOpsManager$PackageOps;

    iget-object v8, v3, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget v9, v3, Lcom/android/server/AppOpsService$Ops;->uid:I

    invoke-direct {v7, v8, v9, v6}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 432
    .local v7, resPackage:Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v7           #resPackage:Landroid/app/AppOpsManager$PackageOps;
    :goto_3
    move-object v5, v4

    .line 434
    .end local v4           #res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v5       #res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_1

    .line 422
    .end local v3           #pkgOps:Lcom/android/server/AppOpsService$Ops;
    .end local v6           #resOps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    :cond_0
    add-int/lit8 v0, v0, 0x1

    move-object v4, v5

    .end local v5           #res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v4       #res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_0

    .line 436
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #packages:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    :cond_1
    monitor-exit p0

    .line 437
    return-object v4

    .line 436
    :catchall_0
    move-exception v8

    :goto_4
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .end local v4           #res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #packages:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v5       #res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5           #res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v4       #res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_4

    .end local v4           #res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v3       #pkgOps:Lcom/android/server/AppOpsService$Ops;
    .restart local v5       #res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v6       #resOps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    :cond_2
    move-object v4, v5

    .end local v5           #res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v4       #res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_2

    .end local v4           #res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v5       #res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_3
    move-object v4, v5

    .end local v5           #res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v4       #res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_3
.end method

.method public noteOperation(IILjava/lang/String;)I
    .locals 10
    .parameter "code"
    .parameter "uid"
    .parameter "packageName"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 727
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->needPermissionControl()Z

    move-result v2

    if-nez v2, :cond_0

    .line 761
    :goto_0
    return v0

    .line 730
    :cond_0
    invoke-direct {p0, p2, v0}, Lcom/android/server/AppOpsService;->verifyIncomingUid(IZ)V

    .line 731
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 732
    monitor-enter p0

    .line 733
    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, p2, p3, v2}, Lcom/android/server/AppOpsService;->getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v7

    .line 734
    .local v7, ops:Lcom/android/server/AppOpsService$Ops;
    if-nez v7, :cond_1

    .line 735
    const-string v0, "AppOps"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "noteOperation: no op for code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    monitor-exit p0

    move v0, v1

    goto :goto_0

    .line 739
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v7, p1, v1}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v6

    .line 740
    .local v6, op:Lcom/android/server/AppOpsService$Op;
    iget v1, v6, Lcom/android/server/AppOpsService$Op;->duration:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 741
    const-string v1, "AppOps"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Noting op not finished: uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pkg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v6, Lcom/android/server/AppOpsService$Op;->time:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " duration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v6, Lcom/android/server/AppOpsService$Op;->duration:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    :cond_2
    const/4 v1, 0x0

    iput v1, v6, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 745
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v8

    .line 746
    .local v8, switchCode:I
    if-eq v8, p1, :cond_5

    const/4 v1, 0x1

    invoke-direct {p0, v7, v8, v1}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v9

    .line 747
    .local v9, switchOp:Lcom/android/server/AppOpsService$Op;
    :goto_1
    iget v1, v9, Lcom/android/server/AppOpsService$Op;->mode:I

    if-eqz v1, :cond_6

    .line 748
    const/16 v0, 0x13

    if-eq p1, v0, :cond_3

    const/16 v0, 0x14

    if-ne p1, v0, :cond_4

    .line 750
    :cond_3
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/AppOpsService;->sendOperationBroadcast(IILjava/lang/String;IZ)V

    .line 752
    :cond_4
    const-string v0, "AppOps"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "noteOperation: reject #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v6, Lcom/android/server/AppOpsService$Op;->mode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v6, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 755
    iget v0, v9, Lcom/android/server/AppOpsService$Op;->mode:I

    monitor-exit p0

    goto/16 :goto_0

    .line 762
    .end local v6           #op:Lcom/android/server/AppOpsService$Op;
    .end local v7           #ops:Lcom/android/server/AppOpsService$Ops;
    .end local v8           #switchCode:I
    .end local v9           #switchOp:Lcom/android/server/AppOpsService$Op;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .restart local v6       #op:Lcom/android/server/AppOpsService$Op;
    .restart local v7       #ops:Lcom/android/server/AppOpsService$Ops;
    .restart local v8       #switchCode:I
    :cond_5
    move-object v9, v6

    .line 746
    goto :goto_1

    .line 757
    .restart local v9       #switchOp:Lcom/android/server/AppOpsService$Op;
    :cond_6
    :try_start_1
    const-string v1, "AppOps"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "noteOperation: allowing code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v6, Lcom/android/server/AppOpsService$Op;->time:J

    .line 760
    const-wide/16 v1, 0x0

    iput-wide v1, v6, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 761
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public packageRemoved(ILjava/lang/String;)V
    .locals 2
    .parameter "uid"
    .parameter "packageName"

    .prologue
    .line 356
    monitor-enter p0

    .line 357
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 358
    .local v0, pkgs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    if-eqz v0, :cond_1

    .line 359
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 360
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 361
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 363
    :cond_0
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V

    .line 366
    :cond_1
    monitor-exit p0

    .line 367
    return-void

    .line 366
    .end local v0           #pkgs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public publish(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 310
    iput-object p1, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    .line 311
    const-string v0, "appops"

    invoke-virtual {p0}, Lcom/android/internal/app/IAppOpsService$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 313
    return-void
.end method

.method readPackage(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    .line 1162
    const/4 v4, 0x0

    const-string v5, "n"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1163
    .local v1, pkgName:Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1166
    .local v0, outerDepth:I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, type:I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    if-ne v3, v7, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_3

    .line 1167
    :cond_1
    if-eq v3, v7, :cond_0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 1171
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1172
    .local v2, tagName:Ljava/lang/String;
    const-string v4, "uid"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1173
    invoke-virtual {p0, p1, v1}, Lcom/android/server/AppOpsService;->readUid(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    goto :goto_0

    .line 1175
    :cond_2
    const-string v4, "AppOps"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <pkg>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 1180
    .end local v2           #tagName:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method readState()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v9, 0x2

    const/4 v11, 0x1

    .line 1095
    iget-object v8, p0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    monitor-enter v8

    .line 1096
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1099
    :try_start_1
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 1104
    .local v3, stream:Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 1106
    .local v4, success:Z
    :try_start_2
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 1107
    .local v2, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v7, 0x0

    invoke-interface {v2, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1110
    :cond_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .local v6, type:I
    if-eq v6, v9, :cond_1

    if-ne v6, v11, :cond_0

    .line 1114
    :cond_1
    if-eq v6, v9, :cond_3

    .line 1115
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v9, "no start tag found"

    invoke-direct {v7, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_b

    .line 1135
    .end local v2           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v6           #type:I
    :catch_0
    move-exception v0

    .line 1136
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_3
    const-string v7, "AppOps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed parsing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1148
    if-nez v4, :cond_2

    .line 1149
    :try_start_4
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1152
    :cond_2
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_d

    .line 1156
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :goto_0
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1157
    :try_start_7
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1158
    .end local v3           #stream:Ljava/io/FileInputStream;
    .end local v4           #success:Z
    :goto_1
    return-void

    .line 1100
    :catch_1
    move-exception v0

    .line 1101
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_8
    const-string v7, "AppOps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No existing app ops "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v10}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; starting empty"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    monitor-exit v8

    goto :goto_1

    .line 1157
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v7

    .line 1118
    .restart local v2       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3       #stream:Ljava/io/FileInputStream;
    .restart local v4       #success:Z
    .restart local v6       #type:I
    :cond_3
    :try_start_a
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 1120
    .local v1, outerDepth:I
    :cond_4
    :goto_2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-eq v6, v11, :cond_9

    if-ne v6, v12, :cond_5

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v1, :cond_9

    .line 1121
    :cond_5
    if-eq v6, v12, :cond_4

    const/4 v7, 0x4

    if-eq v6, v7, :cond_4

    .line 1125
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1126
    .local v5, tagName:Ljava/lang/String;
    const-string v7, "pkg"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1127
    invoke-virtual {p0, v2}, Lcom/android/server/AppOpsService;->readPackage(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_b

    goto :goto_2

    .line 1137
    .end local v1           #outerDepth:I
    .end local v2           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v5           #tagName:Ljava/lang/String;
    .end local v6           #type:I
    :catch_2
    move-exception v0

    .line 1138
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_b
    const-string v7, "AppOps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed parsing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1148
    if-nez v4, :cond_6

    .line 1149
    :try_start_c
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 1152
    :cond_6
    :try_start_d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    goto :goto_0

    .line 1153
    :catch_3
    move-exception v7

    goto :goto_0

    .line 1129
    .end local v0           #e:Ljava/lang/NullPointerException;
    .restart local v1       #outerDepth:I
    .restart local v2       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5       #tagName:Ljava/lang/String;
    .restart local v6       #type:I
    :cond_7
    :try_start_e
    const-string v7, "AppOps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown element under <app-ops>: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_e} :catch_7
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e .. :try_end_e} :catch_b

    goto :goto_2

    .line 1139
    .end local v1           #outerDepth:I
    .end local v2           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v5           #tagName:Ljava/lang/String;
    .end local v6           #type:I
    :catch_4
    move-exception v0

    .line 1140
    .local v0, e:Ljava/lang/NumberFormatException;
    :try_start_f
    const-string v7, "AppOps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed parsing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 1148
    if-nez v4, :cond_8

    .line 1149
    :try_start_10
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 1152
    :cond_8
    :try_start_11
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5

    goto/16 :goto_0

    .line 1153
    :catch_5
    move-exception v7

    goto/16 :goto_0

    .line 1134
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .restart local v1       #outerDepth:I
    .restart local v2       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6       #type:I
    :cond_9
    const/4 v4, 0x1

    .line 1148
    if-nez v4, :cond_a

    .line 1149
    :try_start_12
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 1152
    :cond_a
    :try_start_13
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_6

    goto/16 :goto_0

    .line 1153
    :catch_6
    move-exception v7

    goto/16 :goto_0

    .line 1141
    .end local v1           #outerDepth:I
    .end local v2           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v6           #type:I
    :catch_7
    move-exception v0

    .line 1142
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_14
    const-string v7, "AppOps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed parsing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 1148
    if-nez v4, :cond_b

    .line 1149
    :try_start_15
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    .line 1152
    :cond_b
    :try_start_16
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_8

    goto/16 :goto_0

    .line 1153
    :catch_8
    move-exception v7

    goto/16 :goto_0

    .line 1143
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_9
    move-exception v0

    .line 1144
    .local v0, e:Ljava/io/IOException;
    :try_start_17
    const-string v7, "AppOps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed parsing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    .line 1148
    if-nez v4, :cond_c

    .line 1149
    :try_start_18
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    .line 1152
    :cond_c
    :try_start_19
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_a

    goto/16 :goto_0

    .line 1153
    :catch_a
    move-exception v7

    goto/16 :goto_0

    .line 1145
    .end local v0           #e:Ljava/io/IOException;
    :catch_b
    move-exception v0

    .line 1146
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    :try_start_1a
    const-string v7, "AppOps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed parsing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    .line 1148
    if-nez v4, :cond_d

    .line 1149
    :try_start_1b
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    .line 1152
    :cond_d
    :try_start_1c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_c

    goto/16 :goto_0

    .line 1153
    :catch_c
    move-exception v7

    goto/16 :goto_0

    .line 1148
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :catchall_1
    move-exception v7

    if-nez v4, :cond_e

    .line 1149
    :try_start_1d
    iget-object v9, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->clear()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    .line 1152
    :cond_e
    :try_start_1e
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_2
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_e

    .line 1154
    :goto_3
    :try_start_1f
    throw v7

    .line 1156
    .end local v3           #stream:Ljava/io/FileInputStream;
    .end local v4           #success:Z
    :catchall_2
    move-exception v7

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_2

    :try_start_20
    throw v7
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    .line 1153
    .local v0, e:Ljava/lang/IllegalStateException;
    .restart local v3       #stream:Ljava/io/FileInputStream;
    .restart local v4       #success:Z
    :catch_d
    move-exception v7

    goto/16 :goto_0

    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_e
    move-exception v9

    goto :goto_3
.end method

.method readUid(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 13
    .parameter "parser"
    .parameter "pkgName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1184
    const/4 v10, 0x0

    const-string v11, "n"

    invoke-interface {p1, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 1185
    .local v9, uid:I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    .line 1188
    .local v4, outerDepth:I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .local v8, type:I
    const/4 v10, 0x1

    if-eq v8, v10, :cond_9

    const/4 v10, 0x3

    if-ne v8, v10, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    if-le v10, v4, :cond_9

    .line 1189
    :cond_1
    const/4 v10, 0x3

    if-eq v8, v10, :cond_0

    const/4 v10, 0x4

    if-eq v8, v10, :cond_0

    .line 1193
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1194
    .local v6, tagName:Ljava/lang/String;
    const-string v10, "op"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1195
    new-instance v2, Lcom/android/server/AppOpsService$Op;

    const/4 v10, 0x0

    const-string v11, "n"

    invoke-interface {p1, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-direct {v2, v10}, Lcom/android/server/AppOpsService$Op;-><init>(I)V

    .line 1196
    .local v2, op:Lcom/android/server/AppOpsService$Op;
    const/4 v10, 0x0

    const-string v11, "m"

    invoke-interface {p1, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1197
    .local v1, mode:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 1198
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v2, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 1200
    :cond_2
    const/4 v10, 0x0

    const-string v11, "t"

    invoke-interface {p1, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1201
    .local v7, time:Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 1202
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v2, Lcom/android/server/AppOpsService$Op;->time:J

    .line 1204
    :cond_3
    const/4 v10, 0x0

    const-string v11, "r"

    invoke-interface {p1, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1205
    if-eqz v7, :cond_4

    .line 1206
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v2, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 1208
    :cond_4
    const/4 v10, 0x0

    const-string v11, "d"

    invoke-interface {p1, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1209
    .local v0, dur:Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 1210
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v2, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 1212
    :cond_5
    iget-object v10, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    .line 1213
    .local v5, pkgOps:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    if-nez v5, :cond_6

    .line 1214
    new-instance v5, Ljava/util/HashMap;

    .end local v5           #pkgOps:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1215
    .restart local v5       #pkgOps:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    iget-object v10, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v10, v9, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1217
    :cond_6
    invoke-virtual {v5, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppOpsService$Ops;

    .line 1218
    .local v3, ops:Lcom/android/server/AppOpsService$Ops;
    if-nez v3, :cond_7

    .line 1219
    new-instance v3, Lcom/android/server/AppOpsService$Ops;

    .end local v3           #ops:Lcom/android/server/AppOpsService$Ops;
    invoke-direct {v3, p2, v9}, Lcom/android/server/AppOpsService$Ops;-><init>(Ljava/lang/String;I)V

    .line 1220
    .restart local v3       #ops:Lcom/android/server/AppOpsService$Ops;
    invoke-virtual {v5, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1222
    :cond_7
    iget v10, v2, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-virtual {v3, v10, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1224
    .end local v0           #dur:Ljava/lang/String;
    .end local v1           #mode:Ljava/lang/String;
    .end local v2           #op:Lcom/android/server/AppOpsService$Op;
    .end local v3           #ops:Lcom/android/server/AppOpsService$Ops;
    .end local v5           #pkgOps:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v7           #time:Ljava/lang/String;
    :cond_8
    const-string v10, "AppOps"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown element under <pkg>: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 1229
    .end local v6           #tagName:Ljava/lang/String;
    :cond_9
    return-void
.end method

.method public sendOperationBroadcast(IILjava/lang/String;IZ)V
    .locals 3
    .parameter "code"
    .parameter "uid"
    .parameter "packageName"
    .parameter "result"
    .parameter "enable"

    .prologue
    .line 901
    new-instance v0, Landroid/content/Intent;

    const-string v1, "APPOPS_OP_INTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 902
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "code"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 903
    const-string v1, "uid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 904
    const-string v1, "pkg"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 905
    const-string v1, "result"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 906
    const-string v1, "enable"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 908
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mPhHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 911
    return-void
.end method

.method public setMode(IILjava/lang/String;I)V
    .locals 11
    .parameter "code"
    .parameter "uid"
    .parameter "packageName"
    .parameter "mode"

    .prologue
    const-wide/16 v9, 0x0

    .line 464
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->needPermissionControl()Z

    move-result v7

    if-nez v7, :cond_1

    .line 521
    :cond_0
    return-void

    .line 467
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingUidEnforce(I)V

    .line 468
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 469
    const/4 v5, 0x0

    .line 470
    .local v5, repCbs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p1

    .line 471
    monitor-enter p0

    .line 472
    const/4 v7, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2, p3, v7}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v2

    .line 473
    .local v2, op:Lcom/android/server/AppOpsService$Op;
    if-eqz v2, :cond_5

    .line 474
    iget v7, v2, Lcom/android/server/AppOpsService$Op;->mode:I

    if-eq v7, p4, :cond_5

    .line 475
    iput p4, v2, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 476
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v7, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 477
    .local v0, cbs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-eqz v0, :cond_3

    .line 478
    if-nez v5, :cond_2

    .line 479
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .end local v5           #repCbs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .local v6, repCbs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    move-object v5, v6

    .line 481
    .end local v6           #repCbs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v5       #repCbs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_2
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    move-object v6, v5

    .line 483
    .end local v5           #repCbs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v6       #repCbs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :try_start_1
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Ljava/util/HashMap;

    invoke-virtual {v7, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cbs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    check-cast v0, Ljava/util/ArrayList;

    .line 484
    .restart local v0       #cbs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-eqz v0, :cond_7

    .line 485
    if-nez v6, :cond_6

    .line 486
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 488
    .end local v6           #repCbs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v5       #repCbs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :goto_0
    :try_start_2
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 490
    :goto_1
    if-nez p4, :cond_4

    .line 493
    iget-wide v7, v2, Lcom/android/server/AppOpsService$Op;->time:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_4

    iget-wide v7, v2, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_4

    .line 494
    const/4 v7, 0x0

    invoke-direct {p0, p2, p3, v7}, Lcom/android/server/AppOpsService;->getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v3

    .line 495
    .local v3, ops:Lcom/android/server/AppOpsService$Ops;
    if-eqz v3, :cond_4

    .line 496
    iget v7, v2, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-virtual {v3, v7}, Landroid/util/SparseArray;->remove(I)V

    .line 497
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-gtz v7, :cond_4

    .line 498
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v7, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 499
    .local v4, pkgOps:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    if-eqz v4, :cond_4

    .line 500
    iget-object v7, v3, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v7

    if-gtz v7, :cond_4

    .line 502
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v7, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 509
    .end local v3           #ops:Lcom/android/server/AppOpsService$Ops;
    .end local v4           #pkgOps:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    :cond_4
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleWriteNowLocked()V

    .line 512
    .end local v0           #cbs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_5
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 513
    if-eqz v5, :cond_0

    .line 514
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_0

    .line 516
    :try_start_3
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AppOpsService$Callback;

    iget-object v7, v7, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-interface {v7, p1, p3}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(ILjava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 514
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 512
    .end local v1           #i:I
    .end local v2           #op:Lcom/android/server/AppOpsService$Op;
    :catchall_0
    move-exception v7

    :goto_4
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v7

    .line 517
    .restart local v1       #i:I
    .restart local v2       #op:Lcom/android/server/AppOpsService$Op;
    :catch_0
    move-exception v7

    goto :goto_3

    .line 512
    .end local v1           #i:I
    .end local v5           #repCbs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v6       #repCbs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6           #repCbs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v5       #repCbs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    goto :goto_4

    .end local v5           #repCbs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v0       #cbs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v6       #repCbs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_6
    move-object v5, v6

    .end local v6           #repCbs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v5       #repCbs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    goto :goto_0

    .end local v5           #repCbs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v6       #repCbs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_7
    move-object v5, v6

    .end local v6           #repCbs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v5       #repCbs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    goto :goto_1
.end method

.method public setOperationProvider(ILjava/lang/String;Ljava/lang/String;Z)I
    .locals 10
    .parameter "code"
    .parameter "packageName"
    .parameter "provider"
    .parameter "enable"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 920
    const/4 v5, 0x6

    if-ne p1, v5, :cond_3

    .line 921
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 922
    .local v4, puid:I
    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_0

    move v5, v6

    .line 971
    .end local v4           #puid:I
    :goto_0
    return v5

    .line 926
    .restart local v4       #puid:I
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 927
    .local v3, pid:I
    const-string v5, "AppOps"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " uid : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " pid :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " packageName: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " enable : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    if-nez p2, :cond_2

    .line 931
    :try_start_0
    iget-object v5, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v5, v4, v3, v8}, Landroid/content/pm/PackageManager;->getInstalledPackagesExtralPm(III)Ljava/util/List;

    move-result-object v2

    .line 934
    .local v2, pList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_1

    .line 935
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    iget-object p2, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 936
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    .line 939
    const-string v5, "AppOps"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setOperationProvider:  code "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " uid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " system app allowed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 941
    goto/16 :goto_0

    .line 945
    :cond_1
    const-string v5, "AppOps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setOperationProvider:  code "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " uid "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " package "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " no  app allowed MODE_IGNORED"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v7

    .line 947
    goto/16 :goto_0

    .line 949
    .end local v2           #pList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :catch_0
    move-exception v0

    .line 950
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "AppOps"

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 954
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    if-eqz p2, :cond_4

    .line 955
    new-instance v1, Landroid/content/Intent;

    const-string v5, "APPOPS_OP_INTENT"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 956
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "code"

    invoke-virtual {v1, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 957
    const-string v5, "uid"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 958
    const-string v5, "pkg"

    invoke-virtual {v1, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 959
    const-string v5, "result"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 960
    const-string v5, "enable"

    invoke-virtual {v1, v5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 962
    const-string v5, "AppOps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setOperationProvider:  code "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " uid "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " package "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " showDialog"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    iget-object v5, p0, Lcom/android/server/AppOpsService;->mPhHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #pid:I
    .end local v4           #puid:I
    :cond_3
    move v5, v7

    .line 971
    goto/16 :goto_0

    .restart local v3       #pid:I
    .restart local v4       #puid:I
    :cond_4
    move v5, v7

    .line 967
    goto/16 :goto_0
.end method

.method public shutdown()V
    .locals 3

    .prologue
    .line 379
    const-string v1, "AppOps"

    const-string v2, "Writing app ops before shutdown..."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const/4 v0, 0x0

    .line 381
    .local v0, doWrite:Z
    monitor-enter p0

    .line 382
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    if-eqz v1, :cond_0

    .line 383
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    .line 384
    const/4 v0, 0x1

    .line 386
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    if-eqz v0, :cond_1

    .line 388
    invoke-virtual {p0}, Lcom/android/server/AppOpsService;->writeState()V

    .line 390
    :cond_1
    return-void

    .line 386
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public startOperation(IILjava/lang/String;)I
    .locals 10
    .parameter "code"
    .parameter "uid"
    .parameter "packageName"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 767
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->needPermissionControl()Z

    move-result v2

    if-nez v2, :cond_0

    .line 801
    :goto_0
    return v0

    .line 770
    :cond_0
    const-string v2, "AppOps"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startOperation: code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " packageName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    invoke-direct {p0, p2, v0}, Lcom/android/server/AppOpsService;->verifyIncomingUid(IZ)V

    .line 772
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 773
    monitor-enter p0

    .line 774
    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, p2, p3, v2}, Lcom/android/server/AppOpsService;->getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v7

    .line 775
    .local v7, ops:Lcom/android/server/AppOpsService$Ops;
    if-nez v7, :cond_1

    .line 776
    const-string v0, "AppOps"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startOperation: no op for code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    monitor-exit p0

    move v0, v1

    goto :goto_0

    .line 780
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v7, p1, v1}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v6

    .line 781
    .local v6, op:Lcom/android/server/AppOpsService$Op;
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v8

    .line 782
    .local v8, switchCode:I
    if-eq v8, p1, :cond_4

    const/4 v1, 0x1

    invoke-direct {p0, v7, v8, v1}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v9

    .line 783
    .local v9, switchOp:Lcom/android/server/AppOpsService$Op;
    :goto_1
    iget v1, v9, Lcom/android/server/AppOpsService$Op;->mode:I

    if-eqz v1, :cond_5

    .line 784
    const/16 v0, 0x24

    if-eq p1, v0, :cond_2

    const/16 v0, 0x34

    if-ne p1, v0, :cond_3

    .line 786
    :cond_2
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/AppOpsService;->sendOperationBroadcast(IILjava/lang/String;IZ)V

    .line 788
    :cond_3
    const-string v0, "AppOps"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startOperation: reject #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v6, Lcom/android/server/AppOpsService$Op;->mode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v6, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 791
    iget v0, v9, Lcom/android/server/AppOpsService$Op;->mode:I

    monitor-exit p0

    goto/16 :goto_0

    .line 802
    .end local v6           #op:Lcom/android/server/AppOpsService$Op;
    .end local v7           #ops:Lcom/android/server/AppOpsService$Ops;
    .end local v8           #switchCode:I
    .end local v9           #switchOp:Lcom/android/server/AppOpsService$Op;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .restart local v6       #op:Lcom/android/server/AppOpsService$Op;
    .restart local v7       #ops:Lcom/android/server/AppOpsService$Ops;
    .restart local v8       #switchCode:I
    :cond_4
    move-object v9, v6

    .line 782
    goto :goto_1

    .line 793
    .restart local v9       #switchOp:Lcom/android/server/AppOpsService$Op;
    :cond_5
    :try_start_1
    const-string v1, "AppOps"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startOperation: allowing code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    iget v1, v6, Lcom/android/server/AppOpsService$Op;->nesting:I

    if-nez v1, :cond_6

    .line 796
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v6, Lcom/android/server/AppOpsService$Op;->time:J

    .line 797
    const-wide/16 v1, 0x0

    iput-wide v1, v6, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 798
    const/4 v1, -0x1

    iput v1, v6, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 800
    :cond_6
    iget v1, v6, Lcom/android/server/AppOpsService$Op;->nesting:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v6, Lcom/android/server/AppOpsService$Op;->nesting:I

    .line 801
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public startOperationEx(III)I
    .locals 12
    .parameter "code"
    .parameter "pid"
    .parameter "uid"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 807
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->needPermissionControl()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 867
    :goto_0
    return v0

    .line 810
    :cond_0
    const-string v0, "AppOps"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startOperationEx:  code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    invoke-direct {p0, p3, v1}, Lcom/android/server/AppOpsService;->verifyIncomingUid(IZ)V

    .line 812
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 813
    const/4 v3, 0x0

    .line 815
    .local v3, packageName:Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, p3, p2, v4}, Landroid/content/pm/PackageManager;->getInstalledPackagesExtralPm(III)Ljava/util/List;

    move-result-object v9

    .line 818
    .local v9, pList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 819
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 820
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 822
    const-string v0, "AppOps"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startOperationEx:  code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " system app allowed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 823
    goto/16 :goto_0

    .line 826
    :cond_1
    const-string v0, "AppOps"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startOperationEx:  code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " no app allowed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 827
    goto/16 :goto_0

    .line 829
    .end local v9           #pList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :catch_0
    move-exception v6

    .line 830
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "AppOps"

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 832
    .end local v6           #e:Ljava/lang/Exception;
    :cond_2
    const-string v0, "AppOps"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startOperationEx: code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " packageName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    if-nez v3, :cond_3

    move v0, v1

    .line 834
    goto/16 :goto_0

    .line 836
    :cond_3
    monitor-enter p0

    .line 837
    const/4 v0, 0x1

    :try_start_1
    invoke-direct {p0, p3, v3, v0}, Lcom/android/server/AppOpsService;->getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v8

    .line 838
    .local v8, ops:Lcom/android/server/AppOpsService$Ops;
    if-nez v8, :cond_4

    .line 839
    const-string v0, "AppOps"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startOperation: no op for code "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " uid "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " package "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    monitor-exit p0

    move v0, v2

    goto/16 :goto_0

    .line 843
    :cond_4
    const/4 v0, 0x1

    invoke-direct {p0, v8, p1, v0}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v7

    .line 844
    .local v7, op:Lcom/android/server/AppOpsService$Op;
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v10

    .line 845
    .local v10, switchCode:I
    if-eq v10, p1, :cond_7

    const/4 v0, 0x1

    invoke-direct {p0, v8, v10, v0}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v11

    .line 846
    .local v11, switchOp:Lcom/android/server/AppOpsService$Op;
    :goto_1
    iget v0, v11, Lcom/android/server/AppOpsService$Op;->mode:I

    if-eqz v0, :cond_a

    .line 847
    const/16 v0, 0x24

    if-eq p1, v0, :cond_5

    const/16 v0, 0x34

    if-ne p1, v0, :cond_8

    .line 849
    :cond_5
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/AppOpsService;->sendOperationBroadcast(IILjava/lang/String;IZ)V

    .line 854
    :cond_6
    :goto_2
    const-string v0, "AppOps"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startOperation: reject #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v7, Lcom/android/server/AppOpsService$Op;->mode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 857
    iget v0, v11, Lcom/android/server/AppOpsService$Op;->mode:I

    monitor-exit p0

    goto/16 :goto_0

    .line 868
    .end local v7           #op:Lcom/android/server/AppOpsService$Op;
    .end local v8           #ops:Lcom/android/server/AppOpsService$Ops;
    .end local v10           #switchCode:I
    .end local v11           #switchOp:Lcom/android/server/AppOpsService$Op;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .restart local v7       #op:Lcom/android/server/AppOpsService$Op;
    .restart local v8       #ops:Lcom/android/server/AppOpsService$Ops;
    .restart local v10       #switchCode:I
    :cond_7
    move-object v11, v7

    .line 845
    goto :goto_1

    .line 850
    .restart local v11       #switchOp:Lcom/android/server/AppOpsService$Op;
    :cond_8
    const/16 v0, 0x13

    if-eq p1, v0, :cond_9

    const/16 v0, 0x14

    if-ne p1, v0, :cond_6

    .line 852
    :cond_9
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p3

    :try_start_2
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/AppOpsService;->sendOperationBroadcast(IILjava/lang/String;IZ)V

    goto :goto_2

    .line 859
    :cond_a
    const-string v0, "AppOps"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startOperation: allowing code "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " uid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " package "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    iget v0, v7, Lcom/android/server/AppOpsService$Op;->nesting:I

    if-nez v0, :cond_b

    .line 862
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v7, Lcom/android/server/AppOpsService$Op;->time:J

    .line 863
    const-wide/16 v4, 0x0

    iput-wide v4, v7, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 864
    const/4 v0, -0x1

    iput v0, v7, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 866
    :cond_b
    iget v0, v7, Lcom/android/server/AppOpsService$Op;->nesting:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v7, Lcom/android/server/AppOpsService$Op;->nesting:I

    .line 867
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    goto/16 :goto_0
.end method

.method public startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    .locals 4
    .parameter "op"
    .parameter "packageName"
    .parameter "callback"

    .prologue
    .line 525
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->needPermissionControl()Z

    move-result v2

    if-nez v2, :cond_0

    .line 552
    :goto_0
    return-void

    .line 528
    :cond_0
    monitor-enter p0

    .line 529
    :try_start_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p1

    .line 530
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mModeWatchers:Ljava/util/HashMap;

    invoke-interface {p3}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Callback;

    .line 531
    .local v0, cb:Lcom/android/server/AppOpsService$Callback;
    if-nez v0, :cond_1

    .line 532
    new-instance v0, Lcom/android/server/AppOpsService$Callback;

    .end local v0           #cb:Lcom/android/server/AppOpsService$Callback;
    invoke-direct {v0, p0, p3}, Lcom/android/server/AppOpsService$Callback;-><init>(Lcom/android/server/AppOpsService;Lcom/android/internal/app/IAppOpsCallback;)V

    .line 533
    .restart local v0       #cb:Lcom/android/server/AppOpsService$Callback;
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mModeWatchers:Ljava/util/HashMap;

    invoke-interface {p3}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    :cond_1
    const/4 v2, -0x1

    if-eq p1, v2, :cond_3

    .line 536
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 537
    .local v1, cbs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-nez v1, :cond_2

    .line 538
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #cbs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 539
    .restart local v1       #cbs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 541
    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    .end local v1           #cbs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_3
    if-eqz p2, :cond_5

    .line 544
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 545
    .restart local v1       #cbs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-nez v1, :cond_4

    .line 546
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #cbs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 547
    .restart local v1       #cbs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    :cond_4
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    .end local v1           #cbs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_5
    monitor-exit p0

    goto :goto_0

    .end local v0           #cb:Lcom/android/server/AppOpsService$Callback;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    .locals 6
    .parameter "callback"

    .prologue
    .line 556
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->needPermissionControl()Z

    move-result v4

    if-nez v4, :cond_0

    .line 582
    :goto_0
    return-void

    .line 559
    :cond_0
    monitor-enter p0

    .line 560
    :try_start_0
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mModeWatchers:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Callback;

    .line 561
    .local v0, cb:Lcom/android/server/AppOpsService$Callback;
    if-eqz v0, :cond_4

    .line 562
    invoke-virtual {v0}, Lcom/android/server/AppOpsService$Callback;->unlinkToDeath()V

    .line 563
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 564
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 565
    .local v1, cbs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 566
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_1

    .line 567
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 563
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 570
    .end local v1           #cbs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_2
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 571
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 572
    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;>;"
    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 573
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 574
    .restart local v1       #cbs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 575
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_3

    .line 576
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 581
    .end local v0           #cb:Lcom/android/server/AppOpsService$Callback;
    .end local v1           #cbs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .end local v2           #i:I
    .end local v3           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v0       #cb:Lcom/android/server/AppOpsService$Callback;
    :cond_4
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public systemReady()V
    .locals 13

    .prologue
    const/4 v4, 0x0

    .line 316
    monitor-enter p0

    .line 317
    const/4 v6, 0x0

    .line 318
    .local v6, changed:Z
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v9, v0, :cond_3

    .line 319
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/HashMap;

    .line 320
    .local v12, pkgs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-virtual {v12}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 321
    .local v10, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AppOpsService$Ops;>;"
    :cond_0
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/AppOpsService$Ops;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    .local v11, ops:Lcom/android/server/AppOpsService$Ops;
    :try_start_1
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, v11, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget v2, v11, Lcom/android/server/AppOpsService$Ops;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    .line 330
    .local v7, curUid:I
    :goto_2
    :try_start_2
    iget v0, v11, Lcom/android/server/AppOpsService$Ops;->uid:I

    if-eq v7, v0, :cond_0

    .line 331
    const-string v0, "AppOps"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pruning old package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v11, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v11, Lcom/android/server/AppOpsService$Ops;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": new uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    .line 334
    const/4 v6, 0x1

    goto :goto_1

    .line 327
    .end local v7           #curUid:I
    :catch_0
    move-exception v8

    .line 328
    .local v8, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v7, -0x1

    .restart local v7       #curUid:I
    goto :goto_2

    .line 337
    .end local v7           #curUid:I
    .end local v8           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v11           #ops:Lcom/android/server/AppOpsService$Ops;
    :cond_1
    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 338
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->removeAt(I)V

    .line 318
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 341
    .end local v10           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AppOpsService$Ops;>;"
    .end local v12           #pkgs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    :cond_3
    if-eqz v6, :cond_4

    .line 342
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V

    .line 344
    :cond_4
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 346
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 347
    .local v3, filter:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 348
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 349
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 350
    const-string v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 353
    return-void

    .line 344
    .end local v3           #filter:Landroid/content/IntentFilter;
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public uidRemoved(I)V
    .locals 1
    .parameter "uid"

    .prologue
    .line 370
    monitor-enter p0

    .line 371
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 373
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V

    .line 375
    :cond_0
    monitor-exit p0

    .line 376
    return-void

    .line 375
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method writeState()V
    .locals 19

    .prologue
    .line 1232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 1233
    const/4 v15, 0x0

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/AppOpsService;->getPackagesForOps([I)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1237
    .local v2, allOps:Ljava/util/List;,"Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v15}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v12

    .line 1244
    .local v12, stream:Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v10, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v10}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1245
    .local v10, out:Lorg/xmlpull/v1/XmlSerializer;
    const-string v15, "utf-8"

    invoke-interface {v10, v12, v15}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1246
    const/4 v15, 0x0

    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v10, v15, v0}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1247
    const/4 v15, 0x0

    const-string v17, "app-ops"

    move-object/from16 v0, v17

    invoke-interface {v10, v15, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1249
    if-eqz v2, :cond_8

    .line 1250
    const/4 v7, 0x0

    .line 1251
    .local v7, lastPkg:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v15

    if-ge v5, v15, :cond_7

    .line 1252
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/AppOpsManager$PackageOps;

    .line 1253
    .local v11, pkg:Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v11}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 1254
    if-eqz v7, :cond_0

    .line 1255
    const/4 v15, 0x0

    const-string v17, "pkg"

    move-object/from16 v0, v17

    invoke-interface {v10, v15, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1257
    :cond_0
    invoke-virtual {v11}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 1258
    const/4 v15, 0x0

    const-string v17, "pkg"

    move-object/from16 v0, v17

    invoke-interface {v10, v15, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1259
    const/4 v15, 0x0

    const-string v17, "n"

    move-object/from16 v0, v17

    invoke-interface {v10, v15, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1261
    :cond_1
    const/4 v15, 0x0

    const-string v17, "uid"

    move-object/from16 v0, v17

    invoke-interface {v10, v15, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1262
    const/4 v15, 0x0

    const-string v17, "n"

    invoke-virtual {v11}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v10, v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1263
    invoke-virtual {v11}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v9

    .line 1264
    .local v9, ops:Ljava/util/List;,"Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    const/4 v6, 0x0

    .local v6, j:I
    :goto_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v15

    if-ge v6, v15, :cond_6

    .line 1265
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AppOpsManager$OpEntry;

    .line 1266
    .local v8, op:Landroid/app/AppOpsManager$OpEntry;
    const/4 v15, 0x0

    const-string v17, "op"

    move-object/from16 v0, v17

    invoke-interface {v10, v15, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1267
    const/4 v15, 0x0

    const-string v17, "n"

    invoke-virtual {v8}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v10, v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1268
    invoke-virtual {v8}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v15

    if-eqz v15, :cond_2

    .line 1269
    const/4 v15, 0x0

    const-string v17, "m"

    invoke-virtual {v8}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v10, v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1271
    :cond_2
    invoke-virtual {v8}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v13

    .line 1272
    .local v13, time:J
    const-wide/16 v17, 0x0

    cmp-long v15, v13, v17

    if-eqz v15, :cond_3

    .line 1273
    const/4 v15, 0x0

    const-string v17, "t"

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v10, v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1275
    :cond_3
    invoke-virtual {v8}, Landroid/app/AppOpsManager$OpEntry;->getRejectTime()J

    move-result-wide v13

    .line 1276
    const-wide/16 v17, 0x0

    cmp-long v15, v13, v17

    if-eqz v15, :cond_4

    .line 1277
    const/4 v15, 0x0

    const-string v17, "r"

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v10, v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1279
    :cond_4
    invoke-virtual {v8}, Landroid/app/AppOpsManager$OpEntry;->getDuration()I

    move-result v3

    .line 1280
    .local v3, dur:I
    if-eqz v3, :cond_5

    .line 1281
    const/4 v15, 0x0

    const-string v17, "d"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v10, v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1283
    :cond_5
    const/4 v15, 0x0

    const-string v17, "op"

    move-object/from16 v0, v17

    invoke-interface {v10, v15, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1264
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 1238
    .end local v3           #dur:I
    .end local v5           #i:I
    .end local v6           #j:I
    .end local v7           #lastPkg:Ljava/lang/String;
    .end local v8           #op:Landroid/app/AppOpsManager$OpEntry;
    .end local v9           #ops:Ljava/util/List;,"Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v10           #out:Lorg/xmlpull/v1/XmlSerializer;
    .end local v11           #pkg:Landroid/app/AppOpsManager$PackageOps;
    .end local v12           #stream:Ljava/io/FileOutputStream;
    .end local v13           #time:J
    :catch_0
    move-exception v4

    .line 1239
    .local v4, e:Ljava/io/IOException;
    :try_start_3
    const-string v15, "AppOps"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Failed to write state: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1300
    .end local v4           #e:Ljava/io/IOException;
    :goto_2
    return-void

    .line 1285
    .restart local v5       #i:I
    .restart local v6       #j:I
    .restart local v7       #lastPkg:Ljava/lang/String;
    .restart local v9       #ops:Ljava/util/List;,"Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .restart local v10       #out:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v11       #pkg:Landroid/app/AppOpsManager$PackageOps;
    .restart local v12       #stream:Ljava/io/FileOutputStream;
    :cond_6
    const/4 v15, 0x0

    :try_start_4
    const-string v17, "uid"

    move-object/from16 v0, v17

    invoke-interface {v10, v15, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1251
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 1287
    .end local v6           #j:I
    .end local v9           #ops:Ljava/util/List;,"Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v11           #pkg:Landroid/app/AppOpsManager$PackageOps;
    :cond_7
    if-eqz v7, :cond_8

    .line 1288
    const/4 v15, 0x0

    const-string v17, "pkg"

    move-object/from16 v0, v17

    invoke-interface {v10, v15, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1292
    .end local v5           #i:I
    .end local v7           #lastPkg:Ljava/lang/String;
    :cond_8
    const/4 v15, 0x0

    const-string v17, "app-ops"

    move-object/from16 v0, v17

    invoke-interface {v10, v15, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1293
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1294
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v15, v12}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1299
    .end local v10           #out:Lorg/xmlpull/v1/XmlSerializer;
    :goto_3
    :try_start_5
    monitor-exit v16

    goto :goto_2

    .end local v2           #allOps:Ljava/util/List;,"Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v12           #stream:Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v15

    .line 1295
    .restart local v2       #allOps:Ljava/util/List;,"Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v12       #stream:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v4

    .line 1296
    .restart local v4       #e:Ljava/io/IOException;
    :try_start_6
    const-string v15, "AppOps"

    const-string v17, "Failed to write state, restoring backup."

    move-object/from16 v0, v17

    invoke-static {v15, v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1297
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v15, v12}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3
.end method
