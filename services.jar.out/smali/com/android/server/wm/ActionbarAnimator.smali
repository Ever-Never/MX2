.class public Lcom/android/server/wm/ActionbarAnimator;
.super Ljava/lang/Object;
.source "ActionbarAnimator.java"


# static fields
.field static final DEBUG_ACTIONBAR_ANIMATION:Z = false

.field private static final FOR_ALL_WINDOW:I = 0x4

.field private static final FOR_EXIT_WINDOW:I = 0x1

.field private static final FOR_FIRST_WINDOW:I = 0x3

.field private static final FOR_STARTING_WINDOW:I = 0x2

.field static final TAG:Ljava/lang/String; = "ActionbarAnimator"


# instance fields
.field mCurrentTime:J

.field mDuration:J

.field mEnter:Z

.field mFirstShowed:Z

.field final mFxSession:Landroid/view/SurfaceSession;

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field mPosition:F

.field mShowing:I

.field mShown:Z

.field private mSplitActionBar:Z

.field mStartShowed:Z

.field mStartTime:J

.field mSurface:Landroid/view/Surface;

.field private mUserAnimateLayer:I

.field mWholeShowed:Z

.field final mWinToken:Lcom/android/server/wm/AppWindowToken;


# direct methods
.method public constructor <init>(Landroid/view/SurfaceSession;Lcom/android/server/wm/AppWindowToken;ZJZ)V
    .locals 8
    .parameter "session"
    .parameter "wtoken"
    .parameter "enter"
    .parameter "duration"
    .parameter "split"

    .prologue
    const-wide/16 v2, -0x1

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean v1, p0, Lcom/android/server/wm/ActionbarAnimator;->mStartShowed:Z

    .line 21
    iput-boolean v1, p0, Lcom/android/server/wm/ActionbarAnimator;->mFirstShowed:Z

    .line 22
    iput-boolean v1, p0, Lcom/android/server/wm/ActionbarAnimator;->mWholeShowed:Z

    .line 23
    iput v1, p0, Lcom/android/server/wm/ActionbarAnimator;->mShowing:I

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/ActionbarAnimator;->mPosition:F

    .line 26
    iput-wide v2, p0, Lcom/android/server/wm/ActionbarAnimator;->mStartTime:J

    .line 27
    iput-wide v2, p0, Lcom/android/server/wm/ActionbarAnimator;->mCurrentTime:J

    .line 28
    iput v1, p0, Lcom/android/server/wm/ActionbarAnimator;->mUserAnimateLayer:I

    .line 35
    iput-boolean v1, p0, Lcom/android/server/wm/ActionbarAnimator;->mShown:Z

    .line 37
    iput-boolean v1, p0, Lcom/android/server/wm/ActionbarAnimator;->mSplitActionBar:Z

    .line 156
    iput-object p1, p0, Lcom/android/server/wm/ActionbarAnimator;->mFxSession:Landroid/view/SurfaceSession;

    .line 157
    iput-object p2, p0, Lcom/android/server/wm/ActionbarAnimator;->mWinToken:Lcom/android/server/wm/AppWindowToken;

    .line 158
    iput-boolean p3, p0, Lcom/android/server/wm/ActionbarAnimator;->mEnter:Z

    .line 159
    iput-wide p4, p0, Lcom/android/server/wm/ActionbarAnimator;->mDuration:J

    .line 160
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActionbarAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 161
    iput-boolean p6, p0, Lcom/android/server/wm/ActionbarAnimator;->mSplitActionBar:Z

    .line 164
    :try_start_0
    new-instance v0, Landroid/view/Surface;

    const-string v2, "ActionbarAnimator"

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, -0x3

    const v6, 0x40004

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/server/wm/ActionbarAnimator;->mSurface:Landroid/view/Surface;
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/wm/ActionbarAnimator;->mEnter:Z

    if-nez v0, :cond_0

    .line 175
    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    .line 176
    invoke-direct {p0, v7}, Lcom/android/server/wm/ActionbarAnimator;->prepareTarget(I)V

    .line 177
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 179
    :cond_0
    return-void

    .line 171
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getAlpha()F
    .locals 3

    .prologue
    const/high16 v2, 0x3f80

    .line 50
    iget-boolean v1, p0, Lcom/android/server/wm/ActionbarAnimator;->mEnter:Z

    if-eqz v1, :cond_2

    iget v0, p0, Lcom/android/server/wm/ActionbarAnimator;->mPosition:F

    .line 52
    .local v0, alpha:F
    :goto_0
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 53
    const/4 v0, 0x0

    .line 56
    :cond_0
    cmpl-float v1, v0, v2

    if-lez v1, :cond_1

    .line 57
    const/high16 v0, 0x3f80

    .line 59
    :cond_1
    return v0

    .line 50
    .end local v0           #alpha:F
    :cond_2
    iget v1, p0, Lcom/android/server/wm/ActionbarAnimator;->mPosition:F

    sub-float v0, v2, v1

    goto :goto_0
.end method

.method private prepareTarget(I)V
    .locals 16
    .parameter "reason"

    .prologue
    .line 94
    const/4 v11, 0x0

    .line 95
    .local v11, targetid:I
    const/4 v1, 0x4

    move/from16 v0, p1

    if-ne v0, v1, :cond_1

    .line 96
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/ActionbarAnimator;->mWinToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->findNonStartingMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v15

    .line 101
    .local v15, wstate:Lcom/android/server/wm/WindowState;
    :goto_0
    if-nez v15, :cond_2

    .line 153
    :cond_0
    :goto_1
    return-void

    .line 98
    .end local v15           #wstate:Lcom/android/server/wm/WindowState;
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/ActionbarAnimator;->mWinToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v15

    .restart local v15       #wstate:Lcom/android/server/wm/WindowState;
    goto :goto_0

    .line 105
    :cond_2
    const/4 v1, 0x1

    iget-object v2, v15, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 106
    .local v14, winWidth:I
    const/4 v1, 0x1

    iget-object v2, v15, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 107
    .local v13, winHeight:I
    const/4 v10, 0x0

    .line 108
    .local v10, surface:Landroid/view/Surface;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/wm/ActionbarAnimator;->mShown:Z

    if-eqz v1, :cond_3

    .line 110
    :try_start_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wm/ActionbarAnimator;->mSurface:Landroid/view/Surface;

    .line 111
    new-instance v1, Landroid/view/Surface;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ActionbarAnimator;->mFxSession:Landroid/view/SurfaceSession;

    const-string v3, "ActionbarAnimator"

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, -0x3

    const v7, 0x40004

    invoke-direct/range {v1 .. v7}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/wm/ActionbarAnimator;->mSurface:Landroid/view/Surface;
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :cond_3
    :goto_2
    iget-boolean v1, v15, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v1, :cond_4

    iget-object v1, v15, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_4

    .line 119
    iget-object v1, v15, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->getIdentity()I

    move-result v11

    .line 122
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/ActionbarAnimator;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v14, v13}, Landroid/view/Surface;->setSize(II)V

    .line 123
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/ActionbarAnimator;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v11}, Landroid/view/Surface;->setTargetSurface(I)V

    .line 124
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/wm/ActionbarAnimator;->mUserAnimateLayer:I

    if-lez v1, :cond_5

    .line 125
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/ActionbarAnimator;->mSurface:Landroid/view/Surface;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/ActionbarAnimator;->mUserAnimateLayer:I

    invoke-virtual {v1, v2}, Landroid/view/Surface;->setLayer(I)V

    .line 129
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/ActionbarAnimator;->mSurface:Landroid/view/Surface;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActionbarAnimator;->getAlpha()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Surface;->setAlpha(F)V

    .line 131
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/wm/ActionbarAnimator;->mSplitActionBar:Z

    if-eqz v1, :cond_7

    .line 132
    const/4 v9, 0x0

    .line 133
    .local v9, splitHeight:I
    iget-object v1, v15, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_6

    iget-object v1, v15, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->splitActionBarHeight:I

    if-lez v1, :cond_6

    .line 135
    iget-object v1, v15, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v9, v1, Landroid/view/WindowManager$LayoutParams;->splitActionBarHeight:I

    .line 140
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/ActionbarAnimator;->mSurface:Landroid/view/Surface;

    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x1

    sub-int v5, v13, v9

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-direct {v2, v3, v4, v14, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2}, Landroid/view/Surface;->setWindowCrop(Landroid/graphics/Rect;)V

    .line 147
    .end local v9           #splitHeight:I
    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/ActionbarAnimator;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->show()V

    .line 148
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/wm/ActionbarAnimator;->mShown:Z

    .line 150
    if-eqz v10, :cond_0

    .line 151
    invoke-virtual {v10}, Landroid/view/Surface;->destroy()V

    goto/16 :goto_1

    .line 113
    :catch_0
    move-exception v8

    .line 114
    .local v8, e:Landroid/view/Surface$OutOfResourcesException;
    const/4 v10, 0x0

    goto :goto_2

    .line 127
    .end local v8           #e:Landroid/view/Surface$OutOfResourcesException;
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/ActionbarAnimator;->mSurface:Landroid/view/Surface;

    iget-object v2, v15, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    add-int/lit8 v2, v2, 0xa

    invoke-virtual {v1, v2}, Landroid/view/Surface;->setLayer(I)V

    goto :goto_3

    .line 137
    .restart local v9       #splitHeight:I
    :cond_6
    iget-object v1, v15, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getActionbarHeight()I

    move-result v9

    goto :goto_4

    .line 143
    .end local v9           #splitHeight:I
    :cond_7
    iget-object v1, v15, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v12, v1, Lcom/android/server/wm/WindowStateAnimator;->mWindowOriginalTop:I

    .line 144
    .local v12, top:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/ActionbarAnimator;->mSurface:Landroid/view/Surface;

    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v5, v15, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getActionbarHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/2addr v4, v12

    invoke-direct {v2, v3, v12, v14, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2}, Landroid/view/Surface;->setWindowCrop(Landroid/graphics/Rect;)V

    goto :goto_5
.end method

.method private reasonString(I)Ljava/lang/String;
    .locals 1
    .parameter "reason"

    .prologue
    .line 40
    packed-switch p1, :pswitch_data_0

    .line 45
    const-string v0, "Unknown"

    :goto_0
    return-object v0

    .line 41
    :pswitch_0
    const-string v0, "exit window"

    goto :goto_0

    .line 42
    :pswitch_1
    const-string v0, "enter window starting showed"

    goto :goto_0

    .line 43
    :pswitch_2
    const-string v0, "enter window first showed"

    goto :goto_0

    .line 44
    :pswitch_3
    const-string v0, "enter window all showed"

    goto :goto_0

    .line 40
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/server/wm/ActionbarAnimator;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/server/wm/ActionbarAnimator;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->destroy()V

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActionbarAnimator;->mSurface:Landroid/view/Surface;

    .line 219
    :cond_0
    return-void
.end method

.method public onDrawStateChange()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 182
    iget-boolean v0, p0, Lcom/android/server/wm/ActionbarAnimator;->mEnter:Z

    if-eqz v0, :cond_0

    .line 183
    iget-boolean v0, p0, Lcom/android/server/wm/ActionbarAnimator;->mWholeShowed:Z

    if-eqz v0, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/ActionbarAnimator;->mWholeShowed:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/ActionbarAnimator;->mWinToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-eqz v0, :cond_2

    .line 186
    invoke-direct {p0, v4}, Lcom/android/server/wm/ActionbarAnimator;->prepareTarget(I)V

    .line 187
    iput v4, p0, Lcom/android/server/wm/ActionbarAnimator;->mShowing:I

    .line 188
    iput-boolean v1, p0, Lcom/android/server/wm/ActionbarAnimator;->mWholeShowed:Z

    goto :goto_0

    .line 189
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/wm/ActionbarAnimator;->mFirstShowed:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/ActionbarAnimator;->mWinToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    if-eqz v0, :cond_3

    .line 190
    invoke-direct {p0, v3}, Lcom/android/server/wm/ActionbarAnimator;->prepareTarget(I)V

    .line 191
    iput v3, p0, Lcom/android/server/wm/ActionbarAnimator;->mShowing:I

    .line 192
    iput-boolean v1, p0, Lcom/android/server/wm/ActionbarAnimator;->mFirstShowed:Z

    goto :goto_0

    .line 193
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/wm/ActionbarAnimator;->mStartShowed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActionbarAnimator;->mWinToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    if-eqz v0, :cond_0

    .line 194
    invoke-direct {p0, v2}, Lcom/android/server/wm/ActionbarAnimator;->prepareTarget(I)V

    .line 195
    iput v2, p0, Lcom/android/server/wm/ActionbarAnimator;->mShowing:I

    .line 196
    iput-boolean v1, p0, Lcom/android/server/wm/ActionbarAnimator;->mStartShowed:Z

    goto :goto_0
.end method

.method public setDuration(J)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 222
    iput-wide p1, p0, Lcom/android/server/wm/ActionbarAnimator;->mDuration:J

    .line 223
    return-void
.end method

.method public setStartTime(J)V
    .locals 0
    .parameter "startTime"

    .prologue
    .line 63
    iput-wide p1, p0, Lcom/android/server/wm/ActionbarAnimator;->mStartTime:J

    .line 64
    return-void
.end method

.method public stepAnimation(J)V
    .locals 7
    .parameter "currentTime"

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x3f80

    .line 67
    iget-wide v1, p0, Lcom/android/server/wm/ActionbarAnimator;->mDuration:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_1

    .line 68
    iput v5, p0, Lcom/android/server/wm/ActionbarAnimator;->mPosition:F

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    iput-wide p1, p0, Lcom/android/server/wm/ActionbarAnimator;->mCurrentTime:J

    .line 72
    iget-wide v1, p0, Lcom/android/server/wm/ActionbarAnimator;->mStartTime:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 73
    iget-wide v1, p0, Lcom/android/server/wm/ActionbarAnimator;->mCurrentTime:J

    iput-wide v1, p0, Lcom/android/server/wm/ActionbarAnimator;->mStartTime:J

    .line 76
    :cond_2
    iget-wide v1, p0, Lcom/android/server/wm/ActionbarAnimator;->mCurrentTime:J

    iget-wide v3, p0, Lcom/android/server/wm/ActionbarAnimator;->mStartTime:J

    sub-long/2addr v1, v3

    iget-wide v3, p0, Lcom/android/server/wm/ActionbarAnimator;->mDuration:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_3

    .line 77
    iput v5, p0, Lcom/android/server/wm/ActionbarAnimator;->mPosition:F

    goto :goto_0

    .line 81
    :cond_3
    iget-wide v1, p0, Lcom/android/server/wm/ActionbarAnimator;->mCurrentTime:J

    iget-wide v3, p0, Lcom/android/server/wm/ActionbarAnimator;->mStartTime:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    mul-float/2addr v1, v5

    iget-wide v2, p0, Lcom/android/server/wm/ActionbarAnimator;->mDuration:J

    long-to-float v2, v2

    div-float v0, v1, v2

    .line 82
    .local v0, position:F
    iget-object v1, p0, Lcom/android/server/wm/ActionbarAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    iput v1, p0, Lcom/android/server/wm/ActionbarAnimator;->mPosition:F

    .line 84
    iget v1, p0, Lcom/android/server/wm/ActionbarAnimator;->mPosition:F

    cmpg-float v1, v1, v6

    if-gez v1, :cond_4

    .line 85
    iput v6, p0, Lcom/android/server/wm/ActionbarAnimator;->mPosition:F

    .line 87
    :cond_4
    iget v1, p0, Lcom/android/server/wm/ActionbarAnimator;->mPosition:F

    cmpl-float v1, v1, v5

    if-lez v1, :cond_0

    .line 88
    iput v5, p0, Lcom/android/server/wm/ActionbarAnimator;->mPosition:F

    goto :goto_0
.end method

.method public updateAnimation()V
    .locals 2

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/android/server/wm/ActionbarAnimator;->onDrawStateChange()V

    .line 204
    iget-object v0, p0, Lcom/android/server/wm/ActionbarAnimator;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/server/wm/ActionbarAnimator;->mSurface:Landroid/view/Surface;

    invoke-direct {p0}, Lcom/android/server/wm/ActionbarAnimator;->getAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Surface;->setAlpha(F)V

    .line 207
    :cond_0
    return-void
.end method

.method public updateLayer(I)V
    .locals 1
    .parameter "layer"

    .prologue
    .line 226
    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActionbarAnimator;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/android/server/wm/ActionbarAnimator;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, p1}, Landroid/view/Surface;->setLayer(I)V

    .line 228
    iput p1, p0, Lcom/android/server/wm/ActionbarAnimator;->mUserAnimateLayer:I

    .line 230
    :cond_0
    return-void
.end method
