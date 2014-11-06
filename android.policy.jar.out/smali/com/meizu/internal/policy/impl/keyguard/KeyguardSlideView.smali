.class public Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;
.super Landroid/widget/FrameLayout;
.source "KeyguardSlideView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/meizu/internal/policy/impl/keyguard/KeyguardScreen;
.implements Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final ENABLE_DISABLE_WIDGET_WHEN_SLIDE:Z = true

.field private static final VIEW_TYPE_DATE:I = 0x0

.field private static final VIEW_TYPE_MUSIC:I = 0x1


# instance fields
.field private final DRAG_ANIM_DURATION_FADEOUT:I

.field private final DRAG_ANIM_DURATION_FAST:I

.field private final DRAG_ANIM_DURATION_LOCK:I

.field private final DRAG_ANIM_DURATION_UNLOCK:I

.field private final DRAG_ESCAPE_VELOCITY_DOWN:F

.field private final DRAG_ESCAPE_VELOCITY_UP:F

.field private final DRAG_Y_FAR_ENOUGH:I

.field private final FADE_OUT_ANIM_DISTANCE:I

.field private final FADE_OUT_START_POS:I

.field private final HEIGHT_OF_UNLOCK_START:I

.field private final MSG_START_HOLD_HOME:I

.field private final TRIGGER_AERA_OF_UNLOCK:I

.field private debugTotalMoveLength:I

.field mAlarmServiceCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$AlarmServiceCallbacks;

.field private mAlarmState:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;

.field private mAlarmView:Landroid/widget/FrameLayout;

.field private mAnimationHelper:Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;

.field private mBackground:Landroid/view/View;

.field private mBackgroundLP:Landroid/widget/FrameLayout$LayoutParams;

.field private mBeginPosY:I

.field private mCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;

.field private mChargingView:Lcom/meizu/internal/policy/impl/keyguard/ChargeViewBase;

.field private mDisappearWhenUnlock:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mDragAnimMode:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

.field private mDragPosY:I

.field private mFadeoutAnimtor:Landroid/animation/ValueAnimator;

.field private mGlowView:Lcom/meizu/internal/policy/impl/keyguard/GlowView;

.field mGlowViewCallback:Lcom/meizu/internal/policy/impl/keyguard/GlowView$Callback;

.field mKeyHandler:Landroid/os/Handler;

.field mLockMusicWidgetCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView$IMusicWidget;

.field private mMusicInfoCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$MusicInfoCallback;

.field private mMusicView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;

.field private mPluggedIn:Z

.field mPowerManager:Landroid/os/PowerManager;

.field mResetMusicInfoShow:Ljava/lang/Runnable;

.field private mShadowLP:Landroid/widget/FrameLayout$LayoutParams;

.field private mSlideContent:Landroid/view/View;

.field private mSlideContentLP:Landroid/widget/FrameLayout$LayoutParams;

.field private mStopAlarmIconLP:Landroid/widget/FrameLayout$LayoutParams;

.field private mStopAlarmTv:Landroid/widget/TextView;

.field private mStopAlarmTvLP:Landroid/widget/FrameLayout$LayoutParams;

.field private mTimeView:Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;

.field private mUnlockDivider:Landroid/view/View;

.field private mUnlockIcon:Landroid/widget/ImageView;

.field private mUpdateMonitorCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWidgetContent:Landroid/view/View;

.field private mWidgetContentBottom:I

.field private mWidgetContentLP:Landroid/widget/FrameLayout$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    sget-boolean v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->DEBUG:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->DEBUG:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;)V
    .locals 6
    .parameter "context"
    .parameter "callback"

    .prologue
    const/4 v3, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 134
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 64
    const/16 v2, 0x15e

    iput v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->DRAG_ANIM_DURATION_UNLOCK:I

    .line 65
    const/16 v2, 0xfa

    iput v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->DRAG_ANIM_DURATION_LOCK:I

    .line 66
    const/16 v2, 0x64

    iput v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->DRAG_ANIM_DURATION_FAST:I

    .line 67
    const/16 v2, 0xc8

    iput v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->DRAG_ANIM_DURATION_FADEOUT:I

    .line 68
    const/16 v2, 0x3e8

    iput v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->MSG_START_HOLD_HOME:I

    .line 89
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mDisappearWhenUnlock:Ljava/util/ArrayList;

    .line 93
    sget-object v2, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;->NONE:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mDragAnimMode:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    .line 99
    iput v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mDragPosY:I

    .line 100
    iput v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mBeginPosY:I

    .line 105
    iput-boolean v5, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mPluggedIn:Z

    .line 117
    new-instance v2, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$1;

    invoke-direct {v2, p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$1;-><init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;)V

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mLockMusicWidgetCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView$IMusicWidget;

    .line 197
    iput v5, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->debugTotalMoveLength:I

    .line 557
    new-instance v2, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$3;

    invoke-direct {v2, p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$3;-><init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;)V

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mUpdateMonitorCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 574
    new-instance v2, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$4;

    invoke-direct {v2, p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$4;-><init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;)V

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mMusicInfoCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$MusicInfoCallback;

    .line 616
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mPowerManager:Landroid/os/PowerManager;

    .line 636
    new-instance v2, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$5;

    invoke-direct {v2, p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$5;-><init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;)V

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mResetMusicInfoShow:Ljava/lang/Runnable;

    .line 644
    new-instance v2, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$6;

    invoke-direct {v2, p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$6;-><init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;)V

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mKeyHandler:Landroid/os/Handler;

    .line 829
    new-instance v2, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$7;

    invoke-direct {v2, p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$7;-><init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;)V

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mAlarmServiceCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$AlarmServiceCallbacks;

    .line 853
    sget-object v2, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;->DESTORY:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mAlarmState:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;

    .line 948
    new-instance v2, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$10;

    invoke-direct {v2, p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$10;-><init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;)V

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mGlowViewCallback:Lcom/meizu/internal/policy/impl/keyguard/GlowView$Callback;

    .line 135
    iput-object p2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;

    .line 136
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 137
    .local v0, layoutInflate:Landroid/view/LayoutInflater;
    const v2, 0x1090069

    invoke-virtual {v0, v2, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 139
    invoke-virtual {p0, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 140
    invoke-virtual {p0, v4}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 142
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10500f2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->FADE_OUT_START_POS:I

    .line 143
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10500f3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->FADE_OUT_ANIM_DISTANCE:I

    .line 144
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10500f8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->HEIGHT_OF_UNLOCK_START:I

    .line 145
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10500f9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->TRIGGER_AERA_OF_UNLOCK:I

    .line 146
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10500e1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->DRAG_Y_FAR_ENOUGH:I

    .line 147
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e005e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->DRAG_ESCAPE_VELOCITY_UP:F

    .line 148
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e005d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->DRAG_ESCAPE_VELOCITY_DOWN:F

    .line 155
    const v2, 0x1020064

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mTimeView:Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;

    .line 157
    const v2, 0x1020323

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mMusicView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;

    .line 158
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mMusicView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;

    invoke-virtual {v2, v3}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->setCallback(Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;)V

    .line 159
    invoke-static {p1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->getInstance(Landroid/content/Context;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;

    move-result-object v1

    .line 160
    .local v1, musicController:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;
    invoke-virtual {v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->isMusicPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mMusicView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;

    const/high16 v3, 0x3f80

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 162
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mMusicView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 163
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mMusicView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;

    invoke-virtual {v2}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->updateMusicInfo()V

    .line 164
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mMusicView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;

    invoke-virtual {v2}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->setPauseButtonImage()V

    .line 166
    invoke-direct {p0, v4}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->updateMusicDateTips(I)V

    .line 169
    :cond_0
    new-instance v2, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;

    invoke-direct {v2}, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;-><init>()V

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mAnimationHelper:Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;

    .line 170
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mAnimationHelper:Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;

    invoke-virtual {v2, p0}, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->setCallback(Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper$Callback;)V

    .line 172
    const v2, 0x1020321

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mUnlockDivider:Landroid/view/View;

    .line 173
    const v2, 0x102031d

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mSlideContent:Landroid/view/View;

    .line 174
    const v2, 0x102031e

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mBackground:Landroid/view/View;

    .line 175
    const v2, 0x1020305

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mWidgetContent:Landroid/view/View;

    .line 177
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mSlideContent:Landroid/view/View;

    const v3, 0x1020320

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mUnlockIcon:Landroid/widget/ImageView;

    .line 179
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 182
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mMusicView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mLockMusicWidgetCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView$IMusicWidget;

    invoke-virtual {v2, v3}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->setMusicWidgetCallback(Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView$IMusicWidget;)V

    .line 183
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mDisappearWhenUnlock:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mUnlockIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->updateMusicDateTips(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mUnlockDivider:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mStopAlarmTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mAlarmState:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mAlarmState:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->updateGlowView(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mAlarmView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mPluggedIn:Z

    return v0
.end method

.method static synthetic access$202(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mPluggedIn:Z

    return p1
.end method

.method static synthetic access$300(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;)Lcom/meizu/internal/policy/impl/keyguard/ChargeViewBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mChargingView:Lcom/meizu/internal/policy/impl/keyguard/ChargeViewBase;

    return-object v0
.end method

.method static synthetic access$400(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->loadCharingView()V

    return-void
.end method

.method static synthetic access$500(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mDragAnimMode:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    return-object v0
.end method

.method static synthetic access$600(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mMusicView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->loadGlowView()V

    return-void
.end method

.method static synthetic access$900(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;)Lcom/meizu/internal/policy/impl/keyguard/GlowView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mGlowView:Lcom/meizu/internal/policy/impl/keyguard/GlowView;

    return-object v0
.end method

.method private fadeOutUnlockDivider(I)V
    .locals 3
    .parameter "duration"

    .prologue
    .line 403
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mFadeoutAnimtor:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 404
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mFadeoutAnimtor:Landroid/animation/ValueAnimator;

    .line 405
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mFadeoutAnimtor:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 406
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mFadeoutAnimtor:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 407
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mFadeoutAnimtor:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 408
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mFadeoutAnimtor:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$2;

    invoke-direct {v1, p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$2;-><init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mFadeoutAnimtor:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 421
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mFadeoutAnimtor:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 422
    :cond_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mFadeoutAnimtor:Landroid/animation/ValueAnimator;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 423
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mFadeoutAnimtor:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 424
    return-void

    .line 406
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private getUnlockTime(II)I
    .locals 3
    .parameter "speed"
    .parameter "animSpace"

    .prologue
    .line 352
    const/16 v0, 0x15e

    mul-int/lit16 v1, p2, 0x4b0

    div-int/2addr v1, p1

    const/16 v2, 0x64

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private loadCharingView()V
    .locals 2

    .prologue
    .line 547
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mChargingView:Lcom/meizu/internal/policy/impl/keyguard/ChargeViewBase;

    if-eqz v0, :cond_0

    .line 552
    :goto_0
    return-void

    .line 550
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

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mChargingView:Lcom/meizu/internal/policy/impl/keyguard/ChargeViewBase;

    goto :goto_0
.end method

.method private loadGlowView()V
    .locals 2

    .prologue
    .line 855
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mGlowView:Lcom/meizu/internal/policy/impl/keyguard/GlowView;

    if-eqz v0, :cond_0

    .line 863
    :goto_0
    return-void

    .line 857
    :cond_0
    const v0, 0x1020326

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mAlarmView:Landroid/widget/FrameLayout;

    .line 858
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mAlarmView:Landroid/widget/FrameLayout;

    const v1, 0x1020368

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/internal/policy/impl/keyguard/GlowView;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mGlowView:Lcom/meizu/internal/policy/impl/keyguard/GlowView;

    .line 859
    const v0, 0x1020369

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mStopAlarmTv:Landroid/widget/TextView;

    .line 860
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mGlowView:Lcom/meizu/internal/policy/impl/keyguard/GlowView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 861
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mGlowView:Lcom/meizu/internal/policy/impl/keyguard/GlowView;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mGlowViewCallback:Lcom/meizu/internal/policy/impl/keyguard/GlowView$Callback;

    invoke-virtual {v0, v1}, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->setCallback(Lcom/meizu/internal/policy/impl/keyguard/GlowView$Callback;)V

    .line 862
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mDisappearWhenUnlock:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mAlarmView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private setKeyguardViewHeight(I)V
    .locals 4
    .parameter "height"

    .prologue
    .line 746
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v1

    if-le p1, v1, :cond_1

    .line 787
    :cond_0
    :goto_0
    return-void

    .line 749
    :cond_1
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mWidgetContentLP:Landroid/widget/FrameLayout$LayoutParams;

    if-nez v1, :cond_2

    .line 750
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mWidgetContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mWidgetContentLP:Landroid/widget/FrameLayout$LayoutParams;

    .line 751
    :cond_2
    iget v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mWidgetContentBottom:I

    if-ge p1, v1, :cond_8

    .line 752
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mWidgetContentLP:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mWidgetContentBottom:I

    sub-int v2, p1, v2

    div-int/lit8 v2, v2, 0xa

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 759
    :goto_1
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mBackgroundLP:Landroid/widget/FrameLayout$LayoutParams;

    if-nez v1, :cond_3

    .line 760
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mBackground:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mBackgroundLP:Landroid/widget/FrameLayout$LayoutParams;

    .line 761
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mBackgroundLP:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 762
    const v1, 0x102031f

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 763
    .local v0, mShadow:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mShadowLP:Landroid/widget/FrameLayout$LayoutParams;

    .line 764
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mShadowLP:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 766
    .end local v0           #mShadow:Landroid/view/View;
    :cond_3
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mBackgroundLP:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int v2, p1, v2

    div-int/lit8 v2, v2, 0x3

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 767
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mShadowLP:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mBackgroundLP:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 770
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mSlideContentLP:Landroid/widget/FrameLayout$LayoutParams;

    if-nez v1, :cond_4

    .line 771
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mSlideContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mSlideContentLP:Landroid/widget/FrameLayout$LayoutParams;

    .line 772
    :cond_4
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mSlideContentLP:Landroid/widget/FrameLayout$LayoutParams;

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 773
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mSlideContent:Landroid/view/View;

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mSlideContentLP:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 775
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mAlarmState:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;

    sget-object v2, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;->READY:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;

    if-eq v1, v2, :cond_7

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mStopAlarmTv:Landroid/widget/TextView;

    if-eqz v1, :cond_7

    .line 776
    sget-object v1, Landroid/os/Build;->IS_MX2:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 777
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mStopAlarmIconLP:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int/2addr v2, p1

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 778
    :cond_5
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mStopAlarmTvLP:Landroid/widget/FrameLayout$LayoutParams;

    if-nez v1, :cond_6

    .line 779
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mStopAlarmTv:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mStopAlarmTvLP:Landroid/widget/FrameLayout$LayoutParams;

    .line 780
    :cond_6
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mStopAlarmTvLP:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int/2addr v2, p1

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 781
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mStopAlarmTv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mStopAlarmTvLP:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 784
    :cond_7
    sget-boolean v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "KeyguardSlideView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setKeyguardViewHeight(),,mWidgetContentLP.topMargin:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mWidgetContentLP:Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mBackgroundLP.topMargin:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mBackgroundLP:Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mSlideContentLP.height:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mSlideContentLP:Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 755
    :cond_8
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mWidgetContentLP:Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, 0x0

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto/16 :goto_1
.end method

.method private showDivider()V
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mFadeoutAnimtor:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mFadeoutAnimtor:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mFadeoutAnimtor:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mUnlockDivider:Landroid/view/View;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 395
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mUnlockDivider:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 396
    return-void
.end method

.method private updateAlarmViewAlpha(I)V
    .locals 4
    .parameter "mDragPos"

    .prologue
    const/high16 v3, 0x3f80

    .line 230
    int-to-float v1, p1

    iget v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->DRAG_Y_FAR_ENOUGH:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float v0, v3, v1

    .line 231
    .local v0, alpha:F
    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 232
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mAlarmView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 233
    sget-boolean v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SlideTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAlarmViewAlpha,alpha:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_0
    return-void
.end method

.method private updateDisappearAnim()V
    .locals 9

    .prologue
    const/high16 v8, 0x3f80

    .line 208
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v6, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mDragPosY:I

    sub-int v3, v5, v6

    .line 209
    .local v3, mDragPos:I
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mDisappearWhenUnlock:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, j:I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 210
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mDisappearWhenUnlock:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 211
    .local v0, dstView:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_1

    .line 209
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 214
    :cond_1
    iget v5, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->FADE_OUT_START_POS:I

    if-ge v3, v5, :cond_2

    .line 215
    const/high16 v4, 0x3f80

    .line 220
    .local v4, offset:F
    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v5

    cmpl-float v5, v5, v4

    if-eqz v5, :cond_0

    .line 221
    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 222
    sget-boolean v5, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "SlideTest"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateDisappearAnim,offset:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 217
    .end local v4           #offset:F
    :cond_2
    iget v5, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->FADE_OUT_START_POS:I

    sub-int v5, v3, v5

    int-to-float v5, v5

    iget v6, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->FADE_OUT_ANIM_DISTANCE:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    sub-float v4, v8, v5

    .line 218
    .restart local v4       #offset:F
    invoke-static {v4, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    goto :goto_2

    .line 225
    .end local v0           #dstView:Landroid/view/View;
    .end local v4           #offset:F
    :cond_3
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mAlarmState:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;

    sget-object v6, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;->ALARMING:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;

    if-ne v5, v6, :cond_4

    .line 226
    invoke-direct {p0, v3}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->updateAlarmViewAlpha(I)V

    .line 228
    :cond_4
    return-void
.end method

.method private updateGlowView(Z)V
    .locals 13
    .parameter "alarmFadeIn"

    .prologue
    const v12, 0x1020320

    const/4 v11, 0x4

    const/4 v10, 0x0

    const-wide/16 v8, 0x15e

    const/4 v7, 0x0

    .line 866
    sget-boolean v4, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "SlideTest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getBottom():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mDragPosY:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mDragPosY:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    :cond_0
    if-eqz p1, :cond_6

    .line 868
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mGlowView:Lcom/meizu/internal/policy/impl/keyguard/GlowView;

    invoke-virtual {v4}, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->startAnim()V

    .line 869
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mAlarmView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 871
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mDragPosY:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 872
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mDragPosY:I

    sub-int/2addr v4, v5

    invoke-direct {p0, v4}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->updateAlarmViewAlpha(I)V

    .line 873
    :cond_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mAlarmView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v4

    invoke-direct {v0, v7, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 874
    .local v0, mAlphaAnimation:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 875
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mAlarmView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 876
    iget-boolean v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mPluggedIn:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mChargingView:Lcom/meizu/internal/policy/impl/keyguard/ChargeViewBase;

    if-eqz v4, :cond_2

    .line 877
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mGlowView:Lcom/meizu/internal/policy/impl/keyguard/GlowView;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x10a0001

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 878
    .local v1, mFadeOut:Landroid/view/animation/Animation;
    new-instance v4, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$8;

    invoke-direct {v4, p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$8;-><init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;)V

    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 888
    iget v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mDragPosY:I

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mDragPosY:I

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v5

    if-eq v4, v5, :cond_4

    .line 889
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mChargingView:Lcom/meizu/internal/policy/impl/keyguard/ChargeViewBase;

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setAlpha(F)V

    .line 893
    .end local v1           #mFadeOut:Landroid/view/animation/Animation;
    :cond_2
    :goto_0
    sget-object v4, Landroid/os/Build;->IS_MX2:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 894
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mUnlockIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 895
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mAlarmView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 896
    .local v3, temp:Landroid/widget/ImageView;
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v4

    if-lez v4, :cond_5

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mUnlockIcon:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    :goto_1
    invoke-direct {v2, v7, v7, v4, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 898
    .local v2, mTranslateAnimation:Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v2, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 899
    iput-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mUnlockIcon:Landroid/widget/ImageView;

    .line 900
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mUnlockIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 901
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mUnlockIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 902
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mStopAlarmIconLP:Landroid/widget/FrameLayout$LayoutParams;

    if-nez v4, :cond_3

    .line 903
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mUnlockIcon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mStopAlarmIconLP:Landroid/widget/FrameLayout$LayoutParams;

    .line 937
    .end local v0           #mAlphaAnimation:Landroid/view/animation/AlphaAnimation;
    .end local v2           #mTranslateAnimation:Landroid/view/animation/TranslateAnimation;
    .end local v3           #temp:Landroid/widget/ImageView;
    :cond_3
    :goto_2
    return-void

    .line 891
    .restart local v0       #mAlphaAnimation:Landroid/view/animation/AlphaAnimation;
    .restart local v1       #mFadeOut:Landroid/view/animation/Animation;
    :cond_4
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mChargingView:Lcom/meizu/internal/policy/impl/keyguard/ChargeViewBase;

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 896
    .end local v1           #mFadeOut:Landroid/view/animation/Animation;
    .restart local v3       #temp:Landroid/widget/ImageView;
    :cond_5
    const/high16 v4, 0x41f0

    goto :goto_1

    .line 906
    .end local v0           #mAlphaAnimation:Landroid/view/animation/AlphaAnimation;
    .end local v3           #temp:Landroid/widget/ImageView;
    :cond_6
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mAlarmView:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mAlarmView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    .line 907
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mGlowView:Lcom/meizu/internal/policy/impl/keyguard/GlowView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->stopAnim(Z)V

    .line 908
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mAlarmView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v4

    invoke-direct {v0, v4, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 909
    .restart local v0       #mAlphaAnimation:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 910
    new-instance v4, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$9;

    invoke-direct {v4, p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$9;-><init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;)V

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 920
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mAlarmView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 921
    iget-boolean v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mPluggedIn:Z

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mChargingView:Lcom/meizu/internal/policy/impl/keyguard/ChargeViewBase;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mDragAnimMode:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    sget-object v5, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;->UNLOCK_V:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    if-eq v4, v5, :cond_8

    .line 922
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mChargingView:Lcom/meizu/internal/policy/impl/keyguard/ChargeViewBase;

    check-cast v4, Landroid/view/View;

    const/high16 v5, 0x3f80

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 923
    iget v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mDragPosY:I

    if-eqz v4, :cond_7

    iget v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mDragPosY:I

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v5

    if-ne v4, v5, :cond_8

    .line 924
    :cond_7
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mChargingView:Lcom/meizu/internal/policy/impl/keyguard/ChargeViewBase;

    check-cast v4, Landroid/view/View;

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mGlowView:Lcom/meizu/internal/policy/impl/keyguard/GlowView;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x10a

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 926
    :cond_8
    sget-object v4, Landroid/os/Build;->IS_MX2:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 927
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mUnlockIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 928
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mSlideContent:Landroid/view/View;

    invoke-virtual {v4, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 929
    .restart local v3       #temp:Landroid/widget/ImageView;
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mUnlockIcon:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {v2, v7, v7, v4, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 930
    .restart local v2       #mTranslateAnimation:Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v2, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 931
    iput-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mUnlockIcon:Landroid/widget/ImageView;

    .line 932
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mUnlockIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 933
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mUnlockIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_2
.end method

.method private updateMusicDateTips(I)V
    .locals 5
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 819
    sget-boolean v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardSlideView"

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

    .line 820
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mTimeView:Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;

    if-eqz v0, :cond_1

    .line 821
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mTimeView:Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;

    if-nez p1, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->setDateBoxVisible(Z)V

    .line 822
    :cond_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mMusicView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;

    if-eqz v0, :cond_2

    .line 823
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mMusicView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;

    if-ne p1, v1, :cond_4

    :goto_1
    invoke-virtual {v0, v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->showMusicName(Z)V

    .line 824
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 821
    goto :goto_0

    :cond_4
    move v1, v2

    .line 823
    goto :goto_1
.end method

.method private updateWidgetBottom()V
    .locals 4

    .prologue
    .line 793
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mMusicView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mMusicView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;

    .line 794
    .local v0, mView:Landroid/view/View;
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mMusicView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x32

    :goto_1
    add-int/2addr v1, v2

    iput v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mWidgetContentBottom:I

    .line 796
    sget-boolean v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "KeyguardSlideView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateWidgetBottom(),mWidgetContentBottom:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mWidgetContentBottom:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    :cond_0
    return-void

    .line 793
    .end local v0           #mView:Landroid/view/View;
    :cond_1
    const v1, 0x1020322

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 794
    .restart local v0       #mView:Landroid/view/View;
    :cond_2
    const/16 v1, 0x96

    goto :goto_1
.end method

.method private yToStars(I)Ljava/lang/String;
    .locals 3
    .parameter "y"

    .prologue
    .line 190
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 191
    .local v0, SB:Ljava/lang/StringBuffer;
    rsub-int v2, p1, 0x708

    div-int/lit8 p1, v2, 0x14

    .line 192
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 193
    const-string v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 192
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 195
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 469
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mChargingView:Lcom/meizu/internal/policy/impl/keyguard/ChargeViewBase;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mChargingView:Lcom/meizu/internal/policy/impl/keyguard/ChargeViewBase;

    invoke-interface {v0, v1, v1}, Lcom/meizu/internal/policy/impl/keyguard/ChargeViewBase;->setVisible(ZZ)V

    .line 471
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mChargingView:Lcom/meizu/internal/policy/impl/keyguard/ChargeViewBase;

    invoke-interface {v0}, Lcom/meizu/internal/policy/impl/keyguard/ChargeViewBase;->cleanUp()V

    .line 473
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/16 v5, 0x19

    const/16 v7, 0x3e8

    const/4 v3, 0x1

    .line 658
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 659
    .local v1, keyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 660
    .local v0, action:I
    const/4 v4, 0x3

    if-ne v1, v4, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v3, :cond_2

    .line 685
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    :cond_1
    :goto_1
    return v2

    .line 663
    :cond_2
    sget-object v4, Landroid/os/Build;->IS_MX:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Landroid/os/Build;->IS_M9:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_3
    const/4 v4, 0x4

    if-ne v1, v4, :cond_5

    .line 664
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    .line 665
    .local v2, ret:Z
    if-nez v0, :cond_4

    .line 666
    if-nez v2, :cond_1

    .line 667
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mKeyHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 668
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mKeyHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x96

    invoke-virtual {v4, v7, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move v2, v3

    .line 669
    goto :goto_1

    .line 672
    :cond_4
    if-ne v0, v3, :cond_0

    .line 673
    if-nez v2, :cond_0

    .line 674
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mKeyHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 676
    .end local v2           #ret:Z
    :cond_5
    if-eq v1, v5, :cond_6

    const/16 v3, 0x18

    if-ne v1, v3, :cond_0

    .line 678
    :cond_6
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mAlarmState:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;

    sget-object v4, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;->ALARMING:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;

    if-ne v3, v4, :cond_0

    .line 679
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    if-ne v1, v5, :cond_7

    const-string v3, "volume_down"

    :goto_2
    invoke-virtual {v4, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->sendUserAction(Ljava/lang/String;)Z

    goto :goto_0

    :cond_7
    const-string v3, "volume_up"

    goto :goto_2
.end method

.method public doubleHomekeyEvent()V
    .locals 0

    .prologue
    .line 612
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->onDoubleClickHome()V

    .line 613
    return-void
.end method

.method public getScreenState()I
    .locals 2

    .prologue
    .line 806
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mPowerManager:Landroid/os/PowerManager;

    if-nez v0, :cond_0

    .line 807
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mPowerManager:Landroid/os/PowerManager;

    .line 809
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenDim()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mPowerManager:Landroid/os/PowerManager;

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
    .line 725
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mDragAnimMode:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;->NONE:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    if-ne v0, v1, :cond_0

    .line 726
    const-wide/16 v0, 0x2710

    .line 728
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    const/16 v2, 0x2710

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method public homekeyEvent()V
    .locals 0

    .prologue
    .line 607
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->onClickHome()V

    .line 608
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 449
    const/4 v0, 0x0

    return v0
.end method

.method public onAnimEnd()V
    .locals 3

    .prologue
    .line 366
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;

    if-nez v0, :cond_0

    .line 386
    :goto_0
    return-void

    .line 368
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mDragPosY:I

    .line 369
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mDragAnimMode:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;->UNLOCK_V:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    if-ne v0, v1, :cond_3

    .line 371
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;

    invoke-interface {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;->showNextSecurityScreenOrFinish()V

    .line 372
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mAlarmState:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;->ALARMING:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;

    if-ne v0, v1, :cond_1

    .line 373
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    const-string v1, "stop_alarm"

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->sendUserAction(Ljava/lang/String;)Z

    .line 382
    :cond_1
    :goto_1
    sget-boolean v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "SlideTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDragPosY:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mDragPosY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " moveLength:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->debugTotalMoveLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->updateChargingView()V

    goto :goto_0

    .line 375
    :cond_3
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mDragAnimMode:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;->LOCK_V:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    if-ne v0, v1, :cond_1

    .line 378
    const/16 v0, 0xc8

    invoke-direct {p0, v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->fadeOutUnlockDivider(I)V

    .line 379
    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;->NONE:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mDragAnimMode:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    .line 380
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;

    invoke-interface {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;->onUserActivityTimeoutChanged()V

    goto :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 490
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 491
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->getInstance(Landroid/content/Context;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mMusicInfoCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$MusicInfoCallback;

    invoke-virtual {v2, v3}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->registerMusicInfoCallback(Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$MusicInfoCallback;)V

    .line 492
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mUpdateMonitorCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 494
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getKeyguardAlarmServiceState()Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mAlarmState:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;

    .line 495
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mAlarmState:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;

    sget-object v3, Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;->ALARMING:Lcom/meizu/internal/policy/impl/keyguard/KeyguardAlarmService$State;

    if-ne v2, v3, :cond_0

    .line 496
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->loadGlowView()V

    .line 497
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getKeyguardAlarmData()Landroid/os/Bundle;

    move-result-object v0

    .line 498
    .local v0, data:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 499
    const-string v2, "msgs"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 500
    .local v1, msgs:[Ljava/lang/String;
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mGlowView:Lcom/meizu/internal/policy/impl/keyguard/GlowView;

    const/4 v3, 0x0

    aget-object v3, v1, v3

    aget-object v4, v1, v5

    invoke-virtual {v2, v3, v4}, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->SetText(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mStopAlarmTv:Landroid/widget/TextView;

    const/4 v3, 0x2

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 502
    invoke-direct {p0, v5}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->updateGlowView(Z)V

    .line 505
    .end local v0           #data:Landroid/os/Bundle;
    .end local v1           #msgs:[Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mAlarmServiceCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$AlarmServiceCallbacks;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerAlarmServiceCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$AlarmServiceCallbacks;)V

    .line 507
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 941
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 946
    :goto_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;->userActivity(J)V

    .line 947
    return-void

    .line 943
    :pswitch_0
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    const-string v1, "delay_alarm"

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->sendUserAction(Ljava/lang/String;)Z

    goto :goto_0

    .line 941
    nop

    :pswitch_data_0
    .packed-switch 0x1020368
        :pswitch_0
    .end packed-switch
.end method

.method public onClickHome()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 706
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->getInstance(Landroid/content/Context;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->isMusicPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    .line 707
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mMusicView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 708
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mResetMusicInfoShow:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 709
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mMusicView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 711
    invoke-direct {p0, v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->updateMusicDateTips(I)V

    .line 721
    :cond_0
    :goto_0
    return-void

    .line 714
    :cond_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mMusicView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 716
    invoke-direct {p0, v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->updateMusicDateTips(I)V

    .line 717
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mResetMusicInfoShow:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 718
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mResetMusicInfoShow:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 511
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 512
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mAnimationHelper:Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->stopAnimation()V

    .line 513
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;

    .line 514
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->getInstance(Landroid/content/Context;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mMusicInfoCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$MusicInfoCallback;

    invoke-virtual {v0, v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->removeCallback(Ljava/lang/Object;)V

    .line 515
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mUpdateMonitorCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 516
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mAlarmServiceCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$AlarmServiceCallbacks;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeAlarmServiceCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$AlarmServiceCallbacks;)V

    .line 517
    return-void
.end method

.method public onDoubleClickHome()V
    .locals 2

    .prologue
    .line 693
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mMusicView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mMusicView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 695
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mMusicView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 696
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mMusicView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->updateMusicInfo()V

    .line 697
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mMusicView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->setPauseButtonImage()V

    .line 699
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->updateMusicDateTips(I)V

    .line 700
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->getInstance(Landroid/content/Context;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->startMusic()V

    .line 703
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "ev"

    .prologue
    const/4 v2, 0x0

    .line 237
    sget-boolean v3, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onInterceptTouchEvent:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-direct {p0, v5}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->yToStars(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_0
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mDragAnimMode:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    sget-object v4, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;->NONE:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    if-eq v3, v4, :cond_2

    .line 239
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 282
    :cond_1
    :goto_0
    return v2

    .line 240
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v1, v3

    .line 241
    .local v1, y:I
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 242
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;

    invoke-interface {v3}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;->isScreenOnBecauseOfSlideKey()Z

    move-result v0

    .line 243
    .local v0, becauseSlide:Z
    sget-boolean v3, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", becauseSlide:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " y:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_3
    if-eqz v0, :cond_8

    .line 245
    sget-object v3, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;->DRAG:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mDragAnimMode:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    .line 246
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;

    invoke-interface {v3}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;->onUserActivityTimeoutChanged()V

    .line 248
    iput v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mBeginPosY:I

    .line 249
    iget v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->HEIGHT_OF_UNLOCK_START:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mDragPosY:I

    .line 250
    iget v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mDragPosY:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mDragPosY:I

    .line 251
    iget v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->debugTotalMoveLength:I

    iget v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mDragPosY:I

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->debugTotalMoveLength:I

    .line 253
    iget v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mDragPosY:I

    invoke-direct {p0, v3}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->setKeyguardViewHeight(I)V

    .line 254
    sget-boolean v3, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->DEBUG:Z

    if-eqz v3, :cond_4

    const-string v3, "SlideTest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onInterceptTouchEvent,mDragPosY:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mDragPosY:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " y:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " offsetTopAndBottom:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_4
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->updateViewWhenDragging()V

    .line 256
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->updateDisappearAnim()V

    .line 262
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->showDivider()V

    .line 264
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 265
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->updateWidgetBottom()V

    .line 278
    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mDragAnimMode:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    sget-object v4, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;->NONE:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    if-eq v3, v4, :cond_6

    .line 279
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;

    const-wide/16 v4, 0x0

    invoke-interface {v3, v4, v5}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;->userActivity(J)V

    .line 280
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->updateChargingView()V

    .line 282
    :cond_6
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mDragAnimMode:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    sget-object v4, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;->NONE:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    if-ne v3, v4, :cond_7

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_7
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 266
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->HEIGHT_OF_UNLOCK_START:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->TRIGGER_AERA_OF_UNLOCK:I

    sub-int/2addr v3, v4

    if-le v1, v3, :cond_5

    .line 267
    sget-object v3, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;->DRAG:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mDragAnimMode:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    .line 268
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;

    invoke-interface {v3}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;->onUserActivityTimeoutChanged()V

    .line 269
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v3

    iput v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mDragPosY:I

    .line 270
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->HEIGHT_OF_UNLOCK_START:I

    sub-int/2addr v3, v4

    if-ge v1, v3, :cond_a

    .line 271
    iput v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mBeginPosY:I

    .line 274
    :goto_2
    sget-boolean v3, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->DEBUG:Z

    if-eqz v3, :cond_9

    const-string v3, "SlideTest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onInterceptTouchEvent,mDragPosY:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mDragPosY:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " y:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_9
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->updateViewWhenDragging()V

    .line 276
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->updateWidgetBottom()V

    goto :goto_1

    .line 273
    :cond_a
    iput v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mBeginPosY:I

    goto :goto_2
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 478
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mSlideContent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v1

    .line 479
    .local v1, oldTop:I
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mSlideContent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 480
    .local v0, height:I
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mSlideContent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 481
    .local v2, width:I
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 482
    iget v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mDragPosY:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 483
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mSlideContent:Landroid/view/View;

    add-int v4, p2, v2

    add-int v5, v1, v0

    invoke-virtual {v3, p2, v1, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 486
    :cond_0
    return-void
.end method

.method public onNotifyNewPosition(II)V
    .locals 3
    .parameter "startPos"
    .parameter "distance"

    .prologue
    .line 432
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;

    if-nez v1, :cond_1

    .line 445
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mDragAnimMode:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    sget-object v2, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;->LOCK_V:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mDragAnimMode:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    sget-object v2, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;->UNLOCK_V:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    if-ne v1, v2, :cond_0

    .line 437
    :cond_2
    iget v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mDragPosY:I

    .line 438
    .local v0, oldPosY:I
    add-int v1, p1, p2

    iput v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mDragPosY:I

    .line 440
    iget v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mDragPosY:I

    invoke-direct {p0, v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->setKeyguardViewHeight(I)V

    .line 441
    iget v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->debugTotalMoveLength:I

    iget v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mDragPosY:I

    sub-int/2addr v2, v0

    add-int/2addr v1, v2

    iput v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->debugTotalMoveLength:I

    .line 442
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->updateDisappearAnim()V

    .line 443
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mChargingView:Lcom/meizu/internal/policy/impl/keyguard/ChargeViewBase;

    if-eqz v0, :cond_0

    .line 456
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->updateChargingView()V

    .line 458
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->debugTotalMoveLength:I

    .line 459
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 463
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->updateChargingView()V

    .line 464
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mTimeView:Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->updateTime()V

    .line 465
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 21
    .parameter "event"

    .prologue
    .line 287
    sget-boolean v2, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTouchEvent:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->yToStars(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", mDragAnimMode:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mDragAnimMode:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " ,action"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mDragAnimMode:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    sget-object v3, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;->DRAG:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    if-eq v2, v3, :cond_1

    .line 289
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 343
    :goto_0
    return v2

    .line 292
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    .line 293
    .local v12, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    move/from16 v19, v0

    .line 294
    .local v19, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v0, v2

    move/from16 v20, v0

    .line 297
    .local v20, y:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 298
    const/4 v2, 0x2

    if-ne v12, v2, :cond_6

    .line 299
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mBeginPosY:I

    if-lez v2, :cond_5

    .line 300
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mBeginPosY:I

    sub-int/2addr v2, v3

    add-int v2, v2, v20

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mDragPosY:I

    .line 304
    :goto_1
    move-object/from16 v0, p0

    iget v15, v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mDragPosY:I

    .line 305
    .local v15, oldPosY:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->debugTotalMoveLength:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mDragPosY:I

    sub-int/2addr v3, v15

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->debugTotalMoveLength:I

    .line 306
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mUnlockDivider:Landroid/view/View;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mUnlockDivider:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mDragPosY:I

    if-lez v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mDragPosY:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 308
    invoke-direct/range {p0 .. p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->showDivider()V

    .line 310
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mDragPosY:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->setKeyguardViewHeight(I)V

    .line 311
    invoke-direct/range {p0 .. p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->updateDisappearAnim()V

    .line 312
    sget-boolean v2, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "SlideTest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTouchEvent,ACTION_MOVE, offsetTopAndBottom:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mDragPosY:I

    sub-int/2addr v6, v15

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " oldPosY:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " y:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " getMeasuredHeight():"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    .end local v15           #oldPosY:I
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mDragAnimMode:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    sget-object v3, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;->NONE:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    if-ne v2, v3, :cond_4

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_4
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 302
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->HEIGHT_OF_UNLOCK_START:I

    add-int v2, v2, v20

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mDragPosY:I

    goto/16 :goto_1

    .line 314
    :cond_6
    const/4 v2, 0x3

    if-eq v12, v2, :cond_7

    const/4 v2, 0x1

    if-eq v12, v2, :cond_7

    const/4 v2, 0x6

    if-ne v12, v2, :cond_3

    .line 316
    :cond_7
    sget-boolean v2, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->DEBUG:Z

    if-eqz v2, :cond_8

    const-string v2, "SlideTest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "action:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;

    const-wide/16 v6, 0x0

    invoke-interface {v2, v6, v7}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;->userActivity(J)V

    .line 318
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 319
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v18

    .line 320
    .local v18, velocityY:F
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mDragPosY:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->DRAG_Y_FAR_ENOUGH:I

    if-le v2, v3, :cond_b

    const/4 v14, 0x1

    .line 321
    .local v14, farEnough:Z
    :goto_3
    const/4 v2, 0x0

    cmpg-float v2, v18, v2

    if-gez v2, :cond_c

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->DRAG_ESCAPE_VELOCITY_UP:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mDragPosY:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->DRAG_Y_FAR_ENOUGH:I

    div-int/lit8 v3, v3, 0x2

    if-le v2, v3, :cond_c

    const/16 v17, 0x1

    .line 323
    .local v17, upFastEnough:Z
    :goto_4
    const/4 v2, 0x0

    cmpl-float v2, v18, v2

    if-lez v2, :cond_d

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->DRAG_ESCAPE_VELOCITY_DOWN:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_d

    const/4 v13, 0x1

    .line 324
    .local v13, downFastEnough:Z
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->getScreenState()I

    move-result v16

    .line 325
    .local v16, screenState:I
    if-eqz v16, :cond_f

    if-nez v17, :cond_9

    if-eqz v14, :cond_f

    if-nez v13, :cond_f

    .line 327
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mDragPosY:I

    neg-int v4, v2

    .line 328
    .local v4, animSpace:I
    sget-object v2, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;->UNLOCK_V:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mDragAnimMode:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    .line 329
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;

    invoke-interface {v2}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;->onUserActivityTimeoutChanged()V

    .line 330
    if-eqz v17, :cond_e

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v2, v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->getUnlockTime(II)I

    move-result v5

    .line 331
    .local v5, unlockTime:I
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mAnimationHelper:Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mDragPosY:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->startAnim(IIILandroid/view/View;Landroid/view/View;)Z

    .line 332
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->fadeOutUnlockDivider(I)V

    .line 341
    .end local v5           #unlockTime:I
    :cond_a
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_2

    .line 320
    .end local v4           #animSpace:I
    .end local v13           #downFastEnough:Z
    .end local v14           #farEnough:Z
    .end local v16           #screenState:I
    .end local v17           #upFastEnough:Z
    :cond_b
    const/4 v14, 0x0

    goto :goto_3

    .line 321
    .restart local v14       #farEnough:Z
    :cond_c
    const/16 v17, 0x0

    goto :goto_4

    .line 323
    .restart local v17       #upFastEnough:Z
    :cond_d
    const/4 v13, 0x0

    goto :goto_5

    .line 330
    .restart local v4       #animSpace:I
    .restart local v13       #downFastEnough:Z
    .restart local v16       #screenState:I
    :cond_e
    const/16 v5, 0x15e

    goto :goto_6

    .line 335
    .end local v4           #animSpace:I
    :cond_f
    sget-object v2, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;->LOCK_V:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mDragAnimMode:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    .line 336
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;

    invoke-interface {v2}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;->onUserActivityTimeoutChanged()V

    .line 337
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mDragPosY:I

    sub-int v4, v2, v3

    .line 338
    .restart local v4       #animSpace:I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mAnimationHelper:Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mDragPosY:I

    const/16 v9, 0xfa

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v8, v4

    invoke-virtual/range {v6 .. v11}, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->startAnim(IIILandroid/view/View;Landroid/view/View;)Z

    .line 339
    sget-boolean v2, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->DEBUG:Z

    if-eqz v2, :cond_a

    const-string v2, "SlideTest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "anim to lock,mDragPosY:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mDragPosY:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " animSpace:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 343
    .end local v4           #animSpace:I
    .end local v13           #downFastEnough:Z
    .end local v14           #farEnough:Z
    .end local v16           #screenState:I
    .end local v17           #upFastEnough:Z
    .end local v18           #velocityY:F
    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public screenDimStateChange()V
    .locals 1

    .prologue
    .line 801
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mChargingView:Lcom/meizu/internal/policy/impl/keyguard/ChargeViewBase;

    if-eqz v0, :cond_0

    .line 802
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->updateChargingView()V

    .line 804
    :cond_0
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "background"

    .prologue
    .line 737
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mBackground:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 738
    return-void
.end method

.method public updateChargingView()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 523
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mChargingView:Lcom/meizu/internal/policy/impl/keyguard/ChargeViewBase;

    if-nez v1, :cond_0

    .line 524
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->loadCharingView()V

    .line 526
    :cond_0
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mDragAnimMode:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    sget-object v2, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;->NONE:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$ANIM_MODE;

    if-eq v1, v2, :cond_2

    .line 527
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mChargingView:Lcom/meizu/internal/policy/impl/keyguard/ChargeViewBase;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mChargingView:Lcom/meizu/internal/policy/impl/keyguard/ChargeViewBase;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 529
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mChargingView:Lcom/meizu/internal/policy/impl/keyguard/ChargeViewBase;

    invoke-interface {v1, v3, v3}, Lcom/meizu/internal/policy/impl/keyguard/ChargeViewBase;->setVisible(ZZ)V

    .line 541
    :cond_1
    :goto_0
    return-void

    .line 532
    :cond_2
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getBatteryStatus()Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    move-result-object v0

    .line 533
    .local v0, mBatteryStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mChargingView:Lcom/meizu/internal/policy/impl/keyguard/ChargeViewBase;

    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->getScreenState()I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/meizu/internal/policy/impl/keyguard/ChargeViewBase;->updateBatteryInfo(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;I)V

    .line 534
    iget-boolean v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mPluggedIn:Z

    if-eqz v1, :cond_3

    .line 535
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mChargingView:Lcom/meizu/internal/policy/impl/keyguard/ChargeViewBase;

    invoke-interface {v1, v4, v4}, Lcom/meizu/internal/policy/impl/keyguard/ChargeViewBase;->setVisible(ZZ)V

    goto :goto_0

    .line 536
    :cond_3
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mChargingView:Lcom/meizu/internal/policy/impl/keyguard/ChargeViewBase;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mChargingView:Lcom/meizu/internal/policy/impl/keyguard/ChargeViewBase;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 538
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mChargingView:Lcom/meizu/internal/policy/impl/keyguard/ChargeViewBase;

    invoke-interface {v1, v3, v3}, Lcom/meizu/internal/policy/impl/keyguard/ChargeViewBase;->setVisible(ZZ)V

    goto :goto_0
.end method

.method public updateViewWhenDragging()V
    .locals 0

    .prologue
    .line 357
    return-void
.end method
