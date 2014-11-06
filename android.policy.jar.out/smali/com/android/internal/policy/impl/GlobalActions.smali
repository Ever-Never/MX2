.class Lcom/android/internal/policy/impl/GlobalActions;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;,
        Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;,
        Lcom/android/internal/policy/impl/GlobalActions$Action;,
        Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;
    }
.end annotation


# static fields
.field private static final EVENT_SERVICE_STATE_CHANGED_SETTING:I = 0x4

.field private static final MESSAGE_DISMISS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GlobalActions"


# instance fields
.field private airplane_img_light:Landroid/widget/ImageView;

.field private mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

.field private mAirplaneImageView:Landroid/widget/ImageView;

.field private mAirplaneLayout:Landroid/widget/LinearLayout;

.field private mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

.field private mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCloseLayout:Landroid/widget/LinearLayout;

.field private mCloseTextView:Landroid/widget/TextView;

.field private final mContext:Landroid/content/Context;

.field private mDeviceProvisioned:Z

.field private mDialog:Landroid/app/AlertDialog;

.field private mGlobalActionWidth:I

.field private mHandler:Landroid/os/Handler;

.field private mHandlerSetting:Landroid/os/Handler;

.field private mIWindowManager:Landroid/view/IWindowManager;

.field private mIsWaitingForEcmExit:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/GlobalActions$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyguardShowing:Z

.field private mLightOffDrawable:Landroid/graphics/drawable/Drawable;

.field private mLightOnDrawable:Landroid/graphics/drawable/Drawable;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRebootTextView:Landroid/widget/TextView;

.field private mRebootlLayout:Landroid/widget/LinearLayout;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSelectorAirplane:Landroid/graphics/drawable/Drawable;

.field private mSelectorAirplane_other:Landroid/graphics/drawable/Drawable;

.field private mSelectorVibrator:Landroid/graphics/drawable/Drawable;

.field private mSelectorVibrator_other:Landroid/graphics/drawable/Drawable;

.field private mSelectorVolume:Landroid/graphics/drawable/Drawable;

.field private mSelectorVolume_other:Landroid/graphics/drawable/Drawable;

.field private mSilentModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

.field private mStatusBar:Landroid/app/StatusBarManager;

.field private mVitravorImageView:Landroid/widget/ImageView;

.field private mVitravorLayout:Landroid/widget/LinearLayout;

.field private mVolumeImageView:Landroid/widget/ImageView;

.field private mVolumeLayout:Landroid/widget/LinearLayout;

.field private final mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

.field private screen_img_light:Landroid/widget/ImageView;

.field private vibrator_img_light:Landroid/widget/ImageView;

.field private volume_img_light:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 5
    .parameter "context"
    .parameter "windowManagerFuncs"

    .prologue
    const/4 v4, 0x0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardShowing:Z

    .line 93
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDeviceProvisioned:Z

    .line 94
    sget-object v3, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .line 95
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mIsWaitingForEcmExit:Z

    .line 136
    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/GlobalActions$1;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandlerSetting:Landroid/os/Handler;

    .line 148
    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$2;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/GlobalActions$2;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 751
    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$6;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/GlobalActions$6;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 778
    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$7;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/GlobalActions$7;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 791
    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$8;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/GlobalActions$8;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    .line 165
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    .line 166
    iput-object p2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 167
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    .line 171
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 172
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    const-string v3, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    const-string v3, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 180
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 181
    .local v1, filterSetting:Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 185
    const-string v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 187
    .local v2, telephonyManager:Landroid/telephony/TelephonyManager;
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 190
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10802c8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mLightOnDrawable:Landroid/graphics/drawable/Drawable;

    .line 193
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10802c7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mLightOffDrawable:Landroid/graphics/drawable/Drawable;

    .line 196
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10802c1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSelectorVolume:Landroid/graphics/drawable/Drawable;

    .line 199
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10802c2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSelectorVolume_other:Landroid/graphics/drawable/Drawable;

    .line 202
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10802bf

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSelectorVibrator:Landroid/graphics/drawable/Drawable;

    .line 204
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10802c0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSelectorVibrator_other:Landroid/graphics/drawable/Drawable;

    .line 207
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10802bd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSelectorAirplane:Landroid/graphics/drawable/Drawable;

    .line 210
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10802be

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSelectorAirplane_other:Landroid/graphics/drawable/Drawable;

    .line 212
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050082

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mGlobalActionWidth:I

    .line 214
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v3, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 217
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/GlobalActions;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->updateState()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandlerSetting:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardShowing:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mIsWaitingForEcmExit:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/GlobalActions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mIsWaitingForEcmExit:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/GlobalActions;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/GlobalActions;->changeAirplaneModeSystemSetting(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/GlobalActions;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method private changeAirplaneModeSystemSetting(Z)V
    .locals 4
    .parameter "on"

    .prologue
    .line 805
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 807
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 808
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 809
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 810
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 812
    if-eqz p1, :cond_1

    .line 813
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSelectorAirplane_other:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 814
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->airplane_img_light:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mLightOnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 821
    :goto_1
    return-void

    .line 805
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 817
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSelectorAirplane:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 818
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->airplane_img_light:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mLightOffDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private createDialog()Landroid/app/AlertDialog;
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 322
    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$3;

    const v2, 0x1080032

    const v3, 0x1080031

    const v4, 0x10400ec

    const v5, 0x10400ed

    const v6, 0x10400ee

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/GlobalActions$3;-><init>(Lcom/android/internal/policy/impl/GlobalActions;IIIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSilentModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    .line 358
    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$4;

    const v2, 0x108032b

    const v3, 0x108032c

    const v4, 0x10400ef

    const v5, 0x10400f0

    const v6, 0x10400f1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/GlobalActions$4;-><init>(Lcom/android/internal/policy/impl/GlobalActions;IIIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    .line 398
    const/4 v2, 0x3

    new-array v2, v2, [Lcom/android/internal/policy/impl/GlobalActions$Action;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSilentModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    aput-object v3, v2, v9

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Lcom/android/internal/policy/impl/GlobalActions$5;

    const v5, 0x1080030

    const v6, 0x10400e8

    invoke-direct {v4, p0, v5, v6}, Lcom/android/internal/policy/impl/GlobalActions$5;-><init>(Lcom/android/internal/policy/impl/GlobalActions;II)V

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    .line 424
    new-instance v2, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    invoke-direct {v2, p0, v10}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;-><init>(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$1;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    .line 426
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    const v3, 0x103030e

    invoke-direct {v0, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 431
    .local v0, ab:Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    const v3, 0x1090046

    invoke-static {v2, v3, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .local v1, layout:Landroid/view/View;
    move v2, v9

    move v3, v9

    move v4, v9

    move v5, v9

    .line 433
    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;IIII)Landroid/app/AlertDialog$Builder;

    .line 435
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    .line 438
    .local v7, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    .line 439
    .local v8, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v2, -0x13

    iput v2, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 440
    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 448
    invoke-virtual {v7, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 461
    return-object v7
.end method

.method static getPhoneInterface()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 901
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method private getPhoneStatus()Z
    .locals 4

    .prologue
    .line 887
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 888
    .local v1, isOffHook:Ljava/lang/Boolean;
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->getPhoneInterface()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 889
    .local v2, phoneServ:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 891
    :try_start_0
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 897
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3

    .line 892
    :catch_0
    move-exception v0

    .line 893
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private getVibrateValue()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 969
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vibrate_when_ringing"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 972
    .local v0, vibeWhenRinging:Z
    :goto_0
    return v0

    .line 969
    .end local v0           #vibeWhenRinging:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 992
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private prepareDialog()V
    .locals 3

    .prologue
    .line 465
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 466
    .local v0, silentModeOn:Z
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSilentModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)V

    .line 468
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)V

    .line 469
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 470
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardShowing:Z

    if-eqz v1, :cond_2

    .line 471
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7da

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 477
    :goto_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x3f19999a

    invoke-virtual {v1, v2}, Landroid/view/Window;->setDimAmount(F)V

    .line 478
    return-void

    .line 465
    .end local v0           #silentModeOn:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 466
    .restart local v0       #silentModeOn:Z
    :cond_1
    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_1

    .line 474
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    goto :goto_2
.end method

.method private prepareVolume()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 864
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->updateState()V

    .line 865
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 867
    .local v0, isAirplaneOn:Z
    :cond_0
    if-eqz v0, :cond_2

    .line 868
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isFindphoneLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 869
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlobalActions;->onAirplaneClick()V

    .line 870
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSelectorAirplane:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 871
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->airplane_img_light:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mLightOffDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 882
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mRebootTextView:Landroid/widget/TextView;

    const v2, 0x1040612

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 883
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCloseTextView:Landroid/widget/TextView;

    const v2, 0x10400e8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 884
    return-void

    .line 873
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSelectorAirplane_other:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 874
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->airplane_img_light:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mLightOnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 877
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSelectorAirplane:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 878
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->airplane_img_light:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mLightOffDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setPhoneVibrateSettingValue(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 986
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vibrate_when_ringing"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 989
    return-void

    .line 986
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateState()V
    .locals 3

    .prologue
    .line 1004
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mVitravorImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->vibrator_img_light:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 1005
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->getVibrateValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1006
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mVitravorImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSelectorVibrator_other:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1007
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->vibrator_img_light:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mLightOnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1013
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mVolumeImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->volume_img_light:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 1015
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v0, 0x1

    .line 1016
    .local v0, silentModeOn:Z
    :goto_1
    if-eqz v0, :cond_4

    .line 1017
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mVolumeImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSelectorVolume_other:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1018
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->volume_img_light:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mLightOnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1025
    .end local v0           #silentModeOn:Z
    :cond_1
    :goto_2
    return-void

    .line 1009
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mVitravorImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSelectorVibrator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1010
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->vibrator_img_light:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mLightOffDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1015
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 1020
    .restart local v0       #silentModeOn:Z
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mVolumeImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSelectorVolume:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1021
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->volume_img_light:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mLightOffDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 313
    return-void
.end method

.method public isShow()Z
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method onAirplaneClick()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 949
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->getPhoneStatus()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 966
    :goto_0
    return-void

    .line 951
    :cond_0
    const-string v4, "ril.cdma.inecmmode"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 953
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mIsWaitingForEcmExit:Z

    .line 955
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 957
    .local v0, ecmDialogIntent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 958
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 960
    .end local v0           #ecmDialogIntent:Landroid/content/Intent;
    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    .line 963
    .local v1, flag:Z
    :goto_1
    if-nez v1, :cond_3

    :goto_2
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/GlobalActions;->changeAirplaneModeSystemSetting(Z)V

    goto :goto_0

    .end local v1           #flag:Z
    :cond_2
    move v1, v3

    .line 960
    goto :goto_1

    .restart local v1       #flag:Z
    :cond_3
    move v2, v3

    .line 963
    goto :goto_2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 487
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 488
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    invoke-virtual {v0, p2}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->getItem(I)Lcom/android/internal/policy/impl/GlobalActions$Action;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/GlobalActions$Action;->onPress()V

    .line 489
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 827
    const/4 v0, 0x1

    .line 828
    .local v0, dimiss:Z
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 853
    :pswitch_0
    const/4 v0, 0x0

    .line 857
    :goto_0
    if-eqz v0, :cond_0

    .line 858
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 861
    :cond_0
    return-void

    .line 831
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlobalActions;->onVolumeClick()V

    goto :goto_0

    .line 834
    :pswitch_2
    invoke-static {}, Landroid/os/Build;->isShopDemoVersion()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 835
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    const-string v2, "wipe_userdata"

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->mzReboot(Ljava/lang/String;Z)V

    goto :goto_0

    .line 837
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->mzReboot(Ljava/lang/String;Z)V

    goto :goto_0

    .line 842
    :pswitch_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v1, v3}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->shutdown(Z)V

    goto :goto_0

    .line 846
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlobalActions;->onVibratorClick()V

    goto :goto_0

    .line 850
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlobalActions;->onAirplaneClick()V

    goto :goto_0

    .line 828
    nop

    :pswitch_data_0
    .packed-switch 0x10202b0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mStatusBar:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 483
    return-void
.end method

.method onScreenClick()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 935
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accelerometer_rotation"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 938
    .local v0, flag:Z
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accelerometer_rotation"

    if-eqz v0, :cond_1

    :goto_1
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 941
    if-eqz v0, :cond_2

    .line 942
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->screen_img_light:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mLightOffDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 946
    :goto_2
    return-void

    .end local v0           #flag:Z
    :cond_0
    move v0, v2

    .line 935
    goto :goto_0

    .restart local v0       #flag:Z
    :cond_1
    move v2, v1

    .line 938
    goto :goto_1

    .line 944
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->screen_img_light:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mLightOnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method onVibratorClick()V
    .locals 2

    .prologue
    .line 921
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->getVibrateValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 922
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->vibrator_img_light:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mLightOffDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 923
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mVitravorImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSelectorVibrator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 924
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlobalActions;->setPhoneVibrateSettingValue(Ljava/lang/Boolean;)V

    .line 931
    :goto_0
    return-void

    .line 927
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mVitravorImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSelectorVibrator_other:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 928
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->vibrator_img_light:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mLightOnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 929
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlobalActions;->setPhoneVibrateSettingValue(Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method onVolumeClick()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    .line 906
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    if-eq v2, v3, :cond_0

    const/4 v0, 0x1

    .line 907
    .local v0, silentModeOn:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 908
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 909
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mVolumeImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSelectorVolume:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 910
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->volume_img_light:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mLightOffDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 918
    :goto_1
    return-void

    .end local v0           #silentModeOn:Z
    :cond_0
    move v0, v1

    .line 906
    goto :goto_0

    .line 913
    .restart local v0       #silentModeOn:Z
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 914
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mVolumeImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSelectorVolume_other:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 915
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->volume_img_light:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mLightOnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public showDialog(ZZ)V
    .locals 7
    .parameter "keyguardShowing"
    .parameter "isDeviceProvisioned"

    .prologue
    const/high16 v6, 0x3f80

    const/high16 v5, 0x3f00

    const/4 v4, 0x0

    .line 226
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardShowing:Z

    .line 227
    iput-boolean p2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDeviceProvisioned:Z

    .line 228
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Landroid/app/AlertDialog;

    if-nez v2, :cond_0

    .line 229
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    const-string v3, "statusbar"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mStatusBar:Landroid/app/StatusBarManager;

    .line 231
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->createDialog()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Landroid/app/AlertDialog;

    .line 233
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->prepareDialog()V

    .line 235
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mStatusBar:Landroid/app/StatusBarManager;

    const/high16 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/StatusBarManager;->disable(I)V

    .line 236
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 237
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Landroid/app/AlertDialog;

    const v3, 0x1020286

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 239
    .local v0, customPanel:Landroid/widget/FrameLayout;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 240
    .local v1, lParams:Landroid/widget/LinearLayout$LayoutParams;
    iget v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mGlobalActionWidth:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 241
    const/16 v2, 0xa

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 242
    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 243
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 244
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    if-eqz v0, :cond_1

    .line 246
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10802cc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 250
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Landroid/app/AlertDialog;

    const v3, 0x10202b4

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mVolumeLayout:Landroid/widget/LinearLayout;

    .line 252
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Landroid/app/AlertDialog;

    const v3, 0x10202b2

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mRebootlLayout:Landroid/widget/LinearLayout;

    .line 254
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Landroid/app/AlertDialog;

    const v3, 0x10202b0

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCloseLayout:Landroid/widget/LinearLayout;

    .line 257
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Landroid/app/AlertDialog;

    const v3, 0x10202ba

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneLayout:Landroid/widget/LinearLayout;

    .line 260
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Landroid/app/AlertDialog;

    const v3, 0x10202b5

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mVolumeImageView:Landroid/widget/ImageView;

    .line 264
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Landroid/app/AlertDialog;

    const v3, 0x10202b3

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mRebootTextView:Landroid/widget/TextView;

    .line 266
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Landroid/app/AlertDialog;

    const v3, 0x10202b1

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCloseTextView:Landroid/widget/TextView;

    .line 269
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Landroid/app/AlertDialog;

    const v3, 0x10202b7

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mVitravorLayout:Landroid/widget/LinearLayout;

    .line 272
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Landroid/app/AlertDialog;

    const v3, 0x10202b8

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mVitravorImageView:Landroid/widget/ImageView;

    .line 274
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Landroid/app/AlertDialog;

    const v3, 0x10202b6

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->volume_img_light:Landroid/widget/ImageView;

    .line 277
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Landroid/app/AlertDialog;

    const v3, 0x10202bb

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneImageView:Landroid/widget/ImageView;

    .line 280
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Landroid/app/AlertDialog;

    const v3, 0x10202b9

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->vibrator_img_light:Landroid/widget/ImageView;

    .line 283
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Landroid/app/AlertDialog;

    const v3, 0x10202bc

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->airplane_img_light:Landroid/widget/ImageView;

    .line 285
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mVolumeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isFindphoneLocked()Z

    move-result v2

    if-nez v2, :cond_2

    .line 287
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mRebootlLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCloseLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mRebootlLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/view/View;->setAlpha(F)V

    .line 291
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCloseLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/view/View;->setAlpha(F)V

    .line 292
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/view/View;->setAlpha(F)V

    .line 301
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mVitravorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->prepareVolume()V

    .line 305
    return-void

    .line 294
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mRebootlLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/view/View;->setClickable(Z)V

    .line 295
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCloseLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/view/View;->setClickable(Z)V

    .line 296
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/view/View;->setClickable(Z)V

    .line 297
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mRebootlLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/view/View;->setAlpha(F)V

    .line 298
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCloseLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/view/View;->setAlpha(F)V

    .line 299
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method
