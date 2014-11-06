.class public Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;
.super Landroid/widget/FrameLayout;
.source "KeyguardFindPhoneView.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FindPhoneCallbacks;
.implements Lcom/meizu/internal/policy/impl/keyguard/KeyguardScreen;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$MyOrientationEventListener;,
        Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$UploadPhotoCallback;,
        Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$CamCallback;,
        Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$checkFindPhoneLockClass;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

#the value of this static final field might be set in the static constructor
.field private static final DEBUG_CONFIGURATION:Z = false

.field public static final DEFAULT_ACCOUNT_TYPE:Ljava/lang/String; = "com.meizu.account"

.field public static final FLYME_NAME:Ljava/lang/String; = "com.meizu.account.FlymeName"

.field public static final INTERNAL_CHECK_FLYME_NAME:I = 0x4e20

.field public static final INTERNAL_CHECK_FLYME_NAME_AFTER_OPEN_NETWORK:I = 0x2710

.field public static final MSG_CHECK_CAMERA_SMILE:I = 0x3eb

.field public static final MSG_FINISH_CHECKING_NAME:I = 0x3e9

.field public static final MSG_START_CHECKING_NAME:I = 0x3ea

.field public static final MSG_WAIT_CAMERA_SMILE:I = 0x3ec

.field private static final ORIENTATION_HYSTERESIS:I = 0x5

.field private static final TAG:Ljava/lang/String; = "FindPhone"

.field private static final USE_FINDPHONE_LOCATION_SERVICE:Z = true

.field private static numbersAndLetters:Ljava/lang/String;


# instance fields
.field private RemainMinutes:I

.field private mCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;

.field private mCamera:Landroid/hardware/Camera;

.field private mCheckCount:I

.field private mConnManager:Landroid/net/ConnectivityManager;

.field private mCountdown:Z

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field mFindPhoneConnection:Landroid/content/ServiceConnection;

.field private mFindPhonePasswordError:I

.field private mFindPhoneService:Lcom/meizu/flyme/service/find/IPhoneLocationService;

.field private mFlymeName:Ljava/lang/String;

.field private mFlymeText:Landroid/widget/TextView;

.field private mForceMobileDataEnabled:Z

.field private mForceWifiDisabled:Z

.field private mGetUserNameCount:I

.field mHandler:Landroid/os/Handler;

.field mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mInputEdit:Landroid/widget/EditText;

.field private mInputMessage:Landroid/widget/TextView;

.field private mIsTake:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMessageDivider:Landroid/widget/ImageView;

.field private mOrientation:I

.field private mOrientationListener:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$MyOrientationEventListener;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mResuming:Z

.field private mRootView:Landroid/widget/FrameLayout;

.field private mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

.field private mTimeView:Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    sget-boolean v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->DEBUG:Z

    or-int/lit8 v0, v0, 0x0

    sput-boolean v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->DEBUG:Z

    .line 82
    sget-boolean v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->DEBUG:Z

    sput-boolean v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->DEBUG_CONFIGURATION:Z

    .line 950
    const-string v0, "0123456789abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    sput-object v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->numbersAndLetters:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;)V
    .locals 6
    .parameter "context"
    .parameter "callback"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 136
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 110
    iput-boolean v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mForceMobileDataEnabled:Z

    .line 113
    iput-boolean v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mForceWifiDisabled:Z

    .line 115
    iput v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mCheckCount:I

    .line 116
    iput v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mGetUserNameCount:I

    .line 118
    iput v5, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mFindPhonePasswordError:I

    .line 120
    iput-boolean v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mResuming:Z

    .line 129
    iput-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mConnManager:Landroid/net/ConnectivityManager;

    .line 130
    iput-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 131
    iput-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;

    .line 132
    iput-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mFindPhoneService:Lcom/meizu/flyme/service/find/IPhoneLocationService;

    .line 133
    iput-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 787
    new-instance v2, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$7;

    invoke-direct {v2, p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$7;-><init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)V

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mHandler:Landroid/os/Handler;

    .line 834
    new-instance v2, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$8;

    invoke-direct {v2, p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$8;-><init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)V

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mFindPhoneConnection:Landroid/content/ServiceConnection;

    .line 858
    iput-boolean v5, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mIsTake:Z

    .line 1066
    iput-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 1067
    iput-boolean v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mCountdown:Z

    .line 1068
    iput v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->RemainMinutes:I

    .line 137
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 138
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x1090066

    invoke-virtual {v0, v2, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 139
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 140
    iput-object p2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;

    .line 142
    invoke-virtual {p0, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 143
    invoke-virtual {p0, v5}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 144
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mPowerManager:Landroid/os/PowerManager;

    .line 145
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mConnManager:Landroid/net/ConnectivityManager;

    .line 146
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 148
    const v2, 0x1020305

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mRootView:Landroid/widget/FrameLayout;

    .line 149
    const v2, 0x1020306

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mFlymeText:Landroid/widget/TextView;

    .line 150
    const v2, 0x102030a

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mInputMessage:Landroid/widget/TextView;

    .line 151
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mInputMessage:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 152
    const v2, 0x1020307

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mMessageDivider:Landroid/widget/ImageView;

    .line 154
    const v2, 0x1020255

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mInputEdit:Landroid/widget/EditText;

    .line 155
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mInputEdit:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 156
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mInputEdit:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 157
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mInputEdit:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 158
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mInputEdit:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 159
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mInputEdit:Landroid/widget/EditText;

    const/16 v3, 0x81

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setInputType(I)V

    .line 162
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mInputEdit:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 164
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mInputEdit:Landroid/widget/EditText;

    new-instance v3, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$1;

    invoke-direct {v3, p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$1;-><init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mInputEdit:Landroid/widget/EditText;

    new-instance v3, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$2;

    invoke-direct {v3, p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$2;-><init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 181
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 184
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mInputEdit:Landroid/widget/EditText;

    new-instance v3, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$3;

    invoke-direct {v3, p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$3;-><init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnKeyPreImeListener(Landroid/widget/EditText$OnKeyPreImeListener;)V

    .line 197
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 198
    .local v1, serviceIntent:Landroid/content/Intent;
    const-class v2, Lcom/meizu/flyme/service/find/IPhoneLocationService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mFindPhoneConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v1, v3, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 201
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->updateUserName()V

    .line 203
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gps"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 205
    new-instance v2, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$MyOrientationEventListener;

    invoke-direct {v2, p0, p1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$MyOrientationEventListener;-><init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mOrientationListener:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$MyOrientationEventListener;

    .line 206
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mResuming:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Landroid/os/PowerManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$1100()Z
    .locals 1

    .prologue
    .line 78
    sget-boolean v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->clearInput()V

    return-void
.end method

.method static synthetic access$1700(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Lcom/meizu/flyme/service/find/IPhoneLocationService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mFindPhoneService:Lcom/meizu/flyme/service/find/IPhoneLocationService;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;Lcom/meizu/flyme/service/find/IPhoneLocationService;)Lcom/meizu/flyme/service/find/IPhoneLocationService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mFindPhoneService:Lcom/meizu/flyme/service/find/IPhoneLocationService;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->getFlymeName()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mInputEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->getSN()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->isUseProxy()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->getUnlockInitKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mFlymeName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->findPhoneErrorCodeTransformToLockPatternUtilsCode(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mGetUserNameCount:I

    return v0
.end method

.method static synthetic access$2508(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mGetUserNameCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mGetUserNameCount:I

    return v0
.end method

.method static synthetic access$2600(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mFlymeText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->updateUserName()V

    return-void
.end method

.method static synthetic access$2800(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mIsTake:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mIsTake:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->getPhotoPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mOrientation:I

    return v0
.end method

.method static synthetic access$3002(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mOrientation:I

    return p1
.end method

.method static synthetic access$3100(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->getExifInterfaceOrientation(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Landroid/hardware/Camera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mCamera:Landroid/hardware/Camera;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->RemainMinutes:I

    return v0
.end method

.method static synthetic access$3302(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->RemainMinutes:I

    return p1
.end method

.method static synthetic access$3402(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mCountdown:Z

    return p1
.end method

.method static synthetic access$400(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mFindPhonePasswordError:I

    return v0
.end method

.method static synthetic access$402(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mFindPhonePasswordError:I

    return p1
.end method

.method static synthetic access$502(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mCheckCount:I

    return p1
.end method

.method static synthetic access$508(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mCheckCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mCheckCount:I

    return v0
.end method

.method static synthetic access$600(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mForceMobileDataEnabled:Z

    return v0
.end method

.method static synthetic access$602(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mForceMobileDataEnabled:Z

    return p1
.end method

.method static synthetic access$700(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Landroid/net/ConnectivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mConnManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mForceWifiDisabled:Z

    return v0
.end method

.method static synthetic access$802(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mForceWifiDisabled:Z

    return p1
.end method

.method static synthetic access$900(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method private checkFindPhoneLock(Ljava/lang/String;)V
    .locals 3
    .parameter "password"

    .prologue
    .line 332
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v2, 0x10405ec

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, msg:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->getSimUnlockProgressDialog(Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 334
    new-instance v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$5;

    invoke-direct {v1, p0, p1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$5;-><init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 480
    return-void
.end method

.method private clearInput()V
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mInputEdit:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    return-void
.end method

.method private findPhoneErrorCodeTransformToLockPatternUtilsCode(I)I
    .locals 1
    .parameter "mFindPhoneDataCode"

    .prologue
    .line 559
    packed-switch p1, :pswitch_data_0

    .line 588
    const/4 v0, 0x0

    .line 590
    .local v0, result:I
    :goto_0
    return v0

    .line 562
    .end local v0           #result:I
    :pswitch_0
    const/4 v0, 0x0

    .line 563
    .restart local v0       #result:I
    goto :goto_0

    .line 565
    .end local v0           #result:I
    :pswitch_1
    const/4 v0, 0x1

    .line 566
    .restart local v0       #result:I
    goto :goto_0

    .line 568
    .end local v0           #result:I
    :pswitch_2
    const/4 v0, 0x2

    .line 569
    .restart local v0       #result:I
    goto :goto_0

    .line 571
    .end local v0           #result:I
    :pswitch_3
    const/4 v0, 0x7

    .line 572
    .restart local v0       #result:I
    goto :goto_0

    .line 576
    .end local v0           #result:I
    :pswitch_4
    const/4 v0, 0x4

    .line 577
    .restart local v0       #result:I
    goto :goto_0

    .line 579
    .end local v0           #result:I
    :pswitch_5
    const/4 v0, 0x4

    .line 580
    .restart local v0       #result:I
    goto :goto_0

    .line 582
    .end local v0           #result:I
    :pswitch_6
    const/4 v0, 0x5

    .line 583
    .restart local v0       #result:I
    goto :goto_0

    .line 585
    .end local v0           #result:I
    :pswitch_7
    const/4 v0, 0x6

    .line 586
    .restart local v0       #result:I
    goto :goto_0

    .line 559
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_3
    .end packed-switch
.end method

.method private getExifInterfaceOrientation(I)I
    .locals 4
    .parameter "rotation"

    .prologue
    .line 1033
    if-nez p1, :cond_1

    .line 1034
    const/16 v0, 0x8

    .line 1043
    .local v0, result:I
    :goto_0
    sget-boolean v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "FindPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getExifInterfaceOrientation(),rotation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    :cond_0
    return v0

    .line 1035
    .end local v0           #result:I
    :cond_1
    const/16 v1, 0x5a

    if-ne p1, v1, :cond_2

    .line 1036
    const/4 v0, 0x3

    .restart local v0       #result:I
    goto :goto_0

    .line 1037
    .end local v0           #result:I
    :cond_2
    const/16 v1, 0xb4

    if-ne p1, v1, :cond_3

    .line 1038
    const/4 v0, 0x6

    .restart local v0       #result:I
    goto :goto_0

    .line 1039
    .end local v0           #result:I
    :cond_3
    const/16 v1, 0x10e

    if-ne p1, v1, :cond_4

    .line 1040
    const/4 v0, 0x1

    .restart local v0       #result:I
    goto :goto_0

    .line 1042
    .end local v0           #result:I
    :cond_4
    const/4 v0, 0x1

    .restart local v0       #result:I
    goto :goto_0
.end method

.method private getFlymeName()I
    .locals 6

    .prologue
    .line 661
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mFindPhoneService:Lcom/meizu/flyme/service/find/IPhoneLocationService;

    if-eqz v2, :cond_1

    .line 664
    :try_start_0
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mFindPhoneService:Lcom/meizu/flyme/service/find/IPhoneLocationService;

    invoke-interface {v2}, Lcom/meizu/flyme/service/find/IPhoneLocationService;->getUserName()Lcom/meizu/flyme/service/find/FindPhoneData;

    move-result-object v1

    .line 665
    .local v1, mFindPhoneData:Lcom/meizu/flyme/service/find/FindPhoneData;
    iget-object v2, v1, Lcom/meizu/flyme/service/find/FindPhoneData;->mData:Ljava/lang/String;

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mFlymeName:Ljava/lang/String;

    .line 666
    sget-boolean v2, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "FindPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFlymeName(),mFlymeName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mFlymeName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/meizu/flyme/service/find/FindPhoneData;->mCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mDescribe:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/meizu/flyme/service/find/FindPhoneData;->mDescribe:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    :cond_0
    iget v2, v1, Lcom/meizu/flyme/service/find/FindPhoneData;->mCode:I

    invoke-direct {p0, v2}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->findPhoneErrorCodeTransformToLockPatternUtilsCode(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 675
    .end local v1           #mFindPhoneData:Lcom/meizu/flyme/service/find/FindPhoneData;
    :goto_0
    return v2

    .line 668
    :catch_0
    move-exception v0

    .line 669
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 675
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 672
    :cond_1
    const-string v2, "FindPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFlymeName(),mFindPhoneService:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mFindPhoneService:Lcom/meizu/flyme/service/find/IPhoneLocationService;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3ea

    const-wide/16 v4, 0x4e20

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method

.method private getPhotoPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 954
    const/4 v1, 0x6

    invoke-static {v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->randomString(I)Ljava/lang/String;

    move-result-object v0

    .line 955
    .local v0, name:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data/findPhonePhoto_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getSN()Ljava/lang/String;
    .locals 4

    .prologue
    .line 734
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 736
    .local v1, iPhoneEx:Lcom/android/internal/telephony/ITelephony;
    const/4 v2, 0x0

    .line 737
    .local v2, seqNoString:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 739
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->queryProductSeqNo()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 744
    :cond_0
    :goto_0
    return-object v2

    .line 740
    :catch_0
    move-exception v0

    .line 741
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private getSimUnlockProgressDialog(Ljava/lang/String;)Landroid/app/Dialog;
    .locals 3
    .parameter "msg"

    .prologue
    .line 316
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 317
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v2, 0x103030f

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 318
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 319
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 320
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 324
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private getUnlockInitKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 748
    const/16 v1, 0x14

    new-array v0, v1, [B

    .line 749
    .local v0, init:[B
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mPowerManager:Landroid/os/PowerManager;

    sget-object v2, Landroid/os/PowerManager$RemoteHandle;->Unlock:Landroid/os/PowerManager$RemoteHandle;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/os/PowerManager;->doGetInitNo(I[B)I

    move-result v1

    if-nez v1, :cond_0

    .line 750
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 753
    :goto_0
    return-object v1

    .line 752
    :cond_0
    sget-boolean v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "FindPhone"

    const-string v2, "get unlock init error!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleEdittextLockout(J)V
    .locals 8
    .parameter "milliSeconds"

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 1070
    const-string v0, "FindPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleEdittextLockout(), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 1072
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1073
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mInputEdit:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10405f3

    new-array v3, v7, [Ljava/lang/Object;

    iget v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->RemainMinutes:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 1074
    new-array v6, v7, [Landroid/text/InputFilter;

    new-instance v0, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v0, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v0, v6, v5

    .line 1075
    .local v6, filters:[Landroid/text/InputFilter;
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mInputEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 1076
    iput-boolean v7, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mCountdown:Z

    .line 1077
    new-instance v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$9;

    const-wide/32 v4, 0xea60

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$9;-><init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;JJ)V

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 1094
    return-void
.end method

.method private isUseProxy()Z
    .locals 9

    .prologue
    .line 710
    const/4 v4, 0x0

    .line 711
    .local v4, isUseProxy:Z
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v6

    .line 712
    .local v6, proxy:Ljava/lang/String;
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v5

    .line 713
    .local v5, port:I
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v8, "connectivity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 715
    .local v1, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 716
    .local v3, info:Landroid/net/NetworkInfo;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 717
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    .line 718
    .local v2, extraInfo:Ljava/lang/String;
    if-eqz v6, :cond_2

    if-eqz v2, :cond_2

    .line 719
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 721
    .local v0, apnName:Ljava/lang/String;
    const-string v7, "3GWAP"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "UNIWAP"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 722
    const/4 v4, 0x1

    .line 730
    .end local v0           #apnName:Ljava/lang/String;
    .end local v2           #extraInfo:Ljava/lang/String;
    :cond_0
    :goto_0
    return v4

    .line 724
    .restart local v0       #apnName:Ljava/lang/String;
    .restart local v2       #extraInfo:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 727
    .end local v0           #apnName:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private openGPRSAndEnableNetwork()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 761
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 762
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 763
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .line 764
    .local v3, type:I
    if-ne v3, v6, :cond_1

    const-string v2, "wifi"

    .line 765
    .local v2, tips:Ljava/lang/String;
    :goto_0
    sget-boolean v4, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "FindPhone"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "network is available, type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    .end local v2           #tips:Ljava/lang/String;
    .end local v3           #type:I
    :cond_0
    :goto_1
    return-void

    .line 764
    .restart local v3       #type:I
    :cond_1
    const-string v2, "mobile"

    goto :goto_0

    .line 767
    .end local v3           #type:I
    :cond_2
    sget-boolean v4, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->DEBUG:Z

    if-eqz v4, :cond_3

    const-string v4, "FindPhone"

    const-string v5, "network is unavailable"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    :cond_3
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mConnManager:Landroid/net/ConnectivityManager;

    if-eqz v4, :cond_0

    .line 769
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    .line 770
    .local v0, dataEnabled:Z
    if-nez v0, :cond_0

    .line 771
    iput-boolean v6, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mForceMobileDataEnabled:Z

    .line 772
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v4, v6}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 773
    sget-boolean v4, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "FindPhone"

    const-string v5, " ---- open mobile data"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static final randomString(I)Ljava/lang/String;
    .locals 5
    .parameter "length"

    .prologue
    .line 959
    const/4 v3, 0x1

    if-ge p0, v3, :cond_0

    .line 960
    const/4 v3, 0x0

    .line 968
    :goto_0
    return-object v3

    .line 962
    :cond_0
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 964
    .local v2, randGen:Ljava/util/Random;
    new-array v1, p0, [C

    .line 965
    .local v1, randBuffer:[C
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 966
    sget-object v3, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->numbersAndLetters:Ljava/lang/String;

    const/16 v4, 0x47

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, v1, v0

    .line 965
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 968
    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public static roundOrientation(II)I
    .locals 3
    .parameter "orientation"
    .parameter "orientationHistory"

    .prologue
    .line 1010
    const/4 v0, 0x0

    .line 1011
    .local v0, changeOrientation:Z
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 1012
    const/4 v0, 0x1

    .line 1018
    :goto_0
    if-eqz v0, :cond_0

    .line 1019
    add-int/lit8 v2, p0, 0x2d

    div-int/lit8 v2, v2, 0x5a

    mul-int/lit8 v2, v2, 0x5a

    rem-int/lit16 p1, v2, 0x168

    .line 1023
    .end local p1
    :cond_0
    return p1

    .line 1014
    .restart local p1
    :cond_1
    sub-int v2, p0, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 1015
    .local v1, dist:I
    rsub-int v2, v1, 0x168

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1016
    const/16 v2, 0x32

    if-lt v1, v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateUserName()V
    .locals 1

    .prologue
    .line 630
    new-instance v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$6;

    invoke-direct {v0, p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$6;-><init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 653
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 258
    sget-boolean v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FindPhone"

    const-string v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 261
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 264
    :cond_1
    return-void
.end method

.method public doubleHomekeyEvent()V
    .locals 0

    .prologue
    .line 1006
    return-void
.end method

.method public getUserActivityTimeout()J
    .locals 2

    .prologue
    .line 998
    const-wide/16 v0, 0x2710

    return-wide v0
.end method

.method public homekeyEvent()V
    .locals 0

    .prologue
    .line 1002
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 273
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 274
    sget-boolean v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->DEBUG_CONFIGURATION:Z

    if-eqz v0, :cond_0

    .line 275
    const-string v0, "FindPhone"

    const-string v1, "***** PATTERN ATTACHED TO WINDOW"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const-string v0, "FindPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " new config="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerFindPhoneCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FindPhoneCallbacks;)V

    .line 280
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 284
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 285
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;

    .line 286
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mFindPhoneConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mFindPhoneConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 289
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeFindPhoneCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FindPhoneCallbacks;)V

    .line 290
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 294
    if-eqz p2, :cond_0

    const/4 v1, 0x6

    if-eq p2, v1, :cond_0

    const/4 v1, 0x5

    if-ne p2, v1, :cond_2

    .line 296
    :cond_0
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mInputEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, password:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 298
    invoke-direct {p0, v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->checkFindPhoneLock(Ljava/lang/String;)V

    .line 301
    :cond_1
    const/4 v1, 0x1

    .line 303
    .end local v0           #password:Ljava/lang/String;
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 212
    if-eqz p1, :cond_0

    .line 213
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mInputEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 214
    new-instance v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$4;

    invoke-direct {v0, p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$4;-><init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 221
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 222
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mOrientationListener:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$MyOrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 254
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mInputEdit:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 13

    .prologue
    const-wide/16 v9, 0x0

    .line 233
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mResuming:Z

    .line 234
    sget-boolean v7, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "FindPhone"

    const-string v8, "onResume"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_0
    iget-object v7, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mInputEdit:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    .line 237
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mResuming:Z

    .line 238
    iget-object v7, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mOrientationListener:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$MyOrientationEventListener;

    invoke-virtual {v7}, Landroid/view/OrientationEventListener;->enable()V

    .line 241
    iget-object v7, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, v9, v10}, Lcom/android/internal/widget/LockPatternUtils;->getLimitTime(J)J

    move-result-wide v4

    .line 242
    .local v4, limitTime:J
    cmp-long v7, v4, v9

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentTime()J

    move-result-wide v7

    cmp-long v7, v4, v7

    if-gez v7, :cond_1

    .line 243
    iget-object v7, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentTime()J

    move-result-wide v0

    .line 244
    .local v0, currentTime:J
    sub-long v2, v0, v4

    .line 245
    .local v2, leftTime:J
    const-wide/16 v7, 0x78

    const-wide/16 v9, 0x3e8

    div-long v9, v2, v9

    const-wide/16 v11, 0x3c

    div-long/2addr v9, v11

    sub-long/2addr v7, v9

    long-to-int v6, v7

    .line 246
    .local v6, min:I
    if-lez v6, :cond_1

    .line 247
    mul-int/lit8 v7, v6, 0x3c

    mul-int/lit16 v7, v7, 0x3e8

    int-to-long v7, v7

    invoke-direct {p0, v7, v8}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->handleEdittextLockout(J)V

    .line 249
    .end local v0           #currentTime:J
    .end local v2           #leftTime:J
    .end local v6           #min:I
    :cond_1
    return-void
.end method

.method public onSecurityLock()V
    .locals 0

    .prologue
    .line 974
    return-void
.end method

.method public onSecurityMessage(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    const/4 v2, 0x0

    .line 983
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 984
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mInputMessage:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 985
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mInputMessage:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 992
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mInputMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 993
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mMessageDivider:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 994
    return-void

    .line 988
    :cond_2
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mInputMessage:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 989
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mInputMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onSecurityUnlock()V
    .locals 0

    .prologue
    .line 979
    return-void
.end method

.method public screenDimStateChange()V
    .locals 0

    .prologue
    .line 1063
    return-void
.end method

.method public showToast()V
    .locals 15

    .prologue
    .line 593
    sget-boolean v9, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->DEBUG:Z

    if-eqz v9, :cond_0

    .line 594
    const-string v9, "FindPhone"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "showToast, mFindPhonePasswordError = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mFindPhonePasswordError:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :cond_0
    const-string v7, ""

    .line 598
    .local v7, text:Ljava/lang/String;
    iget v9, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mFindPhonePasswordError:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3

    .line 599
    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v10, 0x10405eb

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 619
    :cond_1
    :goto_0
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 620
    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const/4 v10, 0x1

    invoke-static {v9, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    .line 621
    .local v8, toast:Landroid/widget/Toast;
    const/16 v9, 0x7d9

    invoke-virtual {v8, v9}, Landroid/widget/Toast;->setType(I)V

    .line 622
    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 624
    .end local v8           #toast:Landroid/widget/Toast;
    :cond_2
    return-void

    .line 600
    :cond_3
    iget v9, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mFindPhonePasswordError:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_4

    .line 601
    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v10, 0x10405ef

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 602
    :cond_4
    iget v9, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mFindPhonePasswordError:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_5

    .line 603
    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v10, 0x10405ee

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 604
    :cond_5
    iget v9, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mFindPhonePasswordError:I

    if-nez v9, :cond_6

    .line 605
    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v10, 0x10405ed

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 606
    :cond_6
    iget v9, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mFindPhonePasswordError:I

    const/4 v10, 0x5

    if-ne v9, v10, :cond_7

    .line 607
    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v10, 0x10405f0

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 608
    :cond_7
    iget v9, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mFindPhonePasswordError:I

    const/4 v10, 0x6

    if-ne v9, v10, :cond_8

    .line 609
    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v10, 0x10405f2

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 610
    :cond_8
    iget v9, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mFindPhonePasswordError:I

    const/4 v10, 0x7

    if-ne v9, v10, :cond_1

    .line 611
    iget-object v9, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-wide/16 v10, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/android/internal/widget/LockPatternUtils;->getLimitTime(J)J

    move-result-wide v4

    .line 612
    .local v4, limitTime:J
    iget-object v9, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentTime()J

    move-result-wide v0

    .line 613
    .local v0, currentTime:J
    sub-long v2, v0, v4

    .line 614
    .local v2, leftTime:J
    const-wide/16 v9, 0x78

    const-wide/16 v11, 0x3e8

    div-long v11, v2, v11

    const-wide/16 v13, 0x3c

    div-long/2addr v11, v13

    sub-long/2addr v9, v11

    long-to-int v6, v9

    .line 615
    .local v6, min:I
    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v10, 0x10405f3

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 616
    if-lez v6, :cond_1

    .line 617
    mul-int/lit8 v9, v6, 0x3c

    mul-int/lit16 v9, v9, 0x3e8

    int-to-long v9, v9

    invoke-direct {p0, v9, v10}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->handleEdittextLockout(J)V

    goto/16 :goto_0
.end method
