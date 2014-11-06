.class public Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;
.super Landroid/view/View;
.source "ChargingEdotView.java"

# interfaces
.implements Lcom/meizu/internal/policy/impl/keyguard/ChargeViewBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotHandler;,
        Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$IlluminantInfo;,
        Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;,
        Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;,
        Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;
    }
.end annotation


# static fields
.field private static final COST_OF_BATTERYBOX_OUT:I = 0xc8

.field private static final COST_OF_EDOT_DIED_ANIM:I = 0x3e8

.field private static final COST_OF_ILLUMINANT_OUT:I = 0xc8

.field private static final CYCLE_TIEM_OF_EDOT_ANIM:I = 0x1388

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final DIP_BATTERY_CAPACITY_GAP:I = 0x0

.field private static final EVENT_CHANGE_AVAILABLE_TIME:I = 0x14d

.field private static final GAP_OF_ALPHA_CHANGE:I = 0x14

.field private static final INTERVAL_BORN_EDOT:I = 0x2bc

.field private static final INTERVAL_UPDATE_EDOT:I = 0x12

.field private static final INTERVAL_UPDATE_EDOT_FOR_DIED:I = 0x10

.field private static final LOW_LEVEL:I = 0xa

.field private static final MAX_ILLUMINANT_COUNT:I = 0x4

.field private static final MSG_BORN_EDOT:I = 0x3ea

.field private static final MSG_KILL_ALL_EDOT:I = 0x3f2

.field private static final MSG_PLAY_ANIM:I = 0x3f5

.field private static final MSG_START_EDOT_DIED_ANIM:I = 0x3ee

.field private static final MSG_STOP_ANIMATING:I = 0x3eb

.field private static final MSG_STOP_BORNING_EDOT:I = 0x3ec

.field private static final MSG_UPDATE_ANIM_SPEED:I = 0x3f4

.field private static final MSG_UPDATE_ANIM_STATE:I = 0x3f3

.field private static final MSG_UPDATE_BATTERYBOX_FOR_OUT:I = 0x3f0

.field private static final MSG_UPDATE_EDOT:I = 0x3e9

.field private static final MSG_UPDATE_EDOT_FOR_DIED:I = 0x3ed

.field private static final MSG_UPDATE_ILLIMINANT_IN:I = 0x3f1

.field private static final MSG_UPDATE_ILLUMINANT_FOR_OUT:I = 0x3ef

.field private static final SCREEN_DIM:I = 0x1

.field private static final SCREEN_OFF:I = 0x0

.field private static final SCREEN_ON:I = 0x2

.field public static final TAG:Ljava/lang/String;

.field private static mAliveEdotNum:I

.field private static mOndrawTime:J

.field private static mUpdateEdotTime:J

.field private static mUpdateEdotTime2:J


# instance fields
.field private ANIMATE_FADE_IN_SPACE:I

.field private ANIMATE_FADE_OUT_SPACE:I

.field private ANIMATE_VERTICAL_SPACE:I

.field private final ANIM_BORNING:I

.field private final ANIM_CHARGING:I

.field private final ANIM_PLUGGING:I

.field private final ANIM_QUITING:I

.field private BATTERY_CAPACITY:I

.field private BOX_BOTTOM_HEIGHT:I

.field private EDOT_TYPE_COUNT:I

.field private final EDOT_ZOOM_IN_ALPHA:[F

.field private final EDOT_ZOOM_IN_SCALE:[F

.field private GAP_BETWEEN_BATTERY_AND_EDOT:I

.field private MAX_EDOT_COUNT:I

.field private MAX_HORIZONTAL_EDOT_RADIUS:I

.field mAnimMode:I

.field private mBatteryAlpha:I

.field private mBatteryBox:Landroid/graphics/drawable/Drawable;

.field private mBatteryFill:Landroid/graphics/drawable/Drawable;

.field private mBatteryLevel:I

.field mBatteryOutStartTime:J

.field private mBatteryVisiable:Z

.field private mCharged:Z

.field private mChargedTime:J

.field private mCharging:Z

.field mCurrentAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

.field private mDelayChargingAnimting:Z

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mEdotAllDied:Z

.field private mEdotAnimator:Landroid/animation/ValueAnimator;

.field private mEdotList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mEdotMiddle:Landroid/graphics/drawable/Drawable;

.field private mEdotMin:Landroid/graphics/drawable/Drawable;

.field private mEdotSmall:Landroid/graphics/drawable/Drawable;

.field private mFpsCount:I

.field private mHandler:Landroid/os/Handler;

.field private mIlluminantAlpha:I

.field mIlluminantDuration:I

.field private mIlluminantInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$IlluminantInfo;",
            ">;"
        }
    .end annotation
.end field

.field mIlluminantQuitTop:J

.field mIlluminantStartTime:J

.field private mIlluminants:[Landroid/graphics/drawable/Drawable;

.field mLastEdotType:I

.field private mOpacityAnimator:Landroid/animation/ValueAnimator;

.field private mPlugged:Z

.field private mPluggedInTime:J

.field mPluggingFrameCount:I

.field mQuittingFrameCount:I

.field private mRemoveTime:J

.field private mScreenOnTime:J

.field private mScreenState:I

.field private mSpeed:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;

.field private mStopTime:J

.field mTargetAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

.field mTest:I

.field private mToRight:Z

.field mTypeCount:I

.field private mValueArrayInterpolatorAlpha:Landroid/view/animation/ValueArrayInterpolator;

.field private mValueArrayInterpolatorScale:Landroid/view/animation/ValueArrayInterpolator;

.field private mVisiable:Z

.field private mWarningBatteryFill:Landroid/graphics/drawable/Drawable;

.field private final sIlluminantOutBegin:[I

.field private final sIlluminantOutEnd:[I

.field private final sLightBegin:[I

.field private final sLightEnd:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 51
    const-class v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->TAG:Ljava/lang/String;

    .line 52
    sget-boolean v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->DEBUG:Z

    sput-boolean v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->DEBUG:Z

    .line 443
    sput-wide v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mOndrawTime:J

    .line 793
    sput-wide v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mUpdateEdotTime:J

    .line 794
    sput-wide v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mUpdateEdotTime2:J

    .line 795
    const/4 v0, 0x0

    sput v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mAliveEdotNum:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 391
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 392
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 395
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 396
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, -0x1

    const/4 v9, 0x1

    const-wide/16 v5, 0x0

    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 346
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    new-array v3, v8, [I

    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->sLightBegin:[I

    .line 101
    new-array v3, v8, [I

    fill-array-data v3, :array_1

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->sLightEnd:[I

    .line 102
    new-array v3, v8, [I

    fill-array-data v3, :array_2

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->sIlluminantOutBegin:[I

    .line 103
    new-array v3, v8, [I

    fill-array-data v3, :array_3

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->sIlluminantOutEnd:[I

    .line 105
    const/16 v3, 0xf

    new-array v3, v3, [F

    fill-array-data v3, :array_4

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->EDOT_ZOOM_IN_SCALE:[F

    .line 106
    const/16 v3, 0xf

    new-array v3, v3, [F

    fill-array-data v3, :array_5

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->EDOT_ZOOM_IN_ALPHA:[F

    .line 107
    new-instance v3, Landroid/view/animation/ValueArrayInterpolator;

    invoke-direct {v3}, Landroid/view/animation/ValueArrayInterpolator;-><init>()V

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mValueArrayInterpolatorScale:Landroid/view/animation/ValueArrayInterpolator;

    .line 108
    new-instance v3, Landroid/view/animation/ValueArrayInterpolator;

    invoke-direct {v3}, Landroid/view/animation/ValueArrayInterpolator;-><init>()V

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mValueArrayInterpolatorAlpha:Landroid/view/animation/ValueArrayInterpolator;

    .line 109
    iput v9, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->ANIM_CHARGING:I

    .line 110
    const/16 v3, 0x10

    iput v3, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->ANIM_BORNING:I

    .line 111
    const/16 v3, 0x100

    iput v3, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->ANIM_QUITING:I

    .line 112
    const/16 v3, 0x1000

    iput v3, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->ANIM_PLUGGING:I

    .line 127
    iput v7, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mAnimMode:I

    .line 128
    sget-object v3, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->none:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCurrentAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    .line 129
    sget-object v3, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->none:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mTargetAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    .line 133
    iput v7, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mPluggingFrameCount:I

    .line 134
    iput v7, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mQuittingFrameCount:I

    .line 147
    iput v4, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mScreenState:I

    .line 148
    iput-boolean v7, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCharging:Z

    .line 149
    iput-boolean v7, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCharged:Z

    .line 150
    iput-boolean v7, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mPlugged:Z

    .line 151
    iput-wide v5, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mPluggedInTime:J

    .line 152
    iput v7, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mBatteryLevel:I

    .line 153
    iput-wide v5, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mRemoveTime:J

    .line 154
    iput-wide v5, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mChargedTime:J

    .line 155
    iput-wide v5, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mScreenOnTime:J

    .line 156
    const/16 v3, 0xff

    iput v3, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mIlluminantAlpha:I

    .line 157
    const/16 v3, 0xff

    iput v3, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mBatteryAlpha:I

    .line 158
    iput-boolean v9, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mVisiable:Z

    .line 159
    iput-boolean v9, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mBatteryVisiable:Z

    .line 161
    iput v7, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mFpsCount:I

    .line 162
    sget-object v3, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;->PAUSE:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mSpeed:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;

    .line 187
    new-array v3, v8, [Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mIlluminants:[Landroid/graphics/drawable/Drawable;

    .line 209
    iput-boolean v9, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mToRight:Z

    .line 211
    iput v4, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mLastEdotType:I

    .line 212
    iput v7, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mTypeCount:I

    .line 214
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mStopTime:J

    .line 216
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 260
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mIlluminantInfoList:Ljava/util/ArrayList;

    .line 267
    new-instance v3, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotHandler;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotHandler;-><init>(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$1;)V

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mHandler:Landroid/os/Handler;

    .line 524
    iput v7, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mIlluminantDuration:I

    .line 525
    iput-wide v5, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mIlluminantStartTime:J

    .line 526
    const-wide/16 v3, -0x2710

    iput-wide v3, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mIlluminantQuitTop:J

    .line 527
    iput-wide v5, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mBatteryOutStartTime:J

    .line 685
    iget v3, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->MAX_HORIZONTAL_EDOT_RADIUS:I

    iput v3, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mTest:I

    .line 349
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10800d6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mBatteryFill:Landroid/graphics/drawable/Drawable;

    .line 350
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10800d7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mWarningBatteryFill:Landroid/graphics/drawable/Drawable;

    .line 351
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10800d1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mBatteryBox:Landroid/graphics/drawable/Drawable;

    .line 352
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mIlluminants:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10800d2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v7

    .line 353
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mIlluminants:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10800d3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v9

    .line 354
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mIlluminants:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10800d4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v3, v4

    .line 355
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mIlluminants:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10800d5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v3, v4

    .line 356
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10800da

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mEdotSmall:Landroid/graphics/drawable/Drawable;

    .line 357
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10800d9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mEdotMin:Landroid/graphics/drawable/Drawable;

    .line 358
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10800d8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mEdotMiddle:Landroid/graphics/drawable/Drawable;

    .line 361
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10500a0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->BATTERY_CAPACITY:I

    .line 362
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10500a1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->BOX_BOTTOM_HEIGHT:I

    .line 363
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10500a2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->MAX_HORIZONTAL_EDOT_RADIUS:I

    .line 364
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10500a3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->GAP_BETWEEN_BATTERY_AND_EDOT:I

    .line 365
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10500a4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->ANIMATE_VERTICAL_SPACE:I

    .line 366
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10500a5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->ANIMATE_FADE_OUT_SPACE:I

    .line 367
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10500a6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->ANIMATE_FADE_IN_SPACE:I

    .line 368
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e005b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->MAX_EDOT_COUNT:I

    .line 369
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e005c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->EDOT_TYPE_COUNT:I

    .line 371
    iput v7, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mBatteryLevel:I

    .line 372
    new-instance v3, Ljava/util/ArrayList;

    iget v4, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->MAX_EDOT_COUNT:I

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mEdotList:Ljava/util/ArrayList;

    .line 373
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v3, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->MAX_EDOT_COUNT:I

    if-ge v0, v3, :cond_0

    .line 374
    new-instance v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;

    invoke-direct {v1, p0}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;-><init>(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)V

    .line 375
    .local v1, info:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mEdotList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 378
    .end local v1           #info:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v8, :cond_1

    .line 379
    new-instance v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$IlluminantInfo;

    invoke-direct {v1, p0}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$IlluminantInfo;-><init>(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)V

    .line 380
    .local v1, info:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$IlluminantInfo;
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mIlluminantInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 383
    .end local v1           #info:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$IlluminantInfo;
    :cond_1
    const-string v3, "window"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 384
    .local v2, windowManager:Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v3, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 386
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mValueArrayInterpolatorScale:Landroid/view/animation/ValueArrayInterpolator;

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->EDOT_ZOOM_IN_SCALE:[F

    invoke-virtual {v3, v4}, Landroid/view/animation/ValueArrayInterpolator;->setValueArray([F)V

    .line 387
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mValueArrayInterpolatorAlpha:Landroid/view/animation/ValueArrayInterpolator;

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->EDOT_ZOOM_IN_ALPHA:[F

    invoke-virtual {v3, v4}, Landroid/view/animation/ValueArrayInterpolator;->setValueArray([F)V

    .line 388
    return-void

    .line 100
    nop

    :array_0
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
    .end array-data

    .line 101
    :array_1
    .array-data 0x4
        0x15t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data

    .line 102
    :array_2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    .line 103
    :array_3
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
    .end array-data

    .line 105
    :array_4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xat 0xd7t 0xa3t 0x3ct
        0xe3t 0xa5t 0x9bt 0x3dt
        0x9at 0x99t 0x19t 0x3et
        0x42t 0x60t 0x65t 0x3et
        0xbct 0x74t 0x93t 0x3et
        0xa0t 0x1at 0xaft 0x3et
        0xcbt 0xa1t 0xc5t 0x3et
        0x3dt 0xat 0xd7t 0x3et
        0x2ft 0xddt 0xe4t 0x3et
        0xb2t 0x9dt 0xeft 0x3et
        0xc7t 0x4bt 0xf7t 0x3et
        0x7ft 0x6at 0xfct 0x3et
        0xdbt 0xf9t 0xfet 0x3et
        0x0t 0x0t 0x0t 0x3ft
    .end array-data

    .line 106
    :array_5
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x48t 0xe1t 0x7at 0x3ft
        0x7bt 0x14t 0x6et 0x3ft
        0x52t 0xb8t 0x5et 0x3ft
        0x71t 0x3dt 0x4at 0x3ft
        0x8ft 0xc2t 0x35t 0x3ft
        0x52t 0xb8t 0x1et 0x3ft
        0x14t 0xaet 0x7t 0x3ft
        0xaet 0x47t 0xe1t 0x3et
        0x7bt 0x14t 0xaet 0x3et
        0x0t 0x0t 0x80t 0x3et
        0x7bt 0x14t 0x2et 0x3et
        0xect 0x51t 0xb8t 0x3dt
        0x8ft 0xc2t 0xf5t 0x3ct
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->ANIMATE_VERTICAL_SPACE:I

    return v0
.end method

.method static synthetic access$1000(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->updateBatteryBoxOut()V

    return-void
.end method

.method static synthetic access$1100(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->handleUpdateIlliminantIn()V

    return-void
.end method

.method static synthetic access$1200(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->killAllEdot()V

    return-void
.end method

.method static synthetic access$1300(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->updateAnimState()V

    return-void
.end method

.method static synthetic access$1400(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->updateSpeed()V

    return-void
.end method

.method static synthetic access$1500(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->playFadeAnim(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->playEdotAnim(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->pause()V

    return-void
.end method

.method static synthetic access$1800(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mBatteryAlpha:I

    return v0
.end method

.method static synthetic access$1802(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput p1, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mBatteryAlpha:I

    return p1
.end method

.method static synthetic access$1812(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iget v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mBatteryAlpha:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mBatteryAlpha:I

    return v0
.end method

.method static synthetic access$1820(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iget v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mBatteryAlpha:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mBatteryAlpha:I

    return v0
.end method

.method static synthetic access$1900(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mIlluminantAlpha:I

    return v0
.end method

.method static synthetic access$1902(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput p1, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mIlluminantAlpha:I

    return p1
.end method

.method static synthetic access$1920(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iget v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mIlluminantAlpha:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mIlluminantAlpha:I

    return v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 49
    sget-boolean v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->DEBUG:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mSpeed:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCharging:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCharged:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mFpsCount:I

    return v0
.end method

.method static synthetic access$2302(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput p1, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mFpsCount:I

    return p1
.end method

.method static synthetic access$2308(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mFpsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mFpsCount:I

    return v0
.end method

.method static synthetic access$2400(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mEdotAllDied:Z

    return v0
.end method

.method static synthetic access$300(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->updateEdot()V

    return-void
.end method

.method static synthetic access$400(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->bornEdot()V

    return-void
.end method

.method static synthetic access$500(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mStopTime:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-wide p1, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mStopTime:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->updateEdotForDied()V

    return-void
.end method

.method static synthetic access$800(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->startEdoitDiedAnim()V

    return-void
.end method

.method static synthetic access$900(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->handleUpdateIlluminantOut()V

    return-void
.end method

.method private bornEdot()V
    .locals 17

    .prologue
    .line 687
    sget-boolean v12, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->DEBUG:Z

    if-eqz v12, :cond_0

    sget-object v12, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->TAG:Ljava/lang/String;

    const-string v13, "bornEdot()"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mIlluminants:[Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 691
    .local v6, rcIlluminant:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mBatteryBox:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 692
    .local v5, rcBatteryBox:Landroid/graphics/Rect;
    iget v12, v6, Landroid/graphics/Rect;->bottom:I

    if-eqz v12, :cond_1

    iget v12, v5, Landroid/graphics/Rect;->bottom:I

    if-nez v12, :cond_3

    .line 693
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mHandler:Landroid/os/Handler;

    const/16 v13, 0x3ea

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 694
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mHandler:Landroid/os/Handler;

    const/16 v14, 0x3ea

    invoke-virtual {v13, v14}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    const-wide/16 v14, 0x2bc

    invoke-virtual {v12, v13, v14, v15}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 791
    :cond_2
    :goto_0
    return-void

    .line 698
    :cond_3
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mEdotAllDied:Z

    .line 699
    const/4 v3, 0x0

    .line 700
    .local v3, i:I
    const/4 v3, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mEdotList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v3, v12, :cond_6

    .line 701
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mEdotList:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;

    .line 702
    .local v2, edotInfo:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;
    iget-boolean v12, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->isLive:Z

    if-nez v12, :cond_f

    .line 703
    const/4 v12, 0x1

    iput-boolean v12, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->isLive:Z

    .line 706
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v12

    const-wide/high16 v14, 0x4024

    mul-double/2addr v12, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->EDOT_TYPE_COUNT:I

    int-to-double v14, v14

    rem-double/2addr v12, v14

    double-to-int v12, v12

    iput v12, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->edotType:I

    .line 707
    move-object/from16 v0, p0

    iget v12, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mLastEdotType:I

    iget v13, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->edotType:I

    if-eq v12, v13, :cond_8

    .line 708
    iget v12, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->edotType:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mLastEdotType:I

    .line 709
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mTypeCount:I

    .line 718
    :goto_2
    iget v12, v6, Landroid/graphics/Rect;->left:I

    iget v13, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v13

    div-int/lit8 v4, v12, 0x2

    .line 719
    .local v4, middle:I
    const/4 v1, 0x0

    .line 720
    .local v1, edotH:I
    iget v12, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->edotType:I

    if-nez v12, :cond_a

    .line 721
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mEdotSmall:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    sub-int/2addr v4, v12

    .line 722
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mEdotSmall:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 723
    const/16 v12, 0xaf0

    iput v12, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->verticalDuration:I

    .line 734
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mBatteryVisiable:Z

    if-nez v12, :cond_4

    .line 735
    move-object/from16 v0, p0

    iget v12, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->ANIMATE_VERTICAL_SPACE:I

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v13

    const-wide/high16 v15, 0x4054

    mul-double/2addr v13, v15

    double-to-int v13, v13

    sub-int/2addr v12, v13

    iput v12, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->verticalSpace:I

    .line 736
    iget v12, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->verticalDuration:I

    iget v13, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->verticalSpace:I

    mul-int/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->ANIMATE_VERTICAL_SPACE:I

    div-int/2addr v12, v13

    iput v12, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->verticalDuration:I

    .line 739
    :cond_4
    const/4 v12, 0x0

    iput v12, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->zoomRate:F

    .line 740
    iget-object v12, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->mEdotPosition:Landroid/graphics/Point;

    iput v4, v12, Landroid/graphics/Point;->x:I

    .line 741
    iget-object v12, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->mEdotPosition:Landroid/graphics/Point;

    iget v13, v6, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v14, v1, 0x2

    sub-int/2addr v13, v14

    iput v13, v12, Landroid/graphics/Point;->y:I

    .line 742
    iget-object v12, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->mEdotPosition:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->y:I

    iput v12, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->startY:I

    .line 743
    iget-object v12, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->mEdotPosition:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->x:I

    iput v12, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->startX:I

    .line 744
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mToRight:Z

    iput-boolean v12, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->toRight:Z

    .line 745
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mToRight:Z

    if-nez v12, :cond_c

    const/4 v12, 0x1

    :goto_4
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mToRight:Z

    .line 747
    move-object/from16 v0, p0

    iget v12, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->ANIMATE_FADE_IN_SPACE:I

    iget v13, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->verticalDuration:I

    mul-int/2addr v12, v13

    iget v13, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->verticalSpace:I

    div-int/2addr v12, v13

    iput v12, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->alphaDuration:I

    .line 748
    const/4 v12, 0x0

    iput v12, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->alpha:I

    .line 751
    const/16 v12, 0x8

    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->MAX_HORIZONTAL_EDOT_RADIUS:I

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->getRandomPosition(II)I

    move-result v12

    iput v12, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->radius:I

    .line 754
    iget v12, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->radius:I

    const/16 v13, 0x14

    if-ge v12, v13, :cond_d

    .line 756
    iget v12, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->verticalDuration:I

    div-int/lit8 v12, v12, 0x4

    iput v12, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->horizontalDuration:I

    .line 764
    :cond_5
    :goto_5
    const/4 v12, 0x0

    iput v12, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->horizontalAnimType:I

    .line 765
    iget v12, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->verticalSpace:I

    int-to-float v12, v12

    iget v13, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->verticalDuration:I

    int-to-float v13, v13

    div-float/2addr v12, v13

    iput v12, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->lastV:F

    .line 769
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    iput-wide v12, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->verticalStartTime:J

    iput-wide v12, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->horizontalStartTime:J

    iput-wide v12, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->alphaStartTime:J

    .line 778
    .end local v1           #edotH:I
    .end local v2           #edotInfo:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;
    .end local v4           #middle:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mEdotList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-eq v3, v12, :cond_7

    .line 779
    iget v12, v5, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->GAP_BETWEEN_BATTERY_AND_EDOT:I

    sub-int v9, v12, v13

    .line 780
    .local v9, uLeft:I
    iget v12, v5, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->GAP_BETWEEN_BATTERY_AND_EDOT:I

    add-int v10, v12, v13

    .line 781
    .local v10, uRight:I
    iget v12, v5, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v11, v12, -0xa

    .line 782
    .local v11, uTop:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBottom()I

    move-result v8

    .line 783
    .local v8, uBottom:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v11, v10, v8}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->invalidate(IIII)V

    .line 787
    .end local v8           #uBottom:I
    .end local v9           #uLeft:I
    .end local v10           #uRight:I
    .end local v11           #uTop:I
    :cond_7
    const/16 v7, 0x2bc

    .line 788
    .local v7, time:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mHandler:Landroid/os/Handler;

    const/16 v13, 0x3ea

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 789
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCurrentAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    sget-object v13, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->charging:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    if-ne v12, v13, :cond_2

    .line 790
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mHandler:Landroid/os/Handler;

    const/16 v14, 0x3ea

    invoke-virtual {v13, v14}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    int-to-long v14, v7

    invoke-virtual {v12, v13, v14, v15}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 710
    .end local v7           #time:I
    .restart local v2       #edotInfo:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;
    :cond_8
    move-object/from16 v0, p0

    iget v12, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mTypeCount:I

    const/4 v13, 0x1

    if-lt v12, v13, :cond_9

    .line 711
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mTypeCount:I

    .line 712
    iget v12, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->edotType:I

    add-int/lit8 v12, v12, 0x1

    rem-int/lit8 v12, v12, 0x3

    iput v12, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->edotType:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mLastEdotType:I

    goto/16 :goto_2

    .line 714
    :cond_9
    move-object/from16 v0, p0

    iget v12, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mTypeCount:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mTypeCount:I

    goto/16 :goto_2

    .line 724
    .restart local v1       #edotH:I
    .restart local v4       #middle:I
    :cond_a
    iget v12, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->edotType:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_b

    .line 725
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mEdotMin:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    sub-int/2addr v4, v12

    .line 726
    const/16 v12, 0xe10

    iput v12, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->verticalDuration:I

    .line 727
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mEdotMin:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    goto/16 :goto_3

    .line 729
    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mEdotMiddle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    sub-int/2addr v4, v12

    .line 730
    const/16 v12, 0xfa0

    iput v12, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->verticalDuration:I

    .line 731
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mEdotMiddle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    goto/16 :goto_3

    .line 745
    :cond_c
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 757
    :cond_d
    iget v12, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->radius:I

    const/16 v13, 0x14

    if-lt v12, v13, :cond_e

    iget v12, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->radius:I

    const/16 v13, 0x28

    if-ge v12, v13, :cond_e

    .line 759
    iget v12, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->verticalDuration:I

    div-int/lit8 v12, v12, 0x6

    iput v12, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->horizontalDuration:I

    goto/16 :goto_5

    .line 760
    :cond_e
    iget v12, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->radius:I

    const/16 v13, 0x28

    if-lt v12, v13, :cond_5

    .line 762
    iget v12, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->verticalDuration:I

    div-int/lit8 v12, v12, 0x6

    iput v12, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->horizontalDuration:I

    goto/16 :goto_5

    .line 700
    .end local v1           #edotH:I
    .end local v4           #middle:I
    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1
.end method

.method private chargingFull()V
    .locals 4

    .prologue
    const/16 v3, 0x3f2

    .line 561
    sget-boolean v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chargingFull, mState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCurrentAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAnimMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mAnimMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCurrentAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->charged:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    if-ne v0, v1, :cond_2

    .line 574
    :cond_1
    :goto_0
    return-void

    .line 565
    :cond_2
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->stopBornEdot()V

    .line 566
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCurrentAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->pause:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mAnimMode:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_4

    .line 567
    :cond_3
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 568
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 570
    :cond_4
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCurrentAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->charging:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCurrentAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->pause:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    if-ne v0, v1, :cond_1

    goto :goto_0
.end method

.method private getChargingState()Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;
    .locals 1

    .prologue
    .line 1151
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCurrentAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    return-object v0
.end method

.method private getRandomPosition(II)I
    .locals 4
    .parameter "min"
    .parameter "max"

    .prologue
    .line 678
    if-gt p2, p1, :cond_0

    .line 682
    .end local p1
    :goto_0
    return p1

    .line 680
    .restart local p1
    :cond_0
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    .line 681
    .local v0, rand:Ljava/util/Random;
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int v3, p2, p1

    rem-int/2addr v2, v3

    add-int v1, p1, v2

    .local v1, ret:I
    move p1, v1

    .line 682
    goto :goto_0
.end method

.method private getStatusChangeTime(ZZI)V
    .locals 6
    .parameter "isPluggedIn"
    .parameter "isChargeFull"
    .parameter "screenState"

    .prologue
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x14d

    .line 1158
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mPlugged:Z

    if-eq v0, p1, :cond_0

    .line 1159
    if-eqz p1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, v4

    :goto_0
    iput-wide v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mPluggedInTime:J

    .line 1160
    if-eqz p1, :cond_4

    :goto_1
    iput-wide v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mRemoveTime:J

    .line 1162
    :cond_0
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCharged:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 1163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mChargedTime:J

    .line 1165
    :cond_1
    iget v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mScreenState:I

    if-nez v0, :cond_2

    const/4 v0, 0x2

    if-ne p3, v0, :cond_2

    .line 1166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mScreenOnTime:J

    .line 1168
    :cond_2
    return-void

    :cond_3
    move-wide v0, v2

    .line 1159
    goto :goto_0

    .line 1160
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long v2, v0, v4

    goto :goto_1
.end method

.method private handleUpdateIlliminantIn()V
    .locals 9

    .prologue
    const/16 v8, 0x3f1

    const/16 v7, 0x15

    .line 1110
    iget v5, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mPluggingFrameCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mPluggingFrameCount:I

    .line 1111
    const/4 v3, 0x0

    .line 1112
    .local v3, more:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v5, 0x4

    if-ge v1, v5, :cond_2

    .line 1113
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mIlluminantInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$IlluminantInfo;

    .line 1114
    .local v2, info:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$IlluminantInfo;
    iget v5, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mPluggingFrameCount:I

    iget-object v6, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->sLightEnd:[I

    aget v6, v6, v1

    if-ge v5, v6, :cond_0

    .line 1115
    const/4 v3, 0x1

    .line 1117
    :cond_0
    iget v5, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mPluggingFrameCount:I

    iget-object v6, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->sLightEnd:[I

    aget v6, v6, v1

    if-gt v5, v6, :cond_1

    iget v5, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mPluggingFrameCount:I

    iget-object v6, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->sLightBegin:[I

    aget v6, v6, v1

    if-lt v5, v6, :cond_1

    .line 1118
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->sLightEnd:[I

    aget v5, v5, v1

    iget-object v6, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->sLightBegin:[I

    aget v6, v6, v1

    sub-int/2addr v5, v6

    add-int/lit8 v0, v5, 0x1

    .line 1119
    .local v0, duration:I
    iget v5, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mPluggingFrameCount:I

    iget-object v6, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->sLightBegin:[I

    aget v6, v6, v1

    sub-int/2addr v5, v6

    add-int/lit8 v4, v5, 0x1

    .line 1120
    .local v4, rate:I
    mul-int/lit16 v5, v4, 0xff

    div-int/2addr v5, v0

    iput v5, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$IlluminantInfo;->mAlpha:I

    .line 1121
    if-nez v1, :cond_1

    .line 1122
    mul-int/lit8 v5, v4, 0x64

    div-int/2addr v5, v0

    int-to-float v5, v5

    iput v5, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$IlluminantInfo;->mScaleX:F

    .line 1112
    .end local v0           #duration:I
    .end local v4           #rate:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1127
    .end local v2           #info:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$IlluminantInfo;
    :cond_2
    iget v5, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mPluggingFrameCount:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_3

    iget v5, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mPluggingFrameCount:I

    if-gt v5, v7, :cond_3

    .line 1128
    const/16 v0, 0xb

    .line 1129
    .restart local v0       #duration:I
    iget v5, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mPluggingFrameCount:I

    add-int/lit8 v5, v5, -0xb

    add-int/lit8 v4, v5, 0x1

    .line 1130
    .restart local v4       #rate:I
    mul-int/lit16 v5, v4, 0xff

    div-int/2addr v5, v0

    iput v5, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mBatteryAlpha:I

    .line 1132
    .end local v0           #duration:I
    .end local v4           #rate:I
    :cond_3
    iget v5, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mPluggingFrameCount:I

    if-ge v5, v7, :cond_4

    .line 1133
    const/4 v3, 0x1

    .line 1135
    :cond_4
    if-eqz v3, :cond_6

    .line 1136
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 1137
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1147
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->invalidate()V

    .line 1148
    return-void

    .line 1139
    :cond_6
    const/4 v5, 0x0

    iput v5, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mPluggingFrameCount:I

    .line 1140
    iget v5, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mAnimMode:I

    and-int/lit16 v5, v5, -0x1001

    iput v5, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mAnimMode:I

    .line 1141
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCurrentAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    sget-object v6, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->none:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    if-ne v5, v6, :cond_7

    .line 1142
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->realStopChargingAndPlugin()V

    goto :goto_1

    .line 1143
    :cond_7
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCurrentAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    sget-object v6, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->charging:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    if-ne v5, v6, :cond_5

    .line 1144
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->restartChargingEdot()V

    goto :goto_1
.end method

.method private handleUpdateIlluminantOut()V
    .locals 8

    .prologue
    const/16 v7, 0x3ef

    .line 1042
    iget v5, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mQuittingFrameCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mQuittingFrameCount:I

    .line 1043
    const/4 v3, 0x0

    .line 1044
    .local v3, more:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v5, 0x4

    if-ge v1, v5, :cond_2

    .line 1045
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mIlluminantInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$IlluminantInfo;

    .line 1046
    .local v2, info:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$IlluminantInfo;
    iget v5, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mQuittingFrameCount:I

    iget-object v6, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->sIlluminantOutEnd:[I

    aget v6, v6, v1

    if-ge v5, v6, :cond_0

    .line 1047
    const/4 v3, 0x1

    .line 1049
    :cond_0
    iget v5, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mQuittingFrameCount:I

    iget-object v6, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->sIlluminantOutEnd:[I

    aget v6, v6, v1

    if-gt v5, v6, :cond_1

    iget v5, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mQuittingFrameCount:I

    iget-object v6, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->sIlluminantOutBegin:[I

    aget v6, v6, v1

    if-lt v5, v6, :cond_1

    .line 1050
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->sIlluminantOutEnd:[I

    aget v5, v5, v1

    iget-object v6, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->sIlluminantOutBegin:[I

    aget v6, v6, v1

    sub-int/2addr v5, v6

    add-int/lit8 v0, v5, 0x1

    .line 1051
    .local v0, duration:I
    iget v5, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mQuittingFrameCount:I

    iget-object v6, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->sIlluminantOutBegin:[I

    aget v6, v6, v1

    sub-int/2addr v5, v6

    add-int/lit8 v4, v5, 0x1

    .line 1052
    .local v4, rate:I
    mul-int/lit16 v5, v4, 0xff

    div-int/2addr v5, v0

    rsub-int v5, v5, 0xff

    iput v5, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$IlluminantInfo;->mAlpha:I

    .line 1044
    .end local v0           #duration:I
    .end local v4           #rate:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1055
    .end local v2           #info:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$IlluminantInfo;
    :cond_2
    if-nez v3, :cond_3

    .line 1057
    iget v5, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mAnimMode:I

    and-int/lit8 v5, v5, -0x2

    iput v5, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mAnimMode:I

    .line 1058
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3e9

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1059
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x3ee

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1064
    :goto_1
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->invalidate()V

    .line 1065
    return-void

    .line 1061
    :cond_3
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1062
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method

.method private isAnimRunning()Z
    .locals 2

    .prologue
    .line 1556
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mVisiable:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mScreenState:I

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCurrentAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->fadeIn:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCurrentAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->fadeOutBattery:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCurrentAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->fadeOutIlluminant:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private killAllEdot()V
    .locals 3

    .prologue
    .line 578
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mEdotList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 579
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mEdotList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;

    .line 580
    .local v0, edotInfo:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;
    iget-boolean v2, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->isLive:Z

    if-eqz v2, :cond_0

    .line 581
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->isLive:Z

    .line 578
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 583
    .end local v0           #edotInfo:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mEdotAllDied:Z

    .line 584
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->invalidate()V

    .line 585
    return-void
.end method

.method private pause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0xff

    const/4 v2, 0x0

    .line 1588
    sget-boolean v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->TAG:Ljava/lang/String;

    const-string v1, " pause()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mOpacityAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 1590
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mOpacityAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1591
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mOpacityAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1592
    :cond_1
    iput-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mOpacityAnimator:Landroid/animation/ValueAnimator;

    .line 1594
    :cond_2
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mEdotAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_4

    .line 1595
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mEdotAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1596
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mEdotAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1597
    :cond_3
    iput-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mEdotAnimator:Landroid/animation/ValueAnimator;

    .line 1599
    :cond_4
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_5

    .line 1600
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1601
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1602
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1603
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1606
    :cond_5
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mTargetAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->none:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    if-ne v0, v1, :cond_7

    .line 1607
    iput v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mIlluminantAlpha:I

    .line 1608
    iput v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mBatteryAlpha:I

    .line 1613
    :cond_6
    :goto_0
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->killAllEdot()V

    .line 1614
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    .line 1615
    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->none:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCurrentAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    .line 1619
    return-void

    .line 1609
    :cond_7
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mTargetAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->charging:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mTargetAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->charged:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    if-ne v0, v1, :cond_6

    .line 1610
    :cond_8
    iput v3, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mIlluminantAlpha:I

    .line 1611
    iput v3, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mBatteryAlpha:I

    goto :goto_0
.end method

.method private pauseBornAndUpdateEdot()V
    .locals 4

    .prologue
    .line 599
    sget-boolean v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pauseBornAndUpdateEdot, mState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCurrentAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAnimMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mAnimMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCurrentAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->charging:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    if-ne v0, v1, :cond_1

    .line 602
    iget v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mAnimMode:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mAnimMode:I

    .line 603
    iget v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mAnimMode:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mAnimMode:I

    .line 604
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3eb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 605
    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StopEdot anim time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    :cond_1
    return-void
.end method

.method private playEdotAnim(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;)V
    .locals 4
    .parameter "mAnimState"

    .prologue
    const/16 v3, 0x3ea

    .line 1385
    sget-boolean v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   playEdotAnim:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mEdotAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    .line 1387
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mEdotAnimator:Landroid/animation/ValueAnimator;

    .line 1388
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mEdotAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1389
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mEdotAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1390
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mEdotAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$3;

    invoke-direct {v1, p0}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$3;-><init>(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1440
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mEdotAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$4;

    invoke-direct {v1, p0}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$4;-><init>(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1477
    :cond_1
    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->charging:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    if-ne p1, v0, :cond_6

    .line 1478
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->renewEdotStartTime()V

    .line 1479
    invoke-direct {p0, v3}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->sendHandlerMsg(I)V

    .line 1487
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mEdotAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1488
    sget-boolean v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->DEBUG:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mEdotAnimator.isRunning(),wait to =>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    :cond_3
    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->fadeOutEdot:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    if-eq p1, v0, :cond_4

    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->charging:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    if-eq p1, v0, :cond_4

    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->chargFull:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    if-ne p1, v0, :cond_5

    .line 1492
    :cond_4
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCurrentAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    .line 1493
    sget-boolean v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->DEBUG:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "      mEdotAnimator.fource to =>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    :cond_5
    :goto_1
    return-void

    .line 1480
    :cond_6
    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->fadeOutEdot:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    if-ne p1, v0, :cond_7

    .line 1481
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1482
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->startEdoitDiedAnim()V

    goto :goto_0

    .line 1483
    :cond_7
    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->chargFull:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    if-ne p1, v0, :cond_2

    .line 1484
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 1496
    :cond_8
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mEdotAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 1497
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mEdotAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1498
    sget-boolean v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->DEBUG:Z

    if-eqz v0, :cond_9

    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playEdotAnim,mEdotAnimator.start(),"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCurrentAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    :cond_9
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCurrentAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    .line 1500
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mEdotAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 1496
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private playFadeAnim(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;)V
    .locals 6
    .parameter "mAnimState"

    .prologue
    const-wide/16 v4, 0x1388

    const/4 v3, 0x2

    .line 1249
    sget-boolean v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playFadeAnim():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mOpacityAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    .line 1251
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mOpacityAnimator:Landroid/animation/ValueAnimator;

    .line 1252
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mOpacityAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1253
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mOpacityAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1254
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mOpacityAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$1;

    invoke-direct {v1, p0}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$1;-><init>(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1286
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mOpacityAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$2;

    invoke-direct {v1, p0}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$2;-><init>(Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1360
    :cond_1
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCurrentAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    .line 1361
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mOpacityAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1362
    sget-boolean v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mOpacityAnimator.isRunning(),wait to =>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    :cond_2
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mOpacityAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1367
    :cond_3
    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->fadeIn:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    if-ne p1, v0, :cond_6

    .line 1368
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mOpacityAnimator:Landroid/animation/ValueAnimator;

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 1369
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mOpacityAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1376
    :cond_4
    :goto_0
    sget-boolean v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->DEBUG:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playFadeAnim,mOpacityAnimator.start(),mCurrentAnimState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCurrentAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mAnimState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    :cond_5
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mOpacityAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1378
    return-void

    .line 1370
    :cond_6
    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->fadeOutIlluminant:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    if-eq p1, v0, :cond_7

    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->fadeOutEdot:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    if-eq p1, v0, :cond_7

    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->fadeOutBattery:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    if-ne p1, v0, :cond_4

    .line 1373
    :cond_7
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mOpacityAnimator:Landroid/animation/ValueAnimator;

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 1374
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mOpacityAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 1368
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data

    .line 1373
    :array_1
    .array-data 0x4
        0xfft 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private realStopChargingAndPlugin()V
    .locals 3

    .prologue
    .line 547
    iget v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mAnimMode:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mAnimMode:I

    .line 548
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->stopBornEdot()V

    .line 551
    const/16 v0, 0xc8

    iput v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mIlluminantDuration:I

    .line 552
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mIlluminantStartTime:J

    .line 553
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ef

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 554
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mQuittingFrameCount:I

    .line 555
    return-void
.end method

.method private renewEdotStartTime()V
    .locals 10

    .prologue
    const-wide/16 v8, -0x1

    .line 632
    iget-wide v4, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mStopTime:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_0

    .line 644
    :goto_0
    return-void

    .line 634
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mStopTime:J

    sub-long v2, v4, v6

    .line 635
    .local v2, offset:J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mEdotList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 636
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mEdotList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;

    .line 637
    .local v0, edotInfo:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;
    iget-boolean v4, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->isLive:Z

    if-eqz v4, :cond_1

    .line 638
    iget-wide v4, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->alphaStartTime:J

    add-long/2addr v4, v2

    iput-wide v4, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->alphaStartTime:J

    .line 639
    iget-wide v4, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->horizontalStartTime:J

    add-long/2addr v4, v2

    iput-wide v4, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->horizontalStartTime:J

    .line 640
    iget-wide v4, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->verticalStartTime:J

    add-long/2addr v4, v2

    iput-wide v4, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->verticalStartTime:J

    .line 635
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 643
    .end local v0           #edotInfo:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;
    :cond_2
    iput-wide v8, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mStopTime:J

    goto :goto_0
.end method

.method private restartChargingEdot()V
    .locals 5

    .prologue
    const/16 v4, 0x3ea

    const/16 v3, 0x3e9

    .line 613
    sget-boolean v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restartChargingEdot, mState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCurrentAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAnimMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mAnimMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCurrentAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->none:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    if-ne v0, v1, :cond_2

    .line 629
    :cond_1
    :goto_0
    return-void

    .line 616
    :cond_2
    iget v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mAnimMode:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 618
    const/16 v0, 0x11

    iput v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mAnimMode:I

    .line 621
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 622
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 623
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 624
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ec

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 626
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->renewEdotStartTime()V

    .line 627
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 628
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private sendHandlerMsg(I)V
    .locals 1
    .parameter "what"

    .prologue
    .line 337
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 338
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 339
    return-void
.end method

.method private sendHandlerMsg(IJ)V
    .locals 1
    .parameter "what"
    .parameter "delayMillis"

    .prologue
    .line 341
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 342
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 343
    return-void
.end method

.method private setBatteryLevel(I)V
    .locals 7
    .parameter "batteryLevel"

    .prologue
    const/16 v6, 0xa

    .line 652
    iget v3, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mBatteryLevel:I

    if-ne v3, p1, :cond_0

    .line 675
    :goto_0
    return-void

    .line 655
    :cond_0
    iget v3, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mBatteryLevel:I

    if-ge v3, v6, :cond_1

    .line 656
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mWarningBatteryFill:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 661
    .local v2, oldBound:Landroid/graphics/Rect;
    :goto_1
    iput p1, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mBatteryLevel:I

    .line 662
    iget v3, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mBatteryLevel:I

    iget v4, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->BATTERY_CAPACITY:I

    mul-int/2addr v3, v4

    div-int/lit8 v1, v3, 0x64

    .line 663
    .local v1, fillHeight:I
    int-to-float v3, v1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v1, v3

    .line 665
    iget v3, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mBatteryLevel:I

    if-ge v3, v6, :cond_2

    .line 666
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mWarningBatteryFill:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 667
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mWarningBatteryFill:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 674
    :goto_2
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 658
    .end local v1           #fillHeight:I
    .end local v2           #oldBound:Landroid/graphics/Rect;
    :cond_1
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mBatteryFill:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .restart local v2       #oldBound:Landroid/graphics/Rect;
    goto :goto_1

    .line 669
    .restart local v1       #fillHeight:I
    :cond_2
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mBatteryFill:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 670
    .local v0, dhBatteryFill:I
    if-ge v1, v0, :cond_3

    move v1, v0

    .line 671
    :cond_3
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 672
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mBatteryFill:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_2
.end method

.method private startEdoitDiedAnim()V
    .locals 11

    .prologue
    const/16 v10, 0xff

    const/high16 v9, 0x3f80

    .line 924
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mEdotList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_6

    .line 925
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mEdotList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;

    .line 926
    .local v1, edotInfo:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;
    iget-boolean v6, v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->isLive:Z

    if-nez v6, :cond_0

    .line 924
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 928
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->verticalStartTime:J

    iput-wide v6, v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->horizontalStartTime:J

    .line 929
    iget v6, v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->startY:I

    iget-object v7, v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->mEdotPosition:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->verticalSpace:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    sub-float v4, v9, v6

    .line 930
    .local v4, rate:F
    invoke-static {v4, v9}, Ljava/lang/Math;->min(FF)F

    move-result v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 931
    const/high16 v6, 0x447a

    mul-float/2addr v6, v4

    float-to-int v0, v6

    .line 932
    .local v0, duration:I
    const/16 v6, 0x384

    if-lt v0, v6, :cond_3

    .line 933
    add-int/lit16 v0, v0, -0xc8

    .line 937
    :cond_1
    :goto_2
    iput v0, v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->verticalDuration:I

    iput v0, v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->horizontalDuration:I

    .line 938
    iget v6, v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->verticalSpace:I

    iget v7, v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->startY:I

    sub-int/2addr v6, v7

    iget-object v7, v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->mEdotPosition:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    add-int/2addr v6, v7

    iput v6, v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->spaceForDiedY:I

    .line 941
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mIlluminants:[Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 942
    .local v5, rcIlluminant:Landroid/graphics/Rect;
    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v7, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    div-int/lit8 v3, v6, 0x2

    .line 943
    .local v3, middle:I
    iget v6, v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->edotType:I

    if-nez v6, :cond_4

    .line 944
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mEdotSmall:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v3, v6

    .line 951
    :goto_3
    iget-object v6, v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->mEdotPosition:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    sub-int v6, v3, v6

    iput v6, v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->spaceForDiedX:I

    .line 953
    iget v6, v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->alpha:I

    if-ge v6, v10, :cond_2

    iget-object v6, v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->mEdotPosition:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    iget v7, v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->startY:I

    iget v8, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->ANIMATE_FADE_IN_SPACE:I

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x14

    if-lt v6, v7, :cond_2

    .line 954
    iput v10, v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->alpha:I

    .line 956
    :cond_2
    iget-object v6, v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->mEdotPosition:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    iput v6, v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->startX:I

    .line 957
    iget-object v6, v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->mEdotPosition:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    iput v6, v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->startY:I

    .line 960
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->invalidate()V

    goto/16 :goto_1

    .line 934
    .end local v3           #middle:I
    .end local v5           #rcIlluminant:Landroid/graphics/Rect;
    :cond_3
    const/16 v6, 0x320

    if-lt v0, v6, :cond_1

    .line 935
    add-int/lit8 v0, v0, -0x64

    goto :goto_2

    .line 945
    .restart local v3       #middle:I
    .restart local v5       #rcIlluminant:Landroid/graphics/Rect;
    :cond_4
    iget v6, v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->edotType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    .line 946
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mEdotMin:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v3, v6

    goto :goto_3

    .line 948
    :cond_5
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mEdotMiddle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v3, v6

    goto :goto_3

    .line 966
    .end local v0           #duration:I
    .end local v1           #edotInfo:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;
    .end local v3           #middle:I
    .end local v4           #rate:F
    .end local v5           #rcIlluminant:Landroid/graphics/Rect;
    :cond_6
    return-void
.end method

.method private startPlugging(Z)V
    .locals 4
    .parameter "isCharing"

    .prologue
    const/16 v3, 0x3f1

    .line 506
    sget-boolean v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPlugging(),"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCurrentAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->none:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    if-eq v0, v1, :cond_1

    .line 521
    :goto_0
    return-void

    .line 513
    :cond_1
    iget v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mAnimMode:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_2

    .line 514
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mDelayChargingAnimting:Z

    goto :goto_0

    .line 516
    :cond_2
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 517
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 518
    const/16 v0, 0x1000

    iput v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mAnimMode:I

    .line 519
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mPluggingFrameCount:I

    goto :goto_0
.end method

.method private stopBornEdot()V
    .locals 3

    .prologue
    const/16 v2, 0x3ec

    .line 590
    iget v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mAnimMode:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mAnimMode:I

    .line 591
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 592
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 593
    return-void
.end method

.method private stopChargingAndPlugin()V
    .locals 2

    .prologue
    .line 534
    sget-boolean v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->TAG:Ljava/lang/String;

    const-string v1, "stopChargingAndPlugin(),"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mDelayChargingAnimting:Z

    .line 536
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCurrentAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    sget-object v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->none:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    if-ne v0, v1, :cond_2

    .line 544
    :cond_1
    :goto_0
    return-void

    .line 540
    :cond_2
    iget v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mAnimMode:I

    and-int/lit16 v0, v0, 0x1000

    if-nez v0, :cond_1

    .line 543
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->realStopChargingAndPlugin()V

    goto :goto_0
.end method

.method private updateAnimState()V
    .locals 7

    .prologue
    .line 1197
    iget-boolean v4, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCharged:Z

    if-eqz v4, :cond_2

    .line 1198
    sget-object v4, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->charged:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mTargetAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    .line 1204
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->isAnimRunning()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1205
    sget-object v4, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->TAG:Ljava/lang/String;

    const-string v5, " updateAnimState,skip~"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    sget-boolean v4, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->DEBUG:Z

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->dump()V

    .line 1240
    :cond_1
    :goto_1
    return-void

    .line 1199
    :cond_2
    iget-boolean v4, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCharging:Z

    if-eqz v4, :cond_3

    .line 1200
    sget-object v4, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->charging:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mTargetAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    goto :goto_0

    .line 1201
    :cond_3
    iget-boolean v4, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mPlugged:Z

    if-nez v4, :cond_0

    .line 1202
    sget-object v4, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->none:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mTargetAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    goto :goto_0

    .line 1209
    :cond_4
    const/4 v3, 0x0

    .line 1211
    .local v3, newAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1212
    .local v0, mCurrentTime:J
    iget-wide v4, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mRemoveTime:J

    cmp-long v4, v0, v4

    if-gez v4, :cond_9

    .line 1213
    sget-object v3, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->fadeOutIlluminant:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    .line 1220
    :cond_5
    :goto_2
    if-nez v3, :cond_7

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCurrentAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    sget-object v5, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->none:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    if-ne v4, v5, :cond_7

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mTargetAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    sget-object v5, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->charging:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    if-eq v4, v5, :cond_6

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mTargetAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    sget-object v5, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->charged:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    if-ne v4, v5, :cond_7

    .line 1224
    :cond_6
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mTargetAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    sget-object v5, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->charged:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    if-ne v4, v5, :cond_b

    .line 1225
    sget-object v3, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->charged:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    .line 1232
    :cond_7
    :goto_3
    if-eqz v3, :cond_8

    .line 1234
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 1235
    .local v2, msg:Landroid/os/Message;
    const/16 v4, 0x3f5

    iput v4, v2, Landroid/os/Message;->what:I

    .line 1236
    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1237
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1239
    .end local v2           #msg:Landroid/os/Message;
    :cond_8
    sget-boolean v4, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->DEBUG:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAnimState()\uff0cnewAnimState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mTargetAnimState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mTargetAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1214
    :cond_9
    iget-wide v4, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mPluggedInTime:J

    cmp-long v4, v0, v4

    if-gez v4, :cond_a

    .line 1215
    sget-object v3, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->fadeIn:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    goto :goto_2

    .line 1216
    :cond_a
    iget-wide v4, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mChargedTime:J

    cmp-long v4, v0, v4

    if-gez v4, :cond_5

    .line 1217
    sget-object v3, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->chargFull:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    goto :goto_2

    .line 1226
    :cond_b
    iget v4, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mIlluminantAlpha:I

    const/16 v5, 0xff

    if-ne v4, v5, :cond_c

    .line 1227
    sget-object v3, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->charging:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    goto :goto_3

    .line 1229
    :cond_c
    sget-object v3, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->fadeIn:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    goto :goto_3
.end method

.method private updateBatteryBoxOut()V
    .locals 9

    .prologue
    const/16 v8, 0x3f1

    const/16 v7, 0x3f0

    const/4 v6, 0x0

    .line 1071
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1072
    .local v1, current:J
    iget-wide v4, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mBatteryOutStartTime:J

    sub-long v4, v1, v4

    long-to-float v4, v4

    const/high16 v5, 0x4348

    div-float v3, v4, v5

    .line 1073
    .local v3, rate:F
    const/high16 v4, 0x3f80

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 1074
    mul-float/2addr v3, v3

    .line 1075
    const/high16 v4, 0x437f

    mul-float/2addr v4, v3

    float-to-int v0, v4

    .line 1076
    .local v0, alpha:I
    rsub-int v4, v0, 0xff

    iput v4, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mBatteryAlpha:I

    .line 1078
    const v4, 0x3f7d70a4

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_1

    .line 1079
    iget v4, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mAnimMode:I

    and-int/lit16 v4, v4, -0x101

    iput v4, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mAnimMode:I

    .line 1080
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCurrentAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    sget-object v5, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->none:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    if-eq v4, v5, :cond_0

    .line 1082
    iput-boolean v6, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mDelayChargingAnimting:Z

    .line 1083
    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mBatteryVisiable:Z

    invoke-virtual {p0, v4, v5}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->setVisible(ZZ)V

    .line 1085
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1086
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 1087
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1088
    const/16 v4, 0x1000

    iput v4, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mAnimMode:I

    .line 1089
    iput v6, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mPluggingFrameCount:I

    .line 1091
    sget-object v4, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->TAG:Ljava/lang/String;

    const-string v5, "updateBatteryBoxOut and plug again"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    :goto_0
    return-void

    .line 1095
    :cond_0
    invoke-virtual {p0, v6, v6}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->setVisible(ZZ)V

    .line 1096
    sget-object v4, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->TAG:Ljava/lang/String;

    const-string v5, "updateBatteryBoxOut and The end "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1099
    :cond_1
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mBatteryBox:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->invalidate(Landroid/graphics/Rect;)V

    .line 1100
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1101
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private updateEdot()V
    .locals 29

    .prologue
    .line 797
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v25

    sput-wide v25, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mUpdateEdotTime:J

    .line 798
    const/16 v25, 0x0

    sput v25, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mAliveEdotNum:I

    .line 800
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mEdotAllDied:Z

    .line 801
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mBatteryBox:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v14

    .line 802
    .local v14, rcBatteryBox:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mIlluminants:[Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget-object v25, v25, v26

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v15

    .line 806
    .local v15, rcIlluminant:Landroid/graphics/Rect;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 809
    .local v6, currentTime:J
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mEdotList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v11, v0, :cond_e

    .line 810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mEdotList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;

    .line 811
    .local v8, edotInfo:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;
    iget-boolean v0, v8, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->isLive:Z

    move/from16 v25, v0

    if-eqz v25, :cond_4

    .line 812
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mEdotAllDied:Z

    .line 813
    sget v25, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mAliveEdotNum:I

    add-int/lit8 v25, v25, 0x1

    sput v25, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mAliveEdotNum:I

    .line 815
    iget v0, v15, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    iget v0, v15, Landroid/graphics/Rect;->right:I

    move/from16 v26, v0

    add-int v25, v25, v26

    div-int/lit8 v12, v25, 0x2

    .line 816
    .local v12, middle:I
    iget v0, v8, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->edotType:I

    move/from16 v25, v0

    if-nez v25, :cond_5

    .line 817
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mEdotSmall:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v25

    div-int/lit8 v25, v25, 0x2

    sub-int v12, v12, v25

    .line 825
    :goto_1
    iget-wide v0, v8, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->verticalStartTime:J

    move-wide/from16 v25, v0

    sub-long v25, v6, v25

    move-wide/from16 v0, v25

    long-to-float v0, v0

    move/from16 v25, v0

    iget v0, v8, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->verticalDuration:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v22, v25, v26

    .line 826
    .local v22, verticalTime:F
    const/high16 v25, 0x3f80

    move/from16 v0, v22

    move/from16 v1, v25

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v25

    const/16 v26, 0x0

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->max(FF)F

    move-result v22

    .line 827
    iget v0, v8, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->verticalSpace:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v25, v25, v22

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v24, v0

    .line 828
    .local v24, yOffset:I
    iget-object v0, v8, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->mEdotPosition:Landroid/graphics/Point;

    move-object/from16 v25, v0

    iget v0, v8, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->startY:I

    move/from16 v26, v0

    sub-int v26, v26, v24

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/Point;->y:I

    .line 831
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mBatteryVisiable:Z

    move/from16 v25, v0

    if-nez v25, :cond_7

    .line 832
    iget v0, v8, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->verticalDuration:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v25, v0

    iget-wide v0, v8, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->verticalStartTime:J

    move-wide/from16 v27, v0

    sub-long v27, v6, v27

    sub-long v16, v25, v27

    .line 833
    .local v16, time:J
    const/high16 v25, 0x3f80

    move-wide/from16 v0, v16

    long-to-float v0, v0

    move/from16 v26, v0

    const/high16 v27, 0x437a

    div-float v26, v26, v27

    sub-float v13, v25, v26

    .line 834
    .local v13, rate:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mValueArrayInterpolatorScale:Landroid/view/animation/ValueArrayInterpolator;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Landroid/view/animation/ValueArrayInterpolator;->getInterpolation(F)F

    move-result v25

    move/from16 v0, v25

    iput v0, v8, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->zoomRate:F

    .line 835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mValueArrayInterpolatorAlpha:Landroid/view/animation/ValueArrayInterpolator;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Landroid/view/animation/ValueArrayInterpolator;->getInterpolation(F)F

    move-result v25

    const/high16 v26, 0x437f

    mul-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    iput v0, v8, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->alpha:I

    .line 859
    .end local v13           #rate:F
    .end local v16           #time:J
    :cond_0
    :goto_2
    iget-wide v0, v8, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->horizontalStartTime:J

    move-wide/from16 v25, v0

    sub-long v25, v6, v25

    move-wide/from16 v0, v25

    long-to-float v0, v0

    move/from16 v25, v0

    iget v0, v8, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->horizontalDuration:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v10, v25, v26

    .line 860
    .local v10, horizontalTime:F
    const/high16 v25, 0x3f80

    move/from16 v0, v25

    invoke-static {v10, v0}, Ljava/lang/Math;->min(FF)F

    move-result v25

    const/16 v26, 0x0

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 861
    const/16 v23, 0x0

    .line 862
    .local v23, xOffset:I
    iget v0, v8, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->horizontalAnimType:I

    move/from16 v25, v0

    if-nez v25, :cond_a

    .line 864
    const/high16 v25, 0x3f80

    const/high16 v26, 0x3f80

    sub-float v26, v26, v10

    const/high16 v27, 0x3f80

    sub-float v27, v27, v10

    mul-float v26, v26, v27

    sub-float v25, v25, v26

    iget v0, v8, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->radius:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v23, v0

    .line 869
    :cond_1
    :goto_3
    iget-boolean v0, v8, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->toRight:Z

    move/from16 v25, v0

    if-eqz v25, :cond_b

    .line 870
    iget-object v0, v8, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->mEdotPosition:Landroid/graphics/Point;

    move-object/from16 v25, v0

    iget v0, v8, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->startX:I

    move/from16 v26, v0

    add-int v26, v26, v23

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/Point;->x:I

    .line 875
    :goto_4
    iget-object v0, v8, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->mEdotPosition:Landroid/graphics/Point;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v25, v0

    sub-int v25, v25, v12

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 880
    .local v9, gap:I
    const/high16 v25, 0x3f80

    cmpl-float v25, v10, v25

    if-nez v25, :cond_3

    .line 881
    iget v0, v8, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->radius:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-lt v9, v0, :cond_d

    .line 882
    iget-object v0, v8, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->mEdotPosition:Landroid/graphics/Point;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v25, v0

    move/from16 v0, v25

    iput v0, v8, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->startX:I

    .line 883
    iget-boolean v0, v8, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->toRight:Z

    move/from16 v25, v0

    if-nez v25, :cond_c

    const/16 v25, 0x1

    :goto_5
    move/from16 v0, v25

    iput-boolean v0, v8, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->toRight:Z

    .line 884
    const/16 v25, 0x1

    move/from16 v0, v25

    iput v0, v8, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->horizontalAnimType:I

    .line 889
    :cond_2
    :goto_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v25

    move-wide/from16 v0, v25

    iput-wide v0, v8, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->horizontalStartTime:J

    .line 898
    :cond_3
    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v25, v0

    const-wide/high16 v27, 0x3ff0

    cmpl-double v25, v25, v27

    if-nez v25, :cond_4

    .line 899
    const/16 v25, 0x0

    move/from16 v0, v25

    iput-boolean v0, v8, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->isLive:Z

    .line 809
    .end local v9           #gap:I
    .end local v10           #horizontalTime:F
    .end local v12           #middle:I
    .end local v22           #verticalTime:F
    .end local v23           #xOffset:I
    .end local v24           #yOffset:I
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 818
    .restart local v12       #middle:I
    :cond_5
    iget v0, v8, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->edotType:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_6

    .line 819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mEdotMin:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v25

    div-int/lit8 v25, v25, 0x2

    sub-int v12, v12, v25

    goto/16 :goto_1

    .line 821
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mEdotMiddle:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v25

    div-int/lit8 v25, v25, 0x2

    sub-int v12, v12, v25

    goto/16 :goto_1

    .line 838
    .restart local v22       #verticalTime:F
    .restart local v24       #yOffset:I
    :cond_7
    iget v0, v8, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->verticalSpace:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->ANIMATE_FADE_OUT_SPACE:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_9

    .line 839
    iget v0, v8, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->alphaDuration:I

    move/from16 v25, v0

    if-nez v25, :cond_8

    .line 840
    iput-wide v6, v8, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->alphaStartTime:J

    .line 841
    iget-wide v0, v8, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->verticalStartTime:J

    move-wide/from16 v25, v0

    iget v0, v8, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->verticalDuration:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v27, v0

    add-long v25, v25, v27

    iget-wide v0, v8, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->alphaStartTime:J

    move-wide/from16 v27, v0

    sub-long v25, v25, v27

    move-wide/from16 v0, v25

    long-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    iput v0, v8, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->alphaDuration:I

    goto/16 :goto_2

    .line 843
    :cond_8
    iget-wide v0, v8, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->alphaStartTime:J

    move-wide/from16 v25, v0

    sub-long v25, v6, v25

    move-wide/from16 v0, v25

    long-to-float v0, v0

    move/from16 v25, v0

    iget v0, v8, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->alphaDuration:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v5, v25, v26

    .line 844
    .local v5, alphaTime:F
    const/high16 v25, 0x3f80

    move/from16 v0, v25

    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v25

    const/16 v26, 0x0

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 846
    const/high16 v25, 0x437f

    mul-float v25, v25, v5

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    rsub-int v0, v0, 0xff

    move/from16 v25, v0

    move/from16 v0, v25

    iput v0, v8, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->alpha:I

    goto/16 :goto_2

    .line 848
    .end local v5           #alphaTime:F
    :cond_9
    iget v0, v8, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->alphaDuration:I

    move/from16 v25, v0

    if-eqz v25, :cond_0

    .line 849
    iget-wide v0, v8, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->alphaStartTime:J

    move-wide/from16 v25, v0

    sub-long v25, v6, v25

    move-wide/from16 v0, v25

    long-to-float v0, v0

    move/from16 v25, v0

    iget v0, v8, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->alphaDuration:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v5, v25, v26

    .line 850
    .restart local v5       #alphaTime:F
    const/high16 v25, 0x3f80

    move/from16 v0, v25

    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v25

    const/16 v26, 0x0

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 851
    const/high16 v25, 0x437f

    mul-float v25, v25, v5

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    iput v0, v8, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->alpha:I

    .line 852
    iget v0, v8, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->alpha:I

    move/from16 v25, v0

    const/16 v26, 0xff

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_0

    .line 853
    const/16 v25, 0x0

    move/from16 v0, v25

    iput v0, v8, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->alphaDuration:I

    goto/16 :goto_2

    .line 865
    .end local v5           #alphaTime:F
    .restart local v10       #horizontalTime:F
    .restart local v23       #xOffset:I
    :cond_a
    iget v0, v8, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->horizontalAnimType:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1

    .line 867
    mul-float v25, v10, v10

    iget v0, v8, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->radius:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v23, v0

    goto/16 :goto_3

    .line 872
    :cond_b
    iget-object v0, v8, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->mEdotPosition:Landroid/graphics/Point;

    move-object/from16 v25, v0

    iget v0, v8, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->startX:I

    move/from16 v26, v0

    sub-int v26, v26, v23

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/Point;->x:I

    goto/16 :goto_4

    .line 883
    .restart local v9       #gap:I
    :cond_c
    const/16 v25, 0x0

    goto/16 :goto_5

    .line 885
    :cond_d
    if-nez v9, :cond_2

    .line 886
    iget-object v0, v8, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->mEdotPosition:Landroid/graphics/Point;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v25, v0

    move/from16 v0, v25

    iput v0, v8, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->startX:I

    .line 887
    const/16 v25, 0x0

    move/from16 v0, v25

    iput v0, v8, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->horizontalAnimType:I

    goto/16 :goto_6

    .line 903
    .end local v8           #edotInfo:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;
    .end local v9           #gap:I
    .end local v10           #horizontalTime:F
    .end local v12           #middle:I
    .end local v22           #verticalTime:F
    .end local v23           #xOffset:I
    .end local v24           #yOffset:I
    :cond_e
    iget v0, v14, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->GAP_BETWEEN_BATTERY_AND_EDOT:I

    move/from16 v26, v0

    sub-int v19, v25, v26

    .line 904
    .local v19, uLeft:I
    iget v0, v14, Landroid/graphics/Rect;->right:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->GAP_BETWEEN_BATTERY_AND_EDOT:I

    move/from16 v26, v0

    add-int v20, v25, v26

    .line 905
    .local v20, uRight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mBatteryBox:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v25

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    add-int/lit8 v21, v25, -0xa

    .line 906
    .local v21, uTop:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBottom()I

    move-result v18

    .line 907
    .local v18, uBottom:I
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v21

    move/from16 v3, v20

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->invalidate(IIII)V

    .line 918
    return-void
.end method

.method private updateEdotForDied()V
    .locals 24

    .prologue
    .line 975
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mEdotAllDied:Z

    .line 976
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 978
    .local v3, current:J
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mEdotList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v7, v0, :cond_4

    .line 979
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mEdotList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;

    .line 980
    .local v5, edotInfo:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;
    iget-boolean v0, v5, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->isLive:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    .line 981
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mEdotAllDied:Z

    .line 984
    long-to-float v0, v3

    move/from16 v20, v0

    iget-wide v0, v5, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->verticalStartTime:J

    move-wide/from16 v21, v0

    move-wide/from16 v0, v21

    long-to-float v0, v0

    move/from16 v21, v0

    sub-float v10, v20, v21

    .line 985
    .local v10, time:F
    long-to-float v0, v3

    move/from16 v20, v0

    iget-wide v0, v5, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->verticalStartTime:J

    move-wide/from16 v21, v0

    move-wide/from16 v0, v21

    long-to-float v0, v0

    move/from16 v21, v0

    sub-float v20, v20, v21

    iget v0, v5, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->verticalDuration:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v15, v20, v21

    .line 986
    .local v15, verticalRate:F
    const/high16 v20, 0x3f80

    move/from16 v0, v20

    invoke-static {v15, v0}, Ljava/lang/Math;->min(FF)F

    move-result v20

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(FF)F

    move-result v15

    .line 987
    mul-float v20, v15, v15

    iget v0, v5, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->spaceForDiedY:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v18, v0

    .line 988
    .local v18, yOffset1:I
    iget v0, v5, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->lastV:F

    move/from16 v20, v0

    mul-float v20, v20, v10

    iget v0, v5, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->lastV:F

    move/from16 v21, v0

    mul-float v21, v21, v10

    mul-float v21, v21, v10

    iget v0, v5, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->verticalDuration:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v21, v21, v22

    sub-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v19, v0

    .line 990
    .local v19, yOffset2:I
    add-int v17, v18, v19

    .line 991
    .local v17, yOffset:I
    iget-object v0, v5, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->mEdotPosition:Landroid/graphics/Point;

    move-object/from16 v20, v0

    iget v0, v5, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->startY:I

    move/from16 v21, v0

    sub-int v21, v21, v17

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/Point;->y:I

    .line 992
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->ANIMATE_VERTICAL_SPACE:I

    move/from16 v20, v0

    move/from16 v0, v17

    move/from16 v1, v20

    if-gt v0, v1, :cond_0

    iget-object v0, v5, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->mEdotPosition:Landroid/graphics/Point;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    if-gez v20, :cond_2

    .line 993
    :cond_0
    const/16 v20, 0x0

    move/from16 v0, v20

    iput-boolean v0, v5, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->isLive:Z

    .line 978
    .end local v10           #time:F
    .end local v15           #verticalRate:F
    .end local v17           #yOffset:I
    .end local v18           #yOffset1:I
    .end local v19           #yOffset2:I
    :cond_1
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 998
    .restart local v10       #time:F
    .restart local v15       #verticalRate:F
    .restart local v17       #yOffset:I
    .restart local v18       #yOffset1:I
    .restart local v19       #yOffset2:I
    :cond_2
    iget-wide v0, v5, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->horizontalStartTime:J

    move-wide/from16 v20, v0

    sub-long v20, v3, v20

    move-wide/from16 v0, v20

    long-to-float v0, v0

    move/from16 v20, v0

    iget v0, v5, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->horizontalDuration:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v6, v20, v21

    .line 999
    .local v6, horizonalRate:F
    const/high16 v20, 0x3f80

    move/from16 v0, v20

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v20

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 1000
    mul-float v20, v6, v6

    iget v0, v5, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->spaceForDiedX:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v16, v0

    .line 1001
    .local v16, xOffset:I
    iget-object v0, v5, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->mEdotPosition:Landroid/graphics/Point;

    move-object/from16 v20, v0

    iget v0, v5, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->startX:I

    move/from16 v21, v0

    add-int v21, v21, v16

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/Point;->x:I

    .line 1004
    iget v0, v5, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->horizontalDuration:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    sub-long v20, v20, v3

    iget-wide v0, v5, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->horizontalStartTime:J

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-float v8, v0

    .line 1005
    .local v8, leftTime:F
    const/high16 v20, 0x4316

    cmpg-float v20, v8, v20

    if-gez v20, :cond_3

    .line 1006
    const/high16 v20, 0x4316

    div-float v2, v8, v20

    .line 1007
    .local v2, alphaRate:F
    const/high16 v20, 0x3f80

    move/from16 v0, v20

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v20

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1008
    const/high16 v20, 0x437f

    mul-float v20, v20, v2

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v5, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->alpha:I

    .line 1011
    .end local v2           #alphaRate:F
    :cond_3
    const v20, 0x3f7d70a4

    cmpl-float v20, v15, v20

    if-lez v20, :cond_1

    .line 1012
    const/16 v20, 0x0

    move/from16 v0, v20

    iput-boolean v0, v5, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->isLive:Z

    goto/16 :goto_1

    .line 1019
    .end local v5           #edotInfo:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;
    .end local v6           #horizonalRate:F
    .end local v8           #leftTime:F
    .end local v10           #time:F
    .end local v15           #verticalRate:F
    .end local v16           #xOffset:I
    .end local v17           #yOffset:I
    .end local v18           #yOffset1:I
    .end local v19           #yOffset2:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mBatteryBox:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    .line 1020
    .local v9, rcBatteryBox:Landroid/graphics/Rect;
    iget v0, v9, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->GAP_BETWEEN_BATTERY_AND_EDOT:I

    move/from16 v21, v0

    sub-int v12, v20, v21

    .line 1021
    .local v12, uLeft:I
    iget v0, v9, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->GAP_BETWEEN_BATTERY_AND_EDOT:I

    move/from16 v21, v0

    add-int v13, v20, v21

    .line 1022
    .local v13, uRight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mBatteryBox:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    add-int/lit8 v14, v20, -0xa

    .line 1023
    .local v14, uTop:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBottom()I

    move-result v11

    .line 1024
    .local v11, uBottom:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v14, v13, v11}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->invalidate(IIII)V

    .line 1027
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mEdotAllDied:Z

    move/from16 v20, v0

    if-nez v20, :cond_5

    .line 1036
    :cond_5
    return-void
.end method

.method private updateSpeed()V
    .locals 3

    .prologue
    .line 1543
    iget v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mScreenState:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mVisiable:Z

    if-nez v0, :cond_3

    .line 1544
    :cond_0
    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;->PAUSE:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mSpeed:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;

    .line 1545
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->pause()V

    .line 1552
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " updateSpeed(),mScreenState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mScreenState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mVisiable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mVisiable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSpeed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mSpeed:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    :cond_2
    return-void

    .line 1546
    :cond_3
    iget v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mScreenState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 1547
    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;->SLOW:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mSpeed:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;

    goto :goto_0

    .line 1549
    :cond_4
    iget v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mScreenState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1550
    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;->NORMAL:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mSpeed:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1624
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mOpacityAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 1625
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mOpacityAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1626
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mOpacityAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1627
    :cond_0
    iput-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mOpacityAnimator:Landroid/animation/ValueAnimator;

    .line 1629
    :cond_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mEdotAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    .line 1630
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mEdotAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1631
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mEdotAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1632
    :cond_2
    iput-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mEdotAnimator:Landroid/animation/ValueAnimator;

    .line 1634
    :cond_3
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    .line 1635
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1636
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1637
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1638
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1640
    :cond_4
    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->none:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCurrentAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    .line 1641
    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;->none:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mTargetAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    .line 1642
    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;->PAUSE:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mSpeed:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;

    .line 1643
    return-void
.end method

.method public dump()V
    .locals 3

    .prologue
    .line 1507
    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dump(),mScreenOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mScreenState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mPlugged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mPlugged:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mCharged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCharged:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCharging:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCharging:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mBatteryLevel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mBatteryLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mVisiable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mVisiable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n  mBatteryAlpha:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mBatteryAlpha:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIlluminantAlpha:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mIlluminantAlpha:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mEdotAllDied:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mEdotAllDied:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n  mCurrentAnimState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCurrentAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=> mTargetAnimState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mTargetAnimState:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$AnimState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSpeed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mSpeed:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$SPEED;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mOpacityAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 1513
    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mOpacityAnimator:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mOpacityAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mEdotAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 1516
    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mEdotAnimator:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mEdotAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    :cond_1
    return-void
.end method

.method public invalidate()V
    .locals 3

    .prologue
    .line 1564
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->isAnimRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1565
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    .line 1569
    :cond_0
    :goto_0
    return-void

    .line 1567
    :cond_1
    sget-boolean v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalidate(),mVisiable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mVisiable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mScreenOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mScreenState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public invalidate(IIII)V
    .locals 3
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1580
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->isAnimRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1581
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->invalidate(IIII)V

    .line 1585
    :cond_0
    :goto_0
    return-void

    .line 1583
    :cond_1
    sget-boolean v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalidate(l,t,r,b),mVisiable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mVisiable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mScreenOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mScreenState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .locals 3
    .parameter "dirty"

    .prologue
    .line 1572
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->isAnimRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1573
    invoke-super {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 1577
    :cond_0
    :goto_0
    return-void

    .line 1575
    :cond_1
    sget-boolean v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalidate(dirty),mVisiable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mVisiable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mScreenOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mScreenState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1535
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1536
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->cleanUp()V

    .line 1537
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mVisiable:Z

    .line 1540
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    .line 446
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    sput-wide v9, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mOndrawTime:J

    .line 448
    iget-boolean v9, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mBatteryVisiable:Z

    if-eqz v9, :cond_0

    .line 449
    iget-object v9, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mBatteryBox:Landroid/graphics/drawable/Drawable;

    iget v10, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mBatteryAlpha:I

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 450
    iget-object v9, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mBatteryBox:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 451
    iget v9, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mBatteryLevel:I

    const/16 v10, 0xa

    if-ge v9, v10, :cond_2

    .line 452
    iget-object v9, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mWarningBatteryFill:Landroid/graphics/drawable/Drawable;

    iget v10, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mBatteryAlpha:I

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 453
    iget-object v9, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mWarningBatteryFill:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 462
    :cond_0
    :goto_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget-object v9, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mEdotList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_3

    .line 463
    iget-object v9, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mEdotList:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;

    .line 464
    .local v2, edotInfo:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;
    iget-boolean v9, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->isLive:Z

    if-eqz v9, :cond_1

    .line 465
    iget v9, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->edotType:I

    packed-switch v9, :pswitch_data_0

    .line 476
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mEdotMiddle:Landroid/graphics/drawable/Drawable;

    .line 480
    .local v1, edot:Landroid/graphics/drawable/Drawable;
    :goto_2
    iget v9, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->zoomRate:F

    const/high16 v10, 0x3f80

    add-float v8, v9, v10

    .line 482
    .local v8, zoomInRate:F
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v8

    float-to-int v9, v9

    div-int/lit8 v6, v9, 0x2

    .line 483
    .local v6, testX:I
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v8

    float-to-int v9, v9

    div-int/lit8 v7, v9, 0x2

    .line 484
    .local v7, testY:I
    iget-object v9, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->mEdotPosition:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v8

    add-float/2addr v9, v10

    int-to-float v10, v6

    sub-float/2addr v9, v10

    float-to-int v5, v9

    .line 485
    .local v5, right:I
    iget-object v9, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->mEdotPosition:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v8

    add-float/2addr v9, v10

    int-to-float v10, v7

    sub-float/2addr v9, v10

    float-to-int v0, v9

    .line 486
    .local v0, bottom:I
    iget-object v9, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->mEdotPosition:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    sub-int/2addr v9, v6

    iget-object v10, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->mEdotPosition:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    sub-int/2addr v10, v7

    invoke-virtual {v1, v9, v10, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 488
    iget v9, v2, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;->alpha:I

    invoke-virtual {v1, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 489
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 462
    .end local v0           #bottom:I
    .end local v1           #edot:Landroid/graphics/drawable/Drawable;
    .end local v5           #right:I
    .end local v6           #testX:I
    .end local v7           #testY:I
    .end local v8           #zoomInRate:F
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 455
    .end local v2           #edotInfo:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;
    .end local v3           #i:I
    :cond_2
    iget-object v9, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mBatteryFill:Landroid/graphics/drawable/Drawable;

    iget v10, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mBatteryAlpha:I

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 456
    iget-object v9, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mBatteryFill:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 467
    .restart local v2       #edotInfo:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;
    .restart local v3       #i:I
    :pswitch_0
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mEdotSmall:Landroid/graphics/drawable/Drawable;

    .line 468
    .restart local v1       #edot:Landroid/graphics/drawable/Drawable;
    goto :goto_2

    .line 470
    .end local v1           #edot:Landroid/graphics/drawable/Drawable;
    :pswitch_1
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mEdotMin:Landroid/graphics/drawable/Drawable;

    .line 471
    .restart local v1       #edot:Landroid/graphics/drawable/Drawable;
    goto :goto_2

    .line 473
    .end local v1           #edot:Landroid/graphics/drawable/Drawable;
    :pswitch_2
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mEdotMiddle:Landroid/graphics/drawable/Drawable;

    .line 474
    .restart local v1       #edot:Landroid/graphics/drawable/Drawable;
    goto :goto_2

    .line 493
    .end local v1           #edot:Landroid/graphics/drawable/Drawable;
    .end local v2           #edotInfo:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$EdotInfo;
    :cond_3
    const/4 v3, 0x0

    :goto_3
    const/4 v9, 0x4

    if-ge v3, v9, :cond_4

    .line 494
    iget-object v9, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mIlluminantInfoList:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$IlluminantInfo;

    .line 495
    .local v4, info:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$IlluminantInfo;
    iget-object v9, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mIlluminants:[Landroid/graphics/drawable/Drawable;

    aget-object v9, v9, v3

    iget v10, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mIlluminantAlpha:I

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 496
    iget-object v9, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mIlluminants:[Landroid/graphics/drawable/Drawable;

    aget-object v9, v9, v3

    invoke-virtual {v9, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 493
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 499
    .end local v4           #info:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$IlluminantInfo;
    :cond_4
    return-void

    .line 465
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 20
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 400
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mAnimMode:I

    move/from16 v17, v0

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x100

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 441
    :cond_0
    return-void

    .line 403
    :cond_1
    sub-int p4, p4, p2

    .line 404
    const/16 p2, 0x0

    .line 405
    sub-int p5, p5, p3

    .line 406
    const/16 p3, 0x0

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mBatteryBox:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    .line 410
    .local v8, dwBatteryBox:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mBatteryBox:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 411
    .local v4, dhBatteryBox:I
    sub-int v17, p4, v8

    add-int v17, v17, p2

    div-int/lit8 v14, v17, 0x2

    .line 412
    .local v14, l:I
    move/from16 v16, p3

    .line 413
    .local v16, t:I
    add-int v15, v14, v8

    .line 414
    .local v15, r:I
    add-int/lit8 v3, v4, 0x0

    .line 415
    .local v3, b:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mBatteryBox:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v14, v1, v15, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mBatteryFill:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    .line 418
    .local v9, dwBatteryFill:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mBatteryFill:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 419
    .local v5, dhBatteryFill:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mWarningBatteryFill:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    .line 420
    .local v7, dhWarningBatteryFill:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mBatteryLevel:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->BATTERY_CAPACITY:I

    move/from16 v18, v0

    mul-int v17, v17, v18

    div-int/lit8 v11, v17, 0x64

    .line 421
    .local v11, fillHeight:I
    int-to-float v0, v11

    move/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v11, v0

    .line 422
    if-ge v11, v5, :cond_2

    move v11, v5

    .line 423
    :cond_2
    sub-int v17, p4, v9

    add-int v17, v17, p2

    div-int/lit8 v14, v17, 0x2

    .line 424
    add-int v15, v14, v9

    .line 425
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->BOX_BOTTOM_HEIGHT:I

    move/from16 v17, v0

    sub-int v3, v3, v17

    .line 426
    sub-int v16, v3, v11

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mWarningBatteryFill:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    sub-int v18, v3, v7

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v14, v1, v15, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mBatteryFill:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v14, v1, v15, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 431
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    const/16 v17, 0x4

    move/from16 v0, v17

    if-ge v12, v0, :cond_0

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mIlluminantInfoList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$IlluminantInfo;

    .line 433
    .local v13, info:Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$IlluminantInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mIlluminants:[Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    aget-object v17, v17, v12

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    .line 434
    .local v10, dwIlluminant:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mIlluminants:[Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    aget-object v17, v17, v12

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 435
    .local v6, dhIlluminant:I
    sub-int v17, p4, v10

    add-int v17, v17, p2

    div-int/lit8 v14, v17, 0x2

    .line 436
    add-int v15, v14, v10

    .line 437
    iget-object v0, v13, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$IlluminantInfo;->mPosition:Landroid/graphics/Point;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput v14, v0, Landroid/graphics/Point;->x:I

    .line 438
    iget-object v0, v13, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView$IlluminantInfo;->mPosition:Landroid/graphics/Point;

    move-object/from16 v17, v0

    sub-int v18, p5, v6

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Point;->y:I

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mIlluminants:[Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    aget-object v17, v17, v12

    sub-int v18, p5, v6

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, p5

    invoke-virtual {v0, v14, v1, v15, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 431
    add-int/lit8 v12, v12, 0x1

    goto :goto_0
.end method

.method public setVisible(ZZ)V
    .locals 2
    .parameter "isVisible"
    .parameter "batteryShow"

    .prologue
    const/4 v1, 0x0

    .line 1522
    if-eqz p1, :cond_0

    .line 1523
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mVisiable:Z

    .line 1524
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1525
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 1530
    :goto_0
    iput-boolean p2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mBatteryVisiable:Z

    .line 1531
    return-void

    .line 1527
    :cond_0
    iput-boolean v1, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mVisiable:Z

    .line 1528
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateBatteryInfo(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;I)V
    .locals 7
    .parameter "status"
    .parameter "screenState"

    .prologue
    const-wide/16 v5, 0xa

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1172
    sget-boolean v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  isScreenOn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isCharged()Z

    move-result v3

    invoke-direct {p0, v0, v3, p2}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->getStatusChangeTime(ZZI)V

    .line 1176
    iput p2, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mScreenState:I

    .line 1177
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mPlugged:Z

    .line 1178
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mPlugged:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isCharged()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCharged:Z

    .line 1179
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mPlugged:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCharged:Z

    if-nez v0, :cond_3

    :goto_1
    iput-boolean v1, p0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->mCharging:Z

    .line 1181
    iget v0, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    invoke-direct {p0, v0}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->setBatteryLevel(I)V

    .line 1183
    const/16 v0, 0x3f3

    invoke-direct {p0, v0, v5, v6}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->sendHandlerMsg(IJ)V

    .line 1184
    const/16 v0, 0x3f4

    invoke-direct {p0, v0, v5, v6}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->sendHandlerMsg(IJ)V

    .line 1186
    sget-boolean v0, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->DEBUG:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/keyguard/ChargingEdotView;->dump()V

    .line 1187
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 1178
    goto :goto_0

    :cond_3
    move v1, v2

    .line 1179
    goto :goto_1
.end method
