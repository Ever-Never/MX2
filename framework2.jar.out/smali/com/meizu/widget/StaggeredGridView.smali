.class public Lcom/meizu/widget/StaggeredGridView;
.super Landroid/view/ViewGroup;
.source "StaggeredGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/widget/StaggeredGridView$PositionScroller;,
        Lcom/meizu/widget/StaggeredGridView$OnItemLongClickListener;,
        Lcom/meizu/widget/StaggeredGridView$OnItemClickListener;,
        Lcom/meizu/widget/StaggeredGridView$AdapterContextMenuInfo;,
        Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;,
        Lcom/meizu/widget/StaggeredGridView$DragShadowItem;,
        Lcom/meizu/widget/StaggeredGridView$DragItemFilter;,
        Lcom/meizu/widget/StaggeredGridView$PerformClick;,
        Lcom/meizu/widget/StaggeredGridView$CheckForLongPress;,
        Lcom/meizu/widget/StaggeredGridView$CheckForTap;,
        Lcom/meizu/widget/StaggeredGridView$SelectionBoundsAdjuster;,
        Lcom/meizu/widget/StaggeredGridView$WindowRunnnable;,
        Lcom/meizu/widget/StaggeredGridView$SavedState;,
        Lcom/meizu/widget/StaggeredGridView$ColMap;,
        Lcom/meizu/widget/StaggeredGridView$ViewRectPair;,
        Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;,
        Lcom/meizu/widget/StaggeredGridView$RecycleBin;,
        Lcom/meizu/widget/StaggeredGridView$LayoutParams;,
        Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper;,
        Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeListener;,
        Lcom/meizu/widget/StaggeredGridView$OnItemDragSwapListener;,
        Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;,
        Lcom/meizu/widget/StaggeredGridView$LayoutRecord;
    }
.end annotation


# static fields
.field public static final ACTION_TYPE_NORMAL:I = 0x0

.field public static final ACTION_TYPE_WARNING:I = 0x1

.field private static final ANIM_DISMISS:I = 0x1

.field private static final ANIM_END:I = 0x0

.field private static final ANIM_IDLE:I = -0x1

.field private static final CHECK_POSITION_SEARCH_DISTANCE:I = 0x14

.field public static final CHOICE_MODE_MULTIPLE_MODAL_MZ:I = 0x4

.field public static final CHOICE_MODE_NONE:I = 0x0

.field private static final COLUMN_COUNT_AUTO:I = -0x1

.field private static final DEBUG:Z = false

.field private static final INVALID_POSITION:I = -0x1

.field private static final TAG:Ljava/lang/String; = "StaggeredGridView"

.field private static final TOUCH_MODE_DONE_WAITING:I = 0x5

.field private static final TOUCH_MODE_DOWN:I = 0x3

.field private static final TOUCH_MODE_DRAGGING:I = 0x1

.field private static final TOUCH_MODE_FLINGING:I = 0x2

.field private static final TOUCH_MODE_IDLE:I = 0x0

.field static final TOUCH_MODE_OVERSCROLL:I = 0x7

.field private static final TOUCH_MODE_REST:I = 0x6

.field private static final TOUCH_MODE_TAP:I = 0x4

.field static final sLinearInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mActionItemListener:Landroid/view/ActionMode$OnActionItemDragListener;

.field private mActivePointerId:I

.field private mAdapter:Landroid/widget/ListAdapter;

.field private mBeginClick:Z

.field private mChangeChildAlphaWhenDragView:Z

.field mCheckStates:Landroid/util/SparseBooleanArray;

.field mCheckedIdStates:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mCheckedItemCount:I

.field private final mChildRectsForAnimation:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/meizu/widget/StaggeredGridView$ViewRectPair;",
            ">;"
        }
    .end annotation
.end field

.field mChoiceActionMode:Landroid/view/ActionMode;

.field mChoiceMode:I

.field private mColCount:I

.field private mColCountSetting:I

.field private mColMappings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mColWidth:I

.field private mContext:Landroid/content/Context;

.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mCurrentOverScrollDistance:I

.field private mDataChanged:Z

.field mDelayUpdate:Ljava/lang/Runnable;

.field private mDeleteItemId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mDeleteViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected mDragAndDropPosition:I

.field private mDragOffsetX:I

.field private mDragOffsetY:I

.field private mDragScrollY:I

.field private mDragViewBackground:I

.field private mDragViewBackgroundDelete:I

.field private mDragViewBackgroundFilter:I

.field private mDrawSelectorOnTop:Z

.field private mEnableAnimation:Z

.field private mEnableTopShadow:Z

.field private mFadeOutViewAnimatorSet:Landroid/animation/AnimatorSet;

.field private mFadeOuting:Z

.field private mFastChildLayout:Z

.field private mFirstAdapterId:J

.field private mFirstPosition:I

.field private mFlingVelocity:I

.field private mHasStableIds:Z

.field private mInLayout:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsChildViewEnabled:Z

.field private mItemBottoms:[I

.field private mItemCount:I

.field private mItemDragListener:Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;

.field private mItemMargin:I

.field private mItemTops:[I

.field private mLastOverScrollX:I

.field private mLastTouchX:F

.field private mLastTouchY:F

.field private mLayoutAnim:Z

.field private final mLayoutRecords:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/meizu/widget/StaggeredGridView$LayoutRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxOverScrollDistance:I

.field private mMaximumVelocity:I

.field private mMinColWidth:I

.field private mMotionPosition:I

.field mMotionX:I

.field mMotionY:I

.field private mMoveBy:I

.field mMultiChoiceModeCallback:Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper;

.field private mNumCols:I

.field private final mObserver:Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;

.field mOnItemClickListener:Lcom/meizu/widget/StaggeredGridView$OnItemClickListener;

.field mOnItemLongClickListener:Lcom/meizu/widget/StaggeredGridView$OnItemLongClickListener;

.field private mPendingCheckForLongPress:Lcom/meizu/widget/StaggeredGridView$CheckForLongPress;

.field private mPendingCheckForTap:Ljava/lang/Runnable;

.field private mPerformClick:Lcom/meizu/widget/StaggeredGridView$PerformClick;

.field private mPopulating:Z

.field mPositionScrollAfterLayout:Ljava/lang/Runnable;

.field mPositionScroller:Lcom/meizu/widget/StaggeredGridView$PositionScroller;

.field private final mRecycler:Lcom/meizu/widget/StaggeredGridView$RecycleBin;

.field private mRestoreOffsets:[I

.field private final mScroller:Landroid/widget/OverScroller;

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field mSelector:Landroid/graphics/drawable/Drawable;

.field mSelectorPosition:I

.field mSelectorRect:Landroid/graphics/Rect;

.field private mShadowBuilder:Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;

.field private mSpecificTop:I

.field private mSync:Z

.field private mSyncPosition:I

.field private mTopShadowLight:Landroid/graphics/drawable/Drawable;

.field private mTouchFrame:Landroid/graphics/Rect;

.field private mTouchMode:I

.field private mTouchModeReset:Ljava/lang/Runnable;

.field private mTouchRemainderY:F

.field private mTouchSlop:I

.field private mUpdateAnimatorSet:Landroid/animation/AnimatorSet;

.field private mUpdateing:Z

.field private final mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 397
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/meizu/widget/StaggeredGridView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 463
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/meizu/widget/StaggeredGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 465
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 466
    sget-object v1, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 467
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Landroid/view/View;->initializeScrollbars(Landroid/content/res/TypedArray;)V

    .line 468
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 469
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 472
    const v0, 0x103031e

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/widget/StaggeredGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 473
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 476
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 180
    iput-boolean v6, p0, Lcom/meizu/widget/StaggeredGridView;->mDrawSelectorOnTop:Z

    .line 185
    iput-boolean v7, p0, Lcom/meizu/widget/StaggeredGridView;->mEnableAnimation:Z

    .line 190
    iput-boolean v6, p0, Lcom/meizu/widget/StaggeredGridView;->mSync:Z

    .line 193
    iput-boolean v6, p0, Lcom/meizu/widget/StaggeredGridView;->mFadeOuting:Z

    .line 195
    iput-boolean v6, p0, Lcom/meizu/widget/StaggeredGridView;->mUpdateing:Z

    .line 197
    iput-boolean v6, p0, Lcom/meizu/widget/StaggeredGridView;->mLayoutAnim:Z

    .line 199
    iput v8, p0, Lcom/meizu/widget/StaggeredGridView;->mColCountSetting:I

    .line 200
    iput v8, p0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    .line 202
    iput v6, p0, Lcom/meizu/widget/StaggeredGridView;->mDragScrollY:I

    .line 203
    iput v4, p0, Lcom/meizu/widget/StaggeredGridView;->mDragAndDropPosition:I

    .line 204
    iput v6, p0, Lcom/meizu/widget/StaggeredGridView;->mDragOffsetX:I

    .line 205
    iput v6, p0, Lcom/meizu/widget/StaggeredGridView;->mDragOffsetY:I

    .line 210
    iput v6, p0, Lcom/meizu/widget/StaggeredGridView;->mMinColWidth:I

    .line 221
    iput v6, p0, Lcom/meizu/widget/StaggeredGridView;->mSelectionLeftPadding:I

    .line 226
    iput v6, p0, Lcom/meizu/widget/StaggeredGridView;->mSelectionTopPadding:I

    .line 231
    iput v6, p0, Lcom/meizu/widget/StaggeredGridView;->mSelectionRightPadding:I

    .line 236
    iput v6, p0, Lcom/meizu/widget/StaggeredGridView;->mSelectionBottomPadding:I

    .line 240
    iput v4, p0, Lcom/meizu/widget/StaggeredGridView;->mSelectorPosition:I

    .line 241
    iput v4, p0, Lcom/meizu/widget/StaggeredGridView;->mSyncPosition:I

    .line 254
    iput v6, p0, Lcom/meizu/widget/StaggeredGridView;->mChoiceMode:I

    .line 259
    const v4, 0x1080649

    iput v4, p0, Lcom/meizu/widget/StaggeredGridView;->mDragViewBackground:I

    .line 261
    const v4, 0x1080648

    iput v4, p0, Lcom/meizu/widget/StaggeredGridView;->mDragViewBackgroundFilter:I

    .line 263
    const v4, 0x1080647

    iput v4, p0, Lcom/meizu/widget/StaggeredGridView;->mDragViewBackgroundDelete:I

    .line 271
    iput v6, p0, Lcom/meizu/widget/StaggeredGridView;->mLastOverScrollX:I

    .line 285
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/widget/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 287
    new-instance v4, Lcom/meizu/widget/StaggeredGridView$RecycleBin;

    invoke-direct {v4, p0, v5}, Lcom/meizu/widget/StaggeredGridView$RecycleBin;-><init>(Lcom/meizu/widget/StaggeredGridView;Lcom/meizu/widget/StaggeredGridView$1;)V

    iput-object v4, p0, Lcom/meizu/widget/StaggeredGridView;->mRecycler:Lcom/meizu/widget/StaggeredGridView$RecycleBin;

    .line 289
    new-instance v4, Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;

    invoke-direct {v4, p0, v5}, Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;-><init>(Lcom/meizu/widget/StaggeredGridView;Lcom/meizu/widget/StaggeredGridView$1;)V

    iput-object v4, p0, Lcom/meizu/widget/StaggeredGridView;->mObserver:Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;

    .line 295
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/meizu/widget/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    .line 303
    iput-object v5, p0, Lcom/meizu/widget/StaggeredGridView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 313
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/meizu/widget/StaggeredGridView;->mSelectorRect:Landroid/graphics/Rect;

    .line 342
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Lcom/meizu/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    .line 370
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/meizu/widget/StaggeredGridView;->mChildRectsForAnimation:Ljava/util/Map;

    .line 371
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/meizu/widget/StaggeredGridView;->mDeleteViews:Ljava/util/ArrayList;

    .line 374
    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v4, p0, Lcom/meizu/widget/StaggeredGridView;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 381
    iput-boolean v6, p0, Lcom/meizu/widget/StaggeredGridView;->mEnableTopShadow:Z

    .line 400
    iput-boolean v6, p0, Lcom/meizu/widget/StaggeredGridView;->mChangeChildAlphaWhenDragView:Z

    .line 3965
    new-instance v4, Lcom/meizu/widget/StaggeredGridView$8;

    invoke-direct {v4, p0}, Lcom/meizu/widget/StaggeredGridView$8;-><init>(Lcom/meizu/widget/StaggeredGridView;)V

    iput-object v4, p0, Lcom/meizu/widget/StaggeredGridView;->mDelayUpdate:Ljava/lang/Runnable;

    .line 477
    iput-object p1, p0, Lcom/meizu/widget/StaggeredGridView;->mContext:Landroid/content/Context;

    .line 478
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/android/internal/R$styleable;->StaggeredGridView:[I

    invoke-virtual {v4, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 479
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    .line 480
    invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/meizu/widget/StaggeredGridView;->mDrawSelectorOnTop:Z

    .line 481
    const/4 v4, 0x3

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/meizu/widget/StaggeredGridView;->mItemMargin:I

    .line 483
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 484
    .local v2, d:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 485
    invoke-virtual {p0, v2}, Lcom/meizu/widget/StaggeredGridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 488
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 490
    iput v6, p0, Lcom/meizu/widget/StaggeredGridView;->mChoiceMode:I

    .line 491
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    .line 492
    .local v3, vc:Landroid/view/ViewConfiguration;
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    iput v4, p0, Lcom/meizu/widget/StaggeredGridView;->mTouchSlop:I

    .line 493
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v4

    iput v4, p0, Lcom/meizu/widget/StaggeredGridView;->mMaximumVelocity:I

    .line 494
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v4

    iput v4, p0, Lcom/meizu/widget/StaggeredGridView;->mFlingVelocity:I

    .line 495
    new-instance v4, Landroid/widget/OverScroller;

    invoke-direct {v4, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/meizu/widget/StaggeredGridView;->mScroller:Landroid/widget/OverScroller;

    .line 496
    iget-object v4, p0, Lcom/meizu/widget/StaggeredGridView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v4, v7, v7}, Landroid/widget/OverScroller;->setEnableMZOverScroll(ZZ)V

    .line 497
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x105014f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/meizu/widget/StaggeredGridView;->mMaxOverScrollDistance:I

    .line 502
    invoke-virtual {p0, v6}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 503
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 504
    invoke-virtual {p0, v6}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 506
    iget-object v4, p0, Lcom/meizu/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_1

    .line 507
    invoke-direct {p0}, Lcom/meizu/widget/StaggeredGridView;->useDefaultSelector()V

    .line 511
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->isThemeLight()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 512
    iput-boolean v7, p0, Lcom/meizu/widget/StaggeredGridView;->mEnableTopShadow:Z

    .line 513
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10807b1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/widget/StaggeredGridView;->mTopShadowLight:Landroid/graphics/drawable/Drawable;

    .line 517
    :cond_2
    const v4, 0x10a0082

    invoke-static {p1, v4}, Landroid/view/animation/AnimationUtils;->loadLayoutAnimation(Landroid/content/Context;I)Landroid/view/animation/LayoutAnimationController;

    move-result-object v1

    .line 518
    .local v1, controller:Landroid/view/animation/LayoutAnimationController;
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 519
    iput-boolean v7, p0, Lcom/meizu/widget/StaggeredGridView;->mLayoutAnim:Z

    .line 520
    new-instance v4, Lcom/meizu/widget/StaggeredGridView$1;

    invoke-direct {v4, p0}, Lcom/meizu/widget/StaggeredGridView$1;-><init>(Lcom/meizu/widget/StaggeredGridView;)V

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setLayoutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 535
    return-void
.end method

.method static synthetic access$1000(Lcom/meizu/widget/StaggeredGridView;)Lcom/meizu/widget/StaggeredGridView$RecycleBin;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mRecycler:Lcom/meizu/widget/StaggeredGridView$RecycleBin;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/meizu/widget/StaggeredGridView;)Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mItemDragListener:Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/meizu/widget/StaggeredGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    return v0
.end method

.method static synthetic access$1202(Lcom/meizu/widget/StaggeredGridView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput p1, p0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    return p1
.end method

.method static synthetic access$1300(Lcom/meizu/widget/StaggeredGridView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/meizu/widget/StaggeredGridView;->mChangeChildAlphaWhenDragView:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/meizu/widget/StaggeredGridView;)Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mShadowBuilder:Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/meizu/widget/StaggeredGridView;)Landroid/view/Surface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Landroid/view/View;->mDragSurface:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/meizu/widget/StaggeredGridView;)Landroid/view/Surface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Landroid/view/View;->mDragSurface:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/meizu/widget/StaggeredGridView;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-object p1, p0, Landroid/view/View;->mDragSurface:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/meizu/widget/StaggeredGridView;)Landroid/view/Surface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Landroid/view/View;->mDragSurface:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/meizu/widget/StaggeredGridView;)Landroid/view/Surface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Landroid/view/View;->mDragSurface:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/meizu/widget/StaggeredGridView;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-object p1, p0, Landroid/view/View;->mDragSurface:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic access$202(Lcom/meizu/widget/StaggeredGridView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/meizu/widget/StaggeredGridView;->mLayoutAnim:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/meizu/widget/StaggeredGridView;)Landroid/view/ActionMode$OnActionItemDragListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mActionItemListener:Landroid/view/ActionMode$OnActionItemDragListener;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/meizu/widget/StaggeredGridView;Landroid/view/ActionMode$OnActionItemDragListener;)Landroid/view/ActionMode$OnActionItemDragListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/meizu/widget/StaggeredGridView;->mActionItemListener:Landroid/view/ActionMode$OnActionItemDragListener;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/meizu/widget/StaggeredGridView;Landroid/view/DragEvent;Landroid/view/MenuItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Lcom/meizu/widget/StaggeredGridView;->doActionItemDrag(Landroid/view/DragEvent;Landroid/view/MenuItem;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/meizu/widget/StaggeredGridView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/meizu/widget/StaggeredGridView;->clearChoices()V

    return-void
.end method

.method static synthetic access$2500(Lcom/meizu/widget/StaggeredGridView;)Landroid/widget/OverScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mScroller:Landroid/widget/OverScroller;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/meizu/widget/StaggeredGridView;)Landroid/view/VelocityTracker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/meizu/widget/StaggeredGridView;)Landroid/animation/AnimatorSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mFadeOutViewAnimatorSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/meizu/widget/StaggeredGridView;)Landroid/animation/AnimatorSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mUpdateAnimatorSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/meizu/widget/StaggeredGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Lcom/meizu/widget/StaggeredGridView;->mItemCount:I

    return v0
.end method

.method static synthetic access$2902(Lcom/meizu/widget/StaggeredGridView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput p1, p0, Lcom/meizu/widget/StaggeredGridView;->mItemCount:I

    return p1
.end method

.method static synthetic access$3000(Lcom/meizu/widget/StaggeredGridView;)Landroid/widget/ListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/meizu/widget/StaggeredGridView;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mChildRectsForAnimation:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/meizu/widget/StaggeredGridView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mDeleteItemId:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/meizu/widget/StaggeredGridView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/meizu/widget/StaggeredGridView;->mSync:Z

    return v0
.end method

.method static synthetic access$3302(Lcom/meizu/widget/StaggeredGridView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/meizu/widget/StaggeredGridView;->mSync:Z

    return p1
.end method

.method static synthetic access$3402(Lcom/meizu/widget/StaggeredGridView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput p1, p0, Lcom/meizu/widget/StaggeredGridView;->mSyncPosition:I

    return p1
.end method

.method static synthetic access$3502(Lcom/meizu/widget/StaggeredGridView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput p1, p0, Lcom/meizu/widget/StaggeredGridView;->mSpecificTop:I

    return p1
.end method

.method static synthetic access$3600(Lcom/meizu/widget/StaggeredGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Lcom/meizu/widget/StaggeredGridView;->mItemMargin:I

    return v0
.end method

.method static synthetic access$3700(Lcom/meizu/widget/StaggeredGridView;)Landroid/util/SparseArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/meizu/widget/StaggeredGridView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/meizu/widget/StaggeredGridView;->recycleAllViews()V

    return-void
.end method

.method static synthetic access$3900(Lcom/meizu/widget/StaggeredGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/meizu/widget/StaggeredGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I

    return v0
.end method

.method static synthetic access$4000(Lcom/meizu/widget/StaggeredGridView;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mItemBottoms:[I

    return-object v0
.end method

.method static synthetic access$402(Lcom/meizu/widget/StaggeredGridView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput p1, p0, Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I

    return p1
.end method

.method static synthetic access$4100(Lcom/meizu/widget/StaggeredGridView;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I

    return-object v0
.end method

.method static synthetic access$4200(Lcom/meizu/widget/StaggeredGridView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 106
    iget-wide v0, p0, Lcom/meizu/widget/StaggeredGridView;->mFirstAdapterId:J

    return-wide v0
.end method

.method static synthetic access$4300(Lcom/meizu/widget/StaggeredGridView;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mRestoreOffsets:[I

    return-object v0
.end method

.method static synthetic access$4302(Lcom/meizu/widget/StaggeredGridView;[I)[I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/meizu/widget/StaggeredGridView;->mRestoreOffsets:[I

    return-object p1
.end method

.method static synthetic access$4600(Lcom/meizu/widget/StaggeredGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    invoke-virtual {p0}, Landroid/view/View;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Lcom/meizu/widget/StaggeredGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    invoke-virtual {p0}, Landroid/view/View;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$4800(Lcom/meizu/widget/StaggeredGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Lcom/meizu/widget/StaggeredGridView;->mMotionPosition:I

    return v0
.end method

.method static synthetic access$4900(Lcom/meizu/widget/StaggeredGridView;)Lcom/meizu/widget/StaggeredGridView$CheckForLongPress;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mPendingCheckForLongPress:Lcom/meizu/widget/StaggeredGridView$CheckForLongPress;

    return-object v0
.end method

.method static synthetic access$4902(Lcom/meizu/widget/StaggeredGridView;Lcom/meizu/widget/StaggeredGridView$CheckForLongPress;)Lcom/meizu/widget/StaggeredGridView$CheckForLongPress;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/meizu/widget/StaggeredGridView;->mPendingCheckForLongPress:Lcom/meizu/widget/StaggeredGridView$CheckForLongPress;

    return-object p1
.end method

.method static synthetic access$500(Lcom/meizu/widget/StaggeredGridView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/meizu/widget/StaggeredGridView;->mDataChanged:Z

    return v0
.end method

.method static synthetic access$502(Lcom/meizu/widget/StaggeredGridView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/meizu/widget/StaggeredGridView;->mDataChanged:Z

    return p1
.end method

.method static synthetic access$5200(Lcom/meizu/widget/StaggeredGridView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/meizu/widget/StaggeredGridView;->updateDrag()V

    return-void
.end method

.method static synthetic access$5300(Lcom/meizu/widget/StaggeredGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Lcom/meizu/widget/StaggeredGridView;->mDragViewBackground:I

    return v0
.end method

.method static synthetic access$5400(Lcom/meizu/widget/StaggeredGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Lcom/meizu/widget/StaggeredGridView;->mDragViewBackgroundFilter:I

    return v0
.end method

.method static synthetic access$5500(Lcom/meizu/widget/StaggeredGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Lcom/meizu/widget/StaggeredGridView;->mDragViewBackgroundDelete:I

    return v0
.end method

.method static synthetic access$5600(Lcom/meizu/widget/StaggeredGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Lcom/meizu/widget/StaggeredGridView;->mDragScrollY:I

    return v0
.end method

.method static synthetic access$5602(Lcom/meizu/widget/StaggeredGridView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput p1, p0, Lcom/meizu/widget/StaggeredGridView;->mDragScrollY:I

    return p1
.end method

.method static synthetic access$5700(Lcom/meizu/widget/StaggeredGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Lcom/meizu/widget/StaggeredGridView;->mDragOffsetX:I

    return v0
.end method

.method static synthetic access$5800(Lcom/meizu/widget/StaggeredGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Lcom/meizu/widget/StaggeredGridView;->mDragOffsetY:I

    return v0
.end method

.method static synthetic access$5900(Lcom/meizu/widget/StaggeredGridView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$702(Lcom/meizu/widget/StaggeredGridView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/meizu/widget/StaggeredGridView;->mUpdateing:Z

    return p1
.end method

.method static synthetic access$802(Lcom/meizu/widget/StaggeredGridView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/meizu/widget/StaggeredGridView;->mFadeOuting:Z

    return p1
.end method

.method static synthetic access$900(Lcom/meizu/widget/StaggeredGridView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/meizu/widget/StaggeredGridView;->mInLayout:Z

    return v0
.end method

.method private clearAllState()V
    .locals 1

    .prologue
    .line 2498
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2499
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2502
    invoke-direct {p0}, Lcom/meizu/widget/StaggeredGridView;->resetStateForGridTop()V

    .line 2505
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mRecycler:Lcom/meizu/widget/StaggeredGridView$RecycleBin;

    invoke-virtual {v0}, Lcom/meizu/widget/StaggeredGridView$RecycleBin;->clear()V

    .line 2507
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 2508
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/widget/StaggeredGridView;->mSelectorPosition:I

    .line 2509
    return-void
.end method

.method private clearChoices()V
    .locals 1

    .prologue
    .line 2716
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 2717
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 2719
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    .line 2720
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 2722
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckedItemCount:I

    .line 2723
    return-void
.end method

.method private final contentFits()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1035
    iget v4, p0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    if-nez v4, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    iget v5, p0, Lcom/meizu/widget/StaggeredGridView;->mItemCount:I

    if-eq v4, v5, :cond_1

    .line 1050
    :cond_0
    :goto_0
    return v3

    .line 1039
    :cond_1
    const v2, 0x7fffffff

    .line 1040
    .local v2, topmost:I
    const/high16 v0, -0x8000

    .line 1041
    .local v0, bottommost:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget v4, p0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    if-ge v1, v4, :cond_4

    .line 1042
    iget-object v4, p0, Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I

    aget v4, v4, v1

    if-ge v4, v2, :cond_2

    .line 1043
    iget-object v4, p0, Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I

    aget v2, v4, v1

    .line 1045
    :cond_2
    iget-object v4, p0, Lcom/meizu/widget/StaggeredGridView;->mItemBottoms:[I

    aget v4, v4, v1

    if-le v4, v0, :cond_3

    .line 1046
    iget-object v4, p0, Lcom/meizu/widget/StaggeredGridView;->mItemBottoms:[I

    aget v0, v4, v1

    .line 1041
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1050
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    if-lt v2, v4, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    if-gt v0, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method private displayMapping()V
    .locals 8

    .prologue
    .line 2139
    const-string v6, "DISPLAY"

    const-string v7, "MAP ****************"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2140
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2141
    .local v5, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 2143
    .local v0, col:I
    iget-object v6, p0, Lcom/meizu/widget/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 2144
    .local v4, map:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "COL"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2145
    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2146
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2147
    .local v1, i:Ljava/lang/Integer;
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2148
    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2150
    .end local v1           #i:Ljava/lang/Integer;
    :cond_0
    const-string v6, "DISPLAY"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2151
    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #sb:Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2152
    .restart local v5       #sb:Ljava/lang/StringBuilder;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2154
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #map:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    const-string v6, "DISPLAY"

    const-string v7, "MAP END ****************"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2155
    return-void
.end method

.method private doActionItemDrag(Landroid/view/DragEvent;Landroid/view/MenuItem;)V
    .locals 7
    .parameter "event"
    .parameter "menuItem"

    .prologue
    const/4 v3, -0x1

    const/4 v6, 0x1

    .line 2915
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mItemDragListener:Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;

    if-nez v2, :cond_1

    .line 2951
    :cond_0
    :goto_0
    return-void

    .line 2918
    :cond_1
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 2936
    :pswitch_1
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mItemDragListener:Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;

    invoke-interface {v2, p2}, Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;->getActionItemType(Landroid/view/MenuItem;)I

    move-result v1

    .line 2937
    .local v1, state:I
    if-ne v1, v6, :cond_2

    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_2

    .line 2938
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2, v6}, Landroid/view/ActionMode;->setDragDismissAnimating(Z)V

    .line 2940
    :cond_2
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mItemDragListener:Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;

    iget v3, p0, Lcom/meizu/widget/StaggeredGridView;->mDragAndDropPosition:I

    iget-object v4, p0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    iget v5, p0, Lcom/meizu/widget/StaggeredGridView;->mDragAndDropPosition:I

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-interface {v2, p2, v3, v4, v5}, Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;->onActionItemDrop(Landroid/view/MenuItem;IJ)V

    .line 2941
    iget v2, p0, Lcom/meizu/widget/StaggeredGridView;->mDragAndDropPosition:I

    iget v3, p0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2942
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2945
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mShadowBuilder:Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mShadowBuilder:Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;

    invoke-virtual {v2}, Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;->getDragingState()I

    move-result v2

    if-ne v2, v6, :cond_0

    .line 2946
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2920
    .end local v0           #child:Landroid/view/View;
    .end local v1           #state:I
    :pswitch_2
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mDelayUpdate:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2921
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mItemDragListener:Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;

    invoke-interface {v2, p2}, Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;->getActionItemType(Landroid/view/MenuItem;)I

    move-result v1

    .line 2922
    .restart local v1       #state:I
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mShadowBuilder:Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;

    invoke-virtual {v2, v1}, Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;->setDragingState(I)V

    .line 2923
    if-ne v1, v6, :cond_4

    .line 2924
    invoke-virtual {p0, v6}, Landroid/view/View;->notifyDragDropAnimType(I)V

    .line 2928
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/meizu/widget/StaggeredGridView;->updateDrag()V

    goto :goto_0

    .line 2925
    :cond_4
    if-nez v1, :cond_3

    .line 2926
    invoke-virtual {p0, v3}, Landroid/view/View;->notifyDragDropAnimType(I)V

    goto :goto_1

    .line 2931
    .end local v1           #state:I
    :pswitch_3
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mShadowBuilder:Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;

    invoke-virtual {v2, v3}, Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;->setDragingState(I)V

    .line 2932
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/View;->notifyDragDropAnimType(I)V

    .line 2933
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mDelayUpdate:Ljava/lang/Runnable;

    const-wide/16 v3, 0x14

    invoke-virtual {p0, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 2918
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 1245
    iget-object v1, p0, Lcom/meizu/widget/StaggeredGridView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/meizu/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1246
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 1247
    .local v0, selector:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/meizu/widget/StaggeredGridView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1248
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1250
    .end local v0           #selector:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method private getFadeOutAnimationsForStaleViews()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1560
    iget-object v7, p0, Lcom/meizu/widget/StaggeredGridView;->mDeleteViews:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1561
    .local v5, size:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1563
    .local v3, locaList:Ljava/util/List;,"Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v5, :cond_1

    .line 1564
    iget-object v7, p0, Lcom/meizu/widget/StaggeredGridView;->mDeleteViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 1565
    .local v6, view:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/meizu/widget/StaggeredGridView$LayoutParams;

    .line 1567
    .local v4, lp:Lcom/meizu/widget/StaggeredGridView$LayoutParams;
    iget-boolean v7, p0, Lcom/meizu/widget/StaggeredGridView;->mInLayout:Z

    if-eqz v7, :cond_0

    .line 1568
    const/4 v7, -0x1

    invoke-virtual {p0, v6, v7, v4}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 1573
    :goto_1
    iget-object v7, p0, Lcom/meizu/widget/StaggeredGridView;->mContext:Landroid/content/Context;

    const v8, 0x10a0080

    invoke-static {v7, v8}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet;

    .line 1574
    .local v1, animatorSet:Landroid/animation/AnimatorSet;
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    const v8, 0x3f8ccccd

    invoke-direct {v7, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1575
    invoke-virtual {v1, v6}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 1576
    new-instance v7, Lcom/meizu/widget/StaggeredGridView$5;

    invoke-direct {v7, p0, v6}, Lcom/meizu/widget/StaggeredGridView$5;-><init>(Lcom/meizu/widget/StaggeredGridView;Landroid/view/View;)V

    invoke-virtual {v1, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1593
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1594
    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_0

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1595
    .local v0, alphAnimator:Landroid/animation/ObjectAnimator;
    const-wide/16 v7, 0xc8

    invoke-virtual {v0, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1596
    new-instance v7, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1597
    const-wide/16 v7, 0x32

    invoke-virtual {v0, v7, v8}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1598
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1563
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1570
    .end local v0           #alphAnimator:Landroid/animation/ObjectAnimator;
    .end local v1           #animatorSet:Landroid/animation/AnimatorSet;
    :cond_0
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 1601
    .end local v4           #lp:Lcom/meizu/widget/StaggeredGridView$LayoutParams;
    .end local v6           #view:Landroid/view/View;
    :cond_1
    return-object v3

    .line 1594
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private getFirstChildAtColumn(I)Landroid/view/View;
    .locals 6
    .parameter "column"

    .prologue
    .line 1971
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-le v4, p1, :cond_2

    .line 1972
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget v4, p0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    if-ge v2, v4, :cond_2

    .line 1973
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1974
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 1977
    .local v3, left:I
    if-eqz v0, :cond_1

    .line 1979
    const/4 v1, 0x0

    .line 1982
    .local v1, col:I
    :goto_1
    iget v4, p0, Lcom/meizu/widget/StaggeredGridView;->mColWidth:I

    iget v5, p0, Lcom/meizu/widget/StaggeredGridView;->mItemMargin:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    mul-int/2addr v4, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    if-le v3, v4, :cond_0

    .line 1983
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1986
    :cond_0
    if-ne v1, p1, :cond_1

    .line 1994
    .end local v0           #child:Landroid/view/View;
    .end local v1           #col:I
    .end local v2           #i:I
    .end local v3           #left:I
    :goto_2
    return-object v0

    .line 1972
    .restart local v0       #child:Landroid/view/View;
    .restart local v2       #i:I
    .restart local v3       #left:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1994
    .end local v0           #child:Landroid/view/View;
    .end local v2           #i:I
    .end local v3           #left:I
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 3663
    iget v0, p0, Lcom/meizu/widget/StaggeredGridView;->mSelectorPosition:I

    return v0
.end method

.method private getUpdateDataAnimation()Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mChildRectsForAnimation:Ljava/util/Map;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->size()I

    move-result v10

    .line 1505
    .local v10, size:I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1506
    .local v6, locaList:Ljava/util/List;,"Ljava/util/List<Landroid/animation/Animator;>;"
    if-lez v10, :cond_2

    .line 1507
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 1509
    .local v2, childCount:I
    if-lez v2, :cond_2

    .line 1510
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 1511
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 1512
    .local v14, view:Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    move/from16 v16, v0

    add-int v9, v16, v3

    .line 1513
    .local v9, position:I
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/meizu/widget/StaggeredGridView$LayoutParams;

    .line 1514
    .local v8, params:Lcom/meizu/widget/StaggeredGridView$LayoutParams;
    iget-wide v4, v8, Lcom/meizu/widget/StaggeredGridView$LayoutParams;->id:J

    .line 1515
    .local v4, id:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mChildRectsForAnimation:Ljava/util/Map;

    move-object/from16 v16, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 1516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mChildRectsForAnimation:Ljava/util/Map;

    move-object/from16 v16, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/meizu/widget/StaggeredGridView$ViewRectPair;

    .line 1517
    .local v15, viewRectPair:Lcom/meizu/widget/StaggeredGridView$ViewRectPair;
    iget-object v7, v15, Lcom/meizu/widget/StaggeredGridView$ViewRectPair;->rect:Landroid/graphics/Rect;

    .line 1519
    .local v7, localRect:Landroid/graphics/Rect;
    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v17

    sub-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 1520
    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v17

    sub-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 1522
    sget-object v16, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual {v14}, Landroid/view/View;->getTranslationX()F

    move-result v19

    aput v19, v17, v18

    const/16 v18, 0x1

    const/16 v19, 0x0

    aput v19, v17, v18

    invoke-static/range {v16 .. v17}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v12

    .line 1523
    .local v12, translationXHolder:Landroid/animation/PropertyValuesHolder;
    sget-object v16, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual {v14}, Landroid/view/View;->getTranslationY()F

    move-result v19

    aput v19, v17, v18

    const/16 v18, 0x1

    const/16 v19, 0x0

    aput v19, v17, v18

    invoke-static/range {v16 .. v17}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    .line 1524
    .local v13, translationYHolder:Landroid/animation/PropertyValuesHolder;
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v12, v16, v17

    const/16 v17, 0x1

    aput-object v13, v16, v17

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 1525
    .local v11, translationAnimator:Landroid/animation/ObjectAnimator;
    const-wide/16 v16, 0x15e

    move-wide/from16 v0, v16

    invoke-virtual {v11, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1526
    mul-int/lit8 v16, v3, 0x28

    move/from16 v0, v16

    add-int/lit16 v0, v0, 0x96

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v11, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1528
    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mChildRectsForAnimation:Ljava/util/Map;

    move-object/from16 v16, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1510
    .end local v7           #localRect:Landroid/graphics/Rect;
    .end local v15           #viewRectPair:Lcom/meizu/widget/StaggeredGridView$ViewRectPair;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1532
    .end local v11           #translationAnimator:Landroid/animation/ObjectAnimator;
    .end local v12           #translationXHolder:Landroid/animation/PropertyValuesHolder;
    .end local v13           #translationYHolder:Landroid/animation/PropertyValuesHolder;
    :cond_0
    div-int/lit8 v16, v2, 0x2

    move/from16 v0, v16

    if-ge v3, v0, :cond_1

    .line 1533
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v16

    rsub-int/lit8 v16, v16, 0x0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 1534
    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v16

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v17

    sub-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 1540
    :goto_2
    sget-object v16, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual {v14}, Landroid/view/View;->getTranslationX()F

    move-result v19

    aput v19, v17, v18

    const/16 v18, 0x1

    const/16 v19, 0x0

    aput v19, v17, v18

    invoke-static/range {v16 .. v17}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v12

    .line 1541
    .restart local v12       #translationXHolder:Landroid/animation/PropertyValuesHolder;
    sget-object v16, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual {v14}, Landroid/view/View;->getTranslationY()F

    move-result v19

    aput v19, v17, v18

    const/16 v18, 0x1

    const/16 v19, 0x0

    aput v19, v17, v18

    invoke-static/range {v16 .. v17}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    .line 1542
    .restart local v13       #translationYHolder:Landroid/animation/PropertyValuesHolder;
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v12, v16, v17

    const/16 v17, 0x1

    aput-object v13, v16, v17

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 1543
    .restart local v11       #translationAnimator:Landroid/animation/ObjectAnimator;
    const-wide/16 v16, 0x15e

    move-wide/from16 v0, v16

    invoke-virtual {v11, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1544
    mul-int/lit8 v16, v3, 0x28

    move/from16 v0, v16

    add-int/lit16 v0, v0, 0x96

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v11, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1546
    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1536
    .end local v11           #translationAnimator:Landroid/animation/ObjectAnimator;
    .end local v12           #translationXHolder:Landroid/animation/PropertyValuesHolder;
    .end local v13           #translationYHolder:Landroid/animation/PropertyValuesHolder;
    :cond_1
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v16

    rsub-int/lit8 v16, v16, 0x0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 1537
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v16

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v17

    sub-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_2

    .line 1551
    .end local v2           #childCount:I
    .end local v3           #i:I
    .end local v4           #id:J
    .end local v8           #params:Lcom/meizu/widget/StaggeredGridView$LayoutParams;
    .end local v9           #position:I
    .end local v14           #view:Landroid/view/View;
    :cond_2
    return-object v6
.end method

.method private populate(Z)V
    .locals 6
    .parameter "clearData"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 1344
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/meizu/widget/StaggeredGridView;->mItemCount:I

    if-nez v2, :cond_1

    .line 1447
    :cond_0
    :goto_0
    return-void

    .line 1348
    :cond_1
    iget-boolean v2, p0, Lcom/meizu/widget/StaggeredGridView;->mFadeOuting:Z

    if-nez v2, :cond_0

    .line 1353
    iget v2, p0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    if-ne v2, v5, :cond_2

    .line 1354
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/meizu/widget/StaggeredGridView;->mMinColWidth:I

    div-int v0, v2, v3

    .line 1355
    .local v0, colCount:I
    iget v2, p0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    if-eq v0, v2, :cond_2

    .line 1356
    iput v0, p0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    .line 1360
    .end local v0           #colCount:I
    :cond_2
    iget v0, p0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    .line 1363
    .restart local v0       #colCount:I
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    if-eq v2, v3, :cond_3

    .line 1364
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1365
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget v2, p0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    if-ge v1, v2, :cond_3

    .line 1366
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1365
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1370
    .end local v1           #i:I
    :cond_3
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I

    array-length v2, v2

    if-eq v2, v0, :cond_5

    .line 1371
    :cond_4
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I

    .line 1372
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mItemBottoms:[I

    .line 1374
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 1375
    iget-boolean v2, p0, Lcom/meizu/widget/StaggeredGridView;->mInLayout:Z

    if-eqz v2, :cond_9

    .line 1376
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 1382
    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mRestoreOffsets:[I

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mRestoreOffsets:[I

    array-length v2, v2

    if-ne v2, v0, :cond_6

    .line 1383
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mRestoreOffsets:[I

    iput-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I

    .line 1386
    :cond_6
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/meizu/widget/StaggeredGridView;->mPopulating:Z

    .line 1388
    iget-boolean v2, p0, Lcom/meizu/widget/StaggeredGridView;->mDataChanged:Z

    invoke-virtual {p0, v2}, Lcom/meizu/widget/StaggeredGridView;->layoutChildren(Z)V

    .line 1389
    iget v2, p0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v2, v4}, Lcom/meizu/widget/StaggeredGridView;->fillDown(II)I

    .line 1390
    iget v2, p0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2, v4}, Lcom/meizu/widget/StaggeredGridView;->fillUp(II)I

    .line 1392
    iput-boolean v4, p0, Lcom/meizu/widget/StaggeredGridView;->mPopulating:Z

    .line 1393
    iput-boolean v4, p0, Lcom/meizu/widget/StaggeredGridView;->mDataChanged:Z

    .line 1397
    iget-boolean v2, p0, Lcom/meizu/widget/StaggeredGridView;->mSync:Z

    if-eqz v2, :cond_8

    .line 1398
    iget v2, p0, Lcom/meizu/widget/StaggeredGridView;->mSyncPosition:I

    iget v3, p0, Lcom/meizu/widget/StaggeredGridView;->mSpecificTop:I

    invoke-virtual {p0, v2, v3}, Lcom/meizu/widget/StaggeredGridView;->setPositionAndTop(II)V

    .line 1400
    iget v2, p0, Lcom/meizu/widget/StaggeredGridView;->mChoiceMode:I

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/meizu/widget/StaggeredGridView;->mEnableAnimation:Z

    if-eqz v2, :cond_7

    .line 1401
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mUpdateAnimatorSet:Landroid/animation/AnimatorSet;

    .line 1402
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mUpdateAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Lcom/meizu/widget/StaggeredGridView;->getUpdateDataAnimation()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1404
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mUpdateAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/meizu/widget/StaggeredGridView$3;

    invoke-direct {v3, p0}, Lcom/meizu/widget/StaggeredGridView$3;-><init>(Lcom/meizu/widget/StaggeredGridView;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1417
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mFadeOutViewAnimatorSet:Landroid/animation/AnimatorSet;

    .line 1418
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mFadeOutViewAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Lcom/meizu/widget/StaggeredGridView;->getFadeOutAnimationsForStaleViews()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1419
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mFadeOutViewAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/meizu/widget/StaggeredGridView$4;

    invoke-direct {v3, p0}, Lcom/meizu/widget/StaggeredGridView$4;-><init>(Lcom/meizu/widget/StaggeredGridView;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1433
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mFadeOutViewAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 1434
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mUpdateAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 1438
    :cond_7
    iput-boolean v4, p0, Lcom/meizu/widget/StaggeredGridView;->mSync:Z

    .line 1439
    iput v5, p0, Lcom/meizu/widget/StaggeredGridView;->mSyncPosition:I

    .line 1442
    :cond_8
    if-eqz p1, :cond_0

    .line 1443
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mRestoreOffsets:[I

    if-eqz v2, :cond_0

    .line 1445
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mRestoreOffsets:[I

    goto/16 :goto_0

    .line 1378
    :cond_9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    goto/16 :goto_2
.end method

.method private positionSelector(IIII)V
    .locals 5
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 3702
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mSelectorRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/meizu/widget/StaggeredGridView;->mSelectionLeftPadding:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/meizu/widget/StaggeredGridView;->mSelectionTopPadding:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/meizu/widget/StaggeredGridView;->mSelectionRightPadding:I

    add-int/2addr v3, p3

    iget v4, p0, Lcom/meizu/widget/StaggeredGridView;->mSelectionBottomPadding:I

    add-int/2addr v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 3704
    return-void
.end method

.method private recycleAllViews()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f80

    .line 1054
    iget-object v4, p0, Lcom/meizu/widget/StaggeredGridView;->mDeleteViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1056
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 1057
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1058
    .local v3, view:Landroid/view/View;
    invoke-virtual {v3, v5}, Landroid/view/View;->setAlpha(F)V

    .line 1059
    instance-of v4, v3, Lcom/meizu/widget/StaggeredGridView$DragShadowItem;

    if-eqz v4, :cond_0

    move-object v4, v3

    .line 1060
    check-cast v4, Lcom/meizu/widget/StaggeredGridView$DragShadowItem;

    invoke-interface {v4}, Lcom/meizu/widget/StaggeredGridView$DragShadowItem;->getDragView()Landroid/view/View;

    move-result-object v2

    .line 1061
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2, v5}, Landroid/view/View;->setAlpha(F)V

    .line 1063
    .end local v2           #v:Landroid/view/View;
    :cond_0
    if-lez v1, :cond_1

    iget-object v4, p0, Lcom/meizu/widget/StaggeredGridView;->mDeleteViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1056
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1066
    :cond_1
    iget-object v4, p0, Lcom/meizu/widget/StaggeredGridView;->mRecycler:Lcom/meizu/widget/StaggeredGridView$RecycleBin;

    invoke-virtual {v4, v3}, Lcom/meizu/widget/StaggeredGridView$RecycleBin;->addScrap(Landroid/view/View;)V

    goto :goto_1

    .line 1070
    .end local v3           #view:Landroid/view/View;
    :cond_2
    iget-boolean v4, p0, Lcom/meizu/widget/StaggeredGridView;->mInLayout:Z

    if-eqz v4, :cond_3

    .line 1071
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 1075
    :goto_2
    return-void

    .line 1073
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_2
.end method

.method private recycleOffscreenViews()V
    .locals 20

    .prologue
    .line 1083
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v12

    .line 1084
    .local v12, height:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemMargin:I

    move/from16 v17, v0

    move/from16 v0, v17

    neg-int v6, v0

    .line 1085
    .local v6, clearAbove:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemMargin:I

    move/from16 v17, v0

    add-int v7, v12, v17

    .line 1086
    .local v7, clearBelow:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v17

    add-int/lit8 v13, v17, -0x1

    .local v13, i:I
    :goto_0
    if-ltz v13, :cond_0

    .line 1087
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1088
    .local v4, child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v17

    move/from16 v0, v17

    if-gt v0, v7, :cond_5

    .line 1103
    .end local v4           #child:Landroid/view/View;
    :cond_0
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v17

    if-lez v17, :cond_1

    .line 1104
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1105
    .restart local v4       #child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v17

    move/from16 v0, v17

    if-lt v0, v6, :cond_7

    .line 1121
    .end local v4           #child:Landroid/view/View;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 1122
    .local v5, childCount:I
    if-lez v5, :cond_c

    .line 1124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v17, v0

    const v18, 0x7fffffff

    invoke-static/range {v17 .. v18}, Ljava/util/Arrays;->fill([II)V

    .line 1125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v17, v0

    const/high16 v18, -0x8000

    invoke-static/range {v17 .. v18}, Ljava/util/Arrays;->fill([II)V

    .line 1127
    const/4 v13, 0x0

    :goto_2
    if-ge v13, v5, :cond_a

    .line 1128
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1129
    .restart local v4       #child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/meizu/widget/StaggeredGridView$LayoutParams;

    .line 1130
    .local v14, lp:Lcom/meizu/widget/StaggeredGridView$LayoutParams;
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemMargin:I

    move/from16 v18, v0

    sub-int v16, v17, v18

    .line 1131
    .local v16, top:I
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 1132
    .local v3, bottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    move/from16 v18, v0

    add-int v18, v18, v13

    invoke-virtual/range {v17 .. v18}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;

    .line 1134
    .local v15, rec:Lcom/meizu/widget/StaggeredGridView$LayoutRecord;
    if-nez v15, :cond_2

    .line 1135
    new-instance v15, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;

    .end local v15           #rec:Lcom/meizu/widget/StaggeredGridView$LayoutRecord;
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;-><init>(Lcom/meizu/widget/StaggeredGridView$1;)V

    .line 1136
    .restart local v15       #rec:Lcom/meizu/widget/StaggeredGridView$LayoutRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    move/from16 v18, v0

    add-int v18, v18, v13

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1137
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v17

    move/from16 v0, v17

    iput v0, v15, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->height:I

    .line 1138
    iget v0, v14, Lcom/meizu/widget/StaggeredGridView$LayoutParams;->column:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v15, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->column:I

    .line 1139
    iget-wide v0, v14, Lcom/meizu/widget/StaggeredGridView$LayoutParams;->id:J

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    iput-wide v0, v15, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->id:J

    .line 1140
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    move/from16 v17, v0

    iget v0, v14, Lcom/meizu/widget/StaggeredGridView$LayoutParams;->span:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v17

    move/from16 v0, v17

    iput v0, v15, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->span:I

    .line 1143
    :cond_2
    iget v0, v14, Lcom/meizu/widget/StaggeredGridView$LayoutParams;->column:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    move/from16 v18, v0

    iget v0, v14, Lcom/meizu/widget/StaggeredGridView$LayoutParams;->span:I

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v18

    add-int v10, v17, v18

    .line 1144
    .local v10, colEnd:I
    iget v8, v14, Lcom/meizu/widget/StaggeredGridView$LayoutParams;->column:I

    .local v8, col:I
    :goto_3
    if-ge v8, v10, :cond_9

    .line 1145
    iget v0, v14, Lcom/meizu/widget/StaggeredGridView$LayoutParams;->column:I

    move/from16 v17, v0

    sub-int v17, v8, v17

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->getMarginAbove(I)I

    move-result v17

    sub-int v11, v16, v17

    .line 1146
    .local v11, colTop:I
    iget v0, v14, Lcom/meizu/widget/StaggeredGridView$LayoutParams;->column:I

    move/from16 v17, v0

    sub-int v17, v8, v17

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->getMarginBelow(I)I

    move-result v17

    add-int v9, v3, v17

    .line 1147
    .local v9, colBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v17, v0

    aget v17, v17, v8

    move/from16 v0, v17

    if-ge v11, v0, :cond_3

    .line 1148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v17, v0

    aput v11, v17, v8

    .line 1150
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v17, v0

    aget v17, v17, v8

    move/from16 v0, v17

    if-le v9, v0, :cond_4

    .line 1151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v17, v0

    aput v9, v17, v8

    .line 1144
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1094
    .end local v3           #bottom:I
    .end local v5           #childCount:I
    .end local v8           #col:I
    .end local v9           #colBottom:I
    .end local v10           #colEnd:I
    .end local v11           #colTop:I
    .end local v14           #lp:Lcom/meizu/widget/StaggeredGridView$LayoutParams;
    .end local v15           #rec:Lcom/meizu/widget/StaggeredGridView$LayoutRecord;
    .end local v16           #top:I
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/widget/StaggeredGridView;->mInLayout:Z

    move/from16 v17, v0

    if-eqz v17, :cond_6

    .line 1095
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v13, v1}, Landroid/view/ViewGroup;->removeViewsInLayout(II)V

    .line 1100
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mRecycler:Lcom/meizu/widget/StaggeredGridView$RecycleBin;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/meizu/widget/StaggeredGridView$RecycleBin;->addScrap(Landroid/view/View;)V

    .line 1086
    add-int/lit8 v13, v13, -0x1

    goto/16 :goto_0

    .line 1097
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->removeViewAt(I)V

    goto :goto_4

    .line 1111
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/widget/StaggeredGridView;->mInLayout:Z

    move/from16 v17, v0

    if-eqz v17, :cond_8

    .line 1112
    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->removeViewsInLayout(II)V

    .line 1117
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mRecycler:Lcom/meizu/widget/StaggeredGridView$RecycleBin;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/meizu/widget/StaggeredGridView$RecycleBin;->addScrap(Landroid/view/View;)V

    .line 1118
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    goto/16 :goto_1

    .line 1114
    :cond_8
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    goto :goto_5

    .line 1127
    .restart local v3       #bottom:I
    .restart local v5       #childCount:I
    .restart local v8       #col:I
    .restart local v10       #colEnd:I
    .restart local v14       #lp:Lcom/meizu/widget/StaggeredGridView$LayoutParams;
    .restart local v15       #rec:Lcom/meizu/widget/StaggeredGridView$LayoutRecord;
    .restart local v16       #top:I
    :cond_9
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 1156
    .end local v3           #bottom:I
    .end local v4           #child:Landroid/view/View;
    .end local v8           #col:I
    .end local v10           #colEnd:I
    .end local v14           #lp:Lcom/meizu/widget/StaggeredGridView$LayoutParams;
    .end local v15           #rec:Lcom/meizu/widget/StaggeredGridView$LayoutRecord;
    .end local v16           #top:I
    :cond_a
    const/4 v8, 0x0

    .restart local v8       #col:I
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v8, v0, :cond_d

    .line 1157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v17, v0

    aget v17, v17, v8

    const v18, 0x7fffffff

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 1159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput v18, v17, v8

    .line 1160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput v18, v17, v8

    .line 1156
    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 1164
    .end local v8           #col:I
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v16

    .line 1165
    .restart local v16       #top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 1166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 1168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mRestoreOffsets:[I

    move-object/from16 v17, v0

    if-eqz v17, :cond_d

    .line 1170
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/meizu/widget/StaggeredGridView;->mRestoreOffsets:[I

    .line 1172
    .end local v16           #top:I
    :cond_d
    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .prologue
    .line 893
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 894
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 896
    :cond_0
    return-void
.end method

.method private resetStateForGridTop()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2516
    iget v0, p0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    .line 2517
    .local v0, colCount:I
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I

    array-length v2, v2

    if-eq v2, v0, :cond_1

    .line 2518
    :cond_0
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I

    .line 2519
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mItemBottoms:[I

    .line 2521
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    .line 2522
    .local v1, top:I
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I

    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([II)V

    .line 2523
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mItemBottoms:[I

    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([II)V

    .line 2526
    iput v3, p0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    .line 2527
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mRestoreOffsets:[I

    if-eqz v2, :cond_2

    .line 2529
    iput-object v4, p0, Lcom/meizu/widget/StaggeredGridView;->mRestoreOffsets:[I

    .line 2530
    :cond_2
    iput-object v4, p0, Lcom/meizu/widget/StaggeredGridView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 2531
    iput v3, p0, Lcom/meizu/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    .line 2532
    return-void
.end method

.method private trackMotionScroll(IZ)Z
    .locals 23
    .parameter "deltaY"
    .parameter "allowOverScroll"

    .prologue
    .line 905
    invoke-direct/range {p0 .. p0}, Lcom/meizu/widget/StaggeredGridView;->contentFits()Z

    move-result v8

    .line 910
    .local v8, contentFits:Z
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 911
    .local v6, childCount:I
    if-nez v6, :cond_0

    .line 912
    const/4 v13, 0x1

    .line 1031
    :goto_0
    return v13

    .line 915
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v22

    sub-int v21, v21, v22

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v22

    sub-int v11, v21, v22

    .line 916
    .local v11, height:I
    if-gez p1, :cond_3

    .line 917
    add-int/lit8 v21, v11, -0x1

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 921
    :goto_1
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 922
    .local v3, allowOverhang:I
    move-object/from16 v0, p0

    iget v10, v0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    .line 924
    .local v10, firstPosition:I
    const v15, 0x7fffffff

    .line 925
    .local v15, mostTop:I
    const/high16 v14, -0x8000

    .line 926
    .local v14, mostBottom:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v12, v0, :cond_4

    .line 927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v21, v0

    aget v21, v21, v12

    move/from16 v0, v21

    if-ge v0, v15, :cond_1

    .line 928
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v21, v0

    aget v15, v21, v12

    .line 930
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v21, v0

    aget v21, v21, v12

    move/from16 v0, v21

    if-le v0, v14, :cond_2

    .line 931
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v21, v0

    aget v14, v21, v12

    .line 926
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 919
    .end local v3           #allowOverhang:I
    .end local v10           #firstPosition:I
    .end local v12           #i:I
    .end local v14           #mostBottom:I
    .end local v15           #mostTop:I
    :cond_3
    add-int/lit8 v21, v11, -0x1

    move/from16 v0, v21

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_1

    .line 935
    .restart local v3       #allowOverhang:I
    .restart local v10       #firstPosition:I
    .restart local v12       #i:I
    .restart local v14       #mostBottom:I
    .restart local v15       #mostTop:I
    :cond_4
    const/4 v13, 0x0

    .line 936
    .local v13, isAtEdge:Z
    const/4 v9, 0x0

    .line 937
    .local v9, dontRecycle:Z
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v19

    .line 938
    .local v19, paddingTop:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v18

    .line 939
    .local v18, paddingBottom:I
    if-nez v10, :cond_a

    move/from16 v0, v19

    if-lt v15, v0, :cond_a

    if-ltz p1, :cond_a

    const/4 v4, 0x1

    .line 940
    .local v4, cannotScrollDown:Z
    :goto_3
    add-int v21, v10, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemCount:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v21

    sub-int v21, v21, v18

    move/from16 v0, v21

    if-gt v14, v0, :cond_b

    if-gtz p1, :cond_b

    const/4 v5, 0x1

    .line 941
    .local v5, cannotScrollUp:Z
    :goto_4
    if-nez v4, :cond_5

    if-nez v5, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    move/from16 v21, v0

    if-eqz v21, :cond_6

    .line 942
    :cond_5
    const/4 v9, 0x1

    .line 947
    :cond_6
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/meizu/widget/StaggeredGridView;->mPopulating:Z

    .line 949
    if-lez p1, :cond_c

    .line 950
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1, v3}, Lcom/meizu/widget/StaggeredGridView;->fillUp(II)I

    move-result v17

    .line 951
    .local v17, overhang:I
    const/16 v20, 0x1

    .line 956
    .local v20, up:Z
    :goto_5
    invoke-virtual/range {p0 .. p1}, Lcom/meizu/widget/StaggeredGridView;->offsetChildren(I)V

    .line 968
    if-nez v9, :cond_7

    .line 969
    invoke-direct/range {p0 .. p0}, Lcom/meizu/widget/StaggeredGridView;->recycleOffscreenViews()V

    .line 971
    :cond_7
    move/from16 v16, p1

    .line 973
    .local v16, movedBy:I
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/meizu/widget/StaggeredGridView;->mPopulating:Z

    .line 974
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 975
    const v15, 0x7fffffff

    .line 976
    const/high16 v14, -0x8000

    .line 977
    const/4 v12, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v12, v0, :cond_d

    .line 978
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v21, v0

    aget v21, v21, v12

    move/from16 v0, v21

    if-ge v0, v15, :cond_8

    .line 979
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v21, v0

    aget v15, v21, v12

    .line 981
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v21, v0

    aget v21, v21, v12

    move/from16 v0, v21

    if-le v0, v14, :cond_9

    .line 982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v21, v0

    aget v14, v21, v12

    .line 977
    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 939
    .end local v4           #cannotScrollDown:Z
    .end local v5           #cannotScrollUp:Z
    .end local v16           #movedBy:I
    .end local v17           #overhang:I
    .end local v20           #up:Z
    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 940
    .restart local v4       #cannotScrollDown:Z
    :cond_b
    const/4 v5, 0x0

    goto :goto_4

    .line 953
    .restart local v5       #cannotScrollUp:Z
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v22

    add-int v21, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1, v3}, Lcom/meizu/widget/StaggeredGridView;->fillDown(II)I

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemMargin:I

    move/from16 v22, v0

    add-int v17, v21, v22

    .line 954
    .restart local v17       #overhang:I
    const/16 v20, 0x0

    .restart local v20       #up:Z
    goto :goto_5

    .line 986
    .restart local v16       #movedBy:I
    :cond_d
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    .line 987
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    move/from16 v21, v0

    if-nez v21, :cond_10

    move/from16 v0, v19

    if-le v15, v0, :cond_10

    .line 988
    sub-int v21, v19, v15

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    .line 989
    const/4 v13, 0x1

    .line 1004
    :cond_e
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    move/from16 v21, v0

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    .line 1019
    const/16 v21, 0x0

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->awakenScrollBars(IZ)Z

    .line 1020
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mSelectorPosition:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_13

    .line 1021
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mSelectorPosition:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    move/from16 v22, v0

    sub-int v7, v21, v22

    .line 1022
    .local v7, childIndex:I
    if-ltz v7, :cond_f

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v21

    move/from16 v0, v21

    if-ge v7, v0, :cond_f

    .line 1023
    const/16 v21, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/meizu/widget/StaggeredGridView;->positionSelector(ILandroid/view/View;)V

    .line 1029
    .end local v7           #childIndex:I
    :cond_f
    :goto_8
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView;->mMoveBy:I

    goto/16 :goto_0

    .line 990
    :cond_10
    add-int v21, v10, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemCount:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v21

    sub-int v21, v21, v18

    move/from16 v0, v21

    if-ge v14, v0, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemCount:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-le v0, v6, :cond_11

    .line 992
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v21

    sub-int v21, v21, v18

    sub-int v21, v21, v14

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    .line 993
    const/4 v13, 0x1

    goto/16 :goto_7

    .line 994
    :cond_11
    add-int v21, v10, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemCount:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v21

    sub-int v21, v21, v18

    move/from16 v0, v21

    if-ge v14, v0, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemCount:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ne v0, v6, :cond_e

    .line 996
    sub-int v21, v14, v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v22

    sub-int v22, v22, v18

    sub-int v22, v22, v19

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_12

    .line 997
    sub-int v21, v19, v15

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    .line 998
    const/4 v13, 0x1

    goto/16 :goto_7

    .line 1000
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v21

    sub-int v21, v21, v18

    sub-int v21, v21, v14

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    .line 1001
    const/4 v13, 0x1

    goto/16 :goto_7

    .line 1026
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mSelectorRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_8
.end method

.method private updateDrag()V
    .locals 4

    .prologue
    .line 3948
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mShadowBuilder:Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/view/View;->mDragSurface:Landroid/view/Surface;

    if-nez v2, :cond_1

    .line 3963
    :cond_0
    :goto_0
    return-void

    .line 3952
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/view/View;->mDragSurface:Landroid/view/Surface;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 3954
    .local v0, canvas:Landroid/graphics/Canvas;
    const/4 v2, 0x0

    :try_start_1
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 3955
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mShadowBuilder:Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;

    invoke-virtual {v2, v0}, Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;->onDrawShadow(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3957
    :try_start_2
    iget-object v2, p0, Landroid/view/View;->mDragSurface:Landroid/view/Surface;

    invoke-virtual {v2, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 3959
    .end local v0           #canvas:Landroid/graphics/Canvas;
    :catch_0
    move-exception v1

    .line 3960
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "View"

    const-string v3, "Unable to initiate drag"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3961
    iget-object v2, p0, Landroid/view/View;->mDragSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->destroy()V

    goto :goto_0

    .line 3957
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #canvas:Landroid/graphics/Canvas;
    :catchall_0
    move-exception v2

    :try_start_3
    iget-object v3, p0, Landroid/view/View;->mDragSurface:Landroid/view/Surface;

    invoke-virtual {v3, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method private updateOnScreenCheckedViews()V
    .locals 8

    .prologue
    .line 2659
    iget v2, p0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    .line 2660
    .local v2, firstPos:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 2661
    .local v1, count:I
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_1

    const/4 v5, 0x1

    .line 2663
    .local v5, useActivated:Z
    :goto_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 2664
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2665
    .local v0, child:Landroid/view/View;
    add-int v4, v2, v3

    .line 2667
    .local v4, position:I
    instance-of v6, v0, Landroid/widget/Checkable;

    if-eqz v6, :cond_2

    .line 2668
    check-cast v0, Landroid/widget/Checkable;

    .end local v0           #child:Landroid/view/View;
    iget-object v6, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-interface {v0, v6}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 2663
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2661
    .end local v3           #i:I
    .end local v4           #position:I
    .end local v5           #useActivated:Z
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 2669
    .restart local v0       #child:Landroid/view/View;
    .restart local v3       #i:I
    .restart local v4       #position:I
    .restart local v5       #useActivated:Z
    :cond_2
    if-eqz v5, :cond_0

    .line 2670
    iget-object v6, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setActivated(Z)V

    goto :goto_2

    .line 2673
    .end local v0           #child:Landroid/view/View;
    .end local v4           #position:I
    :cond_3
    return-void
.end method

.method private useDefaultSelector()V
    .locals 2

    .prologue
    .line 3609
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/widget/StaggeredGridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 3610
    return-void
.end method


# virtual methods
.method public beginFastChildLayout()V
    .locals 1

    .prologue
    .line 1281
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/StaggeredGridView;->mFastChildLayout:Z

    .line 1282
    return-void
.end method

.method public changeChildAlphaWhenDragView(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 4024
    iput-boolean p1, p0, Lcom/meizu/widget/StaggeredGridView;->mChangeChildAlphaWhenDragView:Z

    .line 4025
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "lp"

    .prologue
    .line 3040
    instance-of v0, p1, Lcom/meizu/widget/StaggeredGridView$LayoutParams;

    return v0
.end method

.method public computeScroll()V
    .locals 8

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x0

    .line 1176
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1177
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v2

    .line 1179
    .local v2, y:I
    iget v3, p0, Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I

    if-ne v3, v7, :cond_2

    .line 1180
    iget v3, p0, Lcom/meizu/widget/StaggeredGridView;->mLastOverScrollX:I

    sub-int v0, v2, v3

    .line 1181
    .local v0, dy:I
    iput v2, p0, Lcom/meizu/widget/StaggeredGridView;->mLastOverScrollX:I

    .line 1182
    invoke-direct {p0, v0, v6}, Lcom/meizu/widget/StaggeredGridView;->trackMotionScroll(IZ)Z

    .line 1197
    :cond_0
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1198
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 1204
    .end local v0           #dy:I
    .end local v2           #y:I
    :cond_1
    :goto_0
    return-void

    .line 1184
    .restart local v2       #y:I
    :cond_2
    int-to-float v3, v2

    iget v4, p0, Lcom/meizu/widget/StaggeredGridView;->mLastTouchY:F

    sub-float/2addr v3, v4

    float-to-int v0, v3

    .line 1185
    .restart local v0       #dy:I
    int-to-float v3, v2

    iput v3, p0, Lcom/meizu/widget/StaggeredGridView;->mLastTouchY:F

    .line 1186
    invoke-direct {p0, v0, v6}, Lcom/meizu/widget/StaggeredGridView;->trackMotionScroll(IZ)Z

    move-result v1

    .line 1187
    .local v1, isAtEdge:Z
    if-eqz v1, :cond_0

    .line 1188
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3, v6, v6, v6}, Landroid/widget/OverScroller;->notifyHorizontalEdgeReached(III)V

    .line 1189
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView;->mScroller:Landroid/widget/OverScroller;

    iget v4, p0, Lcom/meizu/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    iget v5, p0, Lcom/meizu/widget/StaggeredGridView;->mMaxOverScrollDistance:I

    invoke-virtual {v3, v4, v6, v5}, Landroid/widget/OverScroller;->notifyVerticalEdgeReached(III)V

    .line 1190
    iget v3, p0, Lcom/meizu/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    iput v3, p0, Lcom/meizu/widget/StaggeredGridView;->mLastOverScrollX:I

    .line 1191
    iput v7, p0, Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I

    .line 1192
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    goto :goto_0

    .line 1200
    .end local v1           #isAtEdge:Z
    :cond_3
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 1201
    iput v6, p0, Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I

    goto :goto_0
.end method

.method protected computeVerticalScrollExtent()I
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 4731
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 4732
    .local v1, count:I
    if-lez v1, :cond_2

    .line 4733
    iget v8, p0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    add-int/2addr v8, v1

    add-int/lit8 v8, v8, -0x1

    iget v9, p0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    div-int/2addr v8, v9

    mul-int/lit8 v2, v8, 0x64

    .line 4736
    .local v2, extent:I
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 4737
    .local v6, view:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v5

    .line 4738
    .local v5, top:I
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 4739
    .local v3, height:I
    if-lez v3, :cond_0

    .line 4740
    mul-int/lit8 v7, v5, 0x64

    div-int/2addr v7, v3

    add-int/2addr v2, v7

    .line 4742
    :cond_0
    add-int/lit8 v7, v1, -0x1

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 4743
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 4744
    .local v0, bottom:I
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 4746
    .local v4, height2:I
    if-lez v4, :cond_1

    .line 4747
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    sub-int v7, v0, v7

    mul-int/lit8 v7, v7, 0x64

    div-int/2addr v7, v4

    sub-int/2addr v2, v7

    .line 4751
    .end local v0           #bottom:I
    .end local v2           #extent:I
    .end local v3           #height:I
    .end local v4           #height2:I
    .end local v5           #top:I
    .end local v6           #view:Landroid/view/View;
    :cond_1
    :goto_0
    return v2

    :cond_2
    move v2, v7

    goto :goto_0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 4756
    iget v1, p0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    .line 4757
    .local v1, fristPosition:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 4758
    .local v0, count:I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .line 4760
    .local v3, paddingTop:I
    if-ltz v1, :cond_0

    if-lez v0, :cond_0

    .line 4761
    invoke-virtual {p0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 4762
    .local v7, view:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    .line 4763
    .local v6, top:I
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 4765
    .local v2, height:I
    if-lez v2, :cond_0

    .line 4766
    mul-int/lit8 v9, v1, 0x64

    iget v10, p0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    div-int/2addr v9, v10

    mul-int/lit8 v10, v6, 0x64

    div-int/2addr v10, v2

    sub-int v8, v9, v10

    .line 4767
    .local v8, whichRow:I
    iget v9, p0, Lcom/meizu/widget/StaggeredGridView;->mItemCount:I

    iget v10, p0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, -0x1

    iget v10, p0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    div-int v5, v9, v10

    .line 4768
    .local v5, rowCount:I
    const/high16 v9, 0x42c8

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v10

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v11

    div-int/2addr v10, v11

    mul-int/2addr v10, v5

    int-to-float v10, v10

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v9, v8

    invoke-static {v9, v12}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 4775
    .end local v2           #height:I
    .end local v5           #rowCount:I
    .end local v6           #top:I
    .end local v7           #view:Landroid/view/View;
    .end local v8           #whichRow:I
    :goto_0
    return v4

    :cond_0
    move v4, v3

    goto :goto_0
.end method

.method protected computeVerticalScrollRange()I
    .locals 5

    .prologue
    .line 4780
    iget v2, p0, Lcom/meizu/widget/StaggeredGridView;->mItemCount:I

    iget v3, p0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    div-int v1, v2, v3

    .line 4781
    .local v1, rowCount:I
    mul-int/lit8 v2, v1, 0x64

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 4782
    .local v0, result:I
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    if-eqz v2, :cond_0

    .line 4783
    const/high16 v2, 0x42c8

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/2addr v3, v4

    mul-int/2addr v3, v1

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 4784
    :cond_0
    return v0
.end method

.method confirmCheckedPositionsById()V
    .locals 17

    .prologue
    .line 3412
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 3414
    const/4 v7, 0x0

    .line 3416
    .local v7, checkedCountChanged:Z
    const/4 v8, 0x0

    .local v8, checkedIndex:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-ge v8, v1, :cond_6

    .line 3417
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v8}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    .line 3418
    .local v4, id:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v8}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 3419
    .local v3, lastPos:I
    const-wide/16 v11, -0x1

    .line 3420
    .local v11, lastPosId:J
    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/widget/StaggeredGridView;->mItemCount:I

    if-ge v3, v1, :cond_0

    .line 3421
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v11

    .line 3423
    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/widget/StaggeredGridView;->mItemCount:I

    if-ge v3, v1, :cond_1

    cmp-long v1, v4, v11

    if-eqz v1, :cond_5

    .line 3425
    :cond_1
    const/4 v1, 0x0

    add-int/lit8 v2, v3, -0x14

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 3426
    .local v16, start:I
    add-int/lit8 v1, v3, 0x14

    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/widget/StaggeredGridView;->mItemCount:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 3427
    .local v9, end:I
    const/4 v10, 0x0

    .line 3428
    .local v10, found:Z
    move/from16 v15, v16

    .local v15, searchPos:I
    :goto_1
    if-ge v15, v9, :cond_2

    .line 3429
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v15}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v13

    .line 3430
    .local v13, searchId:J
    cmp-long v1, v4, v13

    if-nez v1, :cond_4

    .line 3431
    const/4 v10, 0x1

    .line 3432
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v15, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3433
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 3438
    .end local v13           #searchId:J
    :cond_2
    if-nez v10, :cond_3

    .line 3439
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v4, v5}, Landroid/util/LongSparseArray;->delete(J)V

    .line 3440
    add-int/lit8 v8, v8, -0x1

    .line 3441
    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/widget/StaggeredGridView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/meizu/widget/StaggeredGridView;->mCheckedItemCount:I

    .line 3442
    const/4 v7, 0x1

    .line 3443
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/widget/StaggeredGridView;->mMultiChoiceModeCallback:Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper;

    if-eqz v1, :cond_3

    .line 3444
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/widget/StaggeredGridView;->mMultiChoiceModeCallback:Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 3416
    .end local v9           #end:I
    .end local v10           #found:Z
    .end local v15           #searchPos:I
    .end local v16           #start:I
    :cond_3
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 3428
    .restart local v9       #end:I
    .restart local v10       #found:Z
    .restart local v13       #searchId:J
    .restart local v15       #searchPos:I
    .restart local v16       #start:I
    :cond_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 3449
    .end local v9           #end:I
    .end local v10           #found:Z
    .end local v13           #searchId:J
    .end local v15           #searchPos:I
    .end local v16           #start:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_2

    .line 3453
    .end local v3           #lastPos:I
    .end local v4           #id:J
    .end local v11           #lastPosId:J
    :cond_6
    if-eqz v7, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_7

    .line 3454
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->invalidate()V

    .line 3456
    :cond_7
    return-void
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 4160
    new-instance v0, Lcom/meizu/widget/StaggeredGridView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/meizu/widget/StaggeredGridView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method public deleteItemId(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3315
    .local p1, id:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3316
    iput-object p1, p0, Lcom/meizu/widget/StaggeredGridView;->mDeleteItemId:Ljava/util/ArrayList;

    .line 3318
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    const/4 v7, 0x0

    .line 1208
    iget-boolean v2, p0, Lcom/meizu/widget/StaggeredGridView;->mDrawSelectorOnTop:Z

    .line 1209
    .local v2, drawSelectorOnTop:Z
    if-nez v2, :cond_0

    .line 1210
    invoke-direct {p0, p1}, Lcom/meizu/widget/StaggeredGridView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 1213
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1215
    if-eqz v2, :cond_1

    .line 1216
    invoke-direct {p0, p1}, Lcom/meizu/widget/StaggeredGridView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 1219
    :cond_1
    iget-boolean v8, p0, Lcom/meizu/widget/StaggeredGridView;->mEnableTopShadow:Z

    if-eqz v8, :cond_2

    .line 1220
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 1221
    .local v1, count:I
    iget v8, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v8, v8, 0x22

    const/16 v9, 0x22

    if-ne v8, v9, :cond_3

    const/4 v0, 0x1

    .line 1222
    .local v0, clipToPadding:Z
    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .line 1223
    .local v3, listTop:I
    :goto_1
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1225
    .local v6, view:Landroid/view/View;
    if-eqz v1, :cond_2

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v8

    if-ge v8, v3, :cond_2

    .line 1226
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView;->mTopShadowLight:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_2

    .line 1227
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 1228
    .local v4, restoreCount:I
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    .line 1229
    .local v5, top:I
    :goto_2
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView;->mTopShadowLight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v9

    iget-object v10, p0, Lcom/meizu/widget/StaggeredGridView;->mTopShadowLight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    add-int/2addr v10, v5

    invoke-virtual {v8, v7, v5, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1230
    iget-object v7, p0, Lcom/meizu/widget/StaggeredGridView;->mTopShadowLight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1231
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1236
    .end local v0           #clipToPadding:Z
    .end local v1           #count:I
    .end local v3           #listTop:I
    .end local v4           #restoreCount:I
    .end local v5           #top:I
    .end local v6           #view:Landroid/view/View;
    :cond_2
    return-void

    .restart local v1       #count:I
    :cond_3
    move v0, v7

    .line 1221
    goto :goto_0

    .line 1222
    .restart local v0       #clipToPadding:Z
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v8

    add-int/lit8 v3, v8, 0x0

    goto :goto_1

    .restart local v3       #listTop:I
    .restart local v4       #restoreCount:I
    .restart local v6       #view:Landroid/view/View;
    :cond_5
    move v5, v7

    .line 1228
    goto :goto_2
.end method

.method public dispatchStatusBarTap()Z
    .locals 1

    .prologue
    .line 4440
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->onStatusBarTapScrollTop()Z

    move-result v0

    return v0
.end method

.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 4262
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 4263
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->updateSelectorState()V

    .line 4264
    return-void
.end method

.method public enableAnimation(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 1326
    iput-boolean p1, p0, Lcom/meizu/widget/StaggeredGridView;->mEnableAnimation:Z

    .line 1327
    return-void
.end method

.method public endFastChildLayout()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1285
    iput-boolean v0, p0, Lcom/meizu/widget/StaggeredGridView;->mFastChildLayout:Z

    .line 1286
    invoke-direct {p0, v0}, Lcom/meizu/widget/StaggeredGridView;->populate(Z)V

    .line 1287
    return-void
.end method

.method final fillDown(II)I
    .locals 35
    .parameter "fromPosition"
    .parameter "overhang"

    .prologue
    .line 2006
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v25

    .line 2007
    .local v25, paddingLeft:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v26

    .line 2008
    .local v26, paddingRight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemMargin:I

    move/from16 v19, v0

    .line 2009
    .local v19, itemMargin:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v33

    sub-int v33, v33, v25

    sub-int v33, v33, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    move/from16 v34, v0

    add-int/lit8 v34, v34, -0x1

    mul-int v34, v34, v19

    sub-int v33, v33, v34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    move/from16 v34, v0

    div-int v10, v33, v34

    .line 2010
    .local v10, colWidth:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v33

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v34

    sub-int v12, v33, v34

    .line 2011
    .local v12, gridBottom:I
    add-int v11, v12, p2

    .line 2012
    .local v11, fillTo:I
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/StaggeredGridView;->getNextColumnDown()I

    move-result v24

    .line 2013
    .local v24, nextCol:I
    move/from16 v27, p1

    .line 2015
    .local v27, position:I
    :cond_0
    :goto_0
    if-ltz v24, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v33, v0

    aget v33, v33, v24

    move/from16 v0, v33

    if-ge v0, v11, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemCount:I

    move/from16 v33, v0

    move/from16 v0, v27

    move/from16 v1, v33

    if-ge v0, v1, :cond_12

    .line 2017
    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/meizu/widget/StaggeredGridView;->obtainView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v4

    .line 2019
    .local v4, child:Landroid/view/View;
    if-eqz v4, :cond_0

    .line 2021
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcom/meizu/widget/StaggeredGridView$LayoutParams;

    .line 2022
    .local v23, lp:Lcom/meizu/widget/StaggeredGridView$LayoutParams;
    if-nez v23, :cond_1

    .line 2023
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/StaggeredGridView;->generateDefaultLayoutParams()Lcom/meizu/widget/StaggeredGridView$LayoutParams;

    move-result-object v23

    .line 2024
    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2026
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    if-eq v0, v1, :cond_2

    .line 2027
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/widget/StaggeredGridView;->mInLayout:Z

    move/from16 v33, v0

    if-eqz v33, :cond_8

    .line 2028
    const/16 v33, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v33

    move-object/from16 v2, v23

    invoke-virtual {v0, v4, v1, v2}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 2034
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    move/from16 v33, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView$LayoutParams;->span:I

    move/from16 v34, v0

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->min(II)I

    move-result v29

    .line 2035
    .local v29, span:I
    mul-int v33, v10, v29

    add-int/lit8 v34, v29, -0x1

    mul-int v34, v34, v19

    add-int v31, v33, v34

    .line 2036
    .local v31, widthSize:I
    const/high16 v33, 0x4000

    move/from16 v0, v31

    move/from16 v1, v33

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v32

    .line 2039
    .local v32, widthSpec:I
    const/16 v33, 0x1

    move/from16 v0, v29

    move/from16 v1, v33

    if-le v0, v1, :cond_9

    .line 2040
    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/meizu/widget/StaggeredGridView;->getNextRecordDown(II)Lcom/meizu/widget/StaggeredGridView$LayoutRecord;

    move-result-object v28

    .line 2046
    .local v28, rec:Lcom/meizu/widget/StaggeredGridView$LayoutRecord;
    :goto_2
    const/16 v18, 0x0

    .line 2047
    .local v18, invalidateAfter:Z
    if-nez v28, :cond_a

    .line 2048
    new-instance v28, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;

    .end local v28           #rec:Lcom/meizu/widget/StaggeredGridView$LayoutRecord;
    const/16 v33, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;-><init>(Lcom/meizu/widget/StaggeredGridView$1;)V

    .line 2049
    .restart local v28       #rec:Lcom/meizu/widget/StaggeredGridView$LayoutRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2050
    move/from16 v0, v24

    move-object/from16 v1, v28

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->column:I

    .line 2051
    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->span:I

    .line 2060
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/widget/StaggeredGridView;->mHasStableIds:Z

    move/from16 v33, v0

    if-eqz v33, :cond_4

    .line 2061
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v16

    .line 2062
    .local v16, id:J
    move-wide/from16 v0, v16

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->id:J

    .line 2063
    move-wide/from16 v0, v16

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/meizu/widget/StaggeredGridView$LayoutParams;->id:J

    .line 2066
    .end local v16           #id:J
    :cond_4
    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView$LayoutParams;->column:I

    .line 2069
    move-object/from16 v0, v23

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v33, v0

    const/16 v34, -0x2

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_b

    .line 2070
    const/16 v33, 0x0

    const/16 v34, 0x0

    invoke-static/range {v33 .. v34}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 2074
    .local v13, heightSpec:I
    :goto_4
    move/from16 v0, v32

    invoke-virtual {v4, v0, v13}, Landroid/view/View;->measure(II)V

    .line 2076
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 2077
    .local v6, childHeight:I
    if-nez v18, :cond_5

    move-object/from16 v0, v28

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->height:I

    move/from16 v33, v0

    move/from16 v0, v33

    if-eq v6, v0, :cond_6

    move-object/from16 v0, v28

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->height:I

    move/from16 v33, v0

    if-lez v33, :cond_6

    .line 2078
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/meizu/widget/StaggeredGridView;->invalidateLayoutRecordsAfterPosition(I)V

    .line 2080
    :cond_6
    move-object/from16 v0, v28

    iput v6, v0, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->height:I

    .line 2083
    const/16 v33, 0x1

    move/from16 v0, v29

    move/from16 v1, v33

    if-le v0, v1, :cond_e

    .line 2084
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v33, v0

    aget v21, v33, v24

    .line 2085
    .local v21, lowest:I
    add-int/lit8 v14, v24, 0x1

    .local v14, i:I
    :goto_5
    add-int v33, v24, v29

    move/from16 v0, v33

    if-ge v14, v0, :cond_c

    .line 2086
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v33, v0

    aget v3, v33, v14

    .line 2087
    .local v3, bottom:I
    move/from16 v0, v21

    if-le v3, v0, :cond_7

    .line 2088
    move/from16 v21, v3

    .line 2085
    :cond_7
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 2030
    .end local v3           #bottom:I
    .end local v6           #childHeight:I
    .end local v13           #heightSpec:I
    .end local v14           #i:I
    .end local v18           #invalidateAfter:Z
    .end local v21           #lowest:I
    .end local v28           #rec:Lcom/meizu/widget/StaggeredGridView$LayoutRecord;
    .end local v29           #span:I
    .end local v31           #widthSize:I
    .end local v32           #widthSpec:I
    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 2043
    .restart local v29       #span:I
    .restart local v31       #widthSize:I
    .restart local v32       #widthSpec:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;

    .restart local v28       #rec:Lcom/meizu/widget/StaggeredGridView$LayoutRecord;
    goto/16 :goto_2

    .line 2052
    .restart local v18       #invalidateAfter:Z
    :cond_a
    move-object/from16 v0, v28

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->span:I

    move/from16 v33, v0

    move/from16 v0, v29

    move/from16 v1, v33

    if-eq v0, v1, :cond_3

    .line 2053
    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->span:I

    .line 2054
    move/from16 v0, v24

    move-object/from16 v1, v28

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->column:I

    .line 2055
    const/16 v18, 0x1

    goto/16 :goto_3

    .line 2072
    :cond_b
    move-object/from16 v0, v23

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v33, v0

    const/high16 v34, 0x4000

    invoke-static/range {v33 .. v34}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .restart local v13       #heightSpec:I
    goto/16 :goto_4

    .line 2091
    .restart local v6       #childHeight:I
    .restart local v14       #i:I
    .restart local v21       #lowest:I
    :cond_c
    move/from16 v30, v21

    .line 2096
    .end local v14           #i:I
    .end local v21           #lowest:I
    .local v30, startFrom:I
    :goto_6
    add-int v9, v30, v19

    .line 2097
    .local v9, childTop:I
    add-int v5, v9, v6

    .line 2098
    .local v5, childBottom:I
    add-int v33, v10, v19

    mul-int v33, v33, v24

    add-int v7, v25, v33

    .line 2099
    .local v7, childLeft:I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v33

    add-int v8, v7, v33

    .line 2100
    .local v8, childRight:I
    invoke-virtual {v4, v7, v9, v8, v5}, Landroid/view/View;->layout(IIII)V

    .line 2105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/util/ArrayList;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_10

    .line 2109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :cond_d
    :goto_7
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_f

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/ArrayList;

    .line 2110
    .local v20, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v20

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_d

    .line 2111
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v20

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_7

    .line 2093
    .end local v5           #childBottom:I
    .end local v7           #childLeft:I
    .end local v8           #childRight:I
    .end local v9           #childTop:I
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v20           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v30           #startFrom:I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v33, v0

    aget v30, v33, v24

    .restart local v30       #startFrom:I
    goto :goto_6

    .line 2115
    .restart local v5       #childBottom:I
    .restart local v7       #childLeft:I
    .restart local v8       #childRight:I
    .restart local v9       #childTop:I
    .restart local v15       #i$:Ljava/util/Iterator;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/util/ArrayList;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2118
    .end local v15           #i$:Ljava/util/Iterator;
    :cond_10
    move/from16 v14, v24

    .restart local v14       #i:I
    :goto_8
    add-int v33, v24, v29

    move/from16 v0, v33

    if-ge v14, v0, :cond_11

    .line 2119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v33, v0

    sub-int v34, v14, v24

    move-object/from16 v0, v28

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->getMarginBelow(I)I

    move-result v34

    add-int v34, v34, v5

    aput v34, v33, v14

    .line 2118
    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    .line 2122
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/StaggeredGridView;->getNextColumnDown()I

    move-result v24

    .line 2123
    add-int/lit8 v27, v27, 0x1

    .line 2124
    goto/16 :goto_0

    .line 2126
    .end local v4           #child:Landroid/view/View;
    .end local v5           #childBottom:I
    .end local v6           #childHeight:I
    .end local v7           #childLeft:I
    .end local v8           #childRight:I
    .end local v9           #childTop:I
    .end local v13           #heightSpec:I
    .end local v14           #i:I
    .end local v18           #invalidateAfter:Z
    .end local v23           #lp:Lcom/meizu/widget/StaggeredGridView$LayoutParams;
    .end local v28           #rec:Lcom/meizu/widget/StaggeredGridView$LayoutRecord;
    .end local v29           #span:I
    .end local v30           #startFrom:I
    .end local v31           #widthSize:I
    .end local v32           #widthSpec:I
    :cond_12
    const/16 v22, 0x0

    .line 2127
    .local v22, lowestView:I
    const/4 v14, 0x0

    .restart local v14       #i:I
    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    move/from16 v33, v0

    move/from16 v0, v33

    if-ge v14, v0, :cond_14

    .line 2128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v33, v0

    aget v33, v33, v14

    move/from16 v0, v33

    move/from16 v1, v22

    if-le v0, v1, :cond_13

    .line 2129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v33, v0

    aget v22, v33, v14

    .line 2127
    :cond_13
    add-int/lit8 v14, v14, 0x1

    goto :goto_9

    .line 2132
    :cond_14
    sub-int v33, v22, v12

    return v33
.end method

.method final fillUp(II)I
    .locals 35
    .parameter "fromPosition"
    .parameter "overhang"

    .prologue
    .line 1811
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v23

    .line 1812
    .local v23, paddingLeft:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v24

    .line 1813
    .local v24, paddingRight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemMargin:I

    move/from16 v19, v0

    .line 1814
    .local v19, itemMargin:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v33

    sub-int v33, v33, v23

    sub-int v33, v33, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    move/from16 v34, v0

    add-int/lit8 v34, v34, -0x1

    mul-int v34, v34, v19

    sub-int v33, v33, v34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    move/from16 v34, v0

    div-int v9, v33, v34

    .line 1816
    .local v9, colWidth:I
    move-object/from16 v0, p0

    iput v9, v0, Lcom/meizu/widget/StaggeredGridView;->mColWidth:I

    .line 1817
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v11

    .line 1818
    .local v11, gridTop:I
    sub-int v10, v11, p2

    .line 1819
    .local v10, fillTo:I
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/StaggeredGridView;->getNextColumnUp()I

    move-result v22

    .line 1820
    .local v22, nextCol:I
    move/from16 v25, p1

    .local v25, position:I
    move/from16 v26, v25

    .line 1822
    .end local v25           #position:I
    .local v26, position:I
    :cond_0
    :goto_0
    if-ltz v22, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v33, v0

    aget v33, v33, v22

    move/from16 v0, v33

    if-le v0, v10, :cond_11

    if-ltz v26, :cond_11

    .line 1825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/util/ArrayList;

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_1

    .line 1826
    const/4 v15, 0x0

    .local v15, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v33

    move/from16 v0, v33

    if-ge v15, v0, :cond_1

    .line 1827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/util/ArrayList;

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_9

    .line 1828
    move/from16 v22, v15

    .line 1836
    .end local v15           #i:I
    :cond_1
    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/meizu/widget/StaggeredGridView;->obtainView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v3

    .line 1838
    .local v3, child:Landroid/view/View;
    if-eqz v3, :cond_0

    .line 1840
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    check-cast v21, Lcom/meizu/widget/StaggeredGridView$LayoutParams;

    .line 1842
    .local v21, lp:Lcom/meizu/widget/StaggeredGridView$LayoutParams;
    if-nez v21, :cond_2

    .line 1843
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/StaggeredGridView;->generateDefaultLayoutParams()Lcom/meizu/widget/StaggeredGridView$LayoutParams;

    move-result-object v21

    .line 1844
    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1847
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    if-eq v0, v1, :cond_3

    .line 1848
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/widget/StaggeredGridView;->mInLayout:Z

    move/from16 v33, v0

    if-eqz v33, :cond_a

    .line 1849
    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v33

    move-object/from16 v2, v21

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 1855
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    move/from16 v33, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView$LayoutParams;->span:I

    move/from16 v34, v0

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->min(II)I

    move-result v28

    .line 1856
    .local v28, span:I
    mul-int v33, v9, v28

    add-int/lit8 v34, v28, -0x1

    mul-int v34, v34, v19

    add-int v31, v33, v34

    .line 1857
    .local v31, widthSize:I
    const/high16 v33, 0x4000

    move/from16 v0, v31

    move/from16 v1, v33

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v32

    .line 1860
    .local v32, widthSpec:I
    const/16 v33, 0x1

    move/from16 v0, v28

    move/from16 v1, v33

    if-le v0, v1, :cond_b

    .line 1861
    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/meizu/widget/StaggeredGridView;->getNextRecordUp(II)Lcom/meizu/widget/StaggeredGridView$LayoutRecord;

    move-result-object v27

    .line 1867
    .local v27, rec:Lcom/meizu/widget/StaggeredGridView$LayoutRecord;
    :goto_3
    const/16 v18, 0x0

    .line 1868
    .local v18, invalidateBefore:Z
    if-nez v27, :cond_c

    .line 1869
    new-instance v27, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;

    .end local v27           #rec:Lcom/meizu/widget/StaggeredGridView$LayoutRecord;
    const/16 v33, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;-><init>(Lcom/meizu/widget/StaggeredGridView$1;)V

    .line 1870
    .restart local v27       #rec:Lcom/meizu/widget/StaggeredGridView$LayoutRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1871
    move/from16 v0, v22

    move-object/from16 v1, v27

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->column:I

    .line 1872
    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->span:I

    .line 1881
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/widget/StaggeredGridView;->mHasStableIds:Z

    move/from16 v33, v0

    if-eqz v33, :cond_5

    .line 1882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v16

    .line 1883
    .local v16, id:J
    move-wide/from16 v0, v16

    move-object/from16 v2, v27

    iput-wide v0, v2, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->id:J

    .line 1884
    move-wide/from16 v0, v16

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/meizu/widget/StaggeredGridView$LayoutParams;->id:J

    .line 1887
    .end local v16           #id:J
    :cond_5
    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView$LayoutParams;->column:I

    .line 1890
    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v33, v0

    const/16 v34, -0x2

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_d

    .line 1891
    const/16 v33, 0x0

    const/16 v34, 0x0

    invoke-static/range {v33 .. v34}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 1895
    .local v12, heightSpec:I
    :goto_5
    move/from16 v0, v32

    invoke-virtual {v3, v0, v12}, Landroid/view/View;->measure(II)V

    .line 1897
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 1898
    .local v5, childHeight:I
    if-nez v18, :cond_6

    move-object/from16 v0, v27

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->height:I

    move/from16 v33, v0

    move/from16 v0, v33

    if-eq v5, v0, :cond_7

    move-object/from16 v0, v27

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->height:I

    move/from16 v33, v0

    if-lez v33, :cond_7

    .line 1899
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/meizu/widget/StaggeredGridView;->invalidateLayoutRecordsBeforePosition(I)V

    .line 1901
    :cond_7
    move-object/from16 v0, v27

    iput v5, v0, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->height:I

    .line 1903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v33, v0

    aget v20, v33, v22

    .line 1906
    .local v20, itemTop:I
    const/16 v33, 0x1

    move/from16 v0, v28

    move/from16 v1, v33

    if-le v0, v1, :cond_f

    .line 1907
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v33, v0

    aget v13, v33, v22

    .line 1908
    .local v13, highest:I
    add-int/lit8 v15, v22, 0x1

    .restart local v15       #i:I
    :goto_6
    add-int v33, v22, v28

    move/from16 v0, v33

    if-ge v15, v0, :cond_e

    .line 1909
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v33, v0

    aget v30, v33, v15

    .line 1910
    .local v30, top:I
    move/from16 v0, v30

    if-ge v0, v13, :cond_8

    .line 1911
    move/from16 v13, v30

    .line 1908
    :cond_8
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 1826
    .end local v3           #child:Landroid/view/View;
    .end local v5           #childHeight:I
    .end local v12           #heightSpec:I
    .end local v13           #highest:I
    .end local v18           #invalidateBefore:Z
    .end local v20           #itemTop:I
    .end local v21           #lp:Lcom/meizu/widget/StaggeredGridView$LayoutParams;
    .end local v27           #rec:Lcom/meizu/widget/StaggeredGridView$LayoutRecord;
    .end local v28           #span:I
    .end local v30           #top:I
    .end local v31           #widthSize:I
    .end local v32           #widthSpec:I
    :cond_9
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    .line 1851
    .end local v15           #i:I
    .restart local v3       #child:Landroid/view/View;
    .restart local v21       #lp:Lcom/meizu/widget/StaggeredGridView$LayoutParams;
    :cond_a
    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto/16 :goto_2

    .line 1864
    .restart local v28       #span:I
    .restart local v31       #widthSize:I
    .restart local v32       #widthSpec:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;

    .restart local v27       #rec:Lcom/meizu/widget/StaggeredGridView$LayoutRecord;
    goto/16 :goto_3

    .line 1873
    .restart local v18       #invalidateBefore:Z
    :cond_c
    move-object/from16 v0, v27

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->span:I

    move/from16 v33, v0

    move/from16 v0, v28

    move/from16 v1, v33

    if-eq v0, v1, :cond_4

    .line 1874
    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->span:I

    .line 1875
    move/from16 v0, v22

    move-object/from16 v1, v27

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->column:I

    .line 1876
    const/16 v18, 0x1

    goto/16 :goto_4

    .line 1893
    :cond_d
    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v33, v0

    const/high16 v34, 0x4000

    invoke-static/range {v33 .. v34}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .restart local v12       #heightSpec:I
    goto/16 :goto_5

    .line 1914
    .restart local v5       #childHeight:I
    .restart local v13       #highest:I
    .restart local v15       #i:I
    .restart local v20       #itemTop:I
    :cond_e
    move/from16 v29, v13

    .line 1920
    .end local v13           #highest:I
    .end local v15           #i:I
    .local v29, startFrom:I
    :goto_7
    move/from16 v4, v29

    .line 1921
    .local v4, childBottom:I
    sub-int v8, v4, v5

    .line 1922
    .local v8, childTop:I
    add-int v33, v9, v19

    mul-int v33, v33, v22

    add-int v6, v23, v33

    .line 1923
    .local v6, childLeft:I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v33

    add-int v7, v6, v33

    .line 1932
    .local v7, childRight:I
    invoke-virtual {v3, v6, v8, v7, v4}, Landroid/view/View;->layout(IIII)V

    .line 1937
    move/from16 v15, v22

    .restart local v15       #i:I
    :goto_8
    add-int v33, v22, v28

    move/from16 v0, v33

    if-ge v15, v0, :cond_10

    .line 1938
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v33, v0

    sub-int v34, v15, v22

    move-object/from16 v0, v27

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->getMarginAbove(I)I

    move-result v34

    sub-int v34, v8, v34

    sub-int v34, v34, v19

    aput v34, v33, v15

    .line 1937
    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    .line 1916
    .end local v4           #childBottom:I
    .end local v6           #childLeft:I
    .end local v7           #childRight:I
    .end local v8           #childTop:I
    .end local v15           #i:I
    .end local v29           #startFrom:I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v33, v0

    aget v29, v33, v22

    .restart local v29       #startFrom:I
    goto :goto_7

    .line 1941
    .restart local v4       #childBottom:I
    .restart local v6       #childLeft:I
    .restart local v7       #childRight:I
    .restart local v8       #childTop:I
    .restart local v15       #i:I
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/StaggeredGridView;->getNextColumnUp()I

    move-result v22

    .line 1942
    add-int/lit8 v25, v26, -0x1

    .end local v26           #position:I
    .restart local v25       #position:I
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    move/from16 v26, v25

    .line 1943
    .end local v25           #position:I
    .restart local v26       #position:I
    goto/16 :goto_0

    .line 1945
    .end local v3           #child:Landroid/view/View;
    .end local v4           #childBottom:I
    .end local v5           #childHeight:I
    .end local v6           #childLeft:I
    .end local v7           #childRight:I
    .end local v8           #childTop:I
    .end local v12           #heightSpec:I
    .end local v15           #i:I
    .end local v18           #invalidateBefore:Z
    .end local v20           #itemTop:I
    .end local v21           #lp:Lcom/meizu/widget/StaggeredGridView$LayoutParams;
    .end local v27           #rec:Lcom/meizu/widget/StaggeredGridView$LayoutRecord;
    .end local v28           #span:I
    .end local v29           #startFrom:I
    .end local v31           #widthSize:I
    .end local v32           #widthSpec:I
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v14

    .line 1947
    .local v14, highestView:I
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    move/from16 v33, v0

    move/from16 v0, v33

    if-ge v15, v0, :cond_13

    .line 1960
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v33, v0

    aget v33, v33, v15

    move/from16 v0, v33

    if-ge v0, v14, :cond_12

    .line 1961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v33, v0

    aget v14, v33, v15

    .line 1947
    :cond_12
    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    .line 1965
    :cond_13
    sub-int v33, v11, v14

    return v33
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->generateDefaultLayoutParams()Lcom/meizu/widget/StaggeredGridView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/meizu/widget/StaggeredGridView$LayoutParams;
    .locals 2

    .prologue
    .line 3030
    new-instance v0, Lcom/meizu/widget/StaggeredGridView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/meizu/widget/StaggeredGridView$LayoutParams;-><init>(I)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 3045
    new-instance v0, Lcom/meizu/widget/StaggeredGridView$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/meizu/widget/StaggeredGridView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Lcom/meizu/widget/StaggeredGridView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/meizu/widget/StaggeredGridView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/meizu/widget/StaggeredGridView$LayoutParams;
    .locals 1
    .parameter "lp"

    .prologue
    .line 3035
    new-instance v0, Lcom/meizu/widget/StaggeredGridView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/meizu/widget/StaggeredGridView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 2458
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getCheckedItemCount()I
    .locals 1

    .prologue
    .line 2967
    iget v0, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckedItemCount:I

    return v0
.end method

.method public getCheckedItemIds()[J
    .locals 6

    .prologue
    .line 3013
    iget v4, p0, Lcom/meizu/widget/StaggeredGridView;->mChoiceMode:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_2

    .line 3014
    :cond_0
    const/4 v4, 0x0

    new-array v3, v4, [J

    .line 3024
    :cond_1
    return-object v3

    .line 3017
    :cond_2
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 3018
    .local v2, idStates:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 3019
    .local v0, count:I
    new-array v3, v0, [J

    .line 3021
    .local v3, ids:[J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 3022
    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 3021
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 1

    .prologue
    .line 2980
    iget v0, p0, Lcom/meizu/widget/StaggeredGridView;->mChoiceMode:I

    if-eqz v0, :cond_0

    .line 2981
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 2983
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChoiceMode()I
    .locals 1

    .prologue
    .line 2680
    iget v0, p0, Lcom/meizu/widget/StaggeredGridView;->mChoiceMode:I

    return v0
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 559
    iget v0, p0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 4145
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 4409
    iget v0, p0, Lcom/meizu/widget/StaggeredGridView;->mItemCount:I

    return v0
.end method

.method public getFirstPosition()I
    .locals 1

    .prologue
    .line 592
    iget v0, p0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    return v0
.end method

.method public getFirstVisiblePosition()I
    .locals 1

    .prologue
    .line 4419
    iget v0, p0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 599
    iget v0, p0, Lcom/meizu/widget/StaggeredGridView;->mItemCount:I

    return v0
.end method

.method public getItemDragListener()Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;
    .locals 1

    .prologue
    .line 2650
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mItemDragListener:Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;

    return-object v0
.end method

.method public getLastVisiblePosition()I
    .locals 2

    .prologue
    .line 4430
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 4431
    const/4 v0, 0x0

    .line 4433
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method final getNextColumnDown()I
    .locals 6

    .prologue
    .line 2226
    const/4 v3, -0x1

    .line 2227
    .local v3, result:I
    const v4, 0x7fffffff

    .line 2229
    .local v4, topMost:I
    iget v1, p0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    .line 2231
    .local v1, colCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2232
    iget-object v5, p0, Lcom/meizu/widget/StaggeredGridView;->mItemBottoms:[I

    aget v0, v5, v2

    .line 2233
    .local v0, bottom:I
    if-ge v0, v4, :cond_0

    .line 2234
    move v4, v0

    .line 2235
    move v3, v2

    .line 2231
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2239
    .end local v0           #bottom:I
    :cond_1
    return v3
.end method

.method final getNextColumnUp()I
    .locals 6

    .prologue
    .line 2162
    const/4 v3, -0x1

    .line 2163
    .local v3, result:I
    const/high16 v0, -0x8000

    .line 2165
    .local v0, bottomMost:I
    iget v1, p0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    .line 2166
    .local v1, colCount:I
    add-int/lit8 v2, v1, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    .line 2167
    iget-object v5, p0, Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I

    aget v4, v5, v2

    .line 2168
    .local v4, top:I
    if-le v4, v0, :cond_0

    .line 2169
    move v0, v4

    .line 2170
    move v3, v2

    .line 2166
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2173
    .end local v4           #top:I
    :cond_1
    return v3
.end method

.method final getNextRecordDown(II)Lcom/meizu/widget/StaggeredGridView$LayoutRecord;
    .locals 11
    .parameter "position"
    .parameter "span"

    .prologue
    .line 2246
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;

    .line 2247
    .local v4, rec:Lcom/meizu/widget/StaggeredGridView$LayoutRecord;
    if-nez v4, :cond_2

    .line 2248
    new-instance v4, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;

    .end local v4           #rec:Lcom/meizu/widget/StaggeredGridView$LayoutRecord;
    const/4 v8, 0x0

    invoke-direct {v4, v8}, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;-><init>(Lcom/meizu/widget/StaggeredGridView$1;)V

    .line 2249
    .restart local v4       #rec:Lcom/meizu/widget/StaggeredGridView$LayoutRecord;
    iput p2, v4, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->span:I

    .line 2250
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    invoke-virtual {v8, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2255
    :cond_0
    const/4 v6, -0x1

    .line 2256
    .local v6, targetCol:I
    const v7, 0x7fffffff

    .line 2258
    .local v7, topMost:I
    iget v1, p0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    .line 2259
    .local v1, colCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sub-int v8, v1, p2

    if-gt v2, v8, :cond_5

    .line 2260
    const/high16 v0, -0x8000

    .line 2261
    .local v0, bottom:I
    move v3, v2

    .local v3, j:I
    :goto_1
    add-int v8, v2, p2

    if-ge v3, v8, :cond_3

    .line 2262
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView;->mItemBottoms:[I

    aget v5, v8, v3

    .line 2263
    .local v5, singleBottom:I
    if-le v5, v0, :cond_1

    .line 2264
    move v0, v5

    .line 2261
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2251
    .end local v0           #bottom:I
    .end local v1           #colCount:I
    .end local v2           #i:I
    .end local v3           #j:I
    .end local v5           #singleBottom:I
    .end local v6           #targetCol:I
    .end local v7           #topMost:I
    :cond_2
    iget v8, v4, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->span:I

    if-eq v8, p2, :cond_0

    .line 2252
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid LayoutRecord! Record had span="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->span:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " but caller requested span="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " for position="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2267
    .restart local v0       #bottom:I
    .restart local v1       #colCount:I
    .restart local v2       #i:I
    .restart local v3       #j:I
    .restart local v6       #targetCol:I
    .restart local v7       #topMost:I
    :cond_3
    if-ge v0, v7, :cond_4

    .line 2268
    move v7, v0

    .line 2269
    move v6, v2

    .line 2259
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2273
    .end local v0           #bottom:I
    .end local v3           #j:I
    :cond_5
    iput v6, v4, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->column:I

    .line 2275
    const/4 v2, 0x0

    :goto_2
    if-ge v2, p2, :cond_6

    .line 2276
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView;->mItemBottoms:[I

    add-int v9, v2, v6

    aget v8, v8, v9

    sub-int v8, v7, v8

    invoke-virtual {v4, v2, v8}, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->setMarginAbove(II)V

    .line 2275
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2279
    :cond_6
    return-object v4
.end method

.method final getNextRecordUp(II)Lcom/meizu/widget/StaggeredGridView$LayoutRecord;
    .locals 11
    .parameter "position"
    .parameter "span"

    .prologue
    .line 2185
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;

    .line 2186
    .local v4, rec:Lcom/meizu/widget/StaggeredGridView$LayoutRecord;
    if-nez v4, :cond_2

    .line 2187
    new-instance v4, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;

    .end local v4           #rec:Lcom/meizu/widget/StaggeredGridView$LayoutRecord;
    const/4 v8, 0x0

    invoke-direct {v4, v8}, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;-><init>(Lcom/meizu/widget/StaggeredGridView$1;)V

    .line 2188
    .restart local v4       #rec:Lcom/meizu/widget/StaggeredGridView$LayoutRecord;
    iput p2, v4, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->span:I

    .line 2189
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    invoke-virtual {v8, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2194
    :cond_0
    const/4 v6, -0x1

    .line 2195
    .local v6, targetCol:I
    const/high16 v0, -0x8000

    .line 2197
    .local v0, bottomMost:I
    iget v1, p0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    .line 2198
    .local v1, colCount:I
    sub-int v2, v1, p2

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_5

    .line 2199
    const v7, 0x7fffffff

    .line 2200
    .local v7, top:I
    move v3, v2

    .local v3, j:I
    :goto_1
    add-int v8, v2, p2

    if-ge v3, v8, :cond_3

    .line 2201
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I

    aget v5, v8, v3

    .line 2202
    .local v5, singleTop:I
    if-ge v5, v7, :cond_1

    .line 2203
    move v7, v5

    .line 2200
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2190
    .end local v0           #bottomMost:I
    .end local v1           #colCount:I
    .end local v2           #i:I
    .end local v3           #j:I
    .end local v5           #singleTop:I
    .end local v6           #targetCol:I
    .end local v7           #top:I
    :cond_2
    iget v8, v4, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->span:I

    if-eq v8, p2, :cond_0

    .line 2191
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid LayoutRecord! Record had span="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->span:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " but caller requested span="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " for position="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2206
    .restart local v0       #bottomMost:I
    .restart local v1       #colCount:I
    .restart local v2       #i:I
    .restart local v3       #j:I
    .restart local v6       #targetCol:I
    .restart local v7       #top:I
    :cond_3
    if-le v7, v0, :cond_4

    .line 2207
    move v0, v7

    .line 2208
    move v6, v2

    .line 2198
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2212
    .end local v3           #j:I
    .end local v7           #top:I
    :cond_5
    iput v6, v4, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->column:I

    .line 2214
    const/4 v2, 0x0

    :goto_2
    if-ge v2, p2, :cond_6

    .line 2215
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I

    add-int v9, v2, v6

    aget v8, v8, v9

    sub-int/2addr v8, v0

    invoke-virtual {v4, v2, v8}, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->setMarginBelow(II)V

    .line 2214
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2218
    :cond_6
    return-object v4
.end method

.method public final getOnItemClickListener()Lcom/meizu/widget/StaggeredGridView$OnItemClickListener;
    .locals 1

    .prologue
    .line 4307
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mOnItemClickListener:Lcom/meizu/widget/StaggeredGridView$OnItemClickListener;

    return-object v0
.end method

.method public final getOnItemLongClickListener()Lcom/meizu/widget/StaggeredGridView$OnItemLongClickListener;
    .locals 1

    .prologue
    .line 4346
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mOnItemLongClickListener:Lcom/meizu/widget/StaggeredGridView$OnItemLongClickListener;

    return-object v0
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 4202
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method hideSelector()V
    .locals 2

    .prologue
    .line 648
    iget v0, p0, Lcom/meizu/widget/StaggeredGridView;->mSelectorPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 651
    :cond_0
    return-void
.end method

.method final invalidateLayoutRecordsAfterPosition(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 1788
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 1789
    .local v0, beginAt:I
    :goto_0
    if-ltz v0, :cond_0

    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    if-le v3, p1, :cond_0

    .line 1790
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1792
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 1794
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1795
    .local v1, end:I
    add-int/lit8 v2, v0, 0x1

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 1796
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1795
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1800
    :cond_1
    return-void
.end method

.method final invalidateLayoutRecordsBeforePosition(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 1775
    const/4 v1, 0x0

    .line 1776
    .local v1, endAt:I
    :goto_0
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    if-ge v3, p1, :cond_0

    .line 1777
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1780
    :cond_0
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1781
    .local v0, end:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 1782
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1781
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1785
    :cond_1
    return-void
.end method

.method public invalidateViews()V
    .locals 1

    .prologue
    .line 3640
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/StaggeredGridView;->mDataChanged:Z

    .line 3641
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/StaggeredGridView;->mItemCount:I

    .line 3642
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->requestLayout()V

    .line 3643
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 3644
    return-void
.end method

.method public isDrawSelectorOnTop()Z
    .locals 1

    .prologue
    .line 4396
    iget-boolean v0, p0, Lcom/meizu/widget/StaggeredGridView;->mDrawSelectorOnTop:Z

    return v0
.end method

.method public isItemChecked(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 2997
    iget v0, p0, Lcom/meizu/widget/StaggeredGridView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 2998
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 3001
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 4224
    invoke-super {p0}, Landroid/view/ViewGroup;->jumpDrawablesToCurrentState()V

    .line 4225
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 4226
    :cond_0
    return-void
.end method

.method final layoutChildren(Z)V
    .locals 36
    .parameter "queryAdapter"

    .prologue
    .line 1626
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v22

    .line 1627
    .local v22, paddingLeft:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v23

    .line 1628
    .local v23, paddingRight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemMargin:I

    move/from16 v16, v0

    .line 1629
    .local v16, itemMargin:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v34

    sub-int v34, v34, v22

    sub-int v34, v34, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    move/from16 v35, v0

    add-int/lit8 v35, v35, -0x1

    mul-int v35, v35, v16

    sub-int v34, v34, v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    move/from16 v35, v0

    div-int v13, v34, v35

    .line 1630
    .local v13, colWidth:I
    move-object/from16 v0, p0

    iput v13, v0, Lcom/meizu/widget/StaggeredGridView;->mColWidth:I

    .line 1631
    const/16 v26, -0x1

    .line 1632
    .local v26, rebuildLayoutRecordsBefore:I
    const/16 v25, -0x1

    .line 1633
    .local v25, rebuildLayoutRecordsAfter:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    move/from16 v34, v0

    move/from16 v0, v34

    new-array v0, v0, [I

    move-object/from16 v30, v0

    .line 1635
    .local v30, tops:[I
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    .line 1636
    .local v7, childCount:I
    if-eqz v7, :cond_0

    .line 1639
    const/4 v15, 0x0

    .local v15, i:I
    const/16 v17, 0x0

    .local v17, j:I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    move/from16 v34, v0

    move/from16 v0, v17

    move/from16 v1, v34

    if-ge v0, v1, :cond_0

    if-ge v15, v7, :cond_0

    .line 1640
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v31

    .line 1641
    .local v31, view:Landroid/view/View;
    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    check-cast v29, Lcom/meizu/widget/StaggeredGridView$LayoutParams;

    .line 1642
    .local v29, tempLp:Lcom/meizu/widget/StaggeredGridView$LayoutParams;
    move-object/from16 v0, v29

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView$LayoutParams;->column:I

    move/from16 v34, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getTop()I

    move-result v35

    aput v35, v30, v34

    .line 1643
    move-object/from16 v0, v29

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView$LayoutParams;->span:I

    move/from16 v34, v0

    add-int v17, v17, v34

    .line 1639
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 1647
    .end local v15           #i:I
    .end local v17           #j:I
    .end local v29           #tempLp:Lcom/meizu/widget/StaggeredGridView$LayoutParams;
    .end local v31           #view:Landroid/view/View;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v34, v0

    const/high16 v35, -0x8000

    invoke-static/range {v34 .. v35}, Ljava/util/Arrays;->fill([II)V

    .line 1649
    const/4 v3, 0x0

    .line 1651
    .local v3, amountRemoved:I
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_1
    if-ge v15, v7, :cond_11

    .line 1652
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1653
    .local v5, child:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Lcom/meizu/widget/StaggeredGridView$LayoutParams;

    .line 1654
    .local v19, lp:Lcom/meizu/widget/StaggeredGridView$LayoutParams;
    move-object/from16 v0, v19

    iget v12, v0, Lcom/meizu/widget/StaggeredGridView$LayoutParams;->column:I

    .line 1655
    .local v12, col:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    move/from16 v34, v0

    add-int v24, v34, v15

    .line 1656
    .local v24, position:I
    if-nez p1, :cond_1

    invoke-virtual {v5}, Landroid/view/View;->isLayoutRequested()Z

    move-result v34

    if-eqz v34, :cond_4

    :cond_1
    const/16 v20, 0x1

    .line 1658
    .local v20, needsLayout:Z
    :goto_2
    if-eqz p1, :cond_7

    .line 1660
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1, v5}, Lcom/meizu/widget/StaggeredGridView;->obtainView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v21

    .line 1661
    .local v21, newView:Landroid/view/View;
    if-nez v21, :cond_5

    .line 1663
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1664
    add-int/lit8 v34, v15, -0x1

    if-ltz v34, :cond_2

    add-int/lit8 v34, v15, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/meizu/widget/StaggeredGridView;->invalidateLayoutRecordsAfterPosition(I)V

    .line 1665
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 1651
    .end local v21           #newView:Landroid/view/View;
    :cond_3
    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 1656
    .end local v20           #needsLayout:Z
    :cond_4
    const/16 v20, 0x0

    goto :goto_2

    .line 1667
    .restart local v20       #needsLayout:Z
    .restart local v21       #newView:Landroid/view/View;
    :cond_5
    move-object/from16 v0, v21

    if-eq v0, v5, :cond_6

    .line 1668
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1669
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 1670
    move-object/from16 v5, v21

    .line 1672
    :cond_6
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    .end local v19           #lp:Lcom/meizu/widget/StaggeredGridView$LayoutParams;
    check-cast v19, Lcom/meizu/widget/StaggeredGridView$LayoutParams;

    .line 1673
    .restart local v19       #lp:Lcom/meizu/widget/StaggeredGridView$LayoutParams;
    move-object/from16 v0, v19

    iput v12, v0, Lcom/meizu/widget/StaggeredGridView$LayoutParams;->column:I

    .line 1674
    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1677
    .end local v21           #newView:Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    move/from16 v34, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView$LayoutParams;->span:I

    move/from16 v35, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->min(II)I

    move-result v28

    .line 1678
    .local v28, span:I
    mul-int v34, v13, v28

    add-int/lit8 v35, v28, -0x1

    mul-int v35, v35, v16

    add-int v32, v34, v35

    .line 1680
    .local v32, widthSize:I
    if-eqz v20, :cond_8

    .line 1681
    const/high16 v34, 0x4000

    move/from16 v0, v32

    move/from16 v1, v34

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v33

    .line 1684
    .local v33, widthSpec:I
    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v34, v0

    const/16 v35, -0x2

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_a

    .line 1685
    const/16 v34, 0x0

    const/16 v35, 0x0

    invoke-static/range {v34 .. v35}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 1690
    .local v14, heightSpec:I
    :goto_4
    move/from16 v0, v33

    invoke-virtual {v5, v0, v14}, Landroid/view/View;->measure(II)V

    .line 1693
    .end local v14           #heightSpec:I
    .end local v33           #widthSpec:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v34, v0

    aget v34, v34, v12

    const/high16 v35, -0x8000

    move/from16 v0, v34

    move/from16 v1, v35

    if-le v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v34, v0

    aget v34, v34, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemMargin:I

    move/from16 v35, v0

    add-int v11, v34, v35

    .line 1695
    .local v11, childTop:I
    :goto_5
    const/16 v34, 0x1

    move/from16 v0, v28

    move/from16 v1, v34

    if-le v0, v1, :cond_d

    .line 1696
    move/from16 v18, v11

    .line 1697
    .local v18, lowest:I
    add-int/lit8 v17, v12, 0x1

    .restart local v17       #j:I
    :goto_6
    add-int v34, v12, v28

    move/from16 v0, v17

    move/from16 v1, v34

    if-ge v0, v1, :cond_c

    .line 1698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v34, v0

    aget v34, v34, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemMargin:I

    move/from16 v35, v0

    add-int v4, v34, v35

    .line 1699
    .local v4, bottom:I
    move/from16 v0, v18

    if-le v4, v0, :cond_9

    .line 1700
    move/from16 v18, v4

    .line 1697
    :cond_9
    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    .line 1687
    .end local v4           #bottom:I
    .end local v11           #childTop:I
    .end local v17           #j:I
    .end local v18           #lowest:I
    .restart local v33       #widthSpec:I
    :cond_a
    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v34, v0

    const/high16 v35, 0x4000

    invoke-static/range {v34 .. v35}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .restart local v14       #heightSpec:I
    goto :goto_4

    .line 1693
    .end local v14           #heightSpec:I
    .end local v33           #widthSpec:I
    :cond_b
    aget v11, v30, v12

    goto :goto_5

    .line 1703
    .restart local v11       #childTop:I
    .restart local v17       #j:I
    .restart local v18       #lowest:I
    :cond_c
    move/from16 v11, v18

    .line 1705
    .end local v17           #j:I
    .end local v18           #lowest:I
    :cond_d
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 1706
    .local v8, childHeight:I
    add-int v6, v11, v8

    .line 1707
    .local v6, childBottom:I
    add-int v34, v13, v16

    mul-int v34, v34, v12

    add-int v9, v22, v34

    .line 1708
    .local v9, childLeft:I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v34

    add-int v10, v9, v34

    .line 1709
    .local v10, childRight:I
    invoke-virtual {v5, v9, v11, v10, v6}, Landroid/view/View;->layout(IIII)V

    .line 1711
    move/from16 v17, v12

    .restart local v17       #j:I
    :goto_7
    add-int v34, v12, v28

    move/from16 v0, v17

    move/from16 v1, v34

    if-ge v0, v1, :cond_e

    .line 1712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v34, v0

    aput v6, v34, v17

    .line 1711
    add-int/lit8 v17, v17, 0x1

    goto :goto_7

    .line 1715
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;

    .line 1716
    .local v27, rec:Lcom/meizu/widget/StaggeredGridView$LayoutRecord;
    if-eqz v27, :cond_f

    move-object/from16 v0, v27

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->height:I

    move/from16 v34, v0

    move/from16 v0, v34

    if-eq v0, v8, :cond_f

    .line 1718
    move-object/from16 v0, v27

    iput v8, v0, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->height:I

    .line 1719
    move/from16 v26, v24

    .line 1722
    :cond_f
    if-eqz v27, :cond_10

    move-object/from16 v0, v27

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->span:I

    move/from16 v34, v0

    move/from16 v0, v34

    move/from16 v1, v28

    if-eq v0, v1, :cond_10

    .line 1724
    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->span:I

    .line 1725
    move/from16 v25, v24

    .line 1728
    :cond_10
    if-eqz v27, :cond_3

    move-object/from16 v0, v27

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->column:I

    move/from16 v34, v0

    move/from16 v0, v34

    if-eq v0, v12, :cond_3

    .line 1729
    move-object/from16 v0, v27

    iput v12, v0, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->column:I

    goto/16 :goto_3

    .line 1734
    .end local v5           #child:Landroid/view/View;
    .end local v6           #childBottom:I
    .end local v8           #childHeight:I
    .end local v9           #childLeft:I
    .end local v10           #childRight:I
    .end local v11           #childTop:I
    .end local v12           #col:I
    .end local v17           #j:I
    .end local v19           #lp:Lcom/meizu/widget/StaggeredGridView$LayoutParams;
    .end local v20           #needsLayout:Z
    .end local v24           #position:I
    .end local v27           #rec:Lcom/meizu/widget/StaggeredGridView$LayoutRecord;
    .end local v28           #span:I
    .end local v32           #widthSize:I
    :cond_11
    const/4 v15, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    move/from16 v34, v0

    move/from16 v0, v34

    if-ge v15, v0, :cond_13

    .line 1735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v34, v0

    aget v34, v34, v15

    const/high16 v35, -0x8000

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_12

    .line 1736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v35, v0

    aget v35, v35, v15

    aput v35, v34, v15

    .line 1734
    :cond_12
    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    .line 1740
    :cond_13
    if-gez v26, :cond_14

    if-ltz v25, :cond_18

    .line 1741
    :cond_14
    if-ltz v26, :cond_15

    .line 1742
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/meizu/widget/StaggeredGridView;->invalidateLayoutRecordsBeforePosition(I)V

    .line 1744
    :cond_15
    if-ltz v25, :cond_16

    .line 1745
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/meizu/widget/StaggeredGridView;->invalidateLayoutRecordsAfterPosition(I)V

    .line 1747
    :cond_16
    const/4 v15, 0x0

    :goto_9
    sub-int v34, v7, v3

    move/from16 v0, v34

    if-ge v15, v0, :cond_18

    .line 1748
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    move/from16 v34, v0

    add-int v24, v34, v15

    .line 1749
    .restart local v24       #position:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1750
    .restart local v5       #child:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Lcom/meizu/widget/StaggeredGridView$LayoutParams;

    .line 1751
    .restart local v19       #lp:Lcom/meizu/widget/StaggeredGridView$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;

    .line 1752
    .restart local v27       #rec:Lcom/meizu/widget/StaggeredGridView$LayoutRecord;
    if-nez v27, :cond_17

    .line 1753
    new-instance v27, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;

    .end local v27           #rec:Lcom/meizu/widget/StaggeredGridView$LayoutRecord;
    const/16 v34, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;-><init>(Lcom/meizu/widget/StaggeredGridView$1;)V

    .line 1754
    .restart local v27       #rec:Lcom/meizu/widget/StaggeredGridView$LayoutRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v24

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1756
    :cond_17
    move-object/from16 v0, v19

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView$LayoutParams;->column:I

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, v27

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->column:I

    .line 1757
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, v27

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->height:I

    .line 1758
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/meizu/widget/StaggeredGridView$LayoutParams;->id:J

    move-wide/from16 v34, v0

    move-wide/from16 v0, v34

    move-object/from16 v2, v27

    iput-wide v0, v2, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->id:J

    .line 1759
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    move/from16 v34, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView$LayoutParams;->span:I

    move/from16 v35, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->min(II)I

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, v27

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView$LayoutRecord;->span:I

    .line 1747
    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    .line 1763
    .end local v5           #child:Landroid/view/View;
    .end local v19           #lp:Lcom/meizu/widget/StaggeredGridView$LayoutParams;
    .end local v24           #position:I
    .end local v27           #rec:Lcom/meizu/widget/StaggeredGridView$LayoutRecord;
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mSelectorPosition:I

    move/from16 v34, v0

    const/16 v35, -0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_1a

    .line 1764
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mMotionPosition:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    move/from16 v35, v0

    sub-int v34, v34, v35

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1765
    .restart local v5       #child:Landroid/view/View;
    if-eqz v5, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mMotionPosition:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1, v5}, Lcom/meizu/widget/StaggeredGridView;->positionSelector(ILandroid/view/View;)V

    .line 1772
    .end local v5           #child:Landroid/view/View;
    :cond_19
    :goto_a
    return-void

    .line 1766
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I

    move/from16 v34, v0

    const/16 v35, 0x3

    move/from16 v0, v34

    move/from16 v1, v35

    if-le v0, v1, :cond_1b

    .line 1767
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mMotionPosition:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    move/from16 v35, v0

    sub-int v34, v34, v35

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1768
    .restart local v5       #child:Landroid/view/View;
    if-eqz v5, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mMotionPosition:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1, v5}, Lcom/meizu/widget/StaggeredGridView;->positionSelector(ILandroid/view/View;)V

    goto :goto_a

    .line 1770
    .end local v5           #child:Landroid/view/View;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mSelectorRect:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_a
.end method

.method final obtainView(ILandroid/view/View;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "optScrap"

    .prologue
    .line 2291
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView;->mRecycler:Lcom/meizu/widget/StaggeredGridView$RecycleBin;

    invoke-virtual {v8, p1}, Lcom/meizu/widget/StaggeredGridView$RecycleBin;->getTransientStateView(I)Landroid/view/View;

    move-result-object v6

    .line 2292
    .local v6, view:Landroid/view/View;
    if-eqz v6, :cond_0

    move-object v8, v6

    .line 2454
    :goto_0
    return-object v8

    .line 2296
    :cond_0
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    if-lt p1, v8, :cond_1

    .line 2297
    const/4 v6, 0x0

    .line 2298
    const/4 v8, 0x0

    goto :goto_0

    .line 2302
    :cond_1
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/meizu/widget/StaggeredGridView$LayoutParams;

    iget v1, v8, Lcom/meizu/widget/StaggeredGridView$LayoutParams;->viewType:I

    .line 2304
    .local v1, optType:I
    :goto_1
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    .line 2305
    .local v2, positionViewType:I
    if-ne v1, v2, :cond_6

    move-object v3, p2

    .line 2309
    .local v3, scrap:Landroid/view/View;
    :goto_2
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8, p1, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 2311
    if-eq v6, v3, :cond_2

    if-eqz v3, :cond_2

    .line 2313
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView;->mRecycler:Lcom/meizu/widget/StaggeredGridView$RecycleBin;

    invoke-virtual {v8, v3}, Lcom/meizu/widget/StaggeredGridView$RecycleBin;->addScrap(Landroid/view/View;)V

    .line 2317
    :cond_2
    move v5, p1

    .line 2318
    .local v5, tPosition:I
    iget v8, p0, Lcom/meizu/widget/StaggeredGridView;->mChoiceMode:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_3

    .line 2319
    new-instance v8, Lcom/meizu/widget/StaggeredGridView$6;

    invoke-direct {v8, p0, v5}, Lcom/meizu/widget/StaggeredGridView$6;-><init>(Lcom/meizu/widget/StaggeredGridView;I)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 2436
    :cond_3
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 2438
    .local v7, vlp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-eq v8, p0, :cond_4

    .line 2439
    if-nez v7, :cond_7

    .line 2440
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->generateDefaultLayoutParams()Lcom/meizu/widget/StaggeredGridView$LayoutParams;

    move-result-object v0

    .line 2446
    .local v0, lp:Lcom/meizu/widget/StaggeredGridView$LayoutParams;
    :goto_3
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    iput-wide v8, v0, Lcom/meizu/widget/StaggeredGridView$LayoutParams;->id:J

    .line 2447
    invoke-virtual {v6, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .end local v0           #lp:Lcom/meizu/widget/StaggeredGridView$LayoutParams;
    :cond_4
    move-object v4, v7

    .line 2450
    check-cast v4, Lcom/meizu/widget/StaggeredGridView$LayoutParams;

    .line 2451
    .local v4, sglp:Lcom/meizu/widget/StaggeredGridView$LayoutParams;
    iput p1, v4, Lcom/meizu/widget/StaggeredGridView$LayoutParams;->position:I

    .line 2452
    iput v2, v4, Lcom/meizu/widget/StaggeredGridView$LayoutParams;->viewType:I

    move-object v8, v6

    .line 2454
    goto :goto_0

    .line 2302
    .end local v1           #optType:I
    .end local v2           #positionViewType:I
    .end local v3           #scrap:Landroid/view/View;
    .end local v4           #sglp:Lcom/meizu/widget/StaggeredGridView$LayoutParams;
    .end local v5           #tPosition:I
    .end local v7           #vlp:Landroid/view/ViewGroup$LayoutParams;
    :cond_5
    const/4 v1, -0x1

    goto :goto_1

    .line 2305
    .restart local v1       #optType:I
    .restart local v2       #positionViewType:I
    :cond_6
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView;->mRecycler:Lcom/meizu/widget/StaggeredGridView$RecycleBin;

    iget-object v9, p0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v9, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v9

    invoke-virtual {v8, v2, v9, v10}, Lcom/meizu/widget/StaggeredGridView$RecycleBin;->getScrapView(IJ)Landroid/view/View;

    move-result-object v3

    goto :goto_2

    .line 2441
    .restart local v3       #scrap:Landroid/view/View;
    .restart local v5       #tPosition:I
    .restart local v7       #vlp:Landroid/view/ViewGroup$LayoutParams;
    :cond_7
    invoke-virtual {p0, v7}, Lcom/meizu/widget/StaggeredGridView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 2442
    invoke-virtual {p0, v7}, Lcom/meizu/widget/StaggeredGridView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/meizu/widget/StaggeredGridView$LayoutParams;

    move-result-object v0

    .restart local v0       #lp:Lcom/meizu/widget/StaggeredGridView$LayoutParams;
    goto :goto_3

    .end local v0           #lp:Lcom/meizu/widget/StaggeredGridView$LayoutParams;
    :cond_8
    move-object v0, v7

    .line 2444
    check-cast v0, Lcom/meizu/widget/StaggeredGridView$LayoutParams;

    .restart local v0       #lp:Lcom/meizu/widget/StaggeredGridView$LayoutParams;
    goto :goto_3
.end method

.method final offsetChildren(I)V
    .locals 8
    .parameter "offset"

    .prologue
    .line 1606
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 1607
    .local v1, childCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 1608
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1609
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    add-int/2addr v5, p1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v7

    add-int/2addr v7, p1

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 1607
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1613
    .end local v0           #child:Landroid/view/View;
    :cond_0
    iget v2, p0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    .line 1614
    .local v2, colCount:I
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    .line 1615
    iget-object v4, p0, Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I

    aget v5, v4, v3

    add-int/2addr v5, p1

    aput v5, v4, v3

    .line 1616
    iget-object v4, p0, Lcom/meizu/widget/StaggeredGridView;->mItemBottoms:[I

    aget v5, v4, v3

    add-int/2addr v5, p1

    aput v5, v4, v3

    .line 1614
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1618
    :cond_1
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 6
    .parameter "extraSpace"

    .prologue
    .line 3669
    iget-boolean v4, p0, Lcom/meizu/widget/StaggeredGridView;->mIsChildViewEnabled:Z

    if-eqz v4, :cond_1

    .line 3671
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 3697
    :cond_0
    :goto_0
    return-object v3

    .line 3677
    :cond_1
    sget-object v4, Lcom/meizu/widget/StaggeredGridView;->ENABLED_STATE_SET:[I

    const/4 v5, 0x0

    aget v1, v4, v5

    .line 3682
    .local v1, enabledState:I
    add-int/lit8 v4, p1, 0x1

    invoke-super {p0, v4}, Landroid/view/ViewGroup;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 3683
    .local v3, state:[I
    const/4 v0, -0x1

    .line 3684
    .local v0, enabledPos:I
    array-length v4, v3

    add-int/lit8 v2, v4, -0x1

    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_2

    .line 3685
    aget v4, v3, v2

    if-ne v4, v1, :cond_3

    .line 3686
    move v0, v2

    .line 3692
    :cond_2
    if-ltz v0, :cond_0

    .line 3693
    add-int/lit8 v4, v0, 0x1

    array-length v5, v3

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 3684
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "ev"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 604
    iget-object v7, p0, Lcom/meizu/widget/StaggeredGridView;->mPositionScroller:Lcom/meizu/widget/StaggeredGridView$PositionScroller;

    if-eqz v7, :cond_0

    .line 605
    iget-object v7, p0, Lcom/meizu/widget/StaggeredGridView;->mPositionScroller:Lcom/meizu/widget/StaggeredGridView$PositionScroller;

    invoke-virtual {v7}, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->stop()V

    .line 608
    :cond_0
    iget-object v7, p0, Lcom/meizu/widget/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 609
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    and-int/lit16 v0, v7, 0xff

    .line 610
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    :cond_1
    :pswitch_0
    move v5, v6

    .line 644
    :goto_0
    return v5

    .line 612
    :pswitch_1
    iget-object v7, p0, Lcom/meizu/widget/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->clear()V

    .line 613
    iget-object v7, p0, Lcom/meizu/widget/StaggeredGridView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v7}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 614
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/meizu/widget/StaggeredGridView;->mLastTouchY:F

    .line 615
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, p0, Lcom/meizu/widget/StaggeredGridView;->mActivePointerId:I

    .line 616
    const/4 v7, 0x0

    iput v7, p0, Lcom/meizu/widget/StaggeredGridView;->mTouchRemainderY:F

    .line 617
    iget v7, p0, Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    goto :goto_0

    .line 625
    :pswitch_2
    iget v7, p0, Lcom/meizu/widget/StaggeredGridView;->mActivePointerId:I

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 626
    .local v3, index:I
    if-gez v3, :cond_2

    .line 627
    const-string v5, "StaggeredGridView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onInterceptTouchEvent could not find pointer with id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/meizu/widget/StaggeredGridView;->mActivePointerId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - did StaggeredGridView receive an inconsistent "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "event stream?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 630
    goto :goto_0

    .line 632
    :cond_2
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 633
    .local v4, y:F
    iget v7, p0, Lcom/meizu/widget/StaggeredGridView;->mLastTouchY:F

    sub-float v7, v4, v7

    iget v8, p0, Lcom/meizu/widget/StaggeredGridView;->mTouchRemainderY:F

    add-float v2, v7, v8

    .line 634
    .local v2, dy:F
    float-to-int v1, v2

    .line 635
    .local v1, deltaY:I
    int-to-float v7, v1

    sub-float v7, v2, v7

    iput v7, p0, Lcom/meizu/widget/StaggeredGridView;->mTouchRemainderY:F

    .line 637
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/meizu/widget/StaggeredGridView;->mTouchSlop:I

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1

    .line 638
    iput v5, p0, Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I

    goto :goto_0

    .line 610
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v3, 0x0

    .line 1331
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/meizu/widget/StaggeredGridView;->mInLayout:Z

    .line 1332
    invoke-direct {p0, v3}, Lcom/meizu/widget/StaggeredGridView;->populate(Z)V

    .line 1333
    iput-boolean v3, p0, Lcom/meizu/widget/StaggeredGridView;->mInLayout:Z

    .line 1335
    sub-int v1, p4, p2

    .line 1336
    .local v1, width:I
    sub-int v0, p5, p3

    .line 1340
    .local v0, height:I
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v5, 0x4000

    .line 1299
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 1300
    .local v3, widthMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1301
    .local v1, heightMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 1302
    .local v4, widthSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 1304
    .local v2, heightSize:I
    if-eq v3, v5, :cond_0

    .line 1305
    const/high16 v3, 0x4000

    .line 1307
    :cond_0
    if-eq v1, v5, :cond_1

    .line 1308
    const/high16 v1, 0x4000

    .line 1311
    :cond_1
    invoke-virtual {p0, v4, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 1313
    iget v5, p0, Lcom/meizu/widget/StaggeredGridView;->mColCountSetting:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    .line 1314
    iget v5, p0, Lcom/meizu/widget/StaggeredGridView;->mMinColWidth:I

    div-int v0, v4, v5

    .line 1315
    .local v0, colCount:I
    iget v5, p0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    if-eq v0, v5, :cond_2

    .line 1316
    iput v0, p0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    .line 1319
    .end local v0           #colCount:I
    :cond_2
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 8
    .parameter "state"

    .prologue
    .line 3096
    move-object v3, p1

    check-cast v3, Lcom/meizu/widget/StaggeredGridView$SavedState;

    .line 3097
    .local v3, ss:Lcom/meizu/widget/StaggeredGridView$SavedState;
    invoke-virtual {v3}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v4

    invoke-super {p0, v4}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3098
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/meizu/widget/StaggeredGridView;->mDataChanged:Z

    .line 3099
    iget v4, v3, Lcom/meizu/widget/StaggeredGridView$SavedState;->position:I

    iput v4, p0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    .line 3100
    iget-object v4, v3, Lcom/meizu/widget/StaggeredGridView$SavedState;->topOffsets:[I

    iput-object v4, p0, Lcom/meizu/widget/StaggeredGridView;->mRestoreOffsets:[I

    .line 3102
    iget-boolean v4, v3, Lcom/meizu/widget/StaggeredGridView$SavedState;->inActionMode:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/meizu/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/meizu/widget/StaggeredGridView;->mMultiChoiceModeCallback:Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper;

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/meizu/widget/StaggeredGridView;->mChoiceMode:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 3104
    iget-object v4, p0, Lcom/meizu/widget/StaggeredGridView;->mMultiChoiceModeCallback:Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v4}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 3107
    :cond_0
    iget-object v4, v3, Lcom/meizu/widget/StaggeredGridView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    if-eqz v4, :cond_1

    .line 3108
    iget-object v4, v3, Lcom/meizu/widget/StaggeredGridView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v4, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 3111
    :cond_1
    iget-object v4, v3, Lcom/meizu/widget/StaggeredGridView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    if-eqz v4, :cond_2

    .line 3112
    iget-object v4, v3, Lcom/meizu/widget/StaggeredGridView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v4, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 3115
    :cond_2
    iget v4, v3, Lcom/meizu/widget/StaggeredGridView$SavedState;->checkedItemCount:I

    iput v4, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckedItemCount:I

    .line 3116
    iget-object v1, v3, Lcom/meizu/widget/StaggeredGridView$SavedState;->mapping:Ljava/util/ArrayList;

    .line 3118
    .local v1, convert:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/widget/StaggeredGridView$ColMap;>;"
    if-eqz v1, :cond_3

    .line 3119
    iget-object v4, p0, Lcom/meizu/widget/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 3120
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/StaggeredGridView$ColMap;

    .line 3121
    .local v0, colMap:Lcom/meizu/widget/StaggeredGridView$ColMap;
    iget-object v4, p0, Lcom/meizu/widget/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    #getter for: Lcom/meizu/widget/StaggeredGridView$ColMap;->values:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/meizu/widget/StaggeredGridView$ColMap;->access$2400(Lcom/meizu/widget/StaggeredGridView$ColMap;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3125
    .end local v0           #colMap:Lcom/meizu/widget/StaggeredGridView$ColMap;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_3
    iget-wide v4, v3, Lcom/meizu/widget/StaggeredGridView$SavedState;->firstId:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_4

    .line 3126
    iget-wide v4, v3, Lcom/meizu/widget/StaggeredGridView$SavedState;->firstId:J

    iput-wide v4, p0, Lcom/meizu/widget/StaggeredGridView;->mFirstAdapterId:J

    .line 3127
    const/4 v4, -0x1

    iput v4, p0, Lcom/meizu/widget/StaggeredGridView;->mSelectorPosition:I

    .line 3131
    :cond_4
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->invalidateViews()V

    .line 3132
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 13

    .prologue
    .line 3050
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v8

    .line 3051
    .local v8, superState:Landroid/os/Parcelable;
    new-instance v7, Lcom/meizu/widget/StaggeredGridView$SavedState;

    invoke-direct {v7, v8}, Lcom/meizu/widget/StaggeredGridView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3052
    .local v7, ss:Lcom/meizu/widget/StaggeredGridView$SavedState;
    iget v6, p0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    .line 3053
    .local v6, position:I
    iput v6, v7, Lcom/meizu/widget/StaggeredGridView$SavedState;->position:I

    .line 3054
    if-ltz v6, :cond_0

    iget-object v10, p0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v10}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    if-ge v6, v10, :cond_0

    .line 3055
    iget-object v10, p0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v10, v6}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v10

    iput-wide v10, v7, Lcom/meizu/widget/StaggeredGridView$SavedState;->firstId:J

    .line 3058
    :cond_0
    iget v10, p0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    new-array v9, v10, [I

    .line 3059
    .local v9, topOffsets:[I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    if-lez v10, :cond_4

    .line 3060
    iget v10, p0, Lcom/meizu/widget/StaggeredGridView;->mColWidth:I

    if-lez v10, :cond_1

    .line 3061
    iget-object v9, p0, Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I

    .line 3063
    :cond_1
    iput-object v9, v7, Lcom/meizu/widget/StaggeredGridView$SavedState;->topOffsets:[I

    .line 3066
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3067
    .local v1, convert:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/widget/StaggeredGridView$ColMap;>;"
    iget-object v10, p0, Lcom/meizu/widget/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 3068
    .local v0, cols:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v10, Lcom/meizu/widget/StaggeredGridView$ColMap;

    invoke-direct {v10, v0}, Lcom/meizu/widget/StaggeredGridView$ColMap;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3071
    .end local v0           #cols:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2
    iput-object v1, v7, Lcom/meizu/widget/StaggeredGridView$SavedState;->mapping:Ljava/util/ArrayList;

    .line 3077
    .end local v1           #convert:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/widget/StaggeredGridView$ColMap;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    :goto_1
    iget v10, p0, Lcom/meizu/widget/StaggeredGridView;->mChoiceMode:I

    const/4 v11, 0x4

    if-ne v10, v11, :cond_5

    iget-object v10, p0, Lcom/meizu/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v10, :cond_5

    const/4 v10, 0x1

    :goto_2
    iput-boolean v10, v7, Lcom/meizu/widget/StaggeredGridView$SavedState;->inActionMode:Z

    .line 3079
    iget-object v10, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v10, :cond_3

    .line 3080
    iget-object v10, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v10}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v10

    iput-object v10, v7, Lcom/meizu/widget/StaggeredGridView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 3082
    :cond_3
    iget-object v10, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v10, :cond_7

    .line 3083
    new-instance v5, Landroid/util/LongSparseArray;

    invoke-direct {v5}, Landroid/util/LongSparseArray;-><init>()V

    .line 3084
    .local v5, idState:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    iget-object v10, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v10}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    .line 3085
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3
    if-ge v3, v2, :cond_6

    .line 3086
    iget-object v10, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v10, v3}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v10

    iget-object v12, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v12, v3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v5, v10, v11, v12}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3085
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 3073
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v5           #idState:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_4
    iput-object v9, v7, Lcom/meizu/widget/StaggeredGridView$SavedState;->topOffsets:[I

    .line 3074
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v7, Lcom/meizu/widget/StaggeredGridView$SavedState;->mapping:Ljava/util/ArrayList;

    goto :goto_1

    .line 3077
    :cond_5
    const/4 v10, 0x0

    goto :goto_2

    .line 3088
    .restart local v2       #count:I
    .restart local v3       #i:I
    .restart local v5       #idState:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_6
    iput-object v5, v7, Lcom/meizu/widget/StaggeredGridView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 3090
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v5           #idState:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_7
    iget v10, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckedItemCount:I

    iput v10, v7, Lcom/meizu/widget/StaggeredGridView$SavedState;->checkedItemCount:I

    .line 3091
    return-object v7
.end method

.method protected onStatusBarTapScrollTop()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 4447
    iget v2, p0, Lcom/meizu/widget/StaggeredGridView;->mItemCount:I

    if-nez v2, :cond_1

    .line 4468
    :cond_0
    :goto_0
    return v1

    .line 4450
    :cond_1
    iget v2, p0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    if-nez v2, :cond_2

    .line 4451
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4452
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 4453
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 4459
    .end local v0           #child:Landroid/view/View;
    :cond_2
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_3

    .line 4460
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    .line 4461
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 4463
    :cond_3
    iget v2, p0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    if-le v2, v3, :cond_4

    .line 4464
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v2, v1}, Lcom/meizu/widget/StaggeredGridView;->setPositionAndTop(II)V

    .line 4467
    :cond_4
    invoke-virtual {p0, v1}, Lcom/meizu/widget/StaggeredGridView;->smoothScrollToPosition(I)V

    .line 4468
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 30
    .parameter "ev"

    .prologue
    .line 655
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 656
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v12, v3, 0xff

    .line 658
    .local v12, action:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/StaggeredGridView;->mPositionScroller:Lcom/meizu/widget/StaggeredGridView$PositionScroller;

    if-eqz v3, :cond_0

    .line 659
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/StaggeredGridView;->mPositionScroller:Lcom/meizu/widget/StaggeredGridView$PositionScroller;

    invoke-virtual {v3}, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->stop()V

    .line 662
    :cond_0
    packed-switch v12, :pswitch_data_0

    .line 889
    :goto_0
    const/4 v3, 0x1

    :goto_1
    return v3

    .line 665
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 666
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/StaggeredGridView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 668
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/meizu/widget/StaggeredGridView;->mLastTouchY:F

    .line 669
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/meizu/widget/StaggeredGridView;->mLastTouchX:F

    .line 670
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v0, v3

    move/from16 v28, v0

    .line 671
    .local v28, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v0, v3

    move/from16 v29, v0

    .line 673
    .local v29, y:I
    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/meizu/widget/StaggeredGridView;->pointToPosition(II)I

    move-result v22

    .line 674
    .local v22, motionPosition:I
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/meizu/widget/StaggeredGridView;->mActivePointerId:I

    .line 675
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/meizu/widget/StaggeredGridView;->mTouchRemainderY:F

    .line 677
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I

    const/4 v4, 0x7

    if-eq v3, v4, :cond_2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/meizu/widget/StaggeredGridView;->mDataChanged:Z

    if-nez v3, :cond_2

    if-ltz v22, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/StaggeredGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    move/from16 v0, v22

    invoke-interface {v3, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 678
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I

    .line 682
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/StaggeredGridView;->mPendingCheckForTap:Ljava/lang/Runnable;

    if-nez v3, :cond_1

    .line 683
    new-instance v3, Lcom/meizu/widget/StaggeredGridView$CheckForTap;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/meizu/widget/StaggeredGridView$CheckForTap;-><init>(Lcom/meizu/widget/StaggeredGridView;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/meizu/widget/StaggeredGridView;->mPendingCheckForTap:Ljava/lang/Runnable;

    .line 686
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/StaggeredGridView;->mPendingCheckForTap:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v4

    int-to-long v4, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 689
    :cond_2
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView;->mMotionPosition:I

    .line 690
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView;->mMotionX:I

    .line 691
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView;->mMotionY:I

    goto/16 :goto_0

    .line 696
    .end local v22           #motionPosition:I
    .end local v28           #x:I
    .end local v29           #y:I
    :pswitch_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/widget/StaggeredGridView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v21

    .line 697
    .local v21, index:I
    if-gez v21, :cond_3

    .line 698
    const-string v3, "StaggeredGridView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onInterceptTouchEvent could not find pointer with id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/meizu/widget/StaggeredGridView;->mActivePointerId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - did StaggeredGridView receive an inconsistent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "event stream?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 703
    :cond_3
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v29

    .line 704
    .local v29, y:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/widget/StaggeredGridView;->mLastTouchY:F

    sub-float v3, v29, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/widget/StaggeredGridView;->mTouchRemainderY:F

    add-float v17, v3, v4

    .line 705
    .local v17, dy:F
    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v16, v0

    .line 706
    .local v16, deltaY:I
    move/from16 v0, v16

    int-to-float v3, v0

    sub-float v3, v17, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/meizu/widget/StaggeredGridView;->mTouchRemainderY:F

    .line 708
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/widget/StaggeredGridView;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_6

    .line 709
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I

    .line 711
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v18

    .line 715
    .local v18, handler:Landroid/os/Handler;
    if-eqz v18, :cond_4

    .line 716
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/StaggeredGridView;->mPendingCheckForLongPress:Lcom/meizu/widget/StaggeredGridView$CheckForLongPress;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 718
    :cond_4
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 719
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/widget/StaggeredGridView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    .line 720
    .local v23, motionView:Landroid/view/View;
    if-eqz v23, :cond_5

    .line 721
    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 726
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v24

    .line 727
    .local v24, parent:Landroid/view/ViewParent;
    if-eqz v24, :cond_6

    .line 728
    const/4 v3, 0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 732
    .end local v18           #handler:Landroid/os/Handler;
    .end local v23           #motionView:Landroid/view/View;
    .end local v24           #parent:Landroid/view/ViewParent;
    :cond_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    .line 733
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView;->mLastTouchY:F

    .line 735
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/widget/StaggeredGridView;->mMaxOverScrollDistance:I

    if-eqz v3, :cond_7

    .line 736
    const/4 v3, 0x7

    move-object/from16 v0, p0

    iput v3, v0, Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I

    .line 737
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/widget/StaggeredGridView;->mMaxOverScrollDistance:I

    if-lt v3, v4, :cond_9

    .line 738
    const/16 v17, 0x0

    .line 743
    :goto_2
    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v16, v0

    .line 744
    move/from16 v0, v16

    int-to-float v3, v0

    sub-float v3, v17, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/meizu/widget/StaggeredGridView;->mTouchRemainderY:F

    .line 747
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/meizu/widget/StaggeredGridView;->mDataChanged:Z

    if-nez v3, :cond_8

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/meizu/widget/StaggeredGridView;->mUpdateing:Z

    if-nez v3, :cond_8

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/meizu/widget/StaggeredGridView;->mFadeOuting:Z

    if-nez v3, :cond_8

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v3}, Lcom/meizu/widget/StaggeredGridView;->trackMotionScroll(IZ)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 749
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 753
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/StaggeredGridView;->updateSelectorState()V

    goto/16 :goto_0

    .line 740
    :cond_9
    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    move-object/from16 v0, p0

    iget v5, v0, Lcom/meizu/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/meizu/widget/StaggeredGridView;->mMaxOverScrollDistance:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    sub-float v14, v3, v4

    .line 741
    .local v14, coeff:F
    mul-float v17, v17, v14

    goto :goto_2

    .line 759
    .end local v14           #coeff:F
    .end local v16           #deltaY:I
    .end local v17           #dy:F
    .end local v21           #index:I
    .end local v29           #y:F
    :pswitch_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/StaggeredGridView;->mScroller:Landroid/widget/OverScroller;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/meizu/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 760
    const/4 v3, 0x7

    move-object/from16 v0, p0

    iput v3, v0, Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I

    .line 761
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/meizu/widget/StaggeredGridView;->mLastOverScrollX:I

    .line 762
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_0

    .line 764
    :cond_a
    const/4 v3, 0x6

    move-object/from16 v0, p0

    iput v3, v0, Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I

    .line 765
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/StaggeredGridView;->updateSelectorState()V

    .line 766
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 767
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/widget/StaggeredGridView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    .line 768
    .restart local v23       #motionView:Landroid/view/View;
    if-eqz v23, :cond_b

    .line 769
    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 771
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v18

    .line 772
    .restart local v18       #handler:Landroid/os/Handler;
    if-eqz v18, :cond_c

    .line 773
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/StaggeredGridView;->mPendingCheckForLongPress:Lcom/meizu/widget/StaggeredGridView$CheckForLongPress;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 781
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/meizu/widget/StaggeredGridView;->recycleVelocityTracker()V

    .line 782
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/meizu/widget/StaggeredGridView;->mActivePointerId:I

    goto/16 :goto_0

    .line 787
    .end local v18           #handler:Landroid/os/Handler;
    .end local v23           #motionView:Landroid/view/View;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    move-object/from16 v0, p0

    iget v5, v0, Lcom/meizu/widget/StaggeredGridView;->mMaximumVelocity:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 788
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/widget/StaggeredGridView;->mActivePointerId:I

    invoke-virtual {v3, v4}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v27

    .line 789
    .local v27, velocity:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I

    move/from16 v26, v0

    .line 791
    .local v26, prevTouchMode:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/meizu/widget/StaggeredGridView;->mDataChanged:Z

    if-nez v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/StaggeredGridView;->mScroller:Landroid/widget/OverScroller;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/meizu/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 792
    const/4 v3, 0x7

    move-object/from16 v0, p0

    iput v3, v0, Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I

    .line 793
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/meizu/widget/StaggeredGridView;->mLastOverScrollX:I

    .line 794
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_0

    .line 796
    :cond_d
    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/widget/StaggeredGridView;->mFlingVelocity:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_e

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/meizu/widget/StaggeredGridView;->mDataChanged:Z

    if-nez v3, :cond_e

    .line 797
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I

    .line 798
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/StaggeredGridView;->mScroller:Landroid/widget/OverScroller;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v0, v27

    float-to-int v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, -0x8000

    const v11, 0x7fffffff

    invoke-virtual/range {v3 .. v11}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 800
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/meizu/widget/StaggeredGridView;->mLastTouchY:F

    .line 801
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 809
    :goto_3
    packed-switch v26, :pswitch_data_1

    .line 885
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/StaggeredGridView;->updateSelectorState()V

    goto/16 :goto_0

    .line 802
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/meizu/widget/StaggeredGridView;->mDataChanged:Z

    if-nez v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/widget/StaggeredGridView;->mMotionPosition:I

    invoke-interface {v3, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 804
    const/4 v3, 0x4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I

    goto :goto_3

    .line 806
    :cond_f
    const/4 v3, 0x6

    move-object/from16 v0, p0

    iput v3, v0, Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I

    goto :goto_3

    .line 813
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/StaggeredGridView;->mMotionPosition:I

    move/from16 v22, v0

    .line 814
    .restart local v22       #motionPosition:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    sub-int v3, v22, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 815
    .local v13, child:Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v28

    .line 816
    .local v28, x:F
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v28, v3

    if-lez v3, :cond_16

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v3, v28, v3

    if-gez v3, :cond_16

    const/16 v20, 0x1

    .line 817
    .local v20, inList:Z
    :goto_5
    if-eqz v13, :cond_1b

    invoke-virtual {v13}, Landroid/view/View;->hasFocusable()Z

    move-result v3

    if-nez v3, :cond_1b

    if-eqz v20, :cond_1b

    .line 818
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_10

    .line 819
    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Landroid/view/View;->setPressed(Z)V

    .line 822
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/StaggeredGridView;->mPerformClick:Lcom/meizu/widget/StaggeredGridView$PerformClick;

    if-nez v3, :cond_11

    .line 823
    new-instance v3, Lcom/meizu/widget/StaggeredGridView$PerformClick;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/meizu/widget/StaggeredGridView$PerformClick;-><init>(Lcom/meizu/widget/StaggeredGridView;Lcom/meizu/widget/StaggeredGridView$1;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/meizu/widget/StaggeredGridView;->mPerformClick:Lcom/meizu/widget/StaggeredGridView$PerformClick;

    .line 826
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/StaggeredGridView;->mPerformClick:Lcom/meizu/widget/StaggeredGridView$PerformClick;

    move-object/from16 v25, v0

    .line 827
    .local v25, performClick:Lcom/meizu/widget/StaggeredGridView$PerformClick;
    move/from16 v0, v22

    move-object/from16 v1, v25

    iput v0, v1, Lcom/meizu/widget/StaggeredGridView$PerformClick;->mClickMotionPosition:I

    .line 828
    invoke-virtual/range {v25 .. v25}, Lcom/meizu/widget/StaggeredGridView$WindowRunnnable;->rememberWindowAttachCount()V

    .line 831
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_12

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_19

    .line 832
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v19

    .line 833
    .local v19, handlerTouch:Landroid/os/Handler;
    if-eqz v19, :cond_13

    .line 834
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/StaggeredGridView;->mPendingCheckForTap:Ljava/lang/Runnable;

    :goto_6
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 838
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/meizu/widget/StaggeredGridView;->mDataChanged:Z

    if-nez v3, :cond_18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    move/from16 v0, v22

    invoke-interface {v3, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 839
    const/4 v3, 0x4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I

    .line 841
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/meizu/widget/StaggeredGridView;->mDataChanged:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/meizu/widget/StaggeredGridView;->layoutChildren(Z)V

    .line 842
    const/4 v3, 0x1

    invoke-virtual {v13, v3}, Landroid/view/View;->setPressed(Z)V

    .line 843
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/widget/StaggeredGridView;->mMotionPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v13}, Lcom/meizu/widget/StaggeredGridView;->positionSelector(ILandroid/view/View;)V

    .line 844
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 846
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 847
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_14

    .line 848
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 849
    .local v15, d:Landroid/graphics/drawable/Drawable;
    if-eqz v15, :cond_14

    instance-of v3, v15, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v3, :cond_14

    .line 850
    check-cast v15, Landroid/graphics/drawable/TransitionDrawable;

    .end local v15           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v15}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 853
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/StaggeredGridView;->mTouchModeReset:Ljava/lang/Runnable;

    if-eqz v3, :cond_15

    .line 854
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/StaggeredGridView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 856
    :cond_15
    new-instance v3, Lcom/meizu/widget/StaggeredGridView$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v3, v0, v13, v1}, Lcom/meizu/widget/StaggeredGridView$2;-><init>(Lcom/meizu/widget/StaggeredGridView;Landroid/view/View;Lcom/meizu/widget/StaggeredGridView$PerformClick;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/meizu/widget/StaggeredGridView;->mTouchModeReset:Ljava/lang/Runnable;

    .line 867
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/StaggeredGridView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v4

    int-to-long v4, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 873
    :goto_7
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 816
    .end local v19           #handlerTouch:Landroid/os/Handler;
    .end local v20           #inList:Z
    .end local v25           #performClick:Lcom/meizu/widget/StaggeredGridView$PerformClick;
    :cond_16
    const/16 v20, 0x0

    goto/16 :goto_5

    .line 834
    .restart local v19       #handlerTouch:Landroid/os/Handler;
    .restart local v20       #inList:Z
    .restart local v25       #performClick:Lcom/meizu/widget/StaggeredGridView$PerformClick;
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/StaggeredGridView;->mPendingCheckForLongPress:Lcom/meizu/widget/StaggeredGridView$CheckForLongPress;

    goto/16 :goto_6

    .line 870
    :cond_18
    const/4 v3, 0x6

    move-object/from16 v0, p0

    iput v3, v0, Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I

    .line 871
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/StaggeredGridView;->updateSelectorState()V

    goto :goto_7

    .line 874
    .end local v19           #handlerTouch:Landroid/os/Handler;
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/meizu/widget/StaggeredGridView;->mDataChanged:Z

    if-nez v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    move/from16 v0, v22

    invoke-interface {v3, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 875
    invoke-virtual/range {v25 .. v25}, Lcom/meizu/widget/StaggeredGridView$PerformClick;->run()V

    .line 882
    .end local v25           #performClick:Lcom/meizu/widget/StaggeredGridView$PerformClick;
    :cond_1a
    :goto_8
    const/4 v3, 0x6

    move-object/from16 v0, p0

    iput v3, v0, Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I

    goto/16 :goto_4

    .line 877
    :cond_1b
    if-eqz v13, :cond_1a

    invoke-virtual {v13}, Landroid/view/View;->hasFocusable()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 878
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1a

    .line 879
    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Landroid/view/View;->setPressed(Z)V

    goto :goto_8

    .line 662
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 809
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 16
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 3808
    const/4 v15, 0x0

    .line 3809
    .local v15, handled:Z
    const/4 v14, 0x1

    .line 3811
    .local v14, dispatchItemClick:Z
    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/widget/StaggeredGridView;->mChoiceMode:I

    if-eqz v1, :cond_3

    .line 3812
    const/4 v15, 0x1

    .line 3813
    const/4 v13, 0x0

    .line 3815
    .local v13, checkedStateChanged:Z
    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/widget/StaggeredGridView;->mChoiceMode:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_2

    .line 3816
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    move/from16 v0, p2

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v6, 0x1

    .line 3817
    .local v6, checked:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move/from16 v0, p2

    invoke-virtual {v1, v0, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3818
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3819
    if-eqz v6, :cond_6

    .line 3820
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    move/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3825
    :cond_0
    :goto_1
    if-eqz v6, :cond_7

    .line 3826
    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/widget/StaggeredGridView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/meizu/widget/StaggeredGridView;->mCheckedItemCount:I

    .line 3830
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_1

    .line 3831
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/widget/StaggeredGridView;->mMultiChoiceModeCallback:Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    move/from16 v3, p2

    move-wide/from16 v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 3833
    const/4 v14, 0x0

    .line 3835
    :cond_1
    const/4 v13, 0x1

    .line 3838
    .end local v6           #checked:Z
    :cond_2
    if-eqz v13, :cond_3

    .line 3839
    invoke-direct/range {p0 .. p0}, Lcom/meizu/widget/StaggeredGridView;->updateOnScreenCheckedViews()V

    .line 3843
    .end local v13           #checkedStateChanged:Z
    :cond_3
    if-eqz v14, :cond_8

    .line 3844
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/widget/StaggeredGridView;->mOnItemClickListener:Lcom/meizu/widget/StaggeredGridView$OnItemClickListener;

    if-eqz v1, :cond_8

    .line 3845
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    .line 3846
    if-eqz p1, :cond_4

    .line 3847
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 3849
    :cond_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/meizu/widget/StaggeredGridView;->mOnItemClickListener:Lcom/meizu/widget/StaggeredGridView$OnItemClickListener;

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move-wide/from16 v11, p3

    invoke-interface/range {v7 .. v12}, Lcom/meizu/widget/StaggeredGridView$OnItemClickListener;->onItemClick(Lcom/meizu/widget/StaggeredGridView;Landroid/view/View;IJ)V

    .line 3850
    const/4 v1, 0x1

    .line 3854
    :goto_3
    return v1

    .line 3816
    .restart local v13       #checkedStateChanged:Z
    :cond_5
    const/4 v6, 0x0

    goto :goto_0

    .line 3822
    .restart local v6       #checked:Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    move/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_1

    .line 3828
    :cond_7
    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/widget/StaggeredGridView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/meizu/widget/StaggeredGridView;->mCheckedItemCount:I

    goto :goto_2

    .line 3854
    .end local v6           #checked:Z
    .end local v13           #checkedStateChanged:Z
    :cond_8
    const/4 v1, 0x0

    goto :goto_3
.end method

.method performLongPress(Landroid/view/View;IJ)Z
    .locals 12
    .parameter "child"
    .parameter "longPressPosition"
    .parameter "longPressId"

    .prologue
    .line 3862
    iget v0, p0, Lcom/meizu/widget/StaggeredGridView;->mChoiceMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_c

    .line 3863
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mMultiChoiceModeCallback:Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_a

    .line 3865
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 3866
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3867
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 3870
    :cond_1
    iput p2, p0, Lcom/meizu/widget/StaggeredGridView;->mDragAndDropPosition:I

    .line 3872
    const v0, 0x1020001

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 3873
    .local v6, checkbox:Landroid/view/View;
    if-eqz v6, :cond_2

    instance-of v0, v6, Landroid/widget/Checkable;

    if-eqz v0, :cond_2

    move-object v0, v6

    .line 3874
    check-cast v0, Landroid/widget/Checkable;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 3877
    :cond_2
    iget-object v7, p0, Lcom/meizu/widget/StaggeredGridView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3878
    .local v7, frame:Landroid/graphics/Rect;
    if-nez v7, :cond_3

    .line 3879
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3880
    iget-object v7, p0, Lcom/meizu/widget/StaggeredGridView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3882
    :cond_3
    invoke-virtual {p1, v7}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 3884
    const/4 v0, 0x0

    iget v1, p0, Lcom/meizu/widget/StaggeredGridView;->mMotionX:I

    iget v2, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/StaggeredGridView;->mDragOffsetX:I

    .line 3885
    const/4 v0, 0x0

    iget v1, p0, Lcom/meizu/widget/StaggeredGridView;->mMotionY:I

    iget v2, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/StaggeredGridView;->mDragOffsetY:I

    .line 3887
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setActivated(Z)V

    .line 3888
    invoke-virtual {p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 3890
    instance-of v0, p1, Lcom/meizu/widget/StaggeredGridView$DragShadowItem;

    if-eqz v0, :cond_7

    move-object v9, p1

    .line 3891
    check-cast v9, Lcom/meizu/widget/StaggeredGridView$DragShadowItem;

    .line 3892
    .local v9, item:Lcom/meizu/widget/StaggeredGridView$DragShadowItem;
    new-instance v0, Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;

    invoke-interface {v9}, Lcom/meizu/widget/StaggeredGridView$DragShadowItem;->getDragView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v9}, Lcom/meizu/widget/StaggeredGridView$DragShadowItem;->needBackground()Z

    move-result v2

    invoke-interface {v9}, Lcom/meizu/widget/StaggeredGridView$DragShadowItem;->getDragViewShowPosition()Landroid/graphics/Point;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;-><init>(Lcom/meizu/widget/StaggeredGridView;Landroid/view/View;ZLandroid/graphics/Point;)V

    iput-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mShadowBuilder:Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;

    .line 3897
    .end local v9           #item:Lcom/meizu/widget/StaggeredGridView$DragShadowItem;
    :goto_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/meizu/widget/StaggeredGridView;->mShadowBuilder:Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p0, v2}, Landroid/view/View;->startDragMz(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 3899
    if-eqz v6, :cond_4

    instance-of v0, v6, Landroid/widget/Checkable;

    if-eqz v0, :cond_4

    .line 3900
    check-cast v6, Landroid/widget/Checkable;

    .end local v6           #checkbox:Landroid/view/View;
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 3902
    :cond_4
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 3903
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/widget/StaggeredGridView;->mDragAndDropPosition:I

    .line 3905
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mPerformClick:Lcom/meizu/widget/StaggeredGridView$PerformClick;

    if-nez v0, :cond_5

    .line 3906
    new-instance v0, Lcom/meizu/widget/StaggeredGridView$PerformClick;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/widget/StaggeredGridView$PerformClick;-><init>(Lcom/meizu/widget/StaggeredGridView;Lcom/meizu/widget/StaggeredGridView$1;)V

    iput-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mPerformClick:Lcom/meizu/widget/StaggeredGridView$PerformClick;

    .line 3910
    :cond_5
    iget-object v10, p0, Lcom/meizu/widget/StaggeredGridView;->mPerformClick:Lcom/meizu/widget/StaggeredGridView$PerformClick;

    .line 3911
    .local v10, performClick:Lcom/meizu/widget/StaggeredGridView$PerformClick;
    iput p2, v10, Lcom/meizu/widget/StaggeredGridView$PerformClick;->mClickMotionPosition:I

    .line 3912
    invoke-virtual {v10}, Lcom/meizu/widget/StaggeredGridView$WindowRunnnable;->rememberWindowAttachCount()V

    .line 3913
    invoke-virtual {p0, v10}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 3914
    const/4 v8, 0x1

    .line 3944
    .end local v7           #frame:Landroid/graphics/Rect;
    .end local v10           #performClick:Lcom/meizu/widget/StaggeredGridView$PerformClick;
    :cond_6
    :goto_1
    return v8

    .line 3894
    .restart local v6       #checkbox:Landroid/view/View;
    .restart local v7       #frame:Landroid/graphics/Rect;
    :cond_7
    new-instance v0, Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;

    invoke-direct {v0, p0, p1}, Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;-><init>(Lcom/meizu/widget/StaggeredGridView;Landroid/view/View;)V

    iput-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mShadowBuilder:Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;

    goto :goto_0

    .line 3917
    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 3918
    instance-of v0, p1, Lcom/meizu/widget/StaggeredGridView$DragShadowItem;

    if-eqz v0, :cond_b

    move-object v0, p1

    .line 3919
    check-cast v0, Lcom/meizu/widget/StaggeredGridView$DragShadowItem;

    invoke-interface {v0}, Lcom/meizu/widget/StaggeredGridView$DragShadowItem;->getDragView()Landroid/view/View;

    move-result-object v11

    .line 3920
    .local v11, v:Landroid/view/View;
    if-eqz v11, :cond_9

    .line 3921
    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Landroid/view/View;->setAlpha(F)V

    .line 3923
    :cond_9
    iget-boolean v0, p0, Lcom/meizu/widget/StaggeredGridView;->mChangeChildAlphaWhenDragView:Z

    if-eqz v0, :cond_a

    .line 3924
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 3930
    .end local v6           #checkbox:Landroid/view/View;
    .end local v7           #frame:Landroid/graphics/Rect;
    .end local v11           #v:Landroid/view/View;
    :cond_a
    :goto_2
    const/4 v8, 0x1

    goto :goto_1

    .line 3927
    .restart local v6       #checkbox:Landroid/view/View;
    .restart local v7       #frame:Landroid/graphics/Rect;
    :cond_b
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    .line 3933
    .end local v6           #checkbox:Landroid/view/View;
    .end local v7           #frame:Landroid/graphics/Rect;
    :cond_c
    const/4 v8, 0x0

    .line 3934
    .local v8, handled:Z
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mOnItemLongClickListener:Lcom/meizu/widget/StaggeredGridView$OnItemLongClickListener;

    if-eqz v0, :cond_d

    .line 3935
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mOnItemLongClickListener:Lcom/meizu/widget/StaggeredGridView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/meizu/widget/StaggeredGridView$OnItemLongClickListener;->onItemLongClick(Lcom/meizu/widget/StaggeredGridView;Landroid/view/View;IJ)Z

    move-result v8

    .line 3937
    :cond_d
    if-nez v8, :cond_e

    .line 3938
    invoke-virtual/range {p0 .. p4}, Lcom/meizu/widget/StaggeredGridView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3939
    invoke-super {p0, p0}, Landroid/view/ViewGroup;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v8

    .line 3941
    :cond_e
    if-eqz v8, :cond_6

    .line 3942
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_1
.end method

.method public pointToPosition(II)I
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 4376
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mTouchFrame:Landroid/graphics/Rect;

    .line 4377
    .local v2, frame:Landroid/graphics/Rect;
    if-nez v2, :cond_0

    .line 4378
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/meizu/widget/StaggeredGridView;->mTouchFrame:Landroid/graphics/Rect;

    .line 4379
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mTouchFrame:Landroid/graphics/Rect;

    .line 4382
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 4383
    .local v1, count:I
    add-int/lit8 v3, v1, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_2

    .line 4384
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4385
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 4386
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 4387
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4388
    iget v4, p0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    add-int/2addr v4, v3

    .line 4392
    .end local v0           #child:Landroid/view/View;
    :goto_1
    return v4

    .line 4383
    .restart local v0       #child:Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 4392
    .end local v0           #child:Landroid/view/View;
    :cond_2
    const/4 v4, -0x1

    goto :goto_1
.end method

.method positionSelector(ILandroid/view/View;)V
    .locals 7
    .parameter "position"
    .parameter "sel"

    .prologue
    const/4 v6, -0x1

    .line 3614
    if-eq p1, v6, :cond_0

    .line 3615
    iput p1, p0, Lcom/meizu/widget/StaggeredGridView;->mSelectorPosition:I

    .line 3618
    :cond_0
    iget-object v1, p0, Lcom/meizu/widget/StaggeredGridView;->mSelectorRect:Landroid/graphics/Rect;

    .line 3619
    .local v1, selectorRect:Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 3620
    instance-of v2, p2, Lcom/meizu/widget/StaggeredGridView$SelectionBoundsAdjuster;

    if-eqz v2, :cond_1

    move-object v2, p2

    .line 3621
    check-cast v2, Lcom/meizu/widget/StaggeredGridView$SelectionBoundsAdjuster;

    invoke-interface {v2, v1}, Lcom/meizu/widget/StaggeredGridView$SelectionBoundsAdjuster;->adjustListItemSelectionBounds(Landroid/graphics/Rect;)V

    .line 3624
    :cond_1
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/meizu/widget/StaggeredGridView;->positionSelector(IIII)V

    .line 3627
    iget-boolean v0, p0, Lcom/meizu/widget/StaggeredGridView;->mIsChildViewEnabled:Z

    .line 3628
    .local v0, isChildViewEnabled:Z
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eq v2, v0, :cond_2

    .line 3629
    if-nez v0, :cond_3

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/meizu/widget/StaggeredGridView;->mIsChildViewEnabled:Z

    .line 3630
    invoke-direct {p0}, Lcom/meizu/widget/StaggeredGridView;->getSelectedItemPosition()I

    move-result v2

    if-eq v2, v6, :cond_2

    .line 3631
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 3634
    :cond_2
    return-void

    .line 3629
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1291
    iget-boolean v0, p0, Lcom/meizu/widget/StaggeredGridView;->mPopulating:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/meizu/widget/StaggeredGridView;->mFastChildLayout:Z

    if-nez v0, :cond_0

    .line 1292
    invoke-super {p0}, Landroid/view/View;->requestLayout()V

    .line 1294
    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 4
    .parameter "adapter"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2462
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_0

    .line 2463
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView;->mObserver:Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;

    invoke-interface {v2, v3}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2467
    :cond_0
    invoke-direct {p0}, Lcom/meizu/widget/StaggeredGridView;->clearAllState()V

    .line 2468
    iput-object p1, p0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2469
    iput-boolean v0, p0, Lcom/meizu/widget/StaggeredGridView;->mDataChanged:Z

    .line 2471
    if-eqz p1, :cond_4

    .line 2472
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    iput v2, p0, Lcom/meizu/widget/StaggeredGridView;->mItemCount:I

    .line 2473
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mObserver:Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;

    invoke-interface {p1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2474
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mRecycler:Lcom/meizu/widget/StaggeredGridView$RecycleBin;

    invoke-interface {p1}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/meizu/widget/StaggeredGridView$RecycleBin;->setViewTypeCount(I)V

    .line 2475
    invoke-interface {p1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    iput-boolean v2, p0, Lcom/meizu/widget/StaggeredGridView;->mHasStableIds:Z

    .line 2476
    iget v2, p0, Lcom/meizu/widget/StaggeredGridView;->mChoiceMode:I

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/meizu/widget/StaggeredGridView;->mHasStableIds:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v2, :cond_1

    .line 2478
    new-instance v2, Landroid/util/LongSparseArray;

    invoke-direct {v2}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 2483
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v2, :cond_2

    .line 2484
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 2487
    :cond_2
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_3

    .line 2488
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 2490
    :cond_3
    if-eqz p1, :cond_5

    :goto_1
    invoke-direct {p0, v0}, Lcom/meizu/widget/StaggeredGridView;->populate(Z)V

    .line 2491
    return-void

    .line 2481
    :cond_4
    iput-boolean v1, p0, Lcom/meizu/widget/StaggeredGridView;->mHasStableIds:Z

    goto :goto_0

    :cond_5
    move v0, v1

    .line 2490
    goto :goto_1
.end method

.method public setChoiceMode(I)V
    .locals 2
    .parameter "choiceMode"

    .prologue
    .line 2692
    iput p1, p0, Lcom/meizu/widget/StaggeredGridView;->mChoiceMode:I

    .line 2693
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 2694
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 2695
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 2697
    :cond_0
    iget v0, p0, Lcom/meizu/widget/StaggeredGridView;->mChoiceMode:I

    if-eqz v0, :cond_3

    .line 2698
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_1

    .line 2699
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 2701
    :cond_1
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2702
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 2705
    :cond_2
    iget v0, p0, Lcom/meizu/widget/StaggeredGridView;->mChoiceMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 2706
    invoke-direct {p0}, Lcom/meizu/widget/StaggeredGridView;->clearChoices()V

    .line 2707
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 2710
    :cond_3
    return-void
.end method

.method public setColumnCount(I)V
    .locals 4
    .parameter "colCount"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 547
    if-ge p1, v0, :cond_0

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    .line 548
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Column count must be at least 1 - received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 551
    :cond_0
    iget v2, p0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    if-eq p1, v2, :cond_2

    .line 552
    .local v0, needsPopulate:Z
    :goto_0
    iput p1, p0, Lcom/meizu/widget/StaggeredGridView;->mColCountSetting:I

    iput p1, p0, Lcom/meizu/widget/StaggeredGridView;->mColCount:I

    .line 553
    if-eqz v0, :cond_1

    .line 554
    invoke-direct {p0, v1}, Lcom/meizu/widget/StaggeredGridView;->populate(Z)V

    .line 556
    :cond_1
    return-void

    .end local v0           #needsPopulate:Z
    :cond_2
    move v0, v1

    .line 551
    goto :goto_0
.end method

.method public setDragItemBackgroundResources([I)V
    .locals 3
    .parameter "bgres"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 4006
    if-eqz p1, :cond_2

    .line 4007
    array-length v0, p1

    if-lez v0, :cond_0

    .line 4008
    const/4 v0, 0x0

    aget v0, p1, v0

    iput v0, p0, Lcom/meizu/widget/StaggeredGridView;->mDragViewBackground:I

    .line 4010
    :cond_0
    array-length v0, p1

    if-le v0, v1, :cond_1

    .line 4011
    aget v0, p1, v1

    iput v0, p0, Lcom/meizu/widget/StaggeredGridView;->mDragViewBackgroundFilter:I

    .line 4013
    :cond_1
    array-length v0, p1

    if-le v0, v2, :cond_2

    .line 4014
    aget v0, p1, v2

    iput v0, p0, Lcom/meizu/widget/StaggeredGridView;->mDragViewBackgroundDelete:I

    .line 4017
    :cond_2
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0
    .parameter "drawSelectorOnTop"

    .prologue
    .line 4400
    iput-boolean p1, p0, Lcom/meizu/widget/StaggeredGridView;->mDrawSelectorOnTop:Z

    .line 4401
    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 10
    .parameter "position"
    .parameter "value"

    .prologue
    const/4 v5, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2734
    iget v2, p0, Lcom/meizu/widget/StaggeredGridView;->mChoiceMode:I

    if-nez v2, :cond_1

    .line 2802
    :cond_0
    :goto_0
    return-void

    .line 2739
    :cond_1
    if-eqz p2, :cond_4

    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v2, :cond_4

    iget v2, p0, Lcom/meizu/widget/StaggeredGridView;->mChoiceMode:I

    if-ne v2, v5, :cond_4

    .line 2741
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mMultiChoiceModeCallback:Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mMultiChoiceModeCallback:Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper;

    invoke-virtual {v2}, Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper;->hasWrappedCallback()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2743
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "StaggeredGridView: attempted to start selection mode for CHOICE_MODE_MULTIPLE_MODAL but no choice mode callback was supplied. Call setMultiChoiceModeListener to set a callback."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2747
    :cond_3
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mMultiChoiceModeCallback:Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v2}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 2750
    :cond_4
    iget v2, p0, Lcom/meizu/widget/StaggeredGridView;->mChoiceMode:I

    if-ne v2, v5, :cond_a

    .line 2751
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    .line 2752
    .local v6, oldValue:Z
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2753
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2754
    if-eqz p2, :cond_8

    .line 2755
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v2, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2760
    :cond_5
    :goto_1
    if-eq v6, p2, :cond_6

    .line 2761
    if-eqz p2, :cond_9

    .line 2762
    iget v0, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckedItemCount:I

    .line 2767
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_7

    .line 2768
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    .line 2769
    .local v3, id:J
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mMultiChoiceModeCallback:Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper;

    iget-object v1, p0, Lcom/meizu/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v2, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 2796
    .end local v3           #id:J
    .end local v6           #oldValue:Z
    :cond_7
    :goto_3
    iget-boolean v0, p0, Lcom/meizu/widget/StaggeredGridView;->mInLayout:Z

    if-nez v0, :cond_0

    .line 2799
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->invalidateViews()V

    goto :goto_0

    .line 2757
    .restart local v6       #oldValue:Z
    :cond_8
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_1

    .line 2764
    :cond_9
    iget v0, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckedItemCount:I

    goto :goto_2

    .line 2773
    .end local v6           #oldValue:Z
    :cond_a
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_e

    move v7, v0

    .line 2776
    .local v7, updateIds:Z
    :goto_4
    if-nez p2, :cond_b

    invoke-virtual {p0, p1}, Lcom/meizu/widget/StaggeredGridView;->isItemChecked(I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2777
    :cond_b
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 2778
    if-eqz v7, :cond_c

    .line 2779
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 2784
    :cond_c
    if-eqz p2, :cond_f

    .line 2785
    iget-object v1, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2786
    if-eqz v7, :cond_d

    .line 2787
    iget-object v1, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v8, v9, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2789
    :cond_d
    iput v0, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckedItemCount:I

    goto :goto_3

    .end local v7           #updateIds:Z
    :cond_e
    move v7, v1

    .line 2773
    goto :goto_4

    .line 2790
    .restart local v7       #updateIds:Z
    :cond_f
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2791
    :cond_10
    iput v1, p0, Lcom/meizu/widget/StaggeredGridView;->mCheckedItemCount:I

    goto :goto_3
.end method

.method public setItemDragListener(Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2641
    iput-object p1, p0, Lcom/meizu/widget/StaggeredGridView;->mItemDragListener:Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;

    .line 2642
    return-void
.end method

.method public setItemMargin(I)V
    .locals 3
    .parameter "marginPixels"

    .prologue
    const/4 v1, 0x0

    .line 578
    iget v2, p0, Lcom/meizu/widget/StaggeredGridView;->mItemMargin:I

    if-eq p1, v2, :cond_1

    const/4 v0, 0x1

    .line 579
    .local v0, needsPopulate:Z
    :goto_0
    iput p1, p0, Lcom/meizu/widget/StaggeredGridView;->mItemMargin:I

    .line 580
    if-eqz v0, :cond_0

    .line 581
    invoke-direct {p0, v1}, Lcom/meizu/widget/StaggeredGridView;->populate(Z)V

    .line 583
    :cond_0
    return-void

    .end local v0           #needsPopulate:Z
    :cond_1
    move v0, v1

    .line 578
    goto :goto_0
.end method

.method public setMinColumnWidth(I)V
    .locals 1
    .parameter "minColWidth"

    .prologue
    .line 567
    iput p1, p0, Lcom/meizu/widget/StaggeredGridView;->mMinColWidth:I

    .line 568
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/meizu/widget/StaggeredGridView;->setColumnCount(I)V

    .line 569
    return-void
.end method

.method public setMultiChoiceModeListener(Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 2814
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mMultiChoiceModeCallback:Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper;

    if-nez v0, :cond_0

    .line 2815
    new-instance v0, Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper;

    invoke-direct {v0, p0}, Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper;-><init>(Lcom/meizu/widget/StaggeredGridView;)V

    iput-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mMultiChoiceModeCallback:Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper;

    .line 2817
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mMultiChoiceModeCallback:Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeWrapper;->setWrapped(Lcom/meizu/widget/StaggeredGridView$MultiChoiceModeListener;)V

    .line 2818
    return-void
.end method

.method public setOnItemClickListener(Lcom/meizu/widget/StaggeredGridView$OnItemClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 4299
    iput-object p1, p0, Lcom/meizu/widget/StaggeredGridView;->mOnItemClickListener:Lcom/meizu/widget/StaggeredGridView$OnItemClickListener;

    .line 4300
    return-void
.end method

.method public setOnItemLongClickListener(Lcom/meizu/widget/StaggeredGridView$OnItemLongClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 4335
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4336
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 4338
    :cond_0
    iput-object p1, p0, Lcom/meizu/widget/StaggeredGridView;->mOnItemLongClickListener:Lcom/meizu/widget/StaggeredGridView$OnItemLongClickListener;

    .line 4339
    return-void
.end method

.method public setPositionAndTop(II)V
    .locals 8
    .parameter "position"
    .parameter "top"

    .prologue
    const/4 v7, 0x0

    .line 1455
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->getFirstPosition()I

    move-result v1

    .line 1456
    .local v1, firstPosition:I
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->getLastVisiblePosition()I

    move-result v2

    .line 1457
    .local v2, lastVisiblePosition:I
    move v4, p1

    .line 1458
    .local v4, syncPosition:I
    move v3, p2

    .line 1465
    .local v3, sncTop:I
    if-ltz v4, :cond_0

    iget v6, p0, Lcom/meizu/widget/StaggeredGridView;->mItemCount:I

    if-lt v4, v6, :cond_2

    .line 1497
    :cond_0
    :goto_0
    return-void

    .line 1477
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->getFirstPosition()I

    move-result v1

    .line 1478
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->getLastVisiblePosition()I

    move-result v2

    .line 1468
    :cond_2
    if-lt v4, v1, :cond_3

    if-le v4, v2, :cond_5

    .line 1469
    :cond_3
    if-le v4, v2, :cond_7

    .line 1470
    const/16 v6, -0x12c

    invoke-direct {p0, v6, v7}, Lcom/meizu/widget/StaggeredGridView;->trackMotionScroll(IZ)Z

    .line 1474
    :cond_4
    :goto_1
    iget v6, p0, Lcom/meizu/widget/StaggeredGridView;->mMoveBy:I

    if-nez v6, :cond_1

    .line 1480
    :cond_5
    sub-int v6, v4, v1

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1481
    .local v5, view:Landroid/view/View;
    const/4 v0, 0x0

    .line 1482
    .local v0, delta:I
    if-eqz v5, :cond_6

    .line 1483
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v0, v6, v3

    .line 1486
    :cond_6
    if-eqz v0, :cond_0

    .line 1487
    neg-int v6, v0

    invoke-direct {p0, v6, v7}, Lcom/meizu/widget/StaggeredGridView;->trackMotionScroll(IZ)Z

    .line 1489
    iget v6, p0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    sub-int v6, v4, v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1490
    if-eqz v5, :cond_0

    .line 1491
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v0, v6, v3

    .line 1492
    if-eqz v0, :cond_0

    .line 1493
    neg-int v6, v0

    invoke-direct {p0, v6, v7}, Lcom/meizu/widget/StaggeredGridView;->trackMotionScroll(IZ)Z

    goto :goto_0

    .line 1471
    .end local v0           #delta:I
    .end local v5           #view:Landroid/view/View;
    :cond_7
    if-ge v4, v1, :cond_4

    .line 1472
    const/16 v6, 0x12c

    invoke-direct {p0, v6, v7}, Lcom/meizu/widget/StaggeredGridView;->trackMotionScroll(IZ)Z

    goto :goto_1
.end method

.method public setSelectionToTop()V
    .locals 5

    .prologue
    .line 2540
    iget-boolean v3, p0, Lcom/meizu/widget/StaggeredGridView;->mLayoutAnim:Z

    if-eqz v3, :cond_1

    .line 2581
    :cond_0
    :goto_0
    return-void

    .line 2544
    :cond_1
    iget-boolean v3, p0, Lcom/meizu/widget/StaggeredGridView;->mFadeOuting:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView;->mFadeOutViewAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    if-eqz v3, :cond_2

    .line 2545
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView;->mFadeOutViewAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    .line 2548
    :cond_2
    iget-boolean v3, p0, Lcom/meizu/widget/StaggeredGridView;->mUpdateing:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView;->mUpdateAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    if-eqz v3, :cond_3

    .line 2549
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView;->mUpdateAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    .line 2552
    :cond_3
    iget-boolean v3, p0, Lcom/meizu/widget/StaggeredGridView;->mDataChanged:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/meizu/widget/StaggeredGridView;->mSync:Z

    if-eqz v3, :cond_5

    .line 2554
    :cond_4
    new-instance v2, Lcom/meizu/widget/StaggeredGridView$7;

    invoke-direct {v2, p0}, Lcom/meizu/widget/StaggeredGridView$7;-><init>(Lcom/meizu/widget/StaggeredGridView;)V

    .line 2560
    .local v2, runnable:Ljava/lang/Runnable;
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 2561
    .local v1, handler:Landroid/os/Handler;
    if-eqz v1, :cond_0

    .line 2562
    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 2566
    .end local v1           #handler:Landroid/os/Handler;
    .end local v2           #runnable:Ljava/lang/Runnable;
    :cond_5
    iget v0, p0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    .line 2568
    .local v0, firstPosition:I
    if-nez v0, :cond_6

    .line 2569
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->requestLayout()V

    goto :goto_0

    .line 2571
    :cond_6
    invoke-direct {p0}, Lcom/meizu/widget/StaggeredGridView;->recycleAllViews()V

    .line 2573
    invoke-direct {p0}, Lcom/meizu/widget/StaggeredGridView;->resetStateForGridTop()V

    .line 2574
    iget-boolean v3, p0, Lcom/meizu/widget/StaggeredGridView;->mEnableAnimation:Z

    if-eqz v3, :cond_7

    .line 2575
    invoke-virtual {p0}, Landroid/view/ViewGroup;->startLayoutAnimation()V

    goto :goto_0

    .line 2577
    :cond_7
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->requestLayout()V

    goto :goto_0
.end method

.method public setSelector(I)V
    .locals 1
    .parameter "resID"

    .prologue
    .line 4213
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/widget/StaggeredGridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 4214
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "sel"

    .prologue
    .line 4229
    iget-object v1, p0, Lcom/meizu/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 4230
    iget-object v1, p0, Lcom/meizu/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 4231
    iget-object v1, p0, Lcom/meizu/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4234
    :cond_0
    iput-object p1, p0, Lcom/meizu/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 4236
    iget-object v1, p0, Lcom/meizu/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 4248
    :goto_0
    return-void

    .line 4240
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4241
    .local v0, padding:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 4242
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lcom/meizu/widget/StaggeredGridView;->mSelectionLeftPadding:I

    .line 4243
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcom/meizu/widget/StaggeredGridView;->mSelectionTopPadding:I

    .line 4244
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Lcom/meizu/widget/StaggeredGridView;->mSelectionRightPadding:I

    .line 4245
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Lcom/meizu/widget/StaggeredGridView;->mSelectionBottomPadding:I

    .line 4246
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 4247
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->updateSelectorState()V

    goto :goto_0
.end method

.method public setTopShadowEnable(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 1241
    iput-boolean p1, p0, Lcom/meizu/widget/StaggeredGridView;->mEnableTopShadow:Z

    .line 1242
    return-void
.end method

.method shouldShowSelector()Z
    .locals 1

    .prologue
    .line 4274
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->touchModeDrawsInPressedState()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public smoothScrollBy(II)V
    .locals 1
    .parameter "distance"
    .parameter "duration"

    .prologue
    .line 4697
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/meizu/widget/StaggeredGridView;->smoothScrollBy(IIZ)V

    .line 4698
    return-void
.end method

.method smoothScrollBy(IIZ)V
    .locals 11
    .parameter "distance"
    .parameter "duration"
    .parameter "linear"

    .prologue
    const/4 v1, 0x0

    .line 4703
    iget v8, p0, Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I

    .line 4704
    .local v8, firstPos:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    .line 4705
    .local v7, childCount:I
    add-int v9, v8, v7

    .line 4706
    .local v9, lastPos:I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    .line 4707
    .local v10, topLimit:I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int v6, v0, v2

    .line 4709
    .local v6, bottomLimit:I
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/meizu/widget/StaggeredGridView;->mItemCount:I

    if-eqz v0, :cond_1

    if-eqz v7, :cond_1

    if-nez v8, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-ne v0, v10, :cond_0

    if-ltz p1, :cond_1

    :cond_0
    iget v0, p0, Lcom/meizu/widget/StaggeredGridView;->mItemCount:I

    if-ne v9, v0, :cond_3

    add-int/lit8 v0, v7, -0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    if-ne v0, v6, :cond_3

    if-lez p1, :cond_3

    .line 4713
    :cond_1
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 4714
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mPositionScroller:Lcom/meizu/widget/StaggeredGridView$PositionScroller;

    if-eqz v0, :cond_2

    .line 4715
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mPositionScroller:Lcom/meizu/widget/StaggeredGridView$PositionScroller;

    invoke-virtual {v0}, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->stop()V

    .line 4724
    :cond_2
    :goto_0
    return-void

    .line 4718
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/widget/StaggeredGridView;->mLastTouchY:F

    .line 4720
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mScroller:Landroid/widget/OverScroller;

    neg-int v4, p1

    move v2, v1

    move v3, v1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 4721
    const/4 v0, 0x2

    iput v0, p0, Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I

    .line 4722
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method public smoothScrollToPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 4477
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mPositionScroller:Lcom/meizu/widget/StaggeredGridView$PositionScroller;

    if-nez v0, :cond_0

    .line 4478
    new-instance v0, Lcom/meizu/widget/StaggeredGridView$PositionScroller;

    invoke-direct {v0, p0}, Lcom/meizu/widget/StaggeredGridView$PositionScroller;-><init>(Lcom/meizu/widget/StaggeredGridView;)V

    iput-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mPositionScroller:Lcom/meizu/widget/StaggeredGridView$PositionScroller;

    .line 4480
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mPositionScroller:Lcom/meizu/widget/StaggeredGridView$PositionScroller;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/StaggeredGridView$PositionScroller;->start(I)V

    .line 4481
    return-void
.end method

.method touchModeDrawsInPressedState()Z
    .locals 1

    .prologue
    .line 4283
    iget v0, p0, Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    .line 4288
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 4286
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 4283
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method updateSelectorState()V
    .locals 2

    .prologue
    .line 4251
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 4252
    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView;->shouldShowSelector()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4253
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 4258
    :cond_0
    :goto_0
    return-void

    .line 4255
    :cond_1
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "dr"

    .prologue
    .line 4218
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
