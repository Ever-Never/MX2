.class public Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;
.super Ljava/lang/Object;
.source "KeyguardViewManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field static final DIGIT_PRESS_WAKE_MILLIS:I = 0x1388

.field public static SHOW_MEIZU_KEYGUARD:Z

.field private static TAG:Ljava/lang/String;

.field public static USE_UPPER_CASE:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mKeyguardHost:Landroid/widget/FrameLayout;

.field public mKeyguardSetHiddenTime:J

.field private mKeyguardShowTime:J

.field private mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNeedsInput:Z

.field private mScreenOn:Z

.field mStateContainer:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewManager:Landroid/view/ViewManager;

.field private final mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

.field private mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 61
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->DEBUG:Z

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->DEBUG:Z

    .line 62
    const-string v0, "KeyguardViewManager"

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    .line 63
    sput-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->USE_UPPER_CASE:Z

    .line 64
    sput-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->SHOW_MEIZU_KEYGUARD:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewManager;Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 3
    .parameter "context"
    .parameter "viewManager"
    .parameter "callback"
    .parameter "lockPatternUtils"

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mNeedsInput:Z

    .line 81
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mScreenOn:Z

    .line 82
    iput-wide v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardShowTime:J

    .line 83
    iput-wide v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardSetHiddenTime:J

    .line 172
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mStateContainer:Landroid/util/SparseArray;

    .line 99
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    .line 100
    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    .line 101
    iput-object p3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    .line 102
    iput-object p4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->shouldEnableScreenRotation()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;ZZLandroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->maybeCreateKeyguardLocked(ZZLandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 60
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->DEBUG:Z

    return v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;

    return-object v0
.end method

.method private inflateKeyguardView(Landroid/os/Bundle;)V
    .locals 9
    .parameter "options"

    .prologue
    const v8, 0x10202e6

    .line 251
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 252
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 253
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 258
    :cond_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 259
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v5, 0x109005c

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    const/4 v7, 0x1

    invoke-virtual {v0, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 260
    .local v3, view:Landroid/view/View;
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;

    .line 261
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 262
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->setViewMediatorCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;)V

    .line 267
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v5, :cond_1

    .line 268
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;

    const v6, 0x10202f2

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/KeyguardPasswordView;

    .line 271
    .local v1, kpv:Lcom/android/internal/policy/impl/keyguard/KeyguardPasswordView;
    if-eqz v1, :cond_1

    .line 272
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardPasswordView;->needsInput()Z

    move-result v6

    invoke-interface {v5, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->setNeedsInput(Z)V

    .line 276
    .end local v1           #kpv:Lcom/android/internal/policy/impl/keyguard/KeyguardPasswordView;
    :cond_1
    if-eqz p1, :cond_4

    .line 277
    const-string v5, "showuserswitcher"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 278
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->goToUserSwitcher()V

    .line 280
    :cond_2
    const-string v5, "showsecuritychallenge"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 281
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->showNextSecurityScreenIfPresent()Z

    .line 283
    :cond_3
    const-string v5, "showappwidget"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 285
    .local v4, widgetToShow:I
    if-eqz v4, :cond_4

    .line 286
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;

    invoke-virtual {v5, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->goToWidget(I)V

    .line 289
    .end local v4           #widgetToShow:I
    :cond_4
    return-void
.end method

.method private inflateKeyguardViewMz()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 497
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;

    if-eqz v2, :cond_0

    .line 498
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;

    .line 499
    .local v0, lastView:Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;

    .line 500
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$3;

    invoke-direct {v3, p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$3;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 515
    .end local v0           #lastView:Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;
    :cond_0
    new-instance v2, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-direct {v2, v3, v4}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;

    .line 516
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 519
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;

    invoke-virtual {v2, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 524
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v2, :cond_1

    .line 525
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;

    check-cast v2, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;

    invoke-virtual {v2}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->needsInput()Z

    move-result v2

    invoke-interface {v3, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->setNeedsInput(Z)V

    .line 541
    :cond_1
    return-void
.end method

.method private maybeCreateKeyguardLocked(ZZLandroid/os/Bundle;)V
    .locals 9
    .parameter "enableScreenRotation"
    .parameter "force"
    .parameter "options"

    .prologue
    const/high16 v8, 0x100

    const/4 v1, -0x1

    .line 176
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    instance-of v6, v2, Landroid/app/Activity;

    .line 178
    .local v6, isActivity:Z
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_0

    .line 179
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mStateContainer:Landroid/util/SparseArray;

    invoke-virtual {v2, v5}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 182
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    if-nez v2, :cond_8

    .line 183
    sget-boolean v2, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->DEBUG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v5, "keyguard host is null, creating it..."

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_1
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    .line 187
    const/16 v4, 0x940

    .line 192
    .local v4, flags:I
    sget-boolean v2, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->SHOW_MEIZU_KEYGUARD:Z

    if-nez v2, :cond_2

    .line 193
    const/high16 v2, 0x10

    or-int/2addr v4, v2

    .line 195
    :cond_2
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mNeedsInput:Z

    if-nez v2, :cond_3

    .line 196
    const/high16 v2, 0x2

    or-int/2addr v4, v2

    .line 198
    :cond_3
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 199
    or-int/2addr v4, v8

    .line 202
    :cond_4
    const/4 v7, -0x1

    .line 203
    .local v7, stretch:I
    if-eqz v6, :cond_b

    const/4 v3, 0x2

    .line 205
    .local v3, type:I
    :goto_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 207
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 208
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->SHOW_MEIZU_KEYGUARD:Z

    if-nez v1, :cond_5

    .line 209
    const v1, 0x10301e2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 210
    :cond_5
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 211
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v1, v8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 212
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 215
    :cond_6
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 216
    if-eqz v6, :cond_7

    .line 217
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 219
    :cond_7
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 220
    if-eqz v6, :cond_c

    const-string v1, "KeyguardMock"

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 221
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    and-int/lit8 v1, v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    .line 223
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    .line 224
    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 225
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    invoke-interface {v1, v2, v0}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    .end local v0           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v3           #type:I
    .end local v4           #flags:I
    .end local v7           #stretch:I
    :cond_8
    if-nez p2, :cond_9

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;

    if-nez v1, :cond_a

    .line 229
    :cond_9
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->SHOW_MEIZU_KEYGUARD:Z

    if-eqz v1, :cond_e

    .line 231
    if-eqz p3, :cond_d

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;

    check-cast v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;

    invoke-virtual {v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->isSimSecureMode()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mScreenOn:Z

    if-eqz v1, :cond_d

    .line 234
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;

    check-cast v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;

    invoke-virtual {v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->showNextSecurityScreenOrFinish()V

    .line 244
    :cond_a
    :goto_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->updateUserActivityTimeoutInWindowLayoutParams()V

    .line 245
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v5}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mStateContainer:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 248
    return-void

    .line 203
    .restart local v4       #flags:I
    .restart local v7       #stretch:I
    :cond_b
    const/16 v3, 0x7d4

    goto/16 :goto_0

    .line 220
    .restart local v0       #lp:Landroid/view/WindowManager$LayoutParams;
    .restart local v3       #type:I
    :cond_c
    const-string v1, "Keyguard"

    goto :goto_1

    .line 236
    .end local v0           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v3           #type:I
    .end local v4           #flags:I
    .end local v7           #stretch:I
    :cond_d
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->inflateKeyguardViewMz()V

    goto :goto_2

    .line 239
    :cond_e
    invoke-direct {p0, p3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->inflateKeyguardView(Landroid/os/Bundle;)V

    goto :goto_2
.end method

.method private maybeEnableScreenRotation(Z)V
    .locals 3
    .parameter "enableScreenRotation"

    .prologue
    .line 313
    if-eqz p1, :cond_1

    .line 314
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v1, "Rotation sensor for lock screen On!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 320
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 321
    return-void

    .line 317
    :cond_1
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v1, "Rotation sensor for lock screen Off!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_0
.end method

.method private shouldEnableScreenRotation()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 134
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 135
    .local v0, res:Landroid/content/res/Resources;
    const-string v2, "lockscreen.rot_override"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    const v2, 0x1110027

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private updateUserActivityTimeoutInWindowLayoutParams()V
    .locals 5

    .prologue
    .line 299
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;

    if-eqz v2, :cond_0

    .line 300
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->getUserActivityTimeout()J

    move-result-wide v0

    .line 301
    .local v0, timeout:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 302
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput-wide v0, v2, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 309
    .end local v0           #timeout:J
    :goto_0
    return-void

    .line 308
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-wide/16 v3, 0x2710

    iput-wide v3, v2, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    goto :goto_0
.end method


# virtual methods
.method public afterAMSReady()V
    .locals 1

    .prologue
    .line 586
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->SHOW_MEIZU_KEYGUARD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;

    check-cast v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->afterAMSReady()V

    .line 589
    :cond_0
    return-void
.end method

.method public declared-synchronized dismiss()V
    .locals 1

    .prologue
    .line 472
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mScreenOn:Z

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 475
    :cond_0
    monitor-exit p0

    return-void

    .line 472
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public enableUnlockScreenAnimation(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    .line 551
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_1

    const v0, 0x10301e2

    :goto_0
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 553
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 555
    :cond_0
    return-void

    .line 551
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized hide()V
    .locals 5

    .prologue
    .line 437
    monitor-enter p0

    :try_start_0
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v2, "hide()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_0
    invoke-static {}, Landroid/os/MeizuDeviceContorl;->resetCalibration()I

    .line 441
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    .line 442
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 447
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mStateContainer:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 451
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;

    if-eqz v1, :cond_1

    .line 452
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;

    .line 453
    .local v0, lastView:Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;

    .line 454
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$2;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    .end local v0           #lastView:Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;
    :cond_1
    monitor-exit p0

    return-void

    .line 437
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized isShowing()Z
    .locals 1

    .prologue
    .line 481
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isSlideMode()Z
    .locals 1

    .prologue
    .line 557
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->SHOW_MEIZU_KEYGUARD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;

    check-cast v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->isSlideMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized onScreenTurnedOff()V
    .locals 2

    .prologue
    .line 358
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v1, "onScreenTurnedOff()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mScreenOn:Z

    .line 360
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;

    if-eqz v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->onScreenTurnedOff()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    :cond_1
    monitor-exit p0

    return-void

    .line 358
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onScreenTurnedOn(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;)V
    .locals 6
    .parameter "showListener"

    .prologue
    .line 367
    monitor-enter p0

    :try_start_0
    sget-boolean v2, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v3, "onScreenTurnedOn()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mScreenOn:Z

    .line 369
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;

    if-eqz v2, :cond_8

    .line 370
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->onScreenTurnedOn()V

    .line 371
    sget-boolean v2, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->DEBUG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v3, "onScreenTurnedOn()2"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_1
    if-eqz p1, :cond_4

    .line 375
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_7

    .line 380
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardShowTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x5dc

    cmp-long v2, v2, v4

    if-gez v2, :cond_5

    const-wide/16 v0, 0x15e

    .line 381
    .local v0, delay:J
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardSetHiddenTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    sget-object v2, Landroid/os/Build;->IS_MX2:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0x258

    :goto_1
    int-to-long v0, v2

    .line 382
    :cond_2
    sget-boolean v2, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->DEBUG:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onScreenTurnedOn(),delay:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mKeyguardShowTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardShowTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mKeyguardSetHiddenTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardSetHiddenTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " current:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$1;

    invoke-direct {v3, p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    .end local v0           #delay:J
    :cond_4
    :goto_2
    monitor-exit p0

    return-void

    .line 380
    :cond_5
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 381
    .restart local v0       #delay:J
    :cond_6
    const/16 v2, 0x1f4

    goto :goto_1

    .line 396
    .end local v0           #delay:J
    :cond_7
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {p1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;->onShown(Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 367
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 399
    :cond_8
    if-eqz p1, :cond_4

    .line 400
    const/4 v2, 0x0

    :try_start_2
    invoke-interface {p1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;->onShown(Landroid/os/IBinder;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public declared-synchronized reset(Landroid/os/Bundle;)V
    .locals 2
    .parameter "options"

    .prologue
    .line 349
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v1, "reset()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mStateContainer:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 353
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->shouldEnableScreenRotation()Z

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->maybeCreateKeyguardLocked(ZZLandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    monitor-exit p0

    return-void

    .line 349
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public screenDimStateChange()V
    .locals 1

    .prologue
    .line 561
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->SHOW_MEIZU_KEYGUARD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;

    check-cast v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->screenDimStateChange()V

    .line 564
    :cond_0
    return-void
.end method

.method public setNeedsInput(Z)V
    .locals 4
    .parameter "needsInput"

    .prologue
    .line 324
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mNeedsInput:Z

    .line 325
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_0

    .line 326
    if-eqz p1, :cond_1

    .line 327
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x20001

    and-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 329
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->imeOffset:I

    .line 337
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    :cond_0
    :goto_1
    return-void

    .line 331
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x2

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 333
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->imeOffset:I

    goto :goto_0

    .line 338
    :catch_0
    move-exception v0

    .line 340
    .local v0, e:Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t update input method on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " window not attached"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public declared-synchronized show(Landroid/os/Bundle;)V
    .locals 5
    .parameter "options"

    .prologue
    .line 110
    monitor-enter p0

    :try_start_0
    sget-boolean v2, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "show(); mKeyguardView=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardShowTime:J

    .line 113
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->shouldEnableScreenRotation()Z

    move-result v0

    .line 115
    .local v0, enableScreenRotation:Z
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->maybeCreateKeyguardLocked(ZZLandroid/os/Bundle;)V

    .line 116
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->maybeEnableScreenRotation(Z)V

    .line 122
    const/high16 v1, 0x20

    .line 123
    .local v1, visFlags:I
    sget-boolean v2, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->DEBUG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "show:setSystemUiVisibility("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/high16 v4, 0x20

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    const/high16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 126
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    and-int/lit8 v3, v3, -0x2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    .line 127
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 129
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->show()V

    .line 130
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    monitor-exit p0

    return-void

    .line 110
    .end local v0           #enableScreenRotation:Z
    .end local v1           #visFlags:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public showAlertDialog(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .parameter "title"
    .parameter "msg"
    .parameter "iconResId"

    .prologue
    .line 567
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    const v3, 0x103030f

    invoke-direct {v0, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 568
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 569
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 570
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 571
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 572
    :cond_1
    const v2, 0x104000a

    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$4;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$4;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 578
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 579
    .local v1, mAlertDialog:Landroid/app/AlertDialog;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 580
    invoke-virtual {v1, p3}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 581
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 582
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 583
    return-void
.end method

.method public showAssistant()V
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->showAssistant()V

    .line 489
    :cond_0
    return-void
.end method

.method public updateUserActivityTimeout()V
    .locals 3

    .prologue
    .line 292
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->updateUserActivityTimeoutInWindowLayoutParams()V

    .line 293
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    return-void
.end method

.method public declared-synchronized verifyUnlock()V
    .locals 2

    .prologue
    .line 405
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v1, "verifyUnlock()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->show(Landroid/os/Bundle;)V

    .line 408
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->verifyUnlock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    monitor-exit p0

    return-void

    .line 405
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public wakeWhenReadyTq(I)Z
    .locals 3
    .parameter "keyCode"

    .prologue
    .line 424
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wakeWhenReady("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;

    if-eqz v0, :cond_1

    .line 426
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->wakeWhenReadyTq(I)V

    .line 427
    const/4 v0, 0x1

    .line 430
    :goto_0
    return v0

    .line 429
    :cond_1
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v1, "mKeyguardView is null in wakeWhenReadyTq"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const/4 v0, 0x0

    goto :goto_0
.end method
