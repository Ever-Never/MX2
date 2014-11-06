.class public Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;
.super Landroid/widget/FrameLayout;
.source "KeyguardSecurityView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/meizu/internal/policy/impl/keyguard/KeyguardScreen;
.implements Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$16;,
        Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$CheckSimPuk;,
        Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$CheckSimPin;,
        Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$checkPasswordClass;,
        Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$UnlockPatternListener;,
        Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$KeypadState;,
        Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$SimState;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final DRAG_ANIM_DURATION_UNLOCK:I = 0xfa

.field private static final KEY_LEFT:Ljava/lang/String; = "left"

.field private static final KEY_RIGHT:Ljava/lang/String; = "right"

.field private static final MSG_START_HOLD_HOME:I = 0x3e8

.field private static final MSG_SWITCH_TO_ALARM:I = 0x7d0

.field private static final MSG_SWITCH_TO_NORMAL:I = 0x7d1

.field private static final PIN_CODE_LENGTH_MAX:I = 0x8

.field private static final PIN_CODE_LENGTH_MIN:I = 0x4

.field private static final PUK_CODE_LENGTH:I = 0x8

.field private static final RESET_KEYPAD_AS_POINT_INTERNAL:I = 0x1388

.field public static final STATE_CLOSE:I = 0x0

.field public static final STATE_OPENED:I = 0x2

.field public static final STATE_TRY_CLOSE:I = 0x3

.field public static final STATE_TRY_OPEN:I = 0x1

.field public static final TAG:Ljava/lang/String; = null

.field private static final VIEW_TYPE_DATE:I = 0x0

.field private static final VIEW_TYPE_MUSIC:I = 0x1

.field private static final VIEW_TYPE_NONE:I = 0x3

.field private static final VIEW_TYPE_TIPS:I = 0x2


# instance fields
.field private final DRAG_Y_FAR_ENOUGH:I

.field private final HEIGHT_OF_UNLOCK_START:I

.field private mAcm:Landroid/content/pm/AccessControlManager;

.field mAlarmServiceCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$AlarmServiceCallbacks;

.field private mAlarmState:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;

.field private mAlarmView:Landroid/widget/FrameLayout;

.field private mAnimationHelper:Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;

.field private mCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;

.field private mCamaraClickTime:J

.field private mCameraBtn:Landroid/widget/ImageView;

.field private mChargingView:Lcom/meizu/internal/policy/impl/keyguard/ChargeViewBase;

.field private mCheckPuk:Ljava/lang/String;

.field private mConfirmPinError:Z

.field private mCountdown:Z

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mDragAnimMode:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

.field private mDragPosY:I

.field private mEmergencyButton:Landroid/widget/TextView;

.field private mGlowView:Lcom/meizu/internal/policy/impl/keyguard/GlowView;

.field mGlowViewCallback:Lcom/meizu/internal/policy/impl/keyguard/GlowView$Callback;

.field private mInputBox:Landroid/view/View;

.field private mInputDelete:Landroid/widget/ImageView;

.field private mInputNum:Ljava/lang/String;

.field private mInputText:Lcom/meizu/widget/LockPasswordView;

.field private mInputTips:Landroid/widget/TextView;

.field private mIsChecking:Z

.field private mIsKyeguardDone:Z

.field mKeyHandler:Landroid/os/Handler;

.field private mKeyguarWidgetLP:Landroid/widget/FrameLayout$LayoutParams;

.field private mKeyguardWidget:Landroid/widget/FrameLayout;

.field private mKeypadState:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$KeypadState;

.field private mKeypadView:Lcom/meizu/widget/LockDigitView;

.field private mLeftTimes:I

.field mLockMusicWidgetCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView$IMusicWidget;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMusicInfoCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$MusicInfoCallback;

.field private mMusicView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;

.field private mNewPin:Ljava/lang/String;

.field private mPackageManager:Landroid/content/pm/IPackageManager;

.field private mPasswordError:Z

.field private mPasswordErrorTime:I

.field private mPinOkBtn:Landroid/widget/TextView;

.field private mPinVisitorBtn:Landroid/widget/TextView;

.field protected mPluggedIn:Z

.field mPowerManager:Landroid/os/PowerManager;

.field mResetMusicInfoShow:Ljava/lang/Runnable;

.field mResetMusicwidgetWhenCountDown:Ljava/lang/Runnable;

.field mRestKeypadAsPoint:Ljava/lang/Runnable;

.field private mSecurityMode:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;

.field private mShowMusicWidgetTime:J

.field private mShowSimDamageDialog:Z

.field private mSimState:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$SimState;

.field private mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

.field private mStopAlarmTv:Landroid/widget/TextView;

.field private mStopAlarmTvLP:Landroid/widget/FrameLayout$LayoutParams;

.field protected mTimeView:Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;

.field private mTipsStringOfSim:Ljava/lang/String;

.field private mUnlockIcon:Landroid/widget/ImageView;

.field private mUnlockIconLP:Landroid/widget/FrameLayout$LayoutParams;

.field private mUpdateMonitorCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

.field private mVisitorBtn:Landroid/widget/TextView;

.field private secondsRemaining:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    sget-boolean v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->DEBUG:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->DEBUG:Z

    .line 65
    const-class v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->TAG:Ljava/lang/String;

    return-void

    .line 64
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;)V
    .locals 11
    .parameter "context"
    .parameter "callback"
    .parameter "securityMode"

    .prologue
    const-wide/16 v9, 0x0

    const/4 v5, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 357
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 113
    iput-object v8, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 121
    iput-wide v9, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mCamaraClickTime:J

    .line 137
    iput v5, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mLeftTimes:I

    .line 141
    const-string v4, ""

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mInputNum:Ljava/lang/String;

    .line 143
    iput-boolean v6, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mIsKyeguardDone:Z

    .line 144
    iput-boolean v6, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mIsChecking:Z

    .line 145
    iput-boolean v6, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mPasswordError:Z

    .line 146
    iput-boolean v6, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mConfirmPinError:Z

    .line 147
    iput-boolean v6, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mCountdown:Z

    .line 148
    iput-wide v9, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mShowMusicWidgetTime:J

    .line 149
    iput v6, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mPasswordErrorTime:I

    .line 150
    iput v6, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->secondsRemaining:I

    .line 151
    iput-object v8, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 152
    iput-object v8, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mAcm:Landroid/content/pm/AccessControlManager;

    .line 154
    iput-boolean v6, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mPluggedIn:Z

    .line 158
    new-instance v4, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$1;

    invoke-direct {v4, p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$1;-><init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)V

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mResetMusicInfoShow:Ljava/lang/Runnable;

    .line 166
    new-instance v4, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$2;

    invoke-direct {v4, p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$2;-><init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)V

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mRestKeypadAsPoint:Ljava/lang/Runnable;

    .line 177
    new-instance v4, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$3;

    invoke-direct {v4, p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$3;-><init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)V

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mResetMusicwidgetWhenCountDown:Ljava/lang/Runnable;

    .line 191
    new-instance v4, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$4;

    invoke-direct {v4, p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$4;-><init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)V

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mLockMusicWidgetCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView$IMusicWidget;

    .line 1074
    new-instance v4, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$9;

    invoke-direct {v4, p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$9;-><init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)V

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mUpdateMonitorCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 1103
    new-instance v4, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$10;

    invoke-direct {v4, p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$10;-><init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)V

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mMusicInfoCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$MusicInfoCallback;

    .line 1135
    iput-object v8, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mPowerManager:Landroid/os/PowerManager;

    .line 1165
    new-instance v4, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$11;

    invoke-direct {v4, p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$11;-><init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)V

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mKeyHandler:Landroid/os/Handler;

    .line 1375
    iput-boolean v6, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mShowSimDamageDialog:Z

    .line 1449
    new-instance v4, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$13;

    invoke-direct {v4, p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$13;-><init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)V

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mAlarmServiceCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$AlarmServiceCallbacks;

    .line 1481
    iput v5, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mDragPosY:I

    .line 1482
    sget-object v4, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;->NONE:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mDragAnimMode:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    .line 1487
    sget-object v4, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;->DESTORY:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mAlarmState:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;

    .line 1534
    new-instance v4, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$15;

    invoke-direct {v4, p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$15;-><init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)V

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mGlowViewCallback:Lcom/meizu/internal/policy/impl/keyguard/GlowView$Callback;

    .line 358
    iput-object p2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;

    .line 359
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 360
    .local v0, layoutInflate:Landroid/view/LayoutInflater;
    const v4, 0x109006c

    invoke-virtual {v0, v4, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 361
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10500f8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->HEIGHT_OF_UNLOCK_START:I

    .line 362
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10500e1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget v5, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->HEIGHT_OF_UNLOCK_START:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->DRAG_Y_FAR_ENOUGH:I

    .line 364
    invoke-virtual {p0, v7}, Landroid/view/View;->setFocusable(Z)V

    .line 365
    invoke-virtual {p0, v7}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 366
    iput-object p3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mSecurityMode:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;

    .line 367
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v4, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 369
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v5, "access_control"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/AccessControlManager;

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mAcm:Landroid/content/pm/AccessControlManager;

    .line 370
    const-string v4, "package"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 372
    const v4, 0x1020332

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mInputBox:Landroid/view/View;

    .line 373
    const v4, 0x1020064

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mTimeView:Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;

    .line 376
    const v4, 0x1020338

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/meizu/widget/LockDigitView;

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    .line 377
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    new-instance v5, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$UnlockPatternListener;

    invoke-direct {v5, p0, v8}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$UnlockPatternListener;-><init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$1;)V

    invoke-virtual {v4, v5}, Lcom/meizu/widget/LockDigitView;->setOnPatternListener(Lcom/meizu/widget/LockDigitView$OnPatternListener;)V

    .line 378
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    invoke-virtual {v4, v7}, Lcom/meizu/widget/LockDigitView;->setKeyAsPoint(Z)V

    .line 381
    const v4, 0x1020257

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mInputDelete:Landroid/widget/ImageView;

    .line 382
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mInputDelete:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 383
    const v4, 0x1020333

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mInputTips:Landroid/widget/TextView;

    .line 384
    const v4, 0x10202f3

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/meizu/widget/LockPasswordView;

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mInputText:Lcom/meizu/widget/LockPasswordView;

    .line 385
    const v4, 0x102030c

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mEmergencyButton:Landroid/widget/TextView;

    .line 386
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mEmergencyButton:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/view/View;->setClickable(Z)V

    .line 387
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mEmergencyButton:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 389
    const v4, 0x1020323

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mMusicView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;

    .line 390
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mMusicView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;

    invoke-virtual {v4, v5}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->setCallback(Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;)V

    .line 393
    invoke-static {p1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->getInstance(Landroid/content/Context;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;

    move-result-object v1

    .line 394
    .local v1, musicController:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;
    invoke-virtual {v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->isMusicPlaying()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 395
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mMusicView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 396
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mMusicView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;

    invoke-virtual {v4}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->updateMusicInfo()V

    .line 397
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mMusicView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;

    invoke-virtual {v4}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->setPauseButtonImage()V

    .line 399
    invoke-direct {p0, v7}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->updateMusicDateTips(I)V

    .line 402
    :cond_0
    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    .line 403
    .local v3, updateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v2

    .line 404
    .local v2, simState:Lcom/android/internal/telephony/IccCardConstants$State;
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v4, :cond_3

    .line 405
    sget-object v4, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$SimState;->checkPin:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$SimState;

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mSimState:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$SimState;

    .line 410
    :cond_1
    :goto_0
    const v4, 0x1020334

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mPinVisitorBtn:Landroid/widget/TextView;

    .line 411
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mPinVisitorBtn:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 412
    const v4, 0x1020335

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mPinOkBtn:Landroid/widget/TextView;

    .line 413
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mPinOkBtn:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 414
    const v4, 0x1020336

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mVisitorBtn:Landroid/widget/TextView;

    .line 415
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mVisitorBtn:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 416
    const v4, 0x1020339

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mCameraBtn:Landroid/widget/ImageView;

    .line 417
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mCameraBtn:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 421
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mMusicView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mLockMusicWidgetCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView$IMusicWidget;

    invoke-virtual {v4, v5}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->setMusicWidgetCallback(Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView$IMusicWidget;)V

    .line 422
    sget-boolean v4, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->DEBUG:Z

    if-eqz v4, :cond_2

    sget-object v4, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PasswordAndSim  mKeypadState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mKeypadState:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$KeypadState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",  mSimState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mSimState:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$SimState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_2
    return-void

    .line 406
    :cond_3
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v4, :cond_1

    .line 407
    sget-object v4, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$SimState;->checkPuk:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$SimState;

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mSimState:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$SimState;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->updateMusicDateTips(I)V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 62
    sget-boolean v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->updateMusicWidgetDelayTime()V

    return-void
.end method

.method static synthetic access$1100(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;Lcom/meizu/widget/LockDigitView$Cell;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->converNum(Lcom/meizu/widget/LockDigitView$Cell;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->updateInputState(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mInputNum:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1384(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mInputNum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mInputNum:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Lcom/meizu/widget/LockPasswordView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mInputText:Lcom/meizu/widget/LockPasswordView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mInputDelete:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$KeypadState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mKeypadState:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$KeypadState;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->getPasswordLimit()I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mIsChecking:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mIsChecking:Z

    return p1
.end method

.method static synthetic access$200(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->isSimNeedCheck()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->checkPassword(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->setKeypadAsNum()V

    return-void
.end method

.method static synthetic access$2302(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mIsKyeguardDone:Z

    return p1
.end method

.method static synthetic access$2402(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mPasswordError:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Landroid/content/pm/IPackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mPackageManager:Landroid/content/pm/IPackageManager;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Landroid/content/pm/AccessControlManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mAcm:Landroid/content/pm/AccessControlManager;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mPasswordErrorTime:I

    return v0
.end method

.method static synthetic access$2708(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mPasswordErrorTime:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mPasswordErrorTime:I

    return v0
.end method

.method static synthetic access$2800(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Lcom/meizu/widget/LockDigitView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->handleAttemptLockout(J)V

    return-void
.end method

.method static synthetic access$3200(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mLeftTimes:I

    return p1
.end method

.method static synthetic access$3500(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->phoneStateChanged(I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Lcom/meizu/internal/policy/impl/keyguard/ChargeViewBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mChargingView:Lcom/meizu/internal/policy/impl/keyguard/ChargeViewBase;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->loadCharingView()V

    return-void
.end method

.method static synthetic access$3900(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->setKeypadAsPoint()V

    return-void
.end method

.method static synthetic access$4000(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mDragPosY:I

    return v0
.end method

.method static synthetic access$4002(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mDragPosY:I

    return p1
.end method

.method static synthetic access$4100(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mAnimationHelper:Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->DRAG_Y_FAR_ENOUGH:I

    return v0
.end method

.method static synthetic access$4300(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->secondsRemaining:I

    return v0
.end method

.method static synthetic access$4302(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->secondsRemaining:I

    return p1
.end method

.method static synthetic access$4400(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mInputTips:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->loadGlowView()V

    return-void
.end method

.method static synthetic access$4600(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Lcom/meizu/internal/policy/impl/keyguard/GlowView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mGlowView:Lcom/meizu/internal/policy/impl/keyguard/GlowView;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mStopAlarmTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mAlarmState:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;

    return-object v0
.end method

.method static synthetic access$4802(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mAlarmState:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;

    return-object p1
.end method

.method static synthetic access$4900(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mDragAnimMode:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    return-object v0
.end method

.method static synthetic access$4902(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mDragAnimMode:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    return-object p1
.end method

.method static synthetic access$500(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->clearInput()V

    return-void
.end method

.method static synthetic access$5000(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->updateGlowView()V

    return-void
.end method

.method static synthetic access$5100(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mAlarmView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mCountdown:Z

    return v0
.end method

.method static synthetic access$602(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mCountdown:Z

    return p1
.end method

.method static synthetic access$700(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mInputBox:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mMusicView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mShowMusicWidgetTime:J

    return-wide v0
.end method

.method private checkLeftTimes()V
    .locals 6

    .prologue
    .line 754
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 756
    .local v1, iPhoneEx:Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_1

    .line 757
    const-string v3, "\u83b7\u53d6\u7535\u8bdd\u670d\u52a1\u5931\u8d25\uff01"

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mTipsStringOfSim:Ljava/lang/String;

    .line 775
    :cond_0
    :goto_0
    return-void

    .line 760
    :cond_1
    const/4 v2, 0x0

    .line 762
    .local v2, leftTimes:[I
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->queryLockCount()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 767
    :goto_1
    if-eqz v2, :cond_0

    .line 769
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mSimState:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$SimState;

    sget-object v4, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$SimState;->checkPin:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$SimState;

    if-ne v3, v4, :cond_2

    .line 770
    const/4 v3, 0x1

    aget v3, v2, v3

    iput v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mLeftTimes:I

    .line 774
    :goto_2
    sget-boolean v3, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkLeftTimes: mLeftTimes = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mLeftTimes:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 763
    :catch_0
    move-exception v0

    .line 764
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 772
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    const/4 v3, 0x3

    aget v3, v2, v3

    iput v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mLeftTimes:I

    goto :goto_2
.end method

.method private checkPassword(Ljava/lang/String;)V
    .locals 2
    .parameter "password"

    .prologue
    .line 782
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 783
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mIsChecking:Z

    .line 842
    :goto_0
    return-void

    .line 787
    :cond_1
    new-instance v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$6;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$6;-><init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private checkPin(Ljava/lang/String;)V
    .locals 4
    .parameter "password"

    .prologue
    const/16 v3, 0x8

    .line 891
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 892
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;

    const-wide/16 v2, 0x0

    invoke-interface {v1, v2, v3}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;->userActivity(J)V

    .line 893
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->clearInput()V

    .line 924
    :goto_0
    return-void

    .line 896
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_1

    .line 897
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 898
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mIsChecking:Z

    .line 899
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v2, 0x1040308

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 900
    .local v0, msg:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->getSimUnlockProgressDialog(Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 901
    new-instance v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$7;

    invoke-direct {v1, p0, p1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$7;-><init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private checkPuk()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 967
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mNewPin:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 968
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;

    const-wide/16 v2, 0x0

    invoke-interface {v1, v2, v3}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;->userActivity(J)V

    .line 969
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->clearInput()V

    .line 1001
    :goto_0
    return-void

    .line 972
    :cond_0
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mNewPin:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mNewPin:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_1

    .line 973
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mNewPin:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mNewPin:Ljava/lang/String;

    .line 975
    :cond_1
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v2, 0x1040308

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 976
    .local v0, msg:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->getSimUnlockProgressDialog(Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 978
    new-instance v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$8;

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mCheckPuk:Ljava/lang/String;

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mNewPin:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$8;-><init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private clearInput()V
    .locals 2

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    invoke-virtual {v0}, Lcom/meizu/widget/LockDigitView;->resetPattern()V

    .line 1063
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mInputNum:Ljava/lang/String;

    .line 1064
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mInputText:Lcom/meizu/widget/LockPasswordView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/widget/LockPasswordView;->setCurNum(I)Z

    .line 1065
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mInputDelete:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1066
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mKeypadState:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$KeypadState;

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$KeypadState;->sim:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$KeypadState;

    if-ne v0, v1, :cond_0

    .line 1069
    :cond_0
    return-void
.end method

.method private converNum(Lcom/meizu/widget/LockDigitView$Cell;)Ljava/lang/String;
    .locals 5
    .parameter "cell"

    .prologue
    .line 1041
    invoke-virtual {p1}, Lcom/meizu/widget/LockDigitView$Cell;->getRow()I

    move-result v2

    .line 1042
    .local v2, r:I
    invoke-virtual {p1}, Lcom/meizu/widget/LockDigitView$Cell;->getColumn()I

    move-result v0

    .line 1043
    .local v0, c:I
    mul-int/lit8 v4, v2, 0x3

    add-int/2addr v4, v0

    add-int/lit8 v1, v4, 0x1

    .line 1044
    .local v1, num:I
    const/16 v4, 0xa

    if-ne v1, v4, :cond_0

    .line 1045
    const-string v3, "left"

    .line 1053
    .local v3, ret:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 1046
    .end local v3           #ret:Ljava/lang/String;
    :cond_0
    const/16 v4, 0xb

    if-ne v1, v4, :cond_1

    .line 1047
    const-string v3, "0"

    .restart local v3       #ret:Ljava/lang/String;
    goto :goto_0

    .line 1048
    .end local v3           #ret:Ljava/lang/String;
    :cond_1
    const/16 v4, 0xc

    if-ne v1, v4, :cond_2

    .line 1049
    const-string v3, "right"

    .restart local v3       #ret:Ljava/lang/String;
    goto :goto_0

    .line 1051
    .end local v3           #ret:Ljava/lang/String;
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #ret:Ljava/lang/String;
    goto :goto_0
.end method

.method private getPasswordLimit()I
    .locals 3

    .prologue
    .line 1057
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "meizu_password_length"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getSimUnlockProgressDialog(Ljava/lang/String;)Landroid/app/Dialog;
    .locals 3
    .parameter "msg"

    .prologue
    .line 739
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 740
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v2, 0x103030f

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 741
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 742
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 743
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 746
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 747
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private handleAttemptLockout(J)V
    .locals 6
    .parameter "time"

    .prologue
    const/4 v1, 0x1

    .line 1425
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    invoke-virtual {v0, v1}, Lcom/meizu/widget/LockDigitView;->setKeyAsPoint(Z)V

    .line 1426
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    invoke-virtual {v0}, Lcom/meizu/widget/LockDigitView;->disableInput()V

    .line 1427
    iput-boolean v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mCountdown:Z

    .line 1428
    new-instance v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$12;

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$12;-><init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;JJ)V

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 1444
    return-void
.end method

.method private isSimNeedCheck()Z
    .locals 2

    .prologue
    .line 546
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mSecurityMode:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;->SimPin:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mSecurityMode:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;

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

.method private launchFastActivity(Landroid/content/Intent;Z)V
    .locals 5
    .parameter "intent"
    .parameter "isSecurity"

    .prologue
    .line 1333
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 1336
    .local v1, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    const v2, 0x30028000

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1341
    const/16 v2, 0x10

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addMeizuFlags(I)Landroid/content/Intent;

    .line 1342
    if-nez p2, :cond_0

    .line 1343
    invoke-virtual {p1}, Landroid/content/Intent;->getMeizuFlags()I

    move-result v2

    and-int/lit16 v2, v2, -0x81

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setMeizuFlags(I)Landroid/content/Intent;

    .line 1348
    :goto_0
    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addMeizuFlags(I)Landroid/content/Intent;

    .line 1350
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1355
    :goto_1
    :try_start_1
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1359
    :goto_2
    return-void

    .line 1346
    :cond_0
    const/16 v2, 0x80

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addMeizuFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 1351
    :catch_0
    move-exception v0

    .line 1352
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->TAG:Ljava/lang/String;

    const-string v3, "can\'t dismiss keyguard on launch"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1356
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1357
    .local v0, e:Landroid/content/ActivityNotFoundException;
    sget-object v2, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity not found for intent + "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private loadCharingView()V
    .locals 2

    .prologue
    .line 633
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mChargingView:Lcom/meizu/internal/policy/impl/keyguard/ChargeViewBase;

    if-eqz v0, :cond_0

    .line 637
    :goto_0
    return-void

    .line 635
    :cond_0
    const v0, 0x1020324

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020367

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/internal/policy/impl/keyguard/ChargeViewBase;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mChargingView:Lcom/meizu/internal/policy/impl/keyguard/ChargeViewBase;

    goto :goto_0
.end method

.method private loadGlowView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1489
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mGlowView:Lcom/meizu/internal/policy/impl/keyguard/GlowView;

    if-eqz v0, :cond_0

    .line 1506
    :goto_0
    return-void

    .line 1491
    :cond_0
    const v0, 0x1020326

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mAlarmView:Landroid/widget/FrameLayout;

    .line 1492
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mAlarmView:Landroid/widget/FrameLayout;

    const v1, 0x1020368

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mGlowView:Lcom/meizu/internal/policy/impl/keyguard/GlowView;

    .line 1493
    const v0, 0x1020369

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mStopAlarmTv:Landroid/widget/TextView;

    .line 1494
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mStopAlarmTv:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1495
    const v0, 0x1020337

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mKeyguardWidget:Landroid/widget/FrameLayout;

    .line 1496
    const v0, 0x1020320

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mUnlockIcon:Landroid/widget/ImageView;

    .line 1497
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mUnlockIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1498
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mUnlockIconLP:Landroid/widget/FrameLayout$LayoutParams;

    if-nez v0, :cond_1

    .line 1499
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mUnlockIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mUnlockIconLP:Landroid/widget/FrameLayout$LayoutParams;

    .line 1500
    :cond_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mKeyguarWidgetLP:Landroid/widget/FrameLayout$LayoutParams;

    if-nez v0, :cond_2

    .line 1501
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mKeyguardWidget:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mKeyguarWidgetLP:Landroid/widget/FrameLayout$LayoutParams;

    .line 1502
    :cond_2
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mGlowView:Lcom/meizu/internal/policy/impl/keyguard/GlowView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1503
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mGlowView:Lcom/meizu/internal/policy/impl/keyguard/GlowView;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mGlowViewCallback:Lcom/meizu/internal/policy/impl/keyguard/GlowView$Callback;

    invoke-virtual {v0, v1}, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->setCallback(Lcom/meizu/internal/policy/impl/keyguard/GlowView$Callback;)V

    .line 1504
    new-instance v0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;

    invoke-direct {v0}, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;-><init>()V

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mAnimationHelper:Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;

    .line 1505
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mAnimationHelper:Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;

    invoke-virtual {v0, p0}, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->setCallback(Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper$Callback;)V

    goto :goto_0
.end method

.method private phoneStateChanged(I)V
    .locals 2
    .parameter "phoneState"

    .prologue
    .line 1096
    if-eqz p1, :cond_0

    .line 1097
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mEmergencyButton:Landroid/widget/TextView;

    const v1, 0x10402ef

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1101
    :goto_0
    return-void

    .line 1099
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mEmergencyButton:Landroid/widget/TextView;

    const v1, 0x10405e4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private setKeypadAsNum()V
    .locals 7

    .prologue
    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 710
    invoke-direct {p0, v2}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->updateMusicDateTips(I)V

    .line 711
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mInputBox:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 712
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mMusicView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 713
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    invoke-virtual {v0, v6}, Lcom/meizu/widget/LockDigitView;->setKeyAsPoint(Z)V

    .line 715
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->isSimNeedCheck()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 716
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mInputNum:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 731
    :cond_0
    :goto_0
    return-void

    .line 721
    :cond_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mSecurityMode:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;

    sget-object v4, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;->Password:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;

    if-ne v0, v4, :cond_0

    .line 722
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/widget/LockDigitView;->setCellInfo(IILjava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 724
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "mz_guard_mode"

    invoke-static {v0, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v5, :cond_0

    .line 728
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    move v2, v6

    move-object v4, v3

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/widget/LockDigitView;->setCellInfo(IILjava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0
.end method

.method private setKeypadAsPoint()V
    .locals 10

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 674
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    invoke-virtual {v0, v2}, Lcom/meizu/widget/LockDigitView;->setKeyAsPoint(Z)V

    .line 675
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 677
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->getInstance(Landroid/content/Context;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->isMusicPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mMusicView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 679
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mMusicView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 680
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mMusicView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->updateMusicInfo()V

    .line 681
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mMusicView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->setPauseButtonImage()V

    .line 682
    invoke-direct {p0, v2}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->updateMusicDateTips(I)V

    .line 685
    :cond_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mMusicView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 687
    invoke-direct {p0, v5}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->updateMusicDateTips(I)V

    .line 689
    :cond_2
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mCountdown:Z

    if-eqz v0, :cond_4

    iget-wide v6, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mShowMusicWidgetTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-gez v0, :cond_4

    .line 690
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->updateWidgetAndTips()V

    .line 694
    :goto_0
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->isSimNeedCheck()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 695
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mInputNum:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_3

    .line 706
    :cond_3
    :goto_1
    return-void

    .line 692
    :cond_4
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mInputBox:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 701
    :cond_5
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mSecurityMode:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;

    sget-object v2, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;->Password:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;

    if-ne v0, v2, :cond_3

    .line 702
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    const/4 v2, 0x2

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/widget/LockDigitView;->setCellInfo(IILjava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 703
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    move v2, v5

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/widget/LockDigitView;->setCellInfo(IILjava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_1
.end method

.method private showKeypadView()V
    .locals 2

    .prologue
    .line 660
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 662
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->isSimNeedCheck()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 663
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->setKeypadAsNum()V

    .line 671
    :goto_0
    return-void

    .line 664
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->getInstance(Landroid/content/Context;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->isMusicPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mMusicView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 667
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->updateMusicDateTips(I)V

    goto :goto_0

    .line 669
    :cond_2
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->setKeypadAsPoint()V

    goto :goto_0
.end method

.method private showSimDamageDialog()V
    .locals 4

    .prologue
    .line 1377
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mShowSimDamageDialog:Z

    if-nez v0, :cond_0

    .line 1378
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10405e7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10405e8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x10805a7

    invoke-interface {v0, v1, v2, v3}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1382
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mShowSimDamageDialog:Z

    .line 1383
    return-void
.end method

.method private updateBtnView(Z)V
    .locals 5
    .parameter "isPinMode"

    .prologue
    const/16 v3, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 478
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "mz_guard_mode"

    invoke-static {v2, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "meizu_keyguard_lock"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->savedPasswordExists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 482
    .local v0, visitorModeEnable:Z
    :goto_0
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mVisitorBtn:Landroid/widget/TextView;

    if-nez p1, :cond_1

    if-eqz v0, :cond_1

    move v2, v1

    :goto_1
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 484
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mPinVisitorBtn:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isFindphoneLocked()Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v1

    :goto_2
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 486
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mPinOkBtn:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    :goto_3
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 487
    return-void

    .end local v0           #visitorModeEnable:Z
    :cond_0
    move v0, v1

    .line 478
    goto :goto_0

    .restart local v0       #visitorModeEnable:Z
    :cond_1
    move v2, v3

    .line 482
    goto :goto_1

    :cond_2
    move v2, v3

    .line 484
    goto :goto_2

    :cond_3
    move v1, v3

    .line 486
    goto :goto_3
.end method

.method private updateGlowView()V
    .locals 3

    .prologue
    .line 1509
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mAlarmState:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;

    sget-object v2, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;->ALARMING:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;

    if-ne v1, v2, :cond_1

    .line 1510
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mGlowView:Lcom/meizu/internal/policy/impl/keyguard/GlowView;

    invoke-virtual {v1}, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->startAnim()V

    .line 1511
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mAlarmView:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1512
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mAlarmView:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1513
    iget-boolean v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mPluggedIn:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mChargingView:Lcom/meizu/internal/policy/impl/keyguard/ChargeViewBase;

    if-eqz v1, :cond_0

    .line 1514
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mGlowView:Lcom/meizu/internal/policy/impl/keyguard/GlowView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1515
    .local v0, mFadeOut:Landroid/view/animation/Animation;
    new-instance v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$14;

    invoke-direct {v1, p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$14;-><init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1525
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mChargingView:Lcom/meizu/internal/policy/impl/keyguard/ChargeViewBase;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1532
    .end local v0           #mFadeOut:Landroid/view/animation/Animation;
    :cond_0
    :goto_0
    return-void

    .line 1528
    :cond_1
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mAlarmView:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mAlarmView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1529
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mGlowView:Lcom/meizu/internal/policy/impl/keyguard/GlowView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->stopAnim(Z)V

    goto :goto_0
.end method

.method private updateInputState(I)V
    .locals 10
    .parameter "id"

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    const-wide/16 v6, 0x1388

    const/4 v5, 0x1

    .line 277
    packed-switch p1, :pswitch_data_0

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 281
    :pswitch_0
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mAcm:Landroid/content/pm/AccessControlManager;

    invoke-virtual {v3, v5}, Landroid/content/pm/AccessControlManager;->setAccessControlGuardEnable(Z)V

    .line 283
    :try_start_0
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mPackageManager:Landroid/content/pm/IPackageManager;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/content/pm/IPackageManager;->upadteGuestMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :goto_1
    iput-boolean v5, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mIsKyeguardDone:Z

    .line 288
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;

    invoke-interface {v3}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;->onUserActivityTimeoutChanged()V

    .line 289
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;

    invoke-interface {v3}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;->dismiss()V

    goto :goto_0

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 292
    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_1
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mKeypadState:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$KeypadState;

    sget-object v4, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$KeypadState;->sim:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$KeypadState;

    if-ne v3, v4, :cond_5

    .line 293
    sget-object v3, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$16;->$SwitchMap$com$meizu$internal$policy$impl$keyguard$KeyguardSecurityView$SimState:[I

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mSimState:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$SimState;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    goto :goto_0

    .line 295
    :pswitch_2
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mInputNum:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->checkPin(Ljava/lang/String;)V

    goto :goto_0

    .line 298
    :pswitch_3
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mInputNum:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mInputNum:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_2

    .line 299
    :cond_1
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->clearInput()V

    goto :goto_0

    .line 302
    :cond_2
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mInputNum:Ljava/lang/String;

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mCheckPuk:Ljava/lang/String;

    .line 303
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mCheckPuk:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v9, :cond_3

    .line 304
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mCheckPuk:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mCheckPuk:Ljava/lang/String;

    .line 305
    :cond_3
    sget-object v3, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$SimState;->newPin:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$SimState;

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mSimState:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$SimState;

    .line 306
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->updateInputTips()V

    .line 309
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    invoke-virtual {v3}, Lcom/meizu/widget/LockDigitView;->resetPattern()V

    .line 310
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    invoke-virtual {v3}, Lcom/meizu/widget/LockDigitView;->isKeyAsPoint()Z

    move-result v3

    if-nez v3, :cond_0

    .line 311
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mRestKeypadAsPoint:Ljava/lang/Runnable;

    invoke-virtual {p0, v3, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 315
    :pswitch_4
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mInputNum:Ljava/lang/String;

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mNewPin:Ljava/lang/String;

    .line 316
    sget-object v3, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$SimState;->confirmNewPin:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$SimState;

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mSimState:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$SimState;

    .line 317
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->updateInputTips()V

    .line 318
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    invoke-virtual {v3}, Lcom/meizu/widget/LockDigitView;->resetPattern()V

    .line 319
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    invoke-virtual {v3}, Lcom/meizu/widget/LockDigitView;->isKeyAsPoint()Z

    move-result v3

    if-nez v3, :cond_0

    .line 320
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mRestKeypadAsPoint:Ljava/lang/Runnable;

    invoke-virtual {p0, v3, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 324
    :pswitch_5
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mInputNum:Ljava/lang/String;

    .line 325
    .local v1, newPin:Ljava/lang/String;
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mNewPin:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 326
    iput-boolean v8, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mConfirmPinError:Z

    .line 327
    sget-object v3, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$SimState;->checkPuk:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$SimState;

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mSimState:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$SimState;

    .line 328
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->checkPuk()V

    goto/16 :goto_0

    .line 330
    :cond_4
    sget-object v3, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$SimState;->newPin:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$SimState;

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mSimState:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$SimState;

    .line 331
    iput-boolean v5, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mConfirmPinError:Z

    .line 332
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->updateInputTips()V

    .line 333
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    invoke-virtual {v3}, Lcom/meizu/widget/LockDigitView;->resetPattern()V

    .line 334
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    invoke-virtual {v3}, Lcom/meizu/widget/LockDigitView;->isKeyAsPoint()Z

    move-result v3

    if-nez v3, :cond_0

    .line 335
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mRestKeypadAsPoint:Ljava/lang/Runnable;

    invoke-virtual {p0, v3, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 340
    .end local v1           #newPin:Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mKeypadState:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$KeypadState;

    sget-object v4, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$KeypadState;->password:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$KeypadState;

    if-ne v3, v4, :cond_0

    .line 341
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mInputNum:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 342
    .local v2, size:I
    if-le v2, v5, :cond_6

    .line 343
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mInputText:Lcom/meizu/widget/LockPasswordView;

    invoke-virtual {v3, v8}, Lcom/meizu/widget/LockPasswordView;->setCurNum(I)Z

    .line 344
    const-string v3, ""

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mInputNum:Ljava/lang/String;

    .line 348
    :goto_2
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    invoke-virtual {v3}, Lcom/meizu/widget/LockDigitView;->resetPattern()V

    .line 349
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    invoke-virtual {v3}, Lcom/meizu/widget/LockDigitView;->isKeyAsPoint()Z

    move-result v3

    if-nez v3, :cond_0

    .line 350
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mRestKeypadAsPoint:Ljava/lang/Runnable;

    invoke-virtual {p0, v3, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 346
    :cond_6
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->setKeypadAsPoint()V

    goto :goto_2

    .line 277
    :pswitch_data_0
    .packed-switch 0x1020334
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 293
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private updateMusicDateTips(I)V
    .locals 5
    .parameter "type"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1395
    sget-boolean v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateMusicDateTips,type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mTimeView:Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;

    if-eqz v0, :cond_1

    .line 1397
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mTimeView:Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;

    if-nez p1, :cond_4

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->setDateBoxVisible(Z)V

    .line 1398
    :cond_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mMusicView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;

    if-eqz v0, :cond_2

    .line 1399
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mMusicView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;

    if-ne p1, v1, :cond_5

    :goto_1
    invoke-virtual {v0, v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->showMusicName(Z)V

    .line 1400
    :cond_2
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mInputTips:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 1401
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mInputTips:Landroid/widget/TextView;

    const/4 v1, 0x2

    if-ne p1, v1, :cond_6

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1402
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 1397
    goto :goto_0

    :cond_5
    move v1, v2

    .line 1399
    goto :goto_1

    .line 1401
    :cond_6
    const/16 v2, 0x8

    goto :goto_2
.end method

.method private updateMusicWidgetDelayTime()V
    .locals 4

    .prologue
    const-wide/16 v2, 0xbb8

    .line 1405
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mShowMusicWidgetTime:J

    .line 1406
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mResetMusicwidgetWhenCountDown:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1407
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mResetMusicwidgetWhenCountDown:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1408
    return-void
.end method

.method private updateViewForAlarm()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f80

    .line 1586
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mDragPosY:I

    sub-int v1, v3, v4

    .line 1588
    .local v1, mDragPos:I
    int-to-float v3, v1

    iget v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->DRAG_Y_FAR_ENOUGH:I

    int-to-float v4, v4

    div-float v0, v3, v4

    .line 1589
    .local v0, alpha:F
    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1590
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mCameraBtn:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1591
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mEmergencyButton:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1592
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mInputBox:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1594
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mKeyguardWidget:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1595
    sget-boolean v3, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDragPos:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " alpha:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    :cond_0
    sub-float v0, v6, v0

    .line 1597
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mAlarmView:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1600
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mStopAlarmTvLP:Landroid/widget/FrameLayout$LayoutParams;

    if-nez v3, :cond_1

    .line 1601
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mStopAlarmTv:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mStopAlarmTvLP:Landroid/widget/FrameLayout$LayoutParams;

    .line 1602
    :cond_1
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mStopAlarmTvLP:Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1603
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mStopAlarmTv:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mStopAlarmTvLP:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1604
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mUnlockIconLP:Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1605
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mUnlockIcon:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mStopAlarmTvLP:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1607
    mul-int/lit8 v3, v1, 0x19

    iget v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->DRAG_Y_FAR_ENOUGH:I

    div-int v2, v3, v4

    .line 1608
    .local v2, move:I
    const/16 v3, 0x19

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1609
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mKeyguarWidgetLP:Landroid/widget/FrameLayout$LayoutParams;

    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1610
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mKeyguardWidget:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mKeyguarWidgetLP:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1612
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1613
    return-void
.end method

.method private updateWidgetAndTips()V
    .locals 4

    .prologue
    .line 1414
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mCountdown:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mShowMusicWidgetTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 1415
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->updateMusicDateTips(I)V

    .line 1416
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mInputBox:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1417
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mMusicView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1418
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mResetMusicwidgetWhenCountDown:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1419
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mResetMusicInfoShow:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1420
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->updateInputTips()V

    .line 1422
    :cond_0
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 585
    sget-boolean v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->TAG:Ljava/lang/String;

    const-string v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mChargingView:Lcom/meizu/internal/policy/impl/keyguard/ChargeViewBase;

    if-eqz v0, :cond_1

    .line 588
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mChargingView:Lcom/meizu/internal/policy/impl/keyguard/ChargeViewBase;

    invoke-interface {v0, v2, v2}, Lcom/meizu/internal/policy/impl/keyguard/ChargeViewBase;->setVisible(ZZ)V

    .line 589
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mChargingView:Lcom/meizu/internal/policy/impl/keyguard/ChargeViewBase;

    invoke-interface {v0}, Lcom/meizu/internal/policy/impl/keyguard/ChargeViewBase;->cleanUp()V

    .line 591
    :cond_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_2

    .line 592
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 593
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 595
    :cond_2
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/16 v7, 0x3e8

    const/16 v5, 0x19

    const/4 v3, 0x1

    .line 1139
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 1140
    .local v1, keyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 1141
    .local v0, action:I
    const/4 v4, 0x3

    if-ne v1, v4, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v3, :cond_2

    .line 1162
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    :cond_1
    :goto_1
    return v2

    .line 1144
    :cond_2
    sget-object v4, Landroid/os/Build;->IS_MX2:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x4

    if-ne v1, v4, :cond_3

    if-nez v0, :cond_3

    .line 1145
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    .line 1146
    .local v2, ret:Z
    if-nez v2, :cond_1

    .line 1147
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mKeyHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1148
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mKeyHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x96

    invoke-virtual {v4, v7, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move v2, v3

    .line 1149
    goto :goto_1

    .line 1153
    .end local v2           #ret:Z
    :cond_3
    if-eq v1, v5, :cond_4

    const/16 v3, 0x18

    if-ne v1, v3, :cond_0

    .line 1155
    :cond_4
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mAlarmState:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;

    sget-object v4, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;->ALARMING:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;

    if-ne v3, v4, :cond_0

    .line 1156
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    if-ne v1, v5, :cond_5

    const-string v3, "volume_down"

    :goto_2
    invoke-virtual {v4, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->sendUserAction(Ljava/lang/String;)Z

    goto :goto_0

    :cond_5
    const-string v3, "volume_up"

    goto :goto_2
.end method

.method public doubleHomekeyEvent()V
    .locals 0

    .prologue
    .line 1196
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->onDoubleClickHome()V

    .line 1197
    return-void
.end method

.method public getScreenState()I
    .locals 2

    .prologue
    .line 1367
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mPowerManager:Landroid/os/PowerManager;

    if-nez v0, :cond_0

    .line 1368
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mPowerManager:Landroid/os/PowerManager;

    .line 1370
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenDim()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserActivityTimeout()J
    .locals 4

    .prologue
    .line 1264
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mIsKyeguardDone:Z

    if-eqz v0, :cond_0

    .line 1265
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    const/16 v2, 0x2710

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    int-to-long v0, v0

    .line 1269
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x2710

    goto :goto_0
.end method

.method public homekeyEvent()V
    .locals 0

    .prologue
    .line 1191
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->onClickHome()V

    .line 1192
    return-void
.end method

.method public isOpenFindLock()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 869
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 870
    .local v1, am:Landroid/accounts/AccountManager;
    const-string v4, "com.meizu.account"

    invoke-virtual {v1, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 871
    .local v0, accounts:[Landroid/accounts/Account;
    if-eqz v0, :cond_0

    array-length v4, v0

    if-nez v4, :cond_1

    .line 880
    :cond_0
    :goto_0
    return v3

    .line 875
    :cond_1
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "com.meizu.flyme.FindPhone"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 877
    .local v2, state:I
    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    .line 878
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 600
    const/4 v0, 0x0

    return v0
.end method

.method public onAnimEnd()V
    .locals 3

    .prologue
    .line 1616
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;

    if-nez v0, :cond_1

    .line 1631
    :cond_0
    :goto_0
    return-void

    .line 1618
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mDragPosY:I

    .line 1619
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mDragAnimMode:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;->UNLOCK_V:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    if-ne v0, v1, :cond_3

    .line 1620
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mAlarmState:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;->ALARMING:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;

    if-ne v0, v1, :cond_2

    .line 1621
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    const-string v1, "stop_alarm"

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->sendUserAction(Ljava/lang/String;)Z

    .line 1623
    :cond_2
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mPluggedIn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mChargingView:Lcom/meizu/internal/policy/impl/keyguard/ChargeViewBase;

    if-eqz v0, :cond_0

    .line 1624
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mChargingView:Lcom/meizu/internal/policy/impl/keyguard/ChargeViewBase;

    check-cast v0, Landroid/view/View;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1625
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mChargingView:Lcom/meizu/internal/policy/impl/keyguard/ChargeViewBase;

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mGlowView:Lcom/meizu/internal/policy/impl/keyguard/GlowView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x10a

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 1627
    :cond_3
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mDragAnimMode:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;->LOCK_V:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    if-ne v0, v1, :cond_0

    .line 1628
    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;->NONE:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mDragAnimMode:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    .line 1629
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;

    invoke-interface {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;->onUserActivityTimeoutChanged()V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 7

    .prologue
    .line 605
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 606
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mUpdateMonitorCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 607
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->getInstance(Landroid/content/Context;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mMusicInfoCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$MusicInfoCallback;

    invoke-virtual {v2, v3}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->registerMusicInfoCallback(Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$MusicInfoCallback;)V

    .line 609
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getKeyguardAlarmServiceState()Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;

    move-result-object v1

    .line 610
    .local v1, mState:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;
    sget-object v2, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;->ALARMING:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;

    if-ne v1, v2, :cond_0

    .line 611
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getKeyguardAlarmData()Landroid/os/Bundle;

    move-result-object v0

    .line 612
    .local v0, data:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 613
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mAlarmServiceCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$AlarmServiceCallbacks;

    const-string v3, "type"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "msgs"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const-string v5, "anim"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "fadeIn"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$AlarmServiceCallbacks;->startAlarm(Ljava/lang/String;[Ljava/lang/String;ZZ)V

    .line 616
    .end local v0           #data:Landroid/os/Bundle;
    :cond_0
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mAlarmServiceCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$AlarmServiceCallbacks;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerAlarmServiceCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$AlarmServiceCallbacks;)V

    .line 617
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 1275
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 1322
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;

    const-wide/16 v3, 0x0

    invoke-interface {v2, v3, v4}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;->userActivity(J)V

    .line 1323
    return-void

    .line 1280
    :sswitch_0
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->clearInput()V

    goto :goto_0

    .line 1283
    :sswitch_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-eqz v2, :cond_1

    .line 1285
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->resumeCall()Z

    goto :goto_0

    .line 1287
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1288
    .local v1, i:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1290
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1291
    :catch_0
    move-exception v0

    .line 1292
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1307
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #i:Landroid/content/Intent;
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->updateInputState(I)V

    goto :goto_0

    .line 1310
    :sswitch_3
    iget-wide v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mCamaraClickTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 1311
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mCamaraClickTime:J

    .line 1312
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1314
    .restart local v1       #i:Landroid/content/Intent;
    const-string v2, "com.android.gallery3d"

    const-string v3, "com.android.camera.SecureCameraActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1315
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->launchFastActivity(Landroid/content/Intent;Z)V

    goto :goto_0

    .line 1319
    .end local v1           #i:Landroid/content/Intent;
    :sswitch_4
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    const-string v3, "delay_alarm"

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->sendUserAction(Ljava/lang/String;)Z

    goto :goto_0

    .line 1275
    :sswitch_data_0
    .sparse-switch
        0x1020257 -> :sswitch_0
        0x102030c -> :sswitch_1
        0x1020334 -> :sswitch_2
        0x1020335 -> :sswitch_2
        0x1020336 -> :sswitch_2
        0x1020339 -> :sswitch_3
        0x1020368 -> :sswitch_4
    .end sparse-switch
.end method

.method public onClickHome()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    .line 1221
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->getInstance(Landroid/content/Context;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->isMusicPlaying()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1222
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mMusicView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1223
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mResetMusicInfoShow:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1224
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mMusicView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1226
    invoke-direct {p0, v2}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->updateMusicDateTips(I)V

    .line 1227
    iput-wide v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mShowMusicWidgetTime:J

    .line 1238
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->updateWidgetAndTips()V

    .line 1239
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;

    if-eqz v0, :cond_1

    .line 1240
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;

    invoke-interface {v0, v3, v4}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;->userActivity(J)V

    .line 1241
    :cond_1
    return-void

    .line 1230
    :cond_2
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mMusicView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1232
    invoke-direct {p0, v2}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->updateMusicDateTips(I)V

    .line 1233
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mResetMusicInfoShow:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1234
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mResetMusicInfoShow:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1235
    iput-wide v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mShowMusicWidgetTime:J

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 621
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 622
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;

    .line 623
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mRestKeypadAsPoint:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 624
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mUpdateMonitorCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 625
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->getInstance(Landroid/content/Context;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mMusicInfoCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$MusicInfoCallback;

    invoke-virtual {v0, v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->removeCallback(Ljava/lang/Object;)V

    .line 626
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mAlarmServiceCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$AlarmServiceCallbacks;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeAlarmServiceCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$AlarmServiceCallbacks;)V

    .line 627
    return-void
.end method

.method public onDoubleClickHome()V
    .locals 3

    .prologue
    .line 1200
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->isSimNeedCheck()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1218
    :goto_0
    return-void

    .line 1202
    :cond_0
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mCountdown:Z

    if-eqz v0, :cond_1

    .line 1203
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->updateMusicWidgetDelayTime()V

    .line 1208
    :cond_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mMusicView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1209
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mMusicView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1210
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mMusicView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->updateMusicInfo()V

    .line 1211
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mMusicView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->setPauseButtonImage()V

    .line 1213
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->updateMusicDateTips(I)V

    .line 1214
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->getInstance(Landroid/content/Context;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->startMusic()V

    .line 1216
    :cond_2
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->setKeypadAsPoint()V

    .line 1217
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;->userActivity(J)V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    .line 1542
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mDragAnimMode:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    sget-object v2, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;->NONE:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mAlarmState:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;

    sget-object v2, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;->ALARMING:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;

    if-ne v1, v2, :cond_0

    .line 1543
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v0, v1

    .line 1544
    .local v0, y:I
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->HEIGHT_OF_UNLOCK_START:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_0

    .line 1545
    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;->DRAG:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    iput-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mDragAnimMode:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    .line 1546
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;

    invoke-interface {v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;->onUserActivityTimeoutChanged()V

    .line 1547
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v1

    iput v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mDragPosY:I

    .line 1548
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;

    const-wide/16 v2, 0x0

    invoke-interface {v1, v2, v3}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;->userActivity(J)V

    .line 1549
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->updateViewForAlarm()V

    .line 1550
    const/4 v1, 0x1

    .line 1553
    .end local v0           #y:I
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onNotifyNewPosition(II)V
    .locals 2
    .parameter "startPos"
    .parameter "distance"

    .prologue
    .line 1634
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;

    if-nez v0, :cond_1

    .line 1642
    :cond_0
    :goto_0
    return-void

    .line 1637
    :cond_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mDragAnimMode:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;->LOCK_V:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mDragAnimMode:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;->UNLOCK_V:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    if-ne v0, v1, :cond_0

    .line 1639
    :cond_2
    add-int v0, p1, p2

    iput v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mDragPosY:I

    .line 1640
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->updateViewForAlarm()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 571
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mRestKeypadAsPoint:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 572
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->clearInput()V

    .line 573
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->isSimNeedCheck()Z

    move-result v0

    if-nez v0, :cond_0

    .line 574
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->setKeypadAsPoint()V

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mChargingView:Lcom/meizu/internal/policy/impl/keyguard/ChargeViewBase;

    if-eqz v0, :cond_1

    .line 578
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->updateChargingView()V

    .line 580
    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mShowMusicWidgetTime:J

    .line 581
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 552
    sget-boolean v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mPasswordError:Z

    .line 555
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 556
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->updateChargingView()V

    .line 557
    new-instance v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$5;

    invoke-direct {v0, p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$5;-><init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)V

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$5;->run()V

    .line 563
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mCountdown:Z

    if-eqz v0, :cond_1

    .line 564
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->updateWidgetAndTips()V

    .line 566
    :cond_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mTimeView:Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->updateTime()V

    .line 567
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "event"

    .prologue
    const/16 v3, 0xfa

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 1556
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mDragAnimMode:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;->DRAG:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mAlarmState:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;->ALARMING:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;

    if-ne v0, v1, :cond_5

    .line 1557
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    .line 1558
    .local v6, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v8, v0

    .line 1559
    .local v8, y:I
    const/4 v0, 0x2

    if-ne v6, v0, :cond_1

    .line 1560
    iget v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->HEIGHT_OF_UNLOCK_START:I

    add-int/2addr v0, v8

    iput v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mDragPosY:I

    .line 1561
    iget v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mDragPosY:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mDragPosY:I

    .line 1562
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->updateViewForAlarm()V

    .line 1579
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;

    const-wide/16 v3, 0x0

    invoke-interface {v0, v3, v4}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;->userActivity(J)V

    move v0, v9

    .line 1582
    .end local v6           #action:I
    .end local v8           #y:I
    :goto_1
    return v0

    .line 1563
    .restart local v6       #action:I
    .restart local v8       #y:I
    :cond_1
    const/4 v0, 0x3

    if-eq v6, v0, :cond_2

    if-eq v6, v9, :cond_2

    const/4 v0, 0x6

    if-ne v6, v0, :cond_0

    .line 1566
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mDragPosY:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->DRAG_Y_FAR_ENOUGH:I

    if-le v0, v1, :cond_3

    move v7, v9

    .line 1567
    .local v7, farEnough:Z
    :cond_3
    if-eqz v7, :cond_4

    .line 1568
    iget v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mDragPosY:I

    neg-int v2, v0

    .line 1569
    .local v2, animSpace:I
    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;->UNLOCK_V:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mDragAnimMode:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    .line 1570
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;

    invoke-interface {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;->onUserActivityTimeoutChanged()V

    .line 1571
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mAnimationHelper:Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;

    iget v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mDragPosY:I

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->startAnim(IIILandroid/view/View;Landroid/view/View;)Z

    goto :goto_0

    .line 1573
    .end local v2           #animSpace:I
    :cond_4
    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;->LOCK_V:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mDragAnimMode:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    .line 1574
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;

    invoke-interface {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;->onUserActivityTimeoutChanged()V

    .line 1575
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mDragPosY:I

    sub-int v2, v0, v1

    .line 1576
    .restart local v2       #animSpace:I
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mAnimationHelper:Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;

    iget v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mDragPosY:I

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->startAnim(IIILandroid/view/View;Landroid/view/View;)Z

    goto :goto_0

    .line 1582
    .end local v2           #animSpace:I
    .end local v6           #action:I
    .end local v7           #farEnough:Z
    .end local v8           #y:I
    :cond_5
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasWindowFocus"

    .prologue
    .line 1327
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 1328
    if-eqz p1, :cond_0

    .line 1329
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mCamaraClickTime:J

    .line 1330
    :cond_0
    return-void
.end method

.method public screenDimStateChange()V
    .locals 1

    .prologue
    .line 1362
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mChargingView:Lcom/meizu/internal/policy/impl/keyguard/ChargeViewBase;

    if-eqz v0, :cond_0

    .line 1363
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->updateChargingView()V

    .line 1365
    :cond_0
    return-void
.end method

.method public updateChargingView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 643
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mChargingView:Lcom/meizu/internal/policy/impl/keyguard/ChargeViewBase;

    if-nez v0, :cond_0

    .line 644
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->loadCharingView()V

    .line 646
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mChargingView:Lcom/meizu/internal/policy/impl/keyguard/ChargeViewBase;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getBatteryStatus()Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    move-result-object v1

    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->getScreenState()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/meizu/internal/policy/impl/keyguard/ChargeViewBase;->updateBatteryInfo(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;I)V

    .line 648
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mPluggedIn:Z

    if-eqz v0, :cond_2

    .line 649
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mChargingView:Lcom/meizu/internal/policy/impl/keyguard/ChargeViewBase;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v3}, Lcom/meizu/internal/policy/impl/keyguard/ChargeViewBase;->setVisible(ZZ)V

    .line 654
    :cond_1
    :goto_0
    return-void

    .line 650
    :cond_2
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mChargingView:Lcom/meizu/internal/policy/impl/keyguard/ChargeViewBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mChargingView:Lcom/meizu/internal/policy/impl/keyguard/ChargeViewBase;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 652
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mChargingView:Lcom/meizu/internal/policy/impl/keyguard/ChargeViewBase;

    invoke-interface {v0, v3, v3}, Lcom/meizu/internal/policy/impl/keyguard/ChargeViewBase;->setVisible(ZZ)V

    goto :goto_0
.end method

.method public updateInputTips()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v3, 0x8

    .line 492
    sget-boolean v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->TAG:Ljava/lang/String;

    const-string v1, "updateInputTips"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mKeypadState:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$KeypadState;

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$KeypadState;->password:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$KeypadState;

    if-ne v0, v1, :cond_5

    .line 495
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mCountdown:Z

    if-eqz v0, :cond_3

    .line 496
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mInputTips:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104052b

    new-array v3, v4, [Ljava/lang/Object;

    iget v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->secondsRemaining:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 502
    :goto_0
    invoke-direct {p0, v6}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->updateMusicDateTips(I)V

    .line 541
    :cond_1
    :goto_1
    sget-boolean v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mInputTips:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mInputTips:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_2
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->clearInput()V

    .line 543
    return-void

    .line 497
    :cond_3
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mPasswordError:Z

    if-eqz v0, :cond_4

    .line 498
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mInputTips:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v2, 0x104061e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 500
    :cond_4
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mInputTips:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v2, 0x10405e0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 503
    :cond_5
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mKeypadState:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$KeypadState;

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$KeypadState;->sim:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$KeypadState;

    if-ne v0, v1, :cond_1

    .line 504
    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$16;->$SwitchMap$com$meizu$internal$policy$impl$keyguard$KeyguardSecurityView$SimState:[I

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mSimState:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$SimState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 538
    :goto_2
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mInputTips:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mTipsStringOfSim:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 539
    invoke-direct {p0, v6}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->updateMusicDateTips(I)V

    goto :goto_1

    .line 506
    :pswitch_0
    iget v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mLeftTimes:I

    if-lez v0, :cond_6

    iget v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mLeftTimes:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_6

    .line 507
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v1, 0x10405dc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mLeftTimes:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mTipsStringOfSim:Ljava/lang/String;

    .line 512
    :goto_3
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mInputText:Lcom/meizu/widget/LockPasswordView;

    invoke-virtual {v0, v3}, Lcom/meizu/widget/LockPasswordView;->setMaxNum(I)V

    goto :goto_2

    .line 508
    :cond_6
    iget v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mLeftTimes:I

    if-nez v0, :cond_7

    .line 509
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mTipsStringOfSim:Ljava/lang/String;

    goto :goto_3

    .line 511
    :cond_7
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v1, 0x10405da

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mTipsStringOfSim:Ljava/lang/String;

    goto :goto_3

    .line 515
    :pswitch_1
    iget v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mLeftTimes:I

    if-nez v0, :cond_8

    .line 516
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v1, 0x1040307

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mTipsStringOfSim:Ljava/lang/String;

    .line 517
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    invoke-virtual {v0}, Lcom/meizu/widget/LockDigitView;->disableInput()V

    .line 518
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->showSimDamageDialog()V

    .line 523
    :goto_4
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mInputText:Lcom/meizu/widget/LockPasswordView;

    invoke-virtual {v0, v3}, Lcom/meizu/widget/LockPasswordView;->setMaxNum(I)V

    goto :goto_2

    .line 519
    :cond_8
    iget v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mLeftTimes:I

    if-lez v0, :cond_9

    iget v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mLeftTimes:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_9

    .line 520
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v1, 0x10405dd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mLeftTimes:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mTipsStringOfSim:Ljava/lang/String;

    goto :goto_4

    .line 522
    :cond_9
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v1, 0x10405db

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mTipsStringOfSim:Ljava/lang/String;

    goto :goto_4

    .line 526
    :pswitch_2
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mConfirmPinError:Z

    if-eqz v0, :cond_a

    .line 527
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v1, 0x10405e1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mTipsStringOfSim:Ljava/lang/String;

    .line 531
    :goto_5
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mInputText:Lcom/meizu/widget/LockPasswordView;

    invoke-virtual {v0, v3}, Lcom/meizu/widget/LockPasswordView;->setMaxNum(I)V

    goto/16 :goto_2

    .line 529
    :cond_a
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v1, 0x10405de

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mTipsStringOfSim:Ljava/lang/String;

    goto :goto_5

    .line 534
    :pswitch_3
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v1, 0x10405df

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mTipsStringOfSim:Ljava/lang/String;

    .line 535
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mInputText:Lcom/meizu/widget/LockPasswordView;

    invoke-virtual {v0, v3}, Lcom/meizu/widget/LockPasswordView;->setMaxNum(I)V

    goto/16 :goto_2

    .line 504
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public updateViewForMode()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 429
    iget-boolean v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mIsChecking:Z

    if-eqz v2, :cond_0

    .line 475
    :goto_0
    return-void

    .line 432
    :cond_0
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->showKeypadView()V

    .line 434
    sget-boolean v2, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->DEBUG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PasswordAndSim mIsChecking: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mIsChecking:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_1
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mInputDelete:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 437
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->isSimNeedCheck()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 439
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mInputText:Lcom/meizu/widget/LockPasswordView;

    invoke-virtual {v2, v5}, Lcom/meizu/widget/LockPasswordView;->setHollowVisible(Z)V

    .line 440
    sget-object v2, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$KeypadState;->sim:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$KeypadState;

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mKeypadState:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$KeypadState;

    .line 441
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->setKeypadAsNum()V

    .line 442
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    .line 443
    .local v1, simState:Lcom/android/internal/telephony/IccCardConstants$State;
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v2, :cond_5

    .line 444
    sget-object v2, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$SimState;->checkPuk:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$SimState;

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mSimState:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$SimState;

    .line 448
    :cond_2
    :goto_1
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v1, v2, :cond_6

    .line 449
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->checkLeftTimes()V

    .line 454
    :goto_2
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10500b6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 455
    invoke-direct {p0, v6}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->updateBtnView(Z)V

    .line 456
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->updateInputTips()V

    .line 469
    .end local v1           #simState:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_3
    :goto_3
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mInputText:Lcom/meizu/widget/LockPasswordView;

    invoke-virtual {v2}, Lcom/meizu/widget/LockPasswordView;->getCurNum()I

    move-result v2

    if-lez v2, :cond_4

    .line 470
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mInputDelete:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 472
    :cond_4
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mInputDelete:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 445
    .restart local v1       #simState:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_5
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v2, :cond_2

    .line 446
    sget-object v2, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$SimState;->checkPin:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$SimState;

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mSimState:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$SimState;

    goto :goto_1

    .line 451
    :cond_6
    const/4 v2, 0x3

    iput v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mLeftTimes:I

    goto :goto_2

    .line 457
    .end local v1           #simState:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_7
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mSecurityMode:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;

    sget-object v3, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;->Password:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$SecurityMode;

    if-ne v2, v3, :cond_3

    .line 459
    sget-object v2, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$KeypadState;->password:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$KeypadState;

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mKeypadState:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$KeypadState;

    .line 460
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mInputText:Lcom/meizu/widget/LockPasswordView;

    invoke-virtual {v2, v6}, Lcom/meizu/widget/LockPasswordView;->setHollowVisible(Z)V

    .line 461
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mInputText:Lcom/meizu/widget/LockPasswordView;

    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->getPasswordLimit()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/meizu/widget/LockPasswordView;->setMaxNum(I)V

    .line 463
    invoke-direct {p0, v5}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->updateBtnView(Z)V

    .line 464
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->updateInputTips()V

    .line 465
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->setKeypadAsPoint()V

    .line 466
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10500b5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_3
.end method
