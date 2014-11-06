.class Landroid/webkit/ScaleGestureDetector;
.super Ljava/lang/Object;
.source "ScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/ScaleGestureDetector$VideoScaleListener;,
        Landroid/webkit/ScaleGestureDetector$SimpleOnScaleGestureListener;,
        Landroid/webkit/ScaleGestureDetector$OnScaleGestureListener;
    }
.end annotation


# static fields
.field private static final PRESSURE_THRESHOLD:F = 0.67f

.field private static final TAG:Ljava/lang/String; = "WebScaleGestureDetector"


# instance fields
.field private mActive0MostRecent:Z

.field private mActiveId0:I

.field private mActiveId1:I

.field private final mContext:Landroid/content/Context;

.field private mCurrEvent:Landroid/view/MotionEvent;

.field private mCurrFingerDiffX:F

.field private mCurrFingerDiffY:F

.field private mCurrLen:F

.field private mCurrPressure:F

.field private mDownTime:J

.field private mDownX0:F

.field private mDownX1:F

.field private mDownY0:F

.field private mDownY1:F

.field private mFocusX:F

.field private mFocusY:F

.field private mGestureInProgress:Z

.field private final mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

.field private mInvalidGesture:Z

.field private final mListener:Landroid/webkit/ScaleGestureDetector$OnScaleGestureListener;

.field private mPointerGoesToOne:Z

.field private mPrevEvent:Landroid/view/MotionEvent;

.field private mPrevFingerDiffX:F

.field private mPrevFingerDiffY:F

.field private mPrevLen:F

.field private mPrevPressure:F

.field private mScaleFactor:F

.field private mScaleStarted:Z

.field private mTimeDelta:J

.field private mTouchInVideoRect:Z

.field private mVideoScaleListener:Landroid/webkit/ScaleGestureDetector$VideoScaleListener;

.field private mVideoScaled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/webkit/ScaleGestureDetector$OnScaleGestureListener;)V
    .locals 2
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/InputEventConsistencyVerifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    :goto_0
    iput-object v0, p0, Landroid/webkit/ScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 192
    iput-object p1, p0, Landroid/webkit/ScaleGestureDetector;->mContext:Landroid/content/Context;

    .line 193
    iput-object p2, p0, Landroid/webkit/ScaleGestureDetector;->mListener:Landroid/webkit/ScaleGestureDetector$OnScaleGestureListener;

    .line 194
    return-void

    .line 187
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private findNewActiveIndex(Landroid/view/MotionEvent;II)I
    .locals 3
    .parameter "ev"
    .parameter "otherActiveId"
    .parameter "removedPointerIndex"

    .prologue
    .line 463
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 466
    .local v2, pointerCount:I
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 469
    .local v1, otherActiveIndex:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 470
    if-eq v0, p3, :cond_0

    if-eq v0, v1, :cond_0

    .line 474
    .end local v0           #i:I
    :goto_1
    return v0

    .line 469
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 474
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private getMovement(Landroid/view/MotionEvent;)F
    .locals 13
    .parameter "event"

    .prologue
    .line 227
    iget v11, p0, Landroid/webkit/ScaleGestureDetector;->mActiveId0:I

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 228
    .local v0, currIndex0:I
    iget v11, p0, Landroid/webkit/ScaleGestureDetector;->mActiveId1:I

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 229
    .local v1, currIndex1:I
    if-ltz v0, :cond_0

    if-gez v1, :cond_1

    .line 230
    :cond_0
    const/4 v6, 0x0

    .line 241
    :goto_0
    return v6

    .line 232
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 233
    .local v7, x0:F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    .line 234
    .local v9, y0:F
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    .line 235
    .local v8, x1:F
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    .line 236
    .local v10, y1:F
    iget v11, p0, Landroid/webkit/ScaleGestureDetector;->mDownX0:F

    sub-float v2, v7, v11

    .line 237
    .local v2, dx0:F
    iget v11, p0, Landroid/webkit/ScaleGestureDetector;->mDownY0:F

    sub-float v4, v9, v11

    .line 238
    .local v4, dy0:F
    iget v11, p0, Landroid/webkit/ScaleGestureDetector;->mDownX1:F

    sub-float v3, v8, v11

    .line 239
    .local v3, dx1:F
    iget v11, p0, Landroid/webkit/ScaleGestureDetector;->mDownY1:F

    sub-float v5, v10, v11

    .line 240
    .local v5, dy1:F
    mul-float v11, v2, v2

    mul-float v12, v4, v4

    add-float/2addr v11, v12

    mul-float v12, v3, v3

    add-float/2addr v11, v12

    mul-float v12, v5, v5

    add-float v6, v11, v12

    .line 241
    .local v6, totalPan:F
    goto :goto_0
.end method

.method private initDown(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    .line 201
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/webkit/ScaleGestureDetector;->mTouchInVideoRect:Z

    .line 202
    iget v3, p0, Landroid/webkit/ScaleGestureDetector;->mActiveId0:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 203
    .local v0, index0:I
    iget v3, p0, Landroid/webkit/ScaleGestureDetector;->mActiveId1:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 204
    .local v1, index1:I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Landroid/webkit/ScaleGestureDetector;->mDownX0:F

    .line 205
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, p0, Landroid/webkit/ScaleGestureDetector;->mDownY0:F

    .line 206
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Landroid/webkit/ScaleGestureDetector;->mDownX1:F

    .line 207
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, p0, Landroid/webkit/ScaleGestureDetector;->mDownY1:F

    .line 208
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/webkit/ScaleGestureDetector;->mDownTime:J

    .line 209
    iget-object v3, p0, Landroid/webkit/ScaleGestureDetector;->mVideoScaleListener:Landroid/webkit/ScaleGestureDetector$VideoScaleListener;

    if-eqz v3, :cond_0

    .line 210
    iget-object v3, p0, Landroid/webkit/ScaleGestureDetector;->mVideoScaleListener:Landroid/webkit/ScaleGestureDetector$VideoScaleListener;

    invoke-interface {v3}, Landroid/webkit/ScaleGestureDetector$VideoScaleListener;->getVideoRect()Landroid/graphics/RectF;

    move-result-object v2

    .line 211
    .local v2, videoRect:Landroid/graphics/RectF;
    iget v3, p0, Landroid/webkit/ScaleGestureDetector;->mDownX0:F

    float-to-int v3, v3

    int-to-float v3, v3

    iget v4, p0, Landroid/webkit/ScaleGestureDetector;->mDownY0:F

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Landroid/webkit/ScaleGestureDetector;->mDownX1:F

    float-to-int v3, v3

    int-to-float v3, v3

    iget v4, p0, Landroid/webkit/ScaleGestureDetector;->mDownY1:F

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 213
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/webkit/ScaleGestureDetector;->mTouchInVideoRect:Z

    .line 216
    .end local v2           #videoRect:Landroid/graphics/RectF;
    :cond_0
    return-void
.end method

.method private reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 528
    iget-object v0, p0, Landroid/webkit/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Landroid/webkit/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 530
    iput-object v3, p0, Landroid/webkit/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 532
    :cond_0
    iget-object v0, p0, Landroid/webkit/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_1

    .line 533
    iget-object v0, p0, Landroid/webkit/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 534
    iput-object v3, p0, Landroid/webkit/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    .line 536
    :cond_1
    iput-boolean v1, p0, Landroid/webkit/ScaleGestureDetector;->mTouchInVideoRect:Z

    .line 537
    iput-boolean v1, p0, Landroid/webkit/ScaleGestureDetector;->mVideoScaled:Z

    .line 538
    iput-boolean v1, p0, Landroid/webkit/ScaleGestureDetector;->mScaleStarted:Z

    .line 539
    iput-boolean v1, p0, Landroid/webkit/ScaleGestureDetector;->mGestureInProgress:Z

    .line 540
    iput v2, p0, Landroid/webkit/ScaleGestureDetector;->mActiveId0:I

    .line 541
    iput v2, p0, Landroid/webkit/ScaleGestureDetector;->mActiveId1:I

    .line 542
    iput-boolean v1, p0, Landroid/webkit/ScaleGestureDetector;->mInvalidGesture:Z

    .line 543
    return-void
.end method

.method private resetDown()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 219
    iput v0, p0, Landroid/webkit/ScaleGestureDetector;->mDownX0:F

    .line 220
    iput v0, p0, Landroid/webkit/ScaleGestureDetector;->mDownY0:F

    .line 221
    iput v0, p0, Landroid/webkit/ScaleGestureDetector;->mDownX1:F

    .line 222
    iput v0, p0, Landroid/webkit/ScaleGestureDetector;->mDownY1:F

    .line 223
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/webkit/ScaleGestureDetector;->mDownTime:J

    .line 224
    return-void
.end method

.method private setContext(Landroid/view/MotionEvent;)V
    .locals 24
    .parameter "curr"

    .prologue
    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/MotionEvent;->recycle()V

    .line 481
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    .line 483
    const/high16 v20, -0x4080

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/ScaleGestureDetector;->mCurrLen:F

    .line 484
    const/high16 v20, -0x4080

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/ScaleGestureDetector;->mPrevLen:F

    .line 485
    const/high16 v20, -0x4080

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/ScaleGestureDetector;->mScaleFactor:F

    .line 487
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/webkit/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 489
    .local v11, prev:Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/ScaleGestureDetector;->mActiveId0:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v12

    .line 490
    .local v12, prevIndex0:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/ScaleGestureDetector;->mActiveId1:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v13

    .line 491
    .local v13, prevIndex1:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/ScaleGestureDetector;->mActiveId0:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 492
    .local v3, currIndex0:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/ScaleGestureDetector;->mActiveId1:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 494
    .local v4, currIndex1:I
    if-ltz v12, :cond_1

    if-ltz v13, :cond_1

    if-ltz v3, :cond_1

    if-gez v4, :cond_3

    .line 495
    :cond_1
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/ScaleGestureDetector;->mInvalidGesture:Z

    .line 496
    const-string v20, "WebScaleGestureDetector"

    const-string v21, "Invalid MotionEvent stream detected."

    new-instance v22, Ljava/lang/Throwable;

    invoke-direct/range {v22 .. v22}, Ljava/lang/Throwable;-><init>()V

    invoke-static/range {v20 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 497
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/ScaleGestureDetector;->mGestureInProgress:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/ScaleGestureDetector;->mScaleStarted:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ScaleGestureDetector;->mListener:Landroid/webkit/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ScaleGestureDetector;->mListener:Landroid/webkit/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/webkit/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/webkit/ScaleGestureDetector;)V

    .line 525
    :cond_2
    :goto_0
    return-void

    .line 502
    :cond_3
    invoke-virtual {v11, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v16

    .line 503
    .local v16, px0:F
    invoke-virtual {v11, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v18

    .line 504
    .local v18, py0:F
    invoke-virtual {v11, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    .line 505
    .local v17, px1:F
    invoke-virtual {v11, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v19

    .line 506
    .local v19, py1:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 507
    .local v7, cx0:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    .line 508
    .local v9, cy0:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    .line 509
    .local v8, cx1:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    .line 511
    .local v10, cy1:F
    sub-float v14, v17, v16

    .line 512
    .local v14, pvx:F
    sub-float v15, v19, v18

    .line 513
    .local v15, pvy:F
    sub-float v5, v8, v7

    .line 514
    .local v5, cvx:F
    sub-float v6, v10, v9

    .line 515
    .local v6, cvy:F
    move-object/from16 v0, p0

    iput v14, v0, Landroid/webkit/ScaleGestureDetector;->mPrevFingerDiffX:F

    .line 516
    move-object/from16 v0, p0

    iput v15, v0, Landroid/webkit/ScaleGestureDetector;->mPrevFingerDiffY:F

    .line 517
    move-object/from16 v0, p0

    iput v5, v0, Landroid/webkit/ScaleGestureDetector;->mCurrFingerDiffX:F

    .line 518
    move-object/from16 v0, p0

    iput v6, v0, Landroid/webkit/ScaleGestureDetector;->mCurrFingerDiffY:F

    .line 520
    const/high16 v20, 0x3f00

    mul-float v20, v20, v5

    add-float v20, v20, v7

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/ScaleGestureDetector;->mFocusX:F

    .line 521
    const/high16 v20, 0x3f00

    mul-float v20, v20, v6

    add-float v20, v20, v9

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/ScaleGestureDetector;->mFocusY:F

    .line 522
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v20

    invoke-virtual {v11}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v22

    sub-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/ScaleGestureDetector;->mTimeDelta:J

    .line 523
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v20

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v21

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/ScaleGestureDetector;->mCurrPressure:F

    .line 524
    invoke-virtual {v11, v12}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v20

    invoke-virtual {v11, v13}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v21

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/ScaleGestureDetector;->mPrevPressure:F

    goto/16 :goto_0
.end method


# virtual methods
.method public getCurrentSpan()F
    .locals 4

    .prologue
    .line 594
    iget v2, p0, Landroid/webkit/ScaleGestureDetector;->mCurrLen:F

    const/high16 v3, -0x4080

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 595
    iget v0, p0, Landroid/webkit/ScaleGestureDetector;->mCurrFingerDiffX:F

    .line 596
    .local v0, cvx:F
    iget v1, p0, Landroid/webkit/ScaleGestureDetector;->mCurrFingerDiffY:F

    .line 597
    .local v1, cvy:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    iput v2, p0, Landroid/webkit/ScaleGestureDetector;->mCurrLen:F

    .line 599
    .end local v0           #cvx:F
    .end local v1           #cvy:F
    :cond_0
    iget v2, p0, Landroid/webkit/ScaleGestureDetector;->mCurrLen:F

    return v2
.end method

.method public getCurrentSpanX()F
    .locals 1

    .prologue
    .line 609
    iget v0, p0, Landroid/webkit/ScaleGestureDetector;->mCurrFingerDiffX:F

    return v0
.end method

.method public getCurrentSpanY()F
    .locals 1

    .prologue
    .line 619
    iget v0, p0, Landroid/webkit/ScaleGestureDetector;->mCurrFingerDiffY:F

    return v0
.end method

.method public getEventTime()J
    .locals 2

    .prologue
    .line 687
    iget-object v0, p0, Landroid/webkit/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFocusX()F
    .locals 1

    .prologue
    .line 569
    iget v0, p0, Landroid/webkit/ScaleGestureDetector;->mFocusX:F

    return v0
.end method

.method public getFocusY()F
    .locals 1

    .prologue
    .line 584
    iget v0, p0, Landroid/webkit/ScaleGestureDetector;->mFocusY:F

    return v0
.end method

.method public getPreviousSpan()F
    .locals 4

    .prologue
    .line 629
    iget v2, p0, Landroid/webkit/ScaleGestureDetector;->mPrevLen:F

    const/high16 v3, -0x4080

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 630
    iget v0, p0, Landroid/webkit/ScaleGestureDetector;->mPrevFingerDiffX:F

    .line 631
    .local v0, pvx:F
    iget v1, p0, Landroid/webkit/ScaleGestureDetector;->mPrevFingerDiffY:F

    .line 632
    .local v1, pvy:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    iput v2, p0, Landroid/webkit/ScaleGestureDetector;->mPrevLen:F

    .line 634
    .end local v0           #pvx:F
    .end local v1           #pvy:F
    :cond_0
    iget v2, p0, Landroid/webkit/ScaleGestureDetector;->mPrevLen:F

    return v2
.end method

.method public getPreviousSpanX()F
    .locals 1

    .prologue
    .line 644
    iget v0, p0, Landroid/webkit/ScaleGestureDetector;->mPrevFingerDiffX:F

    return v0
.end method

.method public getPreviousSpanY()F
    .locals 1

    .prologue
    .line 654
    iget v0, p0, Landroid/webkit/ScaleGestureDetector;->mPrevFingerDiffY:F

    return v0
.end method

.method public getScaleFactor()F
    .locals 2

    .prologue
    .line 665
    iget v0, p0, Landroid/webkit/ScaleGestureDetector;->mScaleFactor:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 666
    invoke-virtual {p0}, Landroid/webkit/ScaleGestureDetector;->getCurrentSpan()F

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/ScaleGestureDetector;->getPreviousSpan()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Landroid/webkit/ScaleGestureDetector;->mScaleFactor:F

    .line 668
    :cond_0
    iget v0, p0, Landroid/webkit/ScaleGestureDetector;->mScaleFactor:F

    return v0
.end method

.method public getTimeDelta()J
    .locals 2

    .prologue
    .line 678
    iget-wide v0, p0, Landroid/webkit/ScaleGestureDetector;->mTimeDelta:J

    return-wide v0
.end method

.method public isInProgress()Z
    .locals 1

    .prologue
    .line 550
    iget-boolean v0, p0, Landroid/webkit/ScaleGestureDetector;->mGestureInProgress:Z

    return v0
.end method

.method public isLauchVideo()Z
    .locals 1

    .prologue
    .line 554
    iget-boolean v0, p0, Landroid/webkit/ScaleGestureDetector;->mVideoScaled:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 25
    .parameter "event"

    .prologue
    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    .line 249
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    .line 251
    .local v4, action:I
    if-nez v4, :cond_1

    .line 252
    invoke-direct/range {p0 .. p0}, Landroid/webkit/ScaleGestureDetector;->reset()V

    .line 253
    invoke-direct/range {p0 .. p0}, Landroid/webkit/ScaleGestureDetector;->resetDown()V

    .line 254
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/ScaleGestureDetector;->mPointerGoesToOne:Z

    .line 257
    :cond_1
    const/4 v9, 0x1

    .line 258
    .local v9, handled:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/ScaleGestureDetector;->mInvalidGesture:Z

    move/from16 v21, v0

    if-eqz v21, :cond_4

    .line 259
    const/4 v9, 0x0

    .line 456
    :cond_2
    :goto_0
    if-nez v9, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    .line 459
    :cond_3
    return v9

    .line 260
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/ScaleGestureDetector;->mGestureInProgress:Z

    move/from16 v21, v0

    if-nez v21, :cond_8

    .line 261
    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 263
    :pswitch_1
    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/ScaleGestureDetector;->mActiveId0:I

    .line 264
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/ScaleGestureDetector;->mActive0MostRecent:Z

    goto :goto_0

    .line 269
    :pswitch_2
    invoke-direct/range {p0 .. p0}, Landroid/webkit/ScaleGestureDetector;->reset()V

    goto :goto_0

    .line 274
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    move-object/from16 v21, v0

    if-eqz v21, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/MotionEvent;->recycle()V

    .line 275
    :cond_5
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 276
    const-wide/16 v21, 0x0

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/ScaleGestureDetector;->mTimeDelta:J

    .line 278
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v12

    .line 279
    .local v12, index1:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/ScaleGestureDetector;->mActiveId0:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v11

    .line 280
    .local v11, index0:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/ScaleGestureDetector;->mActiveId1:I

    .line 281
    if-ltz v11, :cond_6

    if-ne v11, v12, :cond_7

    .line 283
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/ScaleGestureDetector;->mActiveId1:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/ScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v11

    .line 284
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/ScaleGestureDetector;->mActiveId0:I

    .line 286
    :cond_7
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/ScaleGestureDetector;->mActive0MostRecent:Z

    .line 287
    invoke-direct/range {p0 .. p1}, Landroid/webkit/ScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 288
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/ScaleGestureDetector;->mGestureInProgress:Z

    .line 289
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/ScaleGestureDetector;->mPointerGoesToOne:Z

    move/from16 v21, v0

    if-nez v21, :cond_2

    .line 290
    invoke-direct/range {p0 .. p1}, Landroid/webkit/ScaleGestureDetector;->initDown(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 297
    .end local v11           #index0:I
    .end local v12           #index1:I
    :cond_8
    packed-switch v4, :pswitch_data_1

    :pswitch_4
    goto/16 :goto_0

    .line 409
    :pswitch_5
    invoke-direct/range {p0 .. p0}, Landroid/webkit/ScaleGestureDetector;->reset()V

    goto/16 :goto_0

    .line 300
    :pswitch_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/ScaleGestureDetector;->mScaleStarted:Z

    move/from16 v21, v0

    if-eqz v21, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ScaleGestureDetector;->mListener:Landroid/webkit/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v21, v0

    if-eqz v21, :cond_9

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ScaleGestureDetector;->mListener:Landroid/webkit/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/webkit/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/webkit/ScaleGestureDetector;)V

    .line 303
    :cond_9
    move-object/from16 v0, p0

    iget v15, v0, Landroid/webkit/ScaleGestureDetector;->mActiveId0:I

    .line 304
    .local v15, oldActive0:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/ScaleGestureDetector;->mActiveId1:I

    move/from16 v16, v0

    .line 305
    .local v16, oldActive1:I
    invoke-direct/range {p0 .. p0}, Landroid/webkit/ScaleGestureDetector;->reset()V

    .line 307
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 308
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/ScaleGestureDetector;->mActive0MostRecent:Z

    move/from16 v21, v0

    if-eqz v21, :cond_c

    .end local v15           #oldActive0:I
    :goto_1
    move-object/from16 v0, p0

    iput v15, v0, Landroid/webkit/ScaleGestureDetector;->mActiveId0:I

    .line 309
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v21

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/ScaleGestureDetector;->mActiveId1:I

    .line 310
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/ScaleGestureDetector;->mActive0MostRecent:Z

    .line 312
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/ScaleGestureDetector;->mActiveId0:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v11

    .line 313
    .restart local v11       #index0:I
    if-ltz v11, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/ScaleGestureDetector;->mActiveId0:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/ScaleGestureDetector;->mActiveId1:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_b

    .line 315
    :cond_a
    const-string v21, "WebScaleGestureDetector"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Got "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {v4}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " with bad state while a gesture was in progress. "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "Did you forget to pass an event to "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "ScaleGestureDetector#onTouchEvent?"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/ScaleGestureDetector;->mActiveId1:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/ScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v11

    .line 320
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/ScaleGestureDetector;->mActiveId0:I

    .line 323
    :cond_b
    invoke-direct/range {p0 .. p1}, Landroid/webkit/ScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 324
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/ScaleGestureDetector;->mGestureInProgress:Z

    .line 325
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/ScaleGestureDetector;->mScaleStarted:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ScaleGestureDetector;->mListener:Landroid/webkit/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v21, v0

    if-eqz v21, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ScaleGestureDetector;->mListener:Landroid/webkit/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/webkit/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/webkit/ScaleGestureDetector;)Z

    move-result v21

    if-eqz v21, :cond_d

    const/16 v21, 0x1

    :goto_2
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/ScaleGestureDetector;->mScaleStarted:Z

    goto/16 :goto_0

    .end local v11           #index0:I
    .restart local v15       #oldActive0:I
    :cond_c
    move/from16 v15, v16

    .line 308
    goto/16 :goto_1

    .line 326
    .end local v15           #oldActive0:I
    .restart local v11       #index0:I
    :cond_d
    const/16 v21, 0x0

    goto :goto_2

    .line 332
    .end local v11           #index0:I
    .end local v16           #oldActive1:I
    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v17

    .line 333
    .local v17, pointerCount:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    .line 334
    .local v6, actionIndex:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 336
    .local v5, actionId:I
    const/4 v8, 0x0

    .line 337
    .local v8, gestureEnded:Z
    const/16 v21, 0x2

    move/from16 v0, v17

    move/from16 v1, v21

    if-le v0, v1, :cond_17

    .line 338
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/ScaleGestureDetector;->mActiveId0:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ne v5, v0, :cond_13

    .line 339
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/ScaleGestureDetector;->mActiveId1:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v1, v2, v6}, Landroid/webkit/ScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v14

    .line 340
    .local v14, newIndex:I
    if-ltz v14, :cond_12

    .line 341
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/ScaleGestureDetector;->mScaleStarted:Z

    move/from16 v21, v0

    if-eqz v21, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ScaleGestureDetector;->mListener:Landroid/webkit/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v21, v0

    if-eqz v21, :cond_e

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ScaleGestureDetector;->mListener:Landroid/webkit/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/webkit/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/webkit/ScaleGestureDetector;)V

    .line 344
    :cond_e
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/ScaleGestureDetector;->mActiveId0:I

    .line 345
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/ScaleGestureDetector;->mActive0MostRecent:Z

    .line 346
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 347
    invoke-direct/range {p0 .. p1}, Landroid/webkit/ScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 348
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/ScaleGestureDetector;->mGestureInProgress:Z

    .line 349
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/ScaleGestureDetector;->mScaleStarted:Z

    move/from16 v21, v0

    if-eqz v21, :cond_f

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ScaleGestureDetector;->mListener:Landroid/webkit/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v21, v0

    if-eqz v21, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ScaleGestureDetector;->mListener:Landroid/webkit/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/webkit/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/webkit/ScaleGestureDetector;)Z

    move-result v21

    if-eqz v21, :cond_11

    const/16 v21, 0x1

    :goto_3
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/ScaleGestureDetector;->mScaleStarted:Z

    .line 373
    .end local v14           #newIndex:I
    :cond_f
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/MotionEvent;->recycle()V

    .line 374
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 375
    invoke-direct/range {p0 .. p1}, Landroid/webkit/ScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 380
    :goto_5
    if-eqz v8, :cond_2

    .line 382
    invoke-direct/range {p0 .. p1}, Landroid/webkit/ScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 383
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/ScaleGestureDetector;->mPointerGoesToOne:Z

    .line 386
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/ScaleGestureDetector;->mActiveId0:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ne v5, v0, :cond_18

    move-object/from16 v0, p0

    iget v7, v0, Landroid/webkit/ScaleGestureDetector;->mActiveId1:I

    .line 387
    .local v7, activeId:I
    :goto_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v10

    .line 388
    .local v10, index:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/ScaleGestureDetector;->mFocusX:F

    .line 389
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/ScaleGestureDetector;->mFocusY:F

    .line 391
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/ScaleGestureDetector;->mScaleStarted:Z

    move/from16 v21, v0

    if-eqz v21, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ScaleGestureDetector;->mListener:Landroid/webkit/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v21, v0

    if-eqz v21, :cond_10

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ScaleGestureDetector;->mListener:Landroid/webkit/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/webkit/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/webkit/ScaleGestureDetector;)V

    .line 394
    :cond_10
    invoke-direct/range {p0 .. p0}, Landroid/webkit/ScaleGestureDetector;->reset()V

    .line 395
    move-object/from16 v0, p0

    iput v7, v0, Landroid/webkit/ScaleGestureDetector;->mActiveId0:I

    .line 396
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/ScaleGestureDetector;->mActive0MostRecent:Z

    goto/16 :goto_0

    .line 350
    .end local v7           #activeId:I
    .end local v10           #index:I
    .restart local v14       #newIndex:I
    :cond_11
    const/16 v21, 0x0

    goto/16 :goto_3

    .line 353
    :cond_12
    const/4 v8, 0x1

    goto/16 :goto_4

    .line 355
    .end local v14           #newIndex:I
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/ScaleGestureDetector;->mActiveId1:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ne v5, v0, :cond_f

    .line 356
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/ScaleGestureDetector;->mActiveId0:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v1, v2, v6}, Landroid/webkit/ScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v14

    .line 357
    .restart local v14       #newIndex:I
    if-ltz v14, :cond_16

    .line 358
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/ScaleGestureDetector;->mScaleStarted:Z

    move/from16 v21, v0

    if-eqz v21, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ScaleGestureDetector;->mListener:Landroid/webkit/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v21, v0

    if-eqz v21, :cond_14

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ScaleGestureDetector;->mListener:Landroid/webkit/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/webkit/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/webkit/ScaleGestureDetector;)V

    .line 361
    :cond_14
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/ScaleGestureDetector;->mActiveId1:I

    .line 362
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/ScaleGestureDetector;->mActive0MostRecent:Z

    .line 363
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 364
    invoke-direct/range {p0 .. p1}, Landroid/webkit/ScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 365
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/ScaleGestureDetector;->mGestureInProgress:Z

    .line 366
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/ScaleGestureDetector;->mScaleStarted:Z

    move/from16 v21, v0

    if-eqz v21, :cond_f

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ScaleGestureDetector;->mListener:Landroid/webkit/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v21, v0

    if-eqz v21, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ScaleGestureDetector;->mListener:Landroid/webkit/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/webkit/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/webkit/ScaleGestureDetector;)Z

    move-result v21

    if-eqz v21, :cond_15

    const/16 v21, 0x1

    :goto_7
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/ScaleGestureDetector;->mScaleStarted:Z

    goto/16 :goto_4

    :cond_15
    const/16 v21, 0x0

    goto :goto_7

    .line 370
    :cond_16
    const/4 v8, 0x1

    goto/16 :goto_4

    .line 377
    .end local v14           #newIndex:I
    :cond_17
    const/4 v8, 0x1

    goto/16 :goto_5

    .line 386
    :cond_18
    move-object/from16 v0, p0

    iget v7, v0, Landroid/webkit/ScaleGestureDetector;->mActiveId0:I

    goto/16 :goto_6

    .line 402
    .end local v5           #actionId:I
    .end local v6           #actionIndex:I
    .end local v8           #gestureEnded:Z
    .end local v17           #pointerCount:I
    :pswitch_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/ScaleGestureDetector;->mScaleStarted:Z

    move/from16 v21, v0

    if-eqz v21, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ScaleGestureDetector;->mListener:Landroid/webkit/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v21, v0

    if-eqz v21, :cond_19

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ScaleGestureDetector;->mListener:Landroid/webkit/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/webkit/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/webkit/ScaleGestureDetector;)V

    .line 405
    :cond_19
    invoke-direct/range {p0 .. p0}, Landroid/webkit/ScaleGestureDetector;->reset()V

    goto/16 :goto_0

    .line 413
    :pswitch_9
    invoke-direct/range {p0 .. p1}, Landroid/webkit/ScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 418
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/ScaleGestureDetector;->mInvalidGesture:Z

    move/from16 v21, v0

    if-nez v21, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/ScaleGestureDetector;->mCurrPressure:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/ScaleGestureDetector;->mPrevPressure:F

    move/from16 v22, v0

    div-float v21, v21, v22

    const v22, 0x3f2b851f

    cmpl-float v21, v21, v22

    if-lez v21, :cond_2

    .line 420
    const/16 v20, 0x0

    .line 421
    .local v20, updatePrevious:Z
    invoke-direct/range {p0 .. p1}, Landroid/webkit/ScaleGestureDetector;->getMovement(Landroid/view/MotionEvent;)F

    move-result v13

    .line 422
    .local v13, movement:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v21

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/webkit/ScaleGestureDetector;->mDownTime:J

    move-wide/from16 v23, v0

    sub-long v18, v21, v23

    .line 423
    .local v18, timeEllipse:J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/ScaleGestureDetector;->mScaleStarted:Z

    move/from16 v21, v0

    if-nez v21, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/ScaleGestureDetector;->mVideoScaled:Z

    move/from16 v21, v0

    if-nez v21, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/ScaleGestureDetector;->mTouchInVideoRect:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1b

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/ScaleGestureDetector;->getScaleFactor()F

    move-result v21

    const/high16 v22, 0x3f80

    cmpl-float v21, v21, v22

    if-lez v21, :cond_1b

    const/high16 v21, 0x447a

    cmpl-float v21, v13, v21

    if-lez v21, :cond_1b

    const-wide/16 v21, 0x78

    cmp-long v21, v18, v21

    if-gtz v21, :cond_1b

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ScaleGestureDetector;->mVideoScaleListener:Landroid/webkit/ScaleGestureDetector$VideoScaleListener;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1a

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ScaleGestureDetector;->mVideoScaleListener:Landroid/webkit/ScaleGestureDetector$VideoScaleListener;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Landroid/webkit/ScaleGestureDetector$VideoScaleListener;->onVideoScaleBegin()Z

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/ScaleGestureDetector;->mVideoScaled:Z

    .line 431
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/ScaleGestureDetector;->mVideoScaled:Z

    move/from16 v20, v0

    .line 433
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/ScaleGestureDetector;->mInvalidGesture:Z

    .line 446
    :cond_1a
    :goto_8
    if-eqz v20, :cond_2

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/MotionEvent;->recycle()V

    .line 448
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    goto/16 :goto_0

    .line 435
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/ScaleGestureDetector;->mVideoScaled:Z

    move/from16 v21, v0

    if-nez v21, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/ScaleGestureDetector;->mScaleStarted:Z

    move/from16 v21, v0

    if-nez v21, :cond_1c

    const-wide/16 v21, 0x78

    cmp-long v21, v18, v21

    if-gtz v21, :cond_1c

    const/high16 v21, 0x447a

    cmpl-float v21, v13, v21

    if-gtz v21, :cond_1c

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/ScaleGestureDetector;->getScaleFactor()F

    move-result v21

    const/high16 v22, 0x3f80

    cmpg-float v21, v21, v22

    if-ltz v21, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/ScaleGestureDetector;->mTouchInVideoRect:Z

    move/from16 v21, v0

    if-nez v21, :cond_1a

    .line 439
    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/ScaleGestureDetector;->mScaleStarted:Z

    move/from16 v21, v0

    if-nez v21, :cond_1d

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ScaleGestureDetector;->mListener:Landroid/webkit/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ScaleGestureDetector;->mListener:Landroid/webkit/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/webkit/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/webkit/ScaleGestureDetector;)Z

    move-result v21

    if-eqz v21, :cond_1e

    const/16 v21, 0x1

    :goto_9
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/ScaleGestureDetector;->mScaleStarted:Z

    .line 442
    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/ScaleGestureDetector;->mScaleStarted:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1a

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ScaleGestureDetector;->mListener:Landroid/webkit/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ScaleGestureDetector;->mListener:Landroid/webkit/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/webkit/ScaleGestureDetector$OnScaleGestureListener;->onScale(Landroid/webkit/ScaleGestureDetector;)Z

    move-result v21

    if-eqz v21, :cond_1f

    const/16 v20, 0x1

    :goto_a
    goto/16 :goto_8

    .line 440
    :cond_1e
    const/16 v21, 0x0

    goto :goto_9

    .line 443
    :cond_1f
    const/16 v20, 0x0

    goto :goto_a

    .line 261
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 297
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_9
        :pswitch_8
        :pswitch_4
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method setVideoScaleListener(Landroid/webkit/ScaleGestureDetector$VideoScaleListener;)V
    .locals 0
    .parameter "videoListener"

    .prologue
    .line 197
    iput-object p1, p0, Landroid/webkit/ScaleGestureDetector;->mVideoScaleListener:Landroid/webkit/ScaleGestureDetector$VideoScaleListener;

    .line 198
    return-void
.end method
