.class public Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;
.source "KeyguardViewContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;,
        Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$WallpaperObserver;,
        Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;,
        Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;
    }
.end annotation


# static fields
.field static final AWAKE_INTERVAL_DEFAULT_MS:I = 0x2710

.field public static DEBUG:Z = false

.field private static final HOMEKEY_DELAY_TIME:I = 0x12c

.field private static final TAG:Ljava/lang/String; = null

.field private static final UPDATE_WALLPAPER_FORCE:I = 0x3e9


# instance fields
.field initMusicController:Ljava/lang/Runnable;

.field private mCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;

.field private final mHandler:Landroid/os/Handler;

.field private mKeyguardView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardScreen;

.field private mLastDoubleHomeKeyTime:J

.field private mLastHomeKeyEventTime:J

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mRequiresSim:Z

.field private mSecurityMode:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;

.field mSendHomeKeyMsg:Ljava/lang/Runnable;

.field private mViewMode:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;

.field private mWallpaperManager:Landroid/app/WallpaperManager;

.field private mWallpaperObserver:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$WallpaperObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-boolean v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->DEBUG:Z

    .line 28
    const-class v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;)V
    .locals 3
    .parameter "context"
    .parameter "viewMediatorCallback"

    .prologue
    const-wide/16 v1, -0x1

    .line 81
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;-><init>(Landroid/content/Context;)V

    .line 219
    new-instance v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$1;

    invoke-direct {v0, p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$1;-><init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;)V

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->initMusicController:Ljava/lang/Runnable;

    .line 351
    iput-wide v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mLastHomeKeyEventTime:J

    .line 352
    iput-wide v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mLastDoubleHomeKeyTime:J

    .line 354
    new-instance v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$3;

    invoke-direct {v0, p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$3;-><init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;)V

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mSendHomeKeyMsg:Ljava/lang/Runnable;

    .line 409
    new-instance v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$4;

    invoke-direct {v0, p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$4;-><init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;)V

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;

    .line 509
    new-instance v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$5;

    invoke-direct {v0, p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$5;-><init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;)V

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mHandler:Landroid/os/Handler;

    .line 82
    const-string v0, "keyguard.debug.enable"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->DEBUG:Z

    .line 83
    invoke-virtual {p0, p2}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->setViewMediatorCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;)V

    .line 84
    new-instance v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$WallpaperObserver;

    invoke-direct {v0, p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$WallpaperObserver;-><init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;)V

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mWallpaperObserver:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$WallpaperObserver;

    .line 86
    const-string v0, "keyguard.no_require_sim"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mRequiresSim:Z

    .line 87
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 88
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->updateMode()V

    .line 89
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->updateScreen(ZLcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;)V

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->updateWallpaper(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;)Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;)Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;)Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;)Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;)Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;)Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;)Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mKeyguardView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardScreen;

    return-object v0
.end method

.method static synthetic access$600(Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mLastDoubleHomeKeyTime:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;)Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    return-object v0
.end method

.method static synthetic access$800(Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;)Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    return-object v0
.end method

.method static synthetic access$900(Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;)Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    return-object v0
.end method

.method private createKeyguardView(Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardScreen;
    .locals 4
    .parameter "mode"

    .prologue
    .line 194
    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;->Slide:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;

    if-ne p1, v0, :cond_0

    .line 201
    new-instance v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;

    invoke-direct {v0, v1, v2}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;-><init>(Landroid/content/Context;Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;)V

    .line 207
    :goto_0
    return-object v0

    .line 202
    :cond_0
    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;->Password:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;

    if-ne p1, v0, :cond_1

    .line 203
    new-instance v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mSecurityMode:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;

    invoke-direct {v0, v1, v2, v3}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;-><init>(Landroid/content/Context;Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;)V

    goto :goto_0

    .line 204
    :cond_1
    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;->FindPhone:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;

    if-ne p1, v0, :cond_2

    .line 205
    new-instance v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;

    invoke-direct {v0, v1, v2}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;-><init>(Landroid/content/Context;Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;)V

    goto :goto_0

    .line 207
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private stuckOnLockScreenBecauseSimMissing()Z
    .locals 3

    .prologue
    .line 473
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 474
    .local v0, updateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    iget-boolean v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mRequiresSim:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateMode()V
    .locals 6

    .prologue
    .line 124
    sget-object v3, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;->Slide:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mViewMode:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;

    .line 125
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    .line 126
    .local v2, updateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    .line 127
    .local v1, simState:Lcom/android/internal/telephony/IccCardConstants$State;
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v3, :cond_1

    .line 128
    sget-object v3, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;->SimPin:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mSecurityMode:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;

    .line 129
    sget-object v3, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;->Password:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mViewMode:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v3, :cond_2

    .line 131
    sget-object v3, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;->SimPuk:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mSecurityMode:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;

    .line 132
    sget-object v3, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;->Password:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mViewMode:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;

    goto :goto_0

    .line 133
    :cond_2
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isFindphoneLocked()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 134
    sget-object v3, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;->FindPhone:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mSecurityMode:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;

    .line 135
    sget-object v3, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;->FindPhone:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mViewMode:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;

    goto :goto_0

    .line 137
    :cond_3
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v0

    .line 138
    .local v0, security:I
    sparse-switch v0, :sswitch_data_0

    .line 154
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown unlock mode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 143
    :sswitch_0
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->isKeyguardLockEnable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 144
    sget-object v3, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;->Password:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mSecurityMode:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;

    .line 145
    sget-object v3, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;->Password:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mViewMode:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;

    goto :goto_0

    .line 150
    :sswitch_1
    sget-object v3, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;->Invalid:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mSecurityMode:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;

    .line 151
    sget-object v3, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;->Slide:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mViewMode:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;

    goto :goto_0

    .line 138
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x10000 -> :sswitch_1
        0x20000 -> :sswitch_0
        0x40000 -> :sswitch_0
        0x50000 -> :sswitch_0
        0x60000 -> :sswitch_0
    .end sparse-switch
.end method

.method private updateScreen(ZLcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;)V
    .locals 4
    .parameter "force"
    .parameter "old"

    .prologue
    const/4 v3, 0x0

    .line 160
    const/4 v0, 0x0

    .line 161
    .local v0, newKeyguardView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardScreen;
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mViewMode:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mKeyguardView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardScreen;

    if-nez v1, :cond_1

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mViewMode:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;

    invoke-direct {p0, v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->createKeyguardView(Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardScreen;

    move-result-object v0

    .line 165
    :cond_1
    if-eqz v0, :cond_3

    .line 166
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mKeyguardView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardScreen;

    if-eqz v1, :cond_2

    .line 167
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mKeyguardView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardScreen;

    invoke-interface {v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardScreen;->onPause()V

    .line 168
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mKeyguardView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardScreen;

    invoke-interface {v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardScreen;->cleanUp()V

    .line 169
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mKeyguardView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardScreen;

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 171
    :cond_2
    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mKeyguardView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardScreen;

    .line 172
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mKeyguardView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardScreen;

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 173
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mKeyguardView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardScreen;

    invoke-interface {v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardScreen;->onResume()V

    .line 175
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v1, :cond_3

    .line 176
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mViewMode:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;

    sget-object v2, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;->Slide:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;

    if-ne v1, v2, :cond_4

    .line 177
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v1, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->enableUnlockAnim(Z)V

    .line 186
    :cond_3
    :goto_0
    invoke-direct {p0, v3}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->updateWallpaper(Z)V

    .line 187
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mKeyguardView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardScreen;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v1

    if-nez v1, :cond_5

    .line 188
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keyguard screen must be able to take focus when shown "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mKeyguardView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardScreen;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 179
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->enableUnlockAnim(Z)V

    goto :goto_0

    .line 191
    :cond_5
    return-void
.end method

.method private updateWallpaper(Z)V
    .locals 4
    .parameter "force"

    .prologue
    .line 97
    :try_start_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "updateWallpaper"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 99
    sget-boolean v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateWallpaper(),hasBootCompleted:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " hasAMSReady:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->hasAMSReady()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " force:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mWallpaperManager:Landroid/app/WallpaperManager;

    if-nez v1, :cond_1

    if-nez p1, :cond_2

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->hasAMSReady()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 105
    :cond_2
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v2, "wallpaper"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/WallpaperManager;

    iput-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 107
    :cond_3
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mWallpaperManager:Landroid/app/WallpaperManager;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mKeyguardView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardScreen;

    if-eqz v1, :cond_4

    .line 108
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mKeyguardView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardScreen;

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v2}, Landroid/app/WallpaperManager;->getFastDrawableOfLockWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 109
    :cond_4
    sget-boolean v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->DEBUG:Z

    if-eqz v1, :cond_5

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateWallpaper(),mWallpaperManager:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_5
    return-void
.end method


# virtual methods
.method public afterAMSReady()V
    .locals 2

    .prologue
    .line 504
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 506
    :cond_0
    return-void
.end method

.method public cleanUp()V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mKeyguardView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardScreen;

    invoke-interface {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardScreen;->cleanUp()V

    .line 287
    return-void
.end method

.method public dismiss()V
    .locals 0

    .prologue
    .line 316
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 376
    sget-boolean v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchKeyEvent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 378
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->handleHomeKeyEvent()V

    .line 381
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getUserActivityTimeout()J
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mKeyguardView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardScreen;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mKeyguardView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardScreen;

    invoke-interface {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardScreen;->getUserActivityTimeout()J

    move-result-wide v0

    .line 240
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x2710

    goto :goto_0
.end method

.method public goToUserSwitcher()V
    .locals 0

    .prologue
    .line 326
    return-void
.end method

.method public goToWidget(I)V
    .locals 0
    .parameter "appWidgetId"

    .prologue
    .line 337
    return-void
.end method

.method public handleBackKey()Z
    .locals 1

    .prologue
    .line 304
    const/4 v0, 0x0

    return v0
.end method

.method handleHomeKeyEvent()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x12c

    .line 363
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mSendHomeKeyMsg:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 364
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mLastHomeKeyEventTime:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-gez v0, :cond_1

    .line 365
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mKeyguardView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardScreen;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mKeyguardView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardScreen;

    invoke-interface {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardScreen;->doubleHomekeyEvent()V

    .line 367
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mLastDoubleHomeKeyTime:J

    .line 372
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mLastHomeKeyEventTime:J

    .line 373
    return-void

    .line 370
    :cond_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mSendHomeKeyMsg:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public handleMenuKey()Z
    .locals 1

    .prologue
    .line 310
    const/4 v0, 0x0

    return v0
.end method

.method public isSimSecureMode()Z
    .locals 2

    .prologue
    .line 487
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mSecurityMode:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;->SimPin:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mSecurityMode:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;->SimPuk:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSlideMode()Z
    .locals 2

    .prologue
    .line 491
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mViewMode:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;->Slide:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mKeyguardView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardScreen;

    invoke-interface {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardScreen;->needsInput()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 212
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 213
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 214
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.LOCK_WALLPAPER_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 215
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mWallpaperObserver:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$WallpaperObserver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 216
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->initMusicController:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 217
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 228
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;

    .line 230
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mWallpaperObserver:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$WallpaperObserver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 231
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->initMusicController:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 232
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->getInstance(Landroid/content/Context;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->onKeyguardDetached()V

    .line 233
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mKeyguardView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardScreen;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mKeyguardView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardScreen;

    invoke-interface {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardScreen;->onPause()V

    .line 253
    :cond_0
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mKeyguardView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardScreen;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mKeyguardView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardScreen;

    invoke-interface {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardScreen;->onResume()V

    .line 259
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasWindowFocus"

    .prologue
    .line 481
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 482
    if-eqz p1, :cond_0

    .line 483
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->adjustStatusBarLocked()V

    .line 484
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 292
    return-void
.end method

.method public screenDimStateChange()V
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mKeyguardView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardScreen;

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mKeyguardView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardScreen;

    invoke-interface {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardScreen;->screenDimStateChange()V

    .line 498
    :cond_0
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .parameter "utils"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 114
    return-void
.end method

.method public setViewMediatorCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;)V
    .locals 2
    .parameter "viewMediatorCallback"

    .prologue
    .line 342
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->setViewMediatorCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;)V

    .line 343
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mViewMode:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;->Slide:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;

    if-ne v0, v1, :cond_0

    .line 344
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->enableUnlockAnim(Z)V

    .line 348
    :goto_0
    return-void

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->enableUnlockAnim(Z)V

    goto :goto_0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mKeyguardView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardScreen;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mKeyguardView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardScreen;

    invoke-interface {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardScreen;->onResume()V

    .line 247
    :cond_0
    return-void
.end method

.method public showAssistant()V
    .locals 0

    .prologue
    .line 321
    return-void
.end method

.method public showNextSecurityScreenIfPresent()Z
    .locals 1

    .prologue
    .line 331
    const/4 v0, 0x0

    return v0
.end method

.method public showNextSecurityScreenOrFinish()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 447
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    .line 448
    .local v2, updateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    .line 449
    .local v1, simState:Lcom/android/internal/telephony/IccCardConstants$State;
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->stuckOnLockScreenBecauseSimMissing()Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v3, :cond_1

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isPukUnlockScreenEnable()Z

    move-result v3

    if-nez v3, :cond_1

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 457
    :cond_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mViewMode:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;

    .line 458
    .local v0, oldMode:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->updateMode()V

    .line 459
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mViewMode:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;

    sget-object v4, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;->Slide:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->skipPasswordLockForExternalKeyguard()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 461
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v3, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->keyguardDone(Z)V

    .line 465
    :goto_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->adjustStatusBarLocked()V

    .line 466
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->adjustAudioFocus()V

    goto :goto_0

    .line 463
    :cond_3
    invoke-direct {p0, v5, v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->updateScreen(ZLcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;)V

    goto :goto_1
.end method

.method public verifyUnlock()V
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->isKeyguardSecure()Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->keyguardDone(Z)V

    .line 299
    :cond_0
    return-void
.end method

.method public wakeWhenReadyTq(I)V
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 263
    const/16 v0, 0xdd

    if-ne p1, v0, :cond_2

    .line 264
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mViewMode:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;->Slide:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$ViewMode;

    if-ne v0, v1, :cond_0

    .line 265
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mKeyguardView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardScreen;

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mKeyguardView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardScreen;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 267
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;

    invoke-interface {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;->showNextSecurityScreenOrFinish()V

    .line 269
    :cond_0
    new-instance v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$2;

    invoke-direct {v0, p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$2;-><init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 282
    :cond_1
    :goto_0
    return-void

    .line 278
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v0, :cond_1

    .line 279
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->wakeUp()V

    goto :goto_0
.end method
