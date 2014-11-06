.class public Lcom/meizu/app/AccessApplication;
.super Landroid/app/Activity;
.source "AccessApplication.java"

# interfaces
.implements Lcom/meizu/widget/SystemLockView$OnPanelListener;


# static fields
.field private static final MAX_TASKS:I = 0xa

.field public static final STATE_CLOSE:I = 0x0

.field public static final STATE_OPENED:I = 0x2

.field public static final STATE_TRY_CLOSE:I = 0x3

.field public static final STATE_TRY_OPEN:I = 0x1


# instance fields
.field private final TAG:Ljava/lang/String;

.field private acm:Landroid/content/pm/AccessControlManager;

.field private mComponentName:Landroid/content/ComponentName;

.field private mFromNotification:Z

.field private mIPm:Landroid/content/pm/IPackageManager;

.field private mInfo:Landroid/content/pm/ActivityInfo;

.field private mIntent:Landroid/content/Intent;

.field private mLabel:Ljava/lang/String;

.field private mLockDigitPanel:Lcom/meizu/widget/SystemLockView;

.field private mLockPasswordUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPackageName:Ljava/lang/String;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 54
    const-string v0, "AccessApplication"

    iput-object v0, p0, Lcom/meizu/app/AccessApplication;->TAG:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lcom/meizu/app/AccessApplication;->mLockPasswordUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 58
    iput-object v1, p0, Lcom/meizu/app/AccessApplication;->mPackageName:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lcom/meizu/app/AccessApplication;->mLabel:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Lcom/meizu/app/AccessApplication;->mInfo:Landroid/content/pm/ActivityInfo;

    .line 64
    iput-object v1, p0, Lcom/meizu/app/AccessApplication;->mComponentName:Landroid/content/ComponentName;

    .line 70
    new-instance v0, Lcom/meizu/app/AccessApplication$1;

    invoke-direct {v0, p0}, Lcom/meizu/app/AccessApplication$1;-><init>(Lcom/meizu/app/AccessApplication;)V

    iput-object v0, p0, Lcom/meizu/app/AccessApplication;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/app/AccessApplication;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->update()V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/app/AccessApplication;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mLockPasswordUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/app/AccessApplication;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/app/AccessApplication;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/meizu/app/AccessApplication;->mFromNotification:Z

    return v0
.end method

.method static synthetic access$400(Lcom/meizu/app/AccessApplication;)Landroid/content/pm/AccessControlManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->acm:Landroid/content/pm/AccessControlManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/meizu/app/AccessApplication;)Landroid/content/ComponentName;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$600(Lcom/meizu/app/AccessApplication;)Landroid/content/pm/ActivityInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mInfo:Landroid/content/pm/ActivityInfo;

    return-object v0
.end method

.method static synthetic access$700(Lcom/meizu/app/AccessApplication;)Lcom/meizu/widget/SystemLockView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;

    return-object v0
.end method

.method private checkAccessControl(Ljava/lang/String;)Z
    .locals 4
    .parameter "mPackageName"

    .prologue
    const/4 v0, 0x0

    .line 345
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/meizu/app/AccessApplication;->acm:Landroid/content/pm/AccessControlManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/AccessControlManager;->checkAccessControlPass(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 358
    :cond_0
    :goto_0
    return v0

    .line 349
    :cond_1
    iget-object v1, p0, Lcom/meizu/app/AccessApplication;->acm:Landroid/content/pm/AccessControlManager;

    invoke-virtual {v1}, Landroid/content/pm/AccessControlManager;->isAccessControlGuardEnable()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/meizu/app/AccessApplication;->acm:Landroid/content/pm/AccessControlManager;

    invoke-virtual {v1}, Landroid/content/pm/AccessControlManager;->isAccessControlPasswordEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 350
    :cond_2
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "access_control_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 353
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkBluetoothPairingDialog()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.android.settings"

    iget-object v1, p0, Lcom/meizu/app/AccessApplication;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    :try_start_0
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10405fa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/app/AccessApplication;->mLabel:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private checkGuestModApp()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 147
    iget-object v3, p0, Lcom/meizu/app/AccessApplication;->mIPm:Landroid/content/pm/IPackageManager;

    if-nez v3, :cond_0

    .line 148
    const-string v3, "package"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/app/AccessApplication;->mIPm:Landroid/content/pm/IPackageManager;

    .line 152
    :cond_0
    const/4 v0, 0x0

    .line 154
    .local v0, hide:Z
    :try_start_0
    iget-object v3, p0, Lcom/meizu/app/AccessApplication;->mIPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v3}, Landroid/content/pm/IPackageManager;->isGuestMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 155
    iget-object v3, p0, Lcom/meizu/app/AccessApplication;->mIPm:Landroid/content/pm/IPackageManager;

    iget-object v4, p0, Lcom/meizu/app/AccessApplication;->mPackageName:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/content/pm/IPackageManager;->getPackageGuestSetting(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 164
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 165
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x104062a

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/meizu/app/AccessApplication;->mLabel:Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 168
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 171
    :goto_1
    return v1

    :cond_2
    move v1, v2

    goto :goto_1

    .line 161
    :catch_0
    move-exception v3

    goto :goto_0

    .line 159
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private setActionBar(Z)V
    .locals 9
    .parameter "port"

    .prologue
    const/4 v8, 0x0

    const v5, 0x1090036

    const v4, 0x10202a2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 415
    if-eqz p1, :cond_0

    .line 416
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->show()V

    .line 417
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 418
    .local v0, layout:Landroid/view/LayoutInflater;
    invoke-virtual {v0, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 420
    .local v2, viewGroup:Landroid/view/ViewGroup;
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 421
    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/meizu/widget/SystemLockView;

    iput-object v3, p0, Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;

    .line 422
    iget-object v3, p0, Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;

    invoke-virtual {v3, v7}, Lcom/meizu/widget/SystemLockView;->setLockDigitViewAspect(I)V

    .line 434
    :goto_0
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/meizu/app/AccessApplication;->mLockPasswordUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 441
    iget-object v3, p0, Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;

    invoke-virtual {v3, v6}, Lcom/meizu/widget/SystemLockView;->setInputTextButtonVisibility(Z)V

    .line 442
    iget-object v3, p0, Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;

    invoke-virtual {v3, p0}, Lcom/meizu/widget/SystemLockView;->setPanelListener(Lcom/meizu/widget/SystemLockView$OnPanelListener;)V

    .line 443
    iget-object v3, p0, Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040610

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/meizu/app/AccessApplication;->mLabel:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/meizu/widget/SystemLockView;->setTip(Ljava/lang/String;)V

    .line 446
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "meizu_password_length"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 448
    .local v1, max:I
    if-nez v1, :cond_1

    .line 449
    iget-object v3, p0, Lcom/meizu/app/AccessApplication;->mLockPasswordUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v7}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 450
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 456
    :goto_1
    return-void

    .line 424
    .end local v0           #layout:Landroid/view/LayoutInflater;
    .end local v1           #max:I
    .end local v2           #viewGroup:Landroid/view/ViewGroup;
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->hide()V

    .line 425
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 426
    .restart local v0       #layout:Landroid/view/LayoutInflater;
    invoke-virtual {v0, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 428
    .restart local v2       #viewGroup:Landroid/view/ViewGroup;
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 429
    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/meizu/widget/SystemLockView;

    iput-object v3, p0, Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;

    .line 430
    iget-object v3, p0, Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;

    invoke-virtual {v3, v6}, Lcom/meizu/widget/SystemLockView;->setLockDigitViewAspect(I)V

    goto :goto_0

    .line 453
    .restart local v1       #max:I
    :cond_1
    iget-object v3, p0, Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;

    invoke-virtual {v3, v1}, Lcom/meizu/widget/SystemLockView;->setMaxLen(I)V

    .line 454
    iget-object v3, p0, Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;

    invoke-virtual {v3, v7}, Lcom/meizu/widget/SystemLockView;->setWidgetLayoutVisibility(Z)V

    goto :goto_1
.end method

.method private update()V
    .locals 2

    .prologue
    .line 186
    iget-object v1, p0, Lcom/meizu/app/AccessApplication;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/meizu/app/AccessApplication;->checkAccessControl(Ljava/lang/String;)Z

    move-result v0

    .line 187
    .local v0, access:Z
    if-nez v0, :cond_0

    .line 188
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 190
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 301
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 302
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 303
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->onBackPressed()V

    .line 305
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 307
    .local v0, localObject2:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 308
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 309
    const/4 v1, 0x1

    .line 312
    .end local v0           #localObject2:Landroid/content/Intent;
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public isOpenFindLock()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 384
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 385
    .local v1, am:Landroid/accounts/AccountManager;
    const-string v4, "com.meizu.account"

    invoke-virtual {v1, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 386
    .local v0, accounts:[Landroid/accounts/Account;
    if-eqz v0, :cond_0

    array-length v4, v0

    if-nez v4, :cond_1

    .line 395
    :cond_0
    :goto_0
    return v3

    .line 390
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "com.meizu.flyme.FindPhone"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 392
    .local v2, state:I
    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    .line 393
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 293
    const-string v0, "access"

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/meizu/app/AccessApplication;->removeSecondTopRecentTask(Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->acm:Landroid/content/pm/AccessControlManager;

    iget-object v1, p0, Lcom/meizu/app/AccessApplication;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/AccessControlManager;->removeAccessControlPass(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 297
    return-void
.end method

.method public onCellAdded(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    .line 215
    return-void
.end method

.method public onCellCleared(Ljava/lang/String;)V
    .locals 0
    .parameter "possword"

    .prologue
    .line 210
    return-void
.end method

.method public onCellFhish(Ljava/lang/String;)V
    .locals 2
    .parameter "password"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mLockPasswordUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 274
    :goto_0
    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;

    new-instance v1, Lcom/meizu/app/AccessApplication$2;

    invoke-direct {v1, p0, p1}, Lcom/meizu/app/AccessApplication$2;-><init>(Lcom/meizu/app/AccessApplication;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    const/4 v1, 0x1

    .line 402
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 404
    invoke-direct {p0, v1}, Lcom/meizu/app/AccessApplication;->setActionBar(Z)V

    .line 407
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 409
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/meizu/app/AccessApplication;->setActionBar(Z)V

    .line 411
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 412
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 79
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 83
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/ActionBar;->setActionBarViewCollapsable(Z)V

    .line 85
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 87
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/app/AccessApplication;->mIntent:Landroid/content/Intent;

    .line 88
    invoke-virtual {p0}, Landroid/app/Activity;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/app/AccessApplication;->mInfo:Landroid/content/pm/ActivityInfo;

    .line 89
    iget-object v3, p0, Lcom/meizu/app/AccessApplication;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAccessPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/app/AccessApplication;->mPackageName:Ljava/lang/String;

    .line 90
    iget-object v3, p0, Lcom/meizu/app/AccessApplication;->mPackageName:Ljava/lang/String;

    if-eqz v3, :cond_0

    const-string v3, ""

    iget-object v4, p0, Lcom/meizu/app/AccessApplication;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 91
    :cond_0
    iget-object v3, p0, Lcom/meizu/app/AccessApplication;->mInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_1

    .line 92
    iget-object v3, p0, Lcom/meizu/app/AccessApplication;->mInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->mAccessPkg:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/app/AccessApplication;->mPackageName:Ljava/lang/String;

    .line 96
    :cond_1
    iget-object v3, p0, Lcom/meizu/app/AccessApplication;->mPackageName:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/meizu/app/AccessApplication;->mPackageName:Ljava/lang/String;

    const-string v4, "com.android.phone"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 97
    const-string v3, "com.android.contacts"

    iput-object v3, p0, Lcom/meizu/app/AccessApplication;->mPackageName:Ljava/lang/String;

    .line 100
    :cond_2
    iget-object v3, p0, Lcom/meizu/app/AccessApplication;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAccessPackageLabel()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/app/AccessApplication;->mLabel:Ljava/lang/String;

    .line 101
    iget-object v3, p0, Lcom/meizu/app/AccessApplication;->mLabel:Ljava/lang/String;

    if-eqz v3, :cond_3

    const-string v3, ""

    iget-object v4, p0, Lcom/meizu/app/AccessApplication;->mLabel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 102
    :cond_3
    iget-object v3, p0, Lcom/meizu/app/AccessApplication;->mInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_4

    .line 103
    iget-object v3, p0, Lcom/meizu/app/AccessApplication;->mInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->mDisplaytitleString:Ljava/lang/CharSequence;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/app/AccessApplication;->mLabel:Ljava/lang/String;

    .line 107
    :cond_4
    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->checkGuestModApp()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 108
    iput-boolean v5, p0, Lcom/meizu/app/AccessApplication;->mFromNotification:Z

    .line 113
    :goto_0
    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->checkBluetoothPairingDialog()V

    .line 115
    iget-object v3, p0, Lcom/meizu/app/AccessApplication;->mInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_5

    .line 116
    iget-object v3, p0, Lcom/meizu/app/AccessApplication;->mInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->mStartComponentName:Landroid/content/ComponentName;

    iput-object v3, p0, Lcom/meizu/app/AccessApplication;->mComponentName:Landroid/content/ComponentName;

    .line 119
    :cond_5
    iget-object v3, p0, Lcom/meizu/app/AccessApplication;->mComponentName:Landroid/content/ComponentName;

    if-nez v3, :cond_6

    .line 120
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 125
    :cond_6
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 126
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    or-int/lit8 v4, v4, 0x20

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    .line 129
    :cond_7
    const-string v3, "window"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 132
    .local v1, mDisplay:Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 133
    .local v2, rot:I
    if-eq v2, v6, :cond_8

    const/4 v3, 0x3

    if-ne v2, v3, :cond_a

    .line 135
    :cond_8
    invoke-direct {p0, v5}, Lcom/meizu/app/AccessApplication;->setActionBar(Z)V

    .line 141
    :goto_1
    const-string v3, "access_control"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/AccessControlManager;

    iput-object v3, p0, Lcom/meizu/app/AccessApplication;->acm:Landroid/content/pm/AccessControlManager;

    .line 142
    const-string v3, "input_method"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 144
    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    return-void

    .line 110
    .end local v0           #inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    .end local v1           #mDisplay:Landroid/view/Display;
    .end local v2           #rot:I
    :cond_9
    iget-object v3, p0, Lcom/meizu/app/AccessApplication;->mIntent:Landroid/content/Intent;

    const-string v4, "fromNotification"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/meizu/app/AccessApplication;->mFromNotification:Z

    goto :goto_0

    .line 138
    .restart local v1       #mDisplay:Landroid/view/Display;
    .restart local v2       #rot:I
    :cond_a
    invoke-direct {p0, v6}, Lcom/meizu/app/AccessApplication;->setActionBar(Z)V

    goto :goto_1
.end method

.method public onInputTextButtonClick(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    .line 289
    return-void
.end method

.method public onKeyLeftButtonClick(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->onBackPressed()V

    .line 365
    return-void
.end method

.method public onKeyRightButtonClick(Ljava/lang/String;)V
    .locals 2
    .parameter "password"

    .prologue
    .line 369
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;

    new-instance v1, Lcom/meizu/app/AccessApplication$3;

    invoke-direct {v1, p0, p1}, Lcom/meizu/app/AccessApplication$3;-><init>(Lcom/meizu/app/AccessApplication;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 376
    return-void
.end method

.method public onLeftButtonClick(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->onBackPressed()V

    .line 279
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 193
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 194
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 195
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 198
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 199
    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->update()V

    .line 200
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 201
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACCESS_CONTROL_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 202
    iget-object v1, p0, Lcom/meizu/app/AccessApplication;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 203
    iget-object v1, p0, Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 204
    iget-object v1, p0, Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 205
    return-void
.end method

.method public onRightButtonClick(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    .line 284
    return-void
.end method

.method public removeSecondTopRecentTask(Ljava/lang/String;)V
    .locals 13
    .parameter "pkg"

    .prologue
    const/4 v9, 0x1

    .line 316
    const-string v10, "activity"

    invoke-virtual {p0, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 317
    .local v0, am:Landroid/app/ActivityManager;
    iget-object v10, p0, Lcom/meizu/app/AccessApplication;->mIntent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getMeizuFlags()I

    move-result v10

    and-int/lit8 v10, v10, 0x40

    if-eqz v10, :cond_3

    move v8, v9

    .line 318
    .local v8, remove:Z
    :goto_0
    const/16 v10, 0xa

    invoke-virtual {v0, v10, v9}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v7

    .line 321
    .local v7, recentTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    .line 322
    .local v4, numTasks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_4

    .line 323
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 325
    .local v6, recentInfo:Landroid/app/ActivityManager$RecentTaskInfo;
    new-instance v3, Landroid/content/Intent;

    iget-object v10, v6, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 326
    .local v3, intent:Landroid/content/Intent;
    iget-object v10, v6, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v10, :cond_0

    .line 327
    iget-object v10, v6, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 329
    :cond_0
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 330
    .local v5, packageName:Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    if-ne v2, v9, :cond_2

    if-eqz v8, :cond_2

    .line 331
    :cond_1
    const-string v10, "access"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "moveTaskBack :  packageName : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " recentInfo :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v10

    iget v11, v6, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-interface {v10, v11}, Landroid/app/IActivityManager;->moveTaskToBack(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 317
    .end local v2           #i:I
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #numTasks:I
    .end local v5           #packageName:Ljava/lang/String;
    .end local v6           #recentInfo:Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v7           #recentTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v8           #remove:Z
    :cond_3
    const/4 v8, 0x0

    goto :goto_0

    .line 335
    .restart local v2       #i:I
    .restart local v3       #intent:Landroid/content/Intent;
    .restart local v4       #numTasks:I
    .restart local v5       #packageName:Ljava/lang/String;
    .restart local v6       #recentInfo:Landroid/app/ActivityManager$RecentTaskInfo;
    .restart local v7       #recentTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .restart local v8       #remove:Z
    :catch_0
    move-exception v1

    .line 336
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 342
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v5           #packageName:Ljava/lang/String;
    .end local v6           #recentInfo:Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_4
    return-void
.end method
