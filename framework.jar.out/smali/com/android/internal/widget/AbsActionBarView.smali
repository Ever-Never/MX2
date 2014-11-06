.class public abstract Lcom/android/internal/widget/AbsActionBarView;
.super Landroid/view/ViewGroup;
.source "AbsActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;
    }
.end annotation


# static fields
.field private static final FADE_DURATION:I = 0x64

.field protected static final MAX_ACTIONS_ITEM:I = 0x5

.field private static final sAlphaInterpolator:Landroid/animation/TimeInterpolator;


# instance fields
.field protected mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

.field protected mActionModeHeaderHidden:Z

.field protected mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

.field protected mBackIcon:Landroid/graphics/drawable/Drawable;

.field protected mContentHeight:I

.field private mCustomHeight:I

.field protected mInActionMode:Z

.field protected mIsOverlay:Z

.field protected mMaxTitleWidth:I

.field protected mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

.field protected mNeedDockActionBar:Z

.field protected mOrientatinPortrait:Z

.field protected mSplitActionBar:Z

.field protected mSplitView:Lcom/android/internal/widget/ActionBarContainer;

.field protected mSplitWhenNarrow:Z

.field protected final mVisAnimListener:Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

.field protected mVisibilityAnim:Landroid/animation/Animator;

.field private mVisiblilityAnimationListener:Landroid/app/ActionBar$VisibilityAnimationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/internal/widget/AbsActionBarView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mOrientatinPortrait:Z

    .line 50
    new-instance v0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;-><init>(Lcom/android/internal/widget/AbsActionBarView;)V

    iput-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    .line 391
    iput-boolean v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mInActionMode:Z

    .line 403
    iput-boolean v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mIsOverlay:Z

    .line 419
    iput-boolean v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mNeedDockActionBar:Z

    .line 466
    iput v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mCustomHeight:I

    .line 473
    iput v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mMaxTitleWidth:I

    .line 58
    invoke-direct {p0}, Lcom/android/internal/widget/AbsActionBarView;->initView()V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mOrientatinPortrait:Z

    .line 50
    new-instance v0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;-><init>(Lcom/android/internal/widget/AbsActionBarView;)V

    iput-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    .line 391
    iput-boolean v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mInActionMode:Z

    .line 403
    iput-boolean v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mIsOverlay:Z

    .line 419
    iput-boolean v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mNeedDockActionBar:Z

    .line 466
    iput v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mCustomHeight:I

    .line 473
    iput v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mMaxTitleWidth:I

    .line 63
    invoke-direct {p0}, Lcom/android/internal/widget/AbsActionBarView;->initView()V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mOrientatinPortrait:Z

    .line 50
    new-instance v0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;-><init>(Lcom/android/internal/widget/AbsActionBarView;)V

    iput-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    .line 391
    iput-boolean v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mInActionMode:Z

    .line 403
    iput-boolean v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mIsOverlay:Z

    .line 419
    iput-boolean v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mNeedDockActionBar:Z

    .line 466
    iput v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mCustomHeight:I

    .line 473
    iput v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mMaxTitleWidth:I

    .line 68
    invoke-direct {p0}, Lcom/android/internal/widget/AbsActionBarView;->initView()V

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/AbsActionBarView;)Landroid/app/ActionBar$VisibilityAnimationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisiblilityAnimationListener:Landroid/app/ActionBar$VisibilityAnimationListener;

    return-object v0
.end method

.method private initView()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 504
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 505
    .local v0, config:Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v1, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mOrientatinPortrait:Z

    .line 506
    return-void

    .line 505
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static next(IIZ)I
    .locals 1
    .parameter "x"
    .parameter "val"
    .parameter "isRtl"

    .prologue
    .line 294
    if-eqz p2, :cond_0

    sub-int v0, p0, p1

    :goto_0
    return v0

    :cond_0
    add-int v0, p0, p1

    goto :goto_0
.end method


# virtual methods
.method public animateToVisibility(I)V
    .locals 11
    .parameter "visibility"

    .prologue
    const/high16 v10, 0x3f80

    const/4 v9, 0x0

    const-wide/16 v7, 0x64

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 169
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    if-eqz v3, :cond_0

    .line 170
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    .line 172
    :cond_0
    if-nez p1, :cond_5

    .line 173
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    .line 174
    invoke-virtual {p0, v9}, Landroid/view/View;->setAlpha(F)V

    .line 175
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v3, :cond_1

    .line 176
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v3, v9}, Landroid/view/View;->setAlpha(F)V

    .line 180
    :cond_1
    iget-boolean v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionModeHeaderHidden:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitActionBar:Z

    if-eqz v3, :cond_3

    .line 181
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v3, :cond_2

    .line 182
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    const-string v4, "alpha"

    new-array v5, v5, [F

    aput v10, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 183
    .local v2, splitAnim:Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 184
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v3, p1}, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 185
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 228
    .end local v2           #splitAnim:Landroid/animation/ObjectAnimator;
    :cond_2
    :goto_0
    return-void

    .line 188
    :cond_3
    const-string v3, "alpha"

    new-array v4, v5, [F

    aput v10, v4, v6

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 189
    .local v0, anim:Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 190
    sget-object v3, Lcom/android/internal/widget/AbsActionBarView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 191
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v3, :cond_4

    .line 192
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 193
    .local v1, set:Landroid/animation/AnimatorSet;
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    const-string v4, "alpha"

    new-array v5, v5, [F

    aput v10, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 194
    .restart local v2       #splitAnim:Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 195
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v3, p1}, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 196
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 197
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 199
    .end local v1           #set:Landroid/animation/AnimatorSet;
    .end local v2           #splitAnim:Landroid/animation/ObjectAnimator;
    :cond_4
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v3, p1}, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 200
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 204
    .end local v0           #anim:Landroid/animation/ObjectAnimator;
    :cond_5
    iget-boolean v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionModeHeaderHidden:Z

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitActionBar:Z

    if-eqz v3, :cond_6

    .line 205
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v3, :cond_2

    .line 206
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    const-string v4, "alpha"

    new-array v5, v5, [F

    aput v9, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 207
    .restart local v2       #splitAnim:Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 208
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v3, p1}, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 209
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 212
    .end local v2           #splitAnim:Landroid/animation/ObjectAnimator;
    :cond_6
    const-string v3, "alpha"

    new-array v4, v5, [F

    aput v9, v4, v6

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 213
    .restart local v0       #anim:Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 214
    sget-object v3, Lcom/android/internal/widget/AbsActionBarView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 215
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v3, :cond_7

    .line 216
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 217
    .restart local v1       #set:Landroid/animation/AnimatorSet;
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    const-string v4, "alpha"

    new-array v5, v5, [F

    aput v9, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 218
    .restart local v2       #splitAnim:Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 219
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v3, p1}, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 220
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 221
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 223
    .end local v1           #set:Landroid/animation/AnimatorSet;
    .end local v2           #splitAnim:Landroid/animation/ObjectAnimator;
    :cond_7
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v3, p1}, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 224
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_0
.end method

.method public dismissPopupMenus()V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 280
    :cond_0
    return-void
.end method

.method public getActionMenuView()Lcom/android/internal/view/menu/ActionMenuView;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    return-object v0
.end method

.method public getAnimatedVisibility()I
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    iget v0, v0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    .line 165
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    goto :goto_0
.end method

.method public getContentHeight()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    return v0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    .line 262
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    .line 269
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverlay()Z
    .locals 1

    .prologue
    .line 410
    iget-boolean v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mIsOverlay:Z

    return v0
.end method

.method protected measureChildView(Landroid/view/View;III)I
    .locals 1
    .parameter "child"
    .parameter "availableWidth"
    .parameter "childSpecHeight"
    .parameter "spacing"

    .prologue
    .line 284
    const/high16 v0, -0x8000

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v0, p3}, Landroid/view/View;->measure(II)V

    .line 287
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p2, v0

    .line 288
    sub-int/2addr p2, p4

    .line 290
    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public needDockActionBar()Z
    .locals 1

    .prologue
    .line 425
    iget-boolean v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mNeedDockActionBar:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 9
    .parameter "newConfig"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 73
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 75
    const/4 v1, 0x1

    .line 76
    .local v1, portrait:Z
    if-eqz p1, :cond_0

    if-eqz p1, :cond_5

    iget v6, p1, Landroid/content/res/Configuration;->orientation:I

    if-nez v6, :cond_5

    .line 79
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 80
    .local v3, resConfig:Landroid/content/res/Configuration;
    if-eqz v3, :cond_1

    .line 81
    iget v6, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v4, :cond_4

    move v1, v4

    .line 87
    .end local v3           #resConfig:Landroid/content/res/Configuration;
    :cond_1
    :goto_0
    iget-boolean v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mOrientatinPortrait:Z

    if-eq v4, v1, :cond_2

    .line 88
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 89
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->end()V

    .line 92
    :cond_2
    iput-boolean v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mOrientatinPortrait:Z

    .line 96
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v6, 0x0

    sget-object v7, Lcom/android/internal/R$styleable;->ActionBar:[I

    const v8, 0x10102ce

    invoke-virtual {v4, v6, v7, v8, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 98
    .local v0, a:Landroid/content/res/TypedArray;
    iget v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mCustomHeight:I

    if-lez v4, :cond_7

    .line 99
    iget v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mCustomHeight:I

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/AbsActionBarView;->setContentHeight(I)V

    .line 103
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 104
    iget-boolean v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitWhenNarrow:Z

    if-eqz v4, :cond_8

    .line 105
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1110006

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/AbsActionBarView;->setSplitActionBar(Z)V

    .line 114
    :goto_2
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v4, :cond_3

    .line 115
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v4, p1}, Lcom/android/internal/view/menu/ActionMenuPresenter;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 118
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->updateBackButton()V

    .line 120
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 121
    .local v2, res:Landroid/content/res/Resources;
    iget-boolean v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mOrientatinPortrait:Z

    if-eqz v4, :cond_9

    const v4, 0x105016a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    :goto_3
    iput v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mMaxTitleWidth:I

    .line 124
    return-void

    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v2           #res:Landroid/content/res/Resources;
    .restart local v3       #resConfig:Landroid/content/res/Configuration;
    :cond_4
    move v1, v5

    .line 81
    goto :goto_0

    .line 84
    .end local v3           #resConfig:Landroid/content/res/Configuration;
    :cond_5
    iget v6, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v4, :cond_6

    move v1, v4

    :goto_4
    goto :goto_0

    :cond_6
    move v1, v5

    goto :goto_4

    .line 101
    .restart local v0       #a:Landroid/content/res/TypedArray;
    :cond_7
    const/4 v4, 0x4

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/AbsActionBarView;->setContentHeight(I)V

    goto :goto_1

    .line 112
    :cond_8
    iget-boolean v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitActionBar:Z

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/AbsActionBarView;->setSplitActionBar(Z)V

    goto :goto_2

    .line 121
    .restart local v2       #res:Landroid/content/res/Resources;
    :cond_9
    const v4, 0x105016b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto :goto_3
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 431
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 432
    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->updateBackButton()V

    .line 433
    return-void
.end method

.method public onSmartBarConfigurationChanged()V
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuView;->onSmartBarConfigurationChanged()V

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_1

    .line 499
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->onSmartBarConfigurationChanged()V

    .line 501
    :cond_1
    return-void
.end method

.method protected positionChild(Landroid/view/View;IIIZ)I
    .locals 5
    .parameter "child"
    .parameter "x"
    .parameter "y"
    .parameter "contentHeight"
    .parameter "reverse"

    .prologue
    .line 298
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 299
    .local v2, childWidth:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 300
    .local v0, childHeight:I
    sub-int v3, p4, v0

    div-int/lit8 v3, v3, 0x2

    add-int v1, p3, v3

    .line 302
    .local v1, childTop:I
    if-eqz p5, :cond_1

    .line 303
    sub-int v3, p2, v2

    add-int v4, v1, v0

    invoke-virtual {p1, v3, v1, p2, v4}, Landroid/view/View;->layout(IIII)V

    .line 308
    :goto_0
    if-eqz p5, :cond_0

    neg-int v2, v2

    .end local v2           #childWidth:I
    :cond_0
    return v2

    .line 305
    .restart local v2       #childWidth:I
    :cond_1
    add-int v3, p2, v2

    add-int v4, v1, v0

    invoke-virtual {p1, p2, v1, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method public postShowOverflowMenu()V
    .locals 1

    .prologue
    .line 251
    new-instance v0, Lcom/android/internal/widget/AbsActionBarView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/AbsActionBarView$1;-><init>(Lcom/android/internal/widget/AbsActionBarView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 256
    return-void
.end method

.method public setActionModeHeaderHidden(Z)V
    .locals 0
    .parameter "hidden"

    .prologue
    .line 377
    iput-boolean p1, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionModeHeaderHidden:Z

    .line 378
    return-void
.end method

.method public setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "backIcon"

    .prologue
    .line 480
    if-eqz p1, :cond_1

    .line 481
    iput-object p1, p0, Lcom/android/internal/widget/AbsActionBarView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    .line 483
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/KeyBackButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_1

    .line 488
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 491
    :cond_1
    return-void
.end method

.method public setContentHeight(I)V
    .locals 2
    .parameter "height"

    .prologue
    .line 143
    iput p1, p0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    .line 144
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    iget v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->setMaxItemHeight(I)V

    .line 147
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 148
    return-void
.end method

.method public setEnableDockActionBar(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 421
    iput-boolean p1, p0, Lcom/android/internal/widget/AbsActionBarView;->mNeedDockActionBar:Z

    .line 422
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 468
    iput p1, p0, Lcom/android/internal/widget/AbsActionBarView;->mCustomHeight:I

    .line 469
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/AbsActionBarView;->setContentHeight(I)V

    .line 470
    return-void
.end method

.method public setInActionMode(Z)V
    .locals 0
    .parameter "inActionMode"

    .prologue
    .line 397
    iput-boolean p1, p0, Lcom/android/internal/widget/AbsActionBarView;->mInActionMode:Z

    .line 398
    return-void
.end method

.method public setOverlay(Z)V
    .locals 0
    .parameter "overlay"

    .prologue
    .line 406
    iput-boolean p1, p0, Lcom/android/internal/widget/AbsActionBarView;->mIsOverlay:Z

    .line 407
    return-void
.end method

.method public setSplitActionBar(Z)V
    .locals 0
    .parameter "split"

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitActionBar:Z

    .line 132
    return-void
.end method

.method public setSplitView(Lcom/android/internal/widget/ActionBarContainer;)V
    .locals 0
    .parameter "splitView"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    .line 156
    return-void
.end method

.method public setSplitWhenNarrow(Z)V
    .locals 0
    .parameter "splitWhenNarrow"

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitWhenNarrow:Z

    .line 140
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 232
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 239
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 241
    :cond_1
    return-void
.end method

.method public setVisibilityAnimationListener(Landroid/app/ActionBar$VisibilityAnimationListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 385
    iput-object p1, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisiblilityAnimationListener:Landroid/app/ActionBar$VisibilityAnimationListener;

    .line 386
    return-void
.end method

.method public showOverflowMenu()Z
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    .line 247
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateBackButton()V
    .locals 4

    .prologue
    .line 437
    sget-object v1, Landroid/os/Build;->HAS_PERMANENTKEY:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 461
    :cond_0
    :goto_0
    return-void

    .line 442
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mOrientatinPortrait:Z

    if-eqz v1, :cond_2

    .line 443
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    if-eqz v1, :cond_0

    .line 444
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 447
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    if-nez v1, :cond_4

    .line 448
    new-instance v1, Lcom/android/internal/view/menu/KeyBackButton;

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/view/menu/KeyBackButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    .line 449
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/KeyBackButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 450
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050176

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 458
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 459
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 453
    :cond_4
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 454
    .local v0, parent:Landroid/view/ViewGroup;
    if-eqz v0, :cond_3

    .line 455
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1
.end method
