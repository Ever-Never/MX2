.class public Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;
.super Ljava/lang/Object;
.source "UnlockAnimationHelper.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper$Callback;
    }
.end annotation


# static fields
.field private static final CHOREOGRAPHER_MODE_ENABLE:Z = true


# instance fields
.field private final INTERVAL_UPDATE_POS:I

.field private final MSG_ANIM_END:I

.field private final MSG_ANIM_STOP:I

.field private final MSG_ANIM_UPDATE:I

.field count:I

.field current:J

.field private mAboveView:Landroid/view/View;

.field private mAnimSpace:I

.field mBeginTime:J

.field private mBelowView:Landroid/view/View;

.field private mCallback:Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper$Callback;

.field private mChoreographer:Landroid/view/Choreographer;

.field private mDuration:I

.field mHandler:Landroid/os/Handler;

.field private mIsAnimating:Z

.field mLastTime:J

.field private mStartAnimTime:J

.field private mStartPosition:I

.field offset:I

.field rate:F


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/16 v0, 0x10

    iput v0, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->INTERVAL_UPDATE_POS:I

    .line 18
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->MSG_ANIM_UPDATE:I

    .line 19
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->MSG_ANIM_STOP:I

    .line 20
    const/16 v0, 0x3ea

    iput v0, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->MSG_ANIM_END:I

    .line 25
    iput-wide v1, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->mStartAnimTime:J

    .line 66
    iput-wide v1, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->mBeginTime:J

    .line 67
    iput-wide v1, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->mLastTime:J

    .line 68
    iput v3, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->count:I

    .line 72
    new-instance v0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper$1;

    invoke-direct {v0, p0}, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper$1;-><init>(Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;)V

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->mHandler:Landroid/os/Handler;

    .line 34
    iput-boolean v3, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->mIsAnimating:Z

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 10
    iget-wide v0, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->mStartAnimTime:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 10
    iget v0, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->mDuration:I

    return v0
.end method

.method static synthetic access$200(Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 10
    iget v0, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->mAnimSpace:I

    return v0
.end method

.method static synthetic access$300(Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->updatePositionToLock(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;)Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper$Callback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper$Callback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 10
    iget v0, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->mStartPosition:I

    return v0
.end method

.method static synthetic access$602(Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    iput-boolean p1, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->mIsAnimating:Z

    return p1
.end method

.method private updatePositionToLock(I)V
    .locals 3
    .parameter "distance"

    .prologue
    .line 135
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->mBelowView:Landroid/view/View;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->mAboveView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->mBelowView:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 138
    iget v2, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->mStartPosition:I

    add-int v0, v2, p1

    .line 139
    .local v0, dstPostion:I
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->mBelowView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v1, v0, v2

    .line 140
    .local v1, offset:I
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->mBelowView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 141
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->mBelowView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 143
    .end local v0           #dstPostion:I
    .end local v1           #offset:I
    :cond_2
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->mAboveView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 144
    iget v2, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->mStartPosition:I

    add-int v0, v2, p1

    .line 145
    .restart local v0       #dstPostion:I
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->mAboveView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int v1, v0, v2

    .line 146
    .restart local v1       #offset:I
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->mAboveView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 147
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->mAboveView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method


# virtual methods
.method public doFrame(J)V
    .locals 4
    .parameter "frameTimeNanos"

    .prologue
    .line 160
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->current:J

    .line 161
    iget-wide v0, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->current:J

    iget-wide v2, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->mStartAnimTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget v1, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->mDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->rate:F

    .line 162
    iget v0, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->rate:F

    const/high16 v1, 0x3f80

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->rate:F

    .line 165
    iget v0, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->rate:F

    float-to-double v0, v0

    const-wide v2, 0x3ff921fb54442d18L

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->rate:F

    .line 166
    iget v0, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->rate:F

    iget v1, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->mAnimSpace:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->offset:I

    .line 167
    iget v0, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->offset:I

    iget v1, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->mAnimSpace:I

    if-ne v0, v1, :cond_1

    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->mIsAnimating:Z

    .line 169
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 173
    :goto_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper$Callback;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper$Callback;

    iget v1, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->mStartPosition:I

    iget v2, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->offset:I

    invoke-interface {v0, v1, v2}, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper$Callback;->onNotifyNewPosition(II)V

    .line 176
    :cond_0
    return-void

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_0
.end method

.method public setCallback(Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper$Callback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper$Callback;

    .line 64
    return-void
.end method

.method public startAnim(IIILandroid/view/View;Landroid/view/View;)Z
    .locals 3
    .parameter "startPosition"
    .parameter "animSpace"
    .parameter "duration"
    .parameter "aboveView"
    .parameter "belowView"

    .prologue
    const/4 v0, 0x1

    .line 39
    iget-boolean v1, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->mIsAnimating:Z

    if-eqz v1, :cond_0

    .line 40
    const/4 v0, 0x0

    .line 59
    :goto_0
    return v0

    .line 41
    :cond_0
    iput-boolean v0, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->mIsAnimating:Z

    .line 42
    iput p3, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->mDuration:I

    .line 43
    iput p2, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->mAnimSpace:I

    .line 44
    iput p1, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->mStartPosition:I

    .line 45
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->mStartAnimTime:J

    .line 48
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->mChoreographer:Landroid/view/Choreographer;

    if-nez v1, :cond_1

    .line 49
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->mChoreographer:Landroid/view/Choreographer;

    .line 50
    :cond_1
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 57
    iput-object p4, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->mAboveView:Landroid/view/View;

    .line 58
    iput-object p5, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->mBelowView:Landroid/view/View;

    goto :goto_0
.end method

.method public stopAnimation()V
    .locals 3

    .prologue
    const/16 v2, 0x3e9

    .line 152
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->mChoreographer:Landroid/view/Choreographer;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 155
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/UnlockAnimationHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 156
    return-void
.end method
