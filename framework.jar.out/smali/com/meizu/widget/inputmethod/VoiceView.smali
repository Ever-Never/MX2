.class public Lcom/meizu/widget/inputmethod/VoiceView;
.super Lcom/meizu/widget/inputmethod/CoverView;
.source "VoiceView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/widget/inputmethod/VoiceView$CheckForLongPress;
    }
.end annotation


# static fields
.field public static final ACTION_AMP_REFRESH:Ljava/lang/String; = "action_amp_refresh"

.field public static final ACTION_BEGIN_RECORD:Ljava/lang/String; = "action_begin_record"

.field public static final ACTION_CANCEL_RECORD:Ljava/lang/String; = "action_cancel_record"

.field public static final ACTION_STOP_RECORD:Ljava/lang/String; = "action_stop_record"

.field private static final AMP_COLOR:I = 0x3332a5e7

.field private static final ANIM_TIME:I = 0x19

.field private static final DEBUG:Z = false

.field public static final KEY_AMP_MAX_RADIUS:Ljava/lang/String; = "key_amp_max_radius"

.field public static final KEY_AMP_MIN_RADIUS:Ljava/lang/String; = "key_amp_min_radius"

.field public static final KEY_CURRENT_RADIUX:Ljava/lang/String; = "key_current_radiux"

.field public static final KEY_CURRENT_RECORD_TIME:Ljava/lang/String; = "key_current_record_time"

.field public static final KEY_RECORD_TOKEN:Ljava/lang/String; = "key_record_token"

.field private static final LONG_CLICK_FLAG:I = 0x1

.field private static final NOT_CLICK_FLAG:I = -0x1

.field private static final SCALE_VALUE:F = 0.9f

.field private static final SHORT_CLICK_FLAG:I = 0x0

.field public static final STATE_CANCEL:I = 0x2

.field public static final STATE_NORMAL:I = 0x0

.field public static final STATE_PRESS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VoiceView"

.field private static final TEXT_COLOR:I = -0x66000001

.field private static final TIME_COLOR:I = -0x66000001

.field private static final TOUCH_SLOP:I = 0x14

.field private static textSize:I

.field private static timeSize:I


# instance fields
.field private drCancel:Landroid/graphics/drawable/Drawable;

.field private drNormal:Landroid/graphics/drawable/Drawable;

.field private drPressed:Landroid/graphics/drawable/Drawable;

.field private isDoScaleLarger:Z

.field private isDoScaleLittle:Z

.field private mClickFlag:I

.field private mCurrentDr:Lcom/meizu/widget/inputmethod/CustomeDrawable;

.field private mCurrentRecordTime:J

.field private mCurrentState:I

.field private mInitialRingWidth:I

.field private mIsNormalWidth:Z

.field private volatile mIsRecording:Z

.field private mLastDownX:I

.field private mLastDownY:I

.field private mLastHeight:I

.field private mLastWidth:I

.field private mLongPressRunnable:Lcom/meizu/widget/inputmethod/VoiceView$CheckForLongPress;

.field private mPaint:Landroid/graphics/Paint;

.field private mPreRingWidth:I

.field private mPressToken:J

.field mPressed:Z

.field private mRadius:I

.field private mRingWidth:I

.field private mScaleLargerAnim:Landroid/animation/ObjectAnimator;

.field private mScaleLittleAnim:Landroid/animation/ObjectAnimator;

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTimePaint:Landroid/graphics/Paint;

.field private mToken:J

.field mValueAnimator:Landroid/animation/ValueAnimator;

.field private mVolumeAnimator:Landroid/animation/ValueAnimator;

.field private maxRadius:I

.field private minRadius:I

.field private picHeight:I

.field private picNormalHeight:I

.field private picNormalWidth:I

.field private picWidth:I

.field pointInRecordCircle:Z

.field private recordTimePaddingRight:I

.field private recordTimePaddingTop:I

.field private textCancel:Ljava/lang/String;

.field private textNormal:Ljava/lang/String;

.field private textPaddingTop:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0x20

    .line 101
    sput v0, Lcom/meizu/widget/inputmethod/VoiceView;->textSize:I

    .line 103
    sput v0, Lcom/meizu/widget/inputmethod/VoiceView;->timeSize:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/16 v5, 0x3c

    const/4 v4, -0x1

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 129
    invoke-direct {p0, p1}, Lcom/meizu/widget/inputmethod/CoverView;-><init>(Landroid/content/Context;)V

    .line 55
    iput-wide v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mToken:J

    .line 59
    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->minRadius:I

    .line 61
    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->maxRadius:I

    .line 63
    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPreRingWidth:I

    .line 64
    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mRingWidth:I

    .line 66
    iput-wide v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentRecordTime:J

    .line 79
    iput-boolean v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mIsRecording:Z

    .line 81
    iput v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentState:I

    .line 87
    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentDr:Lcom/meizu/widget/inputmethod/CustomeDrawable;

    .line 88
    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->drNormal:Landroid/graphics/drawable/Drawable;

    .line 89
    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->drPressed:Landroid/graphics/drawable/Drawable;

    .line 90
    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->drCancel:Landroid/graphics/drawable/Drawable;

    .line 93
    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picWidth:I

    .line 94
    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picHeight:I

    .line 95
    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picNormalWidth:I

    .line 96
    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picNormalHeight:I

    .line 98
    const-string/jumbo v0, "\u6309\u4f4f\u8bb2\u8bdd"

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->textNormal:Ljava/lang/String;

    .line 99
    const-string/jumbo v0, "\u677e\u5f00\u53d6\u6d88\u53d1\u9001"

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->textCancel:Ljava/lang/String;

    .line 105
    const/16 v0, 0x50

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->textPaddingTop:I

    .line 107
    iput v5, p0, Lcom/meizu/widget/inputmethod/VoiceView;->recordTimePaddingTop:I

    .line 108
    iput v5, p0, Lcom/meizu/widget/inputmethod/VoiceView;->recordTimePaddingRight:I

    .line 288
    iput-wide v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressToken:J

    .line 723
    iput-boolean v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->isDoScaleLittle:Z

    .line 724
    iput-boolean v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->isDoScaleLarger:Z

    .line 725
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mIsNormalWidth:Z

    .line 732
    iput v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mClickFlag:I

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v5, 0x3c

    const/4 v4, -0x1

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 137
    invoke-direct {p0, p1, p2}, Lcom/meizu/widget/inputmethod/CoverView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    iput-wide v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mToken:J

    .line 59
    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->minRadius:I

    .line 61
    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->maxRadius:I

    .line 63
    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPreRingWidth:I

    .line 64
    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mRingWidth:I

    .line 66
    iput-wide v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentRecordTime:J

    .line 79
    iput-boolean v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mIsRecording:Z

    .line 81
    iput v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentState:I

    .line 87
    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentDr:Lcom/meizu/widget/inputmethod/CustomeDrawable;

    .line 88
    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->drNormal:Landroid/graphics/drawable/Drawable;

    .line 89
    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->drPressed:Landroid/graphics/drawable/Drawable;

    .line 90
    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->drCancel:Landroid/graphics/drawable/Drawable;

    .line 93
    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picWidth:I

    .line 94
    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picHeight:I

    .line 95
    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picNormalWidth:I

    .line 96
    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picNormalHeight:I

    .line 98
    const-string/jumbo v0, "\u6309\u4f4f\u8bb2\u8bdd"

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->textNormal:Ljava/lang/String;

    .line 99
    const-string/jumbo v0, "\u677e\u5f00\u53d6\u6d88\u53d1\u9001"

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->textCancel:Ljava/lang/String;

    .line 105
    const/16 v0, 0x50

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->textPaddingTop:I

    .line 107
    iput v5, p0, Lcom/meizu/widget/inputmethod/VoiceView;->recordTimePaddingTop:I

    .line 108
    iput v5, p0, Lcom/meizu/widget/inputmethod/VoiceView;->recordTimePaddingRight:I

    .line 288
    iput-wide v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressToken:J

    .line 723
    iput-boolean v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->isDoScaleLittle:Z

    .line 724
    iput-boolean v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->isDoScaleLarger:Z

    .line 725
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mIsNormalWidth:Z

    .line 732
    iput v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mClickFlag:I

    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/16 v5, 0x3c

    const/4 v4, -0x1

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 146
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/widget/inputmethod/CoverView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    iput-wide v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mToken:J

    .line 59
    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->minRadius:I

    .line 61
    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->maxRadius:I

    .line 63
    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPreRingWidth:I

    .line 64
    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mRingWidth:I

    .line 66
    iput-wide v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentRecordTime:J

    .line 79
    iput-boolean v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mIsRecording:Z

    .line 81
    iput v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentState:I

    .line 87
    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentDr:Lcom/meizu/widget/inputmethod/CustomeDrawable;

    .line 88
    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->drNormal:Landroid/graphics/drawable/Drawable;

    .line 89
    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->drPressed:Landroid/graphics/drawable/Drawable;

    .line 90
    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->drCancel:Landroid/graphics/drawable/Drawable;

    .line 93
    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picWidth:I

    .line 94
    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picHeight:I

    .line 95
    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picNormalWidth:I

    .line 96
    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picNormalHeight:I

    .line 98
    const-string/jumbo v0, "\u6309\u4f4f\u8bb2\u8bdd"

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->textNormal:Ljava/lang/String;

    .line 99
    const-string/jumbo v0, "\u677e\u5f00\u53d6\u6d88\u53d1\u9001"

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->textCancel:Ljava/lang/String;

    .line 105
    const/16 v0, 0x50

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->textPaddingTop:I

    .line 107
    iput v5, p0, Lcom/meizu/widget/inputmethod/VoiceView;->recordTimePaddingTop:I

    .line 108
    iput v5, p0, Lcom/meizu/widget/inputmethod/VoiceView;->recordTimePaddingRight:I

    .line 288
    iput-wide v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressToken:J

    .line 723
    iput-boolean v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->isDoScaleLittle:Z

    .line 724
    iput-boolean v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->isDoScaleLarger:Z

    .line 725
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mIsNormalWidth:Z

    .line 732
    iput v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mClickFlag:I

    .line 147
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/widget/inputmethod/VoiceView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressToken:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/meizu/widget/inputmethod/VoiceView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput p1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mClickFlag:I

    return p1
.end method

.method static synthetic access$200(Lcom/meizu/widget/inputmethod/VoiceView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/meizu/widget/inputmethod/VoiceView;->setState(I)V

    return-void
.end method

.method static synthetic access$302(Lcom/meizu/widget/inputmethod/VoiceView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->isDoScaleLittle:Z

    return p1
.end method

.method static synthetic access$402(Lcom/meizu/widget/inputmethod/VoiceView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->isDoScaleLarger:Z

    return p1
.end method

.method private cancelRecord()V
    .locals 2

    .prologue
    .line 502
    const-string v0, "action_cancel_record"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/meizu/widget/inputmethod/CoverView;->sendPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 503
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mIsRecording:Z

    .line 504
    return-void
.end method

.method private cancleScaleLittle()V
    .locals 1

    .prologue
    .line 783
    iget-boolean v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->isDoScaleLittle:Z

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mScaleLittleAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 786
    :cond_0
    return-void
.end method

.method private checkForLongClick(I)V
    .locals 3
    .parameter "delayOffset"

    .prologue
    .line 316
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mLongPressRunnable:Lcom/meizu/widget/inputmethod/VoiceView$CheckForLongPress;

    if-nez v0, :cond_0

    .line 317
    new-instance v0, Lcom/meizu/widget/inputmethod/VoiceView$CheckForLongPress;

    invoke-direct {v0, p0}, Lcom/meizu/widget/inputmethod/VoiceView$CheckForLongPress;-><init>(Lcom/meizu/widget/inputmethod/VoiceView;)V

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mLongPressRunnable:Lcom/meizu/widget/inputmethod/VoiceView$CheckForLongPress;

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mLongPressRunnable:Lcom/meizu/widget/inputmethod/VoiceView$CheckForLongPress;

    iget-wide v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressToken:J

    invoke-virtual {v0, v1, v2}, Lcom/meizu/widget/inputmethod/VoiceView$CheckForLongPress;->rememberPressToken(J)V

    .line 321
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mLongPressRunnable:Lcom/meizu/widget/inputmethod/VoiceView$CheckForLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v1, p1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 322
    return-void
.end method

.method private createAnim()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x6e

    const/4 v3, 0x2

    .line 735
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentDr:Lcom/meizu/widget/inputmethod/CustomeDrawable;

    const-string/jumbo v1, "scale"

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mScaleLittleAnim:Landroid/animation/ObjectAnimator;

    .line 736
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mScaleLittleAnim:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 737
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mScaleLittleAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 738
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mScaleLittleAnim:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/meizu/widget/inputmethod/VoiceView$1;

    invoke-direct {v1, p0}, Lcom/meizu/widget/inputmethod/VoiceView$1;-><init>(Lcom/meizu/widget/inputmethod/VoiceView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 752
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentDr:Lcom/meizu/widget/inputmethod/CustomeDrawable;

    const-string/jumbo v1, "scale"

    new-array v2, v3, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mScaleLargerAnim:Landroid/animation/ObjectAnimator;

    .line 753
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mScaleLargerAnim:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 754
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mScaleLargerAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 755
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mScaleLargerAnim:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/meizu/widget/inputmethod/VoiceView$2;

    invoke-direct {v1, p0}, Lcom/meizu/widget/inputmethod/VoiceView$2;-><init>(Lcom/meizu/widget/inputmethod/VoiceView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 767
    return-void

    .line 735
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x66t 0x66t 0x66t 0x3ft
    .end array-data

    .line 752
    :array_1
    .array-data 0x4
        0x66t 0x66t 0x66t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private drawAmpCircle(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 610
    iget v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->maxRadius:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->minRadius:I

    if-nez v2, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->initCircleRadius()V

    .line 612
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v3, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picNormalWidth:I

    sub-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x2

    .line 613
    .local v0, dx:I
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v3, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picNormalHeight:I

    sub-int/2addr v2, v3

    div-int/lit8 v1, v2, 0x2

    .line 615
    .local v1, dy:I
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->save(I)I

    .line 621
    iget-object v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 622
    iget v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mInitialRingWidth:I

    iput v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mRingWidth:I

    .line 625
    :cond_2
    iget-object v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mRingWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 626
    iget v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mRadius:I

    add-int/2addr v2, v0

    int-to-float v2, v2

    iget v3, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mRadius:I

    add-int/2addr v3, v1

    int-to-float v3, v3

    iget v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    iget v5, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mRingWidth:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 627
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 628
    return-void
.end method

.method private drawButton(Landroid/graphics/Canvas;II)V
    .locals 2
    .parameter "canvas"
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 570
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentDr:Lcom/meizu/widget/inputmethod/CustomeDrawable;

    if-nez v0, :cond_0

    .line 575
    :goto_0
    return-void

    .line 571
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 572
    int-to-float v0, p2

    int-to-float v1, p3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 573
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentDr:Lcom/meizu/widget/inputmethod/CustomeDrawable;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/inputmethod/CustomeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 574
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method private drawRecordTime(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 634
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentRecordTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->recordTimePaddingRight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->recordTimePaddingTop:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mTimePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 636
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 637
    return-void
.end method

.method private drawText(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    .line 584
    iget-object v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentDr:Lcom/meizu/widget/inputmethod/CustomeDrawable;

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressed:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->pointInRecordCircle:Z

    if-nez v4, :cond_1

    :cond_0
    iget-boolean v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressed:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mClickFlag:I

    if-nez v4, :cond_2

    .line 602
    :cond_1
    :goto_0
    return-void

    .line 585
    :cond_2
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->save(I)I

    .line 586
    const-string v2, ""

    .line 587
    .local v2, text:Ljava/lang/String;
    iget-boolean v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressed:Z

    if-nez v4, :cond_5

    .line 588
    iget-object v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->textNormal:Ljava/lang/String;

    .line 592
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-double v4, v4

    const-wide/high16 v6, 0x3fe0

    add-double/2addr v4, v6

    double-to-int v3, v4

    .line 593
    .local v3, textWidth:I
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v4, v3

    div-int/lit8 v0, v4, 0x2

    .line 595
    .local v0, dx:I
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget v5, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picNormalHeight:I

    add-int/2addr v4, v5

    div-int/lit8 v1, v4, 0x2

    .line 597
    .local v1, dy:I
    iget v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->textPaddingTop:I

    add-int/2addr v4, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 598
    iget v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->textPaddingTop:I

    add-int/2addr v1, v4

    .line 600
    :cond_4
    int-to-float v4, v0

    int-to-float v5, v1

    iget-object v6, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 601
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 589
    .end local v0           #dx:I
    .end local v1           #dy:I
    .end local v3           #textWidth:I
    :cond_5
    iget-boolean v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressed:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->pointInRecordCircle:Z

    if-nez v4, :cond_3

    .line 590
    iget-object v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->textCancel:Ljava/lang/String;

    goto :goto_1
.end method

.method private initCircleDrawable(Landroid/content/res/Resources;)V
    .locals 5
    .parameter "res"

    .prologue
    const v4, 0x3f666666

    const/4 v3, 0x0

    .line 184
    const v0, 0x10800cb

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->drNormal:Landroid/graphics/drawable/Drawable;

    .line 185
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->drNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picWidth:I

    .line 186
    iget v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picWidth:I

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picNormalWidth:I

    .line 187
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->drNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picHeight:I

    .line 188
    iget v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picHeight:I

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picNormalHeight:I

    .line 189
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->drNormal:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picWidth:I

    iget v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 191
    iget v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picNormalWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mLastWidth:I

    .line 192
    iget v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picNormalHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mLastHeight:I

    .line 194
    const v0, 0x10800cc

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->drPressed:Landroid/graphics/drawable/Drawable;

    .line 195
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->drPressed:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picWidth:I

    iget v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 197
    const v0, 0x10800ca

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->drCancel:Landroid/graphics/drawable/Drawable;

    .line 198
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->drCancel:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picWidth:I

    iget v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 201
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentDr:Lcom/meizu/widget/inputmethod/CustomeDrawable;

    if-nez v0, :cond_0

    .line 202
    new-instance v0, Lcom/meizu/widget/inputmethod/CustomeDrawable;

    iget-object v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->drNormal:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v1}, Lcom/meizu/widget/inputmethod/CustomeDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentDr:Lcom/meizu/widget/inputmethod/CustomeDrawable;

    .line 203
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentDr:Lcom/meizu/widget/inputmethod/CustomeDrawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 206
    :cond_0
    invoke-direct {p0, v3}, Lcom/meizu/widget/inputmethod/VoiceView;->setState(I)V

    .line 208
    return-void
.end method

.method private initCircleRadius()V
    .locals 2

    .prologue
    .line 252
    iget v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mLastWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->minRadius:I

    .line 254
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mLastHeight:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x6

    iget v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->minRadius:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->maxRadius:I

    .line 256
    iget v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->maxRadius:I

    iget v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->minRadius:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mRingWidth:I

    .line 259
    return-void
.end method

.method private initPaints()V
    .locals 4

    .prologue
    const v3, -0x66000001

    const/4 v2, 0x1

    .line 216
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mTextPaint:Landroid/graphics/Paint;

    .line 217
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 218
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 219
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mTextPaint:Landroid/graphics/Paint;

    sget v1, Lcom/meizu/widget/inputmethod/VoiceView;->textSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 221
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPaint:Landroid/graphics/Paint;

    .line 222
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 223
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 224
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 225
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPaint:Landroid/graphics/Paint;

    const v1, 0x3332a5e7

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 227
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mTimePaint:Landroid/graphics/Paint;

    .line 228
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mTimePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 229
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mTimePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 230
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mTimePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 231
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mTimePaint:Landroid/graphics/Paint;

    invoke-static {v2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 232
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mTimePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 233
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mTimePaint:Landroid/graphics/Paint;

    sget v1, Lcom/meizu/widget/inputmethod/VoiceView;->timeSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 241
    return-void
.end method

.method private initScaleValue()V
    .locals 1

    .prologue
    .line 717
    iget v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picNormalHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mRadius:I

    .line 718
    invoke-direct {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->createAnim()V

    .line 719
    return-void
.end method

.method private initText(Landroid/content/res/Resources;)V
    .locals 1
    .parameter "res"

    .prologue
    .line 168
    const v0, 0x1040628

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->textNormal:Ljava/lang/String;

    .line 169
    const v0, 0x1040629

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->textCancel:Ljava/lang/String;

    .line 170
    const v0, 0x1050119

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/meizu/widget/inputmethod/VoiceView;->textSize:I

    .line 171
    const v0, 0x105011a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/meizu/widget/inputmethod/VoiceView;->timeSize:I

    .line 172
    const v0, 0x1050116

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->textPaddingTop:I

    .line 173
    const v0, 0x1050117

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->recordTimePaddingTop:I

    .line 174
    const v0, 0x1050118

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->recordTimePaddingRight:I

    .line 176
    return-void
.end method

.method private isDoingAnim()Z
    .locals 1

    .prologue
    .line 770
    iget-boolean v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->isDoScaleLittle:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->isDoScaleLarger:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final isPointInCircle(II)Z
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 429
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v0, p1, v3

    .line 430
    .local v0, dx:I
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v1, p2, v3

    .line 431
    .local v1, dy:I
    iget v3, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picWidth:I

    div-int/lit8 v2, v3, 0x2

    .line 432
    .local v2, r:I
    mul-int v3, v0, v0

    mul-int v4, v1, v1

    add-int/2addr v3, v4

    mul-int v4, v2, v2

    if-gt v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private onCancelRecordModule(Landroid/os/Bundle;)V
    .locals 2
    .parameter "data"

    .prologue
    const/4 v0, 0x0

    .line 512
    iput-boolean v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mIsRecording:Z

    .line 513
    invoke-direct {p0, v0}, Lcom/meizu/widget/inputmethod/VoiceView;->setState(I)V

    .line 514
    iput-boolean v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressed:Z

    .line 515
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentRecordTime:J

    .line 516
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 517
    return-void
.end method

.method private onRefreshAmp(Landroid/os/Bundle;)V
    .locals 3
    .parameter "data"

    .prologue
    .line 525
    const-string v0, "key_current_radiux"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mRingWidth:I

    .line 526
    const-string v0, "key_current_record_time"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentRecordTime:J

    .line 528
    iget v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mInitialRingWidth:I

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPreRingWidth:I

    .line 530
    iget v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mRingWidth:I

    iget v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPreRingWidth:I

    if-eq v0, v1, :cond_0

    .line 531
    const/16 v0, 0x19

    iget v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPreRingWidth:I

    iget v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mRingWidth:I

    invoke-direct {p0, v0, v1, v2}, Lcom/meizu/widget/inputmethod/VoiceView;->startVolumeAnim(III)V

    .line 533
    :cond_0
    iget v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mRingWidth:I

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPreRingWidth:I

    .line 535
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 536
    return-void
.end method

.method private onStartRecordModule(Landroid/os/Bundle;)V
    .locals 6
    .parameter "data"

    .prologue
    const-wide/16 v4, 0x0

    .line 460
    const-string v2, "key_record_token"

    invoke-virtual {p1, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 461
    .local v0, tokenFromApp:J
    iget-wide v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mToken:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    .line 463
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mIsRecording:Z

    .line 464
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 469
    :goto_0
    return-void

    .line 467
    :cond_0
    invoke-direct {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->cancelRecord()V

    goto :goto_0
.end method

.method private onStopRecordModule(Landroid/os/Bundle;)V
    .locals 2
    .parameter "data"

    .prologue
    const/4 v0, 0x0

    .line 488
    iput-boolean v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mIsRecording:Z

    .line 489
    invoke-direct {p0, v0}, Lcom/meizu/widget/inputmethod/VoiceView;->setState(I)V

    .line 490
    iput-boolean v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressed:Z

    .line 491
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentRecordTime:J

    .line 492
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 493
    return-void
.end method

.method private removeLongPressCallback()V
    .locals 4

    .prologue
    .line 325
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mLongPressRunnable:Lcom/meizu/widget/inputmethod/VoiceView$CheckForLongPress;

    if-eqz v0, :cond_0

    .line 326
    iget-wide v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mToken:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mToken:J

    .line 327
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mLongPressRunnable:Lcom/meizu/widget/inputmethod/VoiceView$CheckForLongPress;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 329
    :cond_0
    return-void
.end method

.method private setState(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 262
    iget v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentState:I

    if-ne v0, p1, :cond_0

    .line 279
    :goto_0
    return-void

    .line 264
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 277
    :goto_1
    iput p1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentState:I

    .line 278
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 266
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentDr:Lcom/meizu/widget/inputmethod/CustomeDrawable;

    iget-object v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->drNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/meizu/widget/inputmethod/CustomeDrawable;->setTargetDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 270
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentDr:Lcom/meizu/widget/inputmethod/CustomeDrawable;

    iget-object v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->drPressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/meizu/widget/inputmethod/CustomeDrawable;->setTargetDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 274
    :pswitch_2
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentDr:Lcom/meizu/widget/inputmethod/CustomeDrawable;

    iget-object v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->drCancel:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/meizu/widget/inputmethod/CustomeDrawable;->setTargetDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 264
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private startRecord()V
    .locals 5

    .prologue
    .line 441
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 444
    .local v0, data:Landroid/os/Bundle;
    const-string v1, "key_amp_min_radius"

    iget v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->minRadius:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 445
    const-string v1, "key_amp_max_radius"

    iget v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->maxRadius:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 447
    iget-wide v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mToken:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mToken:J

    .line 448
    const-string v1, "key_record_token"

    iget-wide v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mToken:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 450
    const-string v1, "action_begin_record"

    invoke-virtual {p0, v1, v0}, Lcom/meizu/widget/inputmethod/CoverView;->sendPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 453
    return-void
.end method

.method private startScaleLarger()V
    .locals 1

    .prologue
    .line 789
    invoke-direct {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->cancleScaleLittle()V

    .line 790
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mIsNormalWidth:Z

    .line 791
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mScaleLargerAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 792
    return-void
.end method

.method private startScaleLittle()V
    .locals 1

    .prologue
    .line 774
    invoke-direct {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->isDoingAnim()Z

    move-result v0

    if-nez v0, :cond_2

    .line 775
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mIsNormalWidth:Z

    .line 776
    iget v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->maxRadius:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->minRadius:I

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->initCircleRadius()V

    .line 777
    :cond_1
    invoke-direct {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->startValueAnimator()V

    .line 778
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mScaleLittleAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 780
    :cond_2
    return-void
.end method

.method private startValueAnimator()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 800
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 801
    iput v3, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mInitialRingWidth:I

    .line 803
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 804
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 805
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x6e

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 806
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 807
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 808
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mValueAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    aput v3, v1, v3

    const/4 v2, 0x1

    iget v3, p0, Lcom/meizu/widget/inputmethod/VoiceView;->maxRadius:I

    iget v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->minRadius:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x4

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 810
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 811
    return-void
.end method

.method private startVolumeAnim(III)V
    .locals 3
    .parameter "duration"
    .parameter "start"
    .parameter "target"

    .prologue
    .line 541
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mVolumeAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 542
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mVolumeAnimator:Landroid/animation/ValueAnimator;

    .line 543
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mVolumeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 544
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mVolumeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 545
    const-wide/16 v0, 0xa

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->setFrameDelay(J)V

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mVolumeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 548
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mVolumeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 551
    :cond_1
    if-ge p2, p3, :cond_2

    .line 552
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mVolumeAnimator:Landroid/animation/ValueAnimator;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 553
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mVolumeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 558
    :goto_0
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mVolumeAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 v2, 0x1

    aput p3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 559
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mVolumeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 560
    return-void

    .line 555
    :cond_2
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mVolumeAnimator:Landroid/animation/ValueAnimator;

    mul-int/lit8 v1, p1, 0x4

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 556
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mVolumeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0
.end method

.method private stopRecord()V
    .locals 2

    .prologue
    .line 478
    const-string v0, "action_stop_record"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/meizu/widget/inputmethod/CoverView;->sendPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 479
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mIsRecording:Z

    .line 480
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/16 v6, 0x14

    const/4 v3, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 333
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 334
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 335
    .local v1, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 409
    :cond_0
    :goto_0
    return v5

    .line 339
    :pswitch_0
    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mLastDownX:I

    .line 340
    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mLastDownY:I

    .line 342
    invoke-direct {p0, v0, v1}, Lcom/meizu/widget/inputmethod/VoiceView;->isPointInCircle(II)Z

    move-result v2

    iput-boolean v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->pointInRecordCircle:Z

    .line 344
    iget-boolean v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->pointInRecordCircle:Z

    if-eqz v2, :cond_0

    .line 346
    iget-wide v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mToken:J

    iput-wide v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressToken:J

    .line 347
    iput-boolean v5, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressed:Z

    .line 348
    iput v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mClickFlag:I

    .line 349
    invoke-direct {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->startScaleLittle()V

    .line 350
    invoke-direct {p0, v4}, Lcom/meizu/widget/inputmethod/VoiceView;->checkForLongClick(I)V

    goto :goto_0

    .line 357
    :pswitch_1
    iget-boolean v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressed:Z

    if-nez v2, :cond_2

    iget v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mLastDownX:I

    sub-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-gt v2, v6, :cond_1

    iget v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mLastDownY:I

    sub-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v6, :cond_2

    .line 360
    :cond_1
    iput-boolean v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressed:Z

    .line 361
    invoke-direct {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->removeLongPressCallback()V

    .line 362
    invoke-direct {p0, v4}, Lcom/meizu/widget/inputmethod/VoiceView;->setState(I)V

    goto :goto_0

    .line 363
    :cond_2
    iget-boolean v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressed:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mIsRecording:Z

    if-eqz v2, :cond_4

    .line 364
    invoke-direct {p0, v0, v1}, Lcom/meizu/widget/inputmethod/VoiceView;->isPointInCircle(II)Z

    move-result v2

    iput-boolean v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->pointInRecordCircle:Z

    .line 366
    iget-boolean v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->pointInRecordCircle:Z

    if-eqz v2, :cond_3

    .line 367
    invoke-direct {p0, v5}, Lcom/meizu/widget/inputmethod/VoiceView;->setState(I)V

    goto :goto_0

    .line 369
    :cond_3
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/meizu/widget/inputmethod/VoiceView;->setState(I)V

    goto :goto_0

    .line 373
    :cond_4
    invoke-direct {p0, v4}, Lcom/meizu/widget/inputmethod/VoiceView;->setState(I)V

    goto :goto_0

    .line 380
    :pswitch_2
    iput v3, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mClickFlag:I

    .line 381
    iput-boolean v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressed:Z

    .line 382
    iget-boolean v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mIsNormalWidth:Z

    if-nez v2, :cond_5

    .line 383
    invoke-direct {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->startScaleLarger()V

    .line 385
    :cond_5
    invoke-direct {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->removeLongPressCallback()V

    .line 386
    iget-boolean v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mIsRecording:Z

    if-eqz v2, :cond_6

    .line 387
    invoke-direct {p0, v0, v1}, Lcom/meizu/widget/inputmethod/VoiceView;->isPointInCircle(II)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 388
    invoke-direct {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->stopRecord()V

    .line 392
    :cond_6
    :goto_1
    invoke-direct {p0, v4}, Lcom/meizu/widget/inputmethod/VoiceView;->setState(I)V

    goto :goto_0

    .line 390
    :cond_7
    invoke-direct {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->cancelRecord()V

    goto :goto_1

    .line 398
    :pswitch_3
    iput v3, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mClickFlag:I

    .line 399
    iput-boolean v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressed:Z

    .line 400
    iget-boolean v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mIsNormalWidth:Z

    if-nez v2, :cond_8

    .line 401
    invoke-direct {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->startScaleLarger()V

    .line 403
    :cond_8
    invoke-direct {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->removeLongPressCallback()V

    .line 404
    iget-boolean v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mIsRecording:Z

    if-eqz v2, :cond_9

    .line 405
    invoke-direct {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->cancelRecord()V

    .line 406
    :cond_9
    invoke-direct {p0, v4}, Lcom/meizu/widget/inputmethod/VoiceView;->setState(I)V

    goto/16 :goto_0

    .line 335
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "drawable"

    .prologue
    .line 796
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 797
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 816
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mInitialRingWidth:I

    .line 817
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 818
    return-void
.end method

.method public onAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .parameter "action"
    .parameter "data"

    .prologue
    .line 686
    const-string v0, "action_begin_record"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 688
    invoke-direct {p0, p2}, Lcom/meizu/widget/inputmethod/VoiceView;->onStartRecordModule(Landroid/os/Bundle;)V

    .line 698
    :cond_0
    :goto_0
    return-void

    .line 689
    :cond_1
    const-string v0, "action_cancel_record"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 691
    invoke-direct {p0, p2}, Lcom/meizu/widget/inputmethod/VoiceView;->onCancelRecordModule(Landroid/os/Bundle;)V

    goto :goto_0

    .line 692
    :cond_2
    const-string v0, "action_stop_record"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 694
    invoke-direct {p0, p2}, Lcom/meizu/widget/inputmethod/VoiceView;->onStopRecordModule(Landroid/os/Bundle;)V

    goto :goto_0

    .line 695
    :cond_3
    const-string v0, "action_amp_refresh"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 696
    invoke-direct {p0, p2}, Lcom/meizu/widget/inputmethod/VoiceView;->onRefreshAmp(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 706
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 708
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 711
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 713
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 640
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 641
    iget-object v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentDr:Lcom/meizu/widget/inputmethod/CustomeDrawable;

    if-nez v2, :cond_1

    .line 655
    :cond_0
    :goto_0
    return-void

    .line 643
    :cond_1
    iget-object v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentDr:Lcom/meizu/widget/inputmethod/CustomeDrawable;

    invoke-virtual {v2}, Lcom/meizu/widget/inputmethod/CustomeDrawable;->getRealWidth()I

    move-result v2

    iput v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picWidth:I

    .line 644
    iget-object v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentDr:Lcom/meizu/widget/inputmethod/CustomeDrawable;

    invoke-virtual {v2}, Lcom/meizu/widget/inputmethod/CustomeDrawable;->getRealHeight()I

    move-result v2

    iput v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picHeight:I

    .line 646
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v3, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picWidth:I

    sub-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x2

    .line 647
    .local v0, dx:I
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v3, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picHeight:I

    sub-int/2addr v2, v3

    div-int/lit8 v1, v2, 0x2

    .line 648
    .local v1, dy:I
    invoke-direct {p0, p1, v0, v1}, Lcom/meizu/widget/inputmethod/VoiceView;->drawButton(Landroid/graphics/Canvas;II)V

    .line 649
    invoke-direct {p0, p1}, Lcom/meizu/widget/inputmethod/VoiceView;->drawText(Landroid/graphics/Canvas;)V

    .line 650
    iget-boolean v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressed:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mIsRecording:Z

    if-eqz v2, :cond_2

    invoke-direct {p0, p1}, Lcom/meizu/widget/inputmethod/VoiceView;->drawRecordTime(Landroid/graphics/Canvas;)V

    .line 652
    :cond_2
    iget-boolean v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressed:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->pointInRecordCircle:Z

    if-eqz v2, :cond_0

    .line 654
    invoke-direct {p0, p1}, Lcom/meizu/widget/inputmethod/VoiceView;->drawAmpCircle(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 151
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 152
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 153
    .local v0, res:Landroid/content/res/Resources;
    invoke-direct {p0, v0}, Lcom/meizu/widget/inputmethod/VoiceView;->initText(Landroid/content/res/Resources;)V

    .line 154
    invoke-direct {p0, v0}, Lcom/meizu/widget/inputmethod/VoiceView;->initCircleDrawable(Landroid/content/res/Resources;)V

    .line 155
    invoke-direct {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->initPaints()V

    .line 159
    invoke-direct {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->initScaleValue()V

    .line 160
    return-void
.end method

.method public onPrivateImeOption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 662
    invoke-super {p0, p1, p2}, Lcom/meizu/widget/inputmethod/CoverView;->onPrivateImeOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 666
    iput-wide v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mToken:J

    .line 667
    iput-boolean v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressed:Z

    .line 668
    iput-boolean v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->pointInRecordCircle:Z

    .line 669
    invoke-direct {p0, v0}, Lcom/meizu/widget/inputmethod/VoiceView;->setState(I)V

    .line 678
    :goto_0
    return-void

    .line 673
    :cond_0
    iput-wide v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mToken:J

    .line 674
    iput-boolean v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressed:Z

    .line 675
    iput-boolean v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->pointInRecordCircle:Z

    .line 676
    invoke-direct {p0, v0}, Lcom/meizu/widget/inputmethod/VoiceView;->setState(I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 702
    const/4 v0, 0x1

    return v0
.end method

.method public performLongClick()Z
    .locals 1

    .prologue
    .line 416
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 417
    invoke-direct {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->startRecord()V

    .line 418
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 419
    const/4 v0, 0x1

    return v0
.end method
