.class public Landroid/widget/Gallery;
.super Landroid/widget/AbsSpinner;
.source "Gallery.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Gallery$PerformClick;,
        Landroid/widget/Gallery$WindowRunnnable;,
        Landroid/widget/Gallery$AdapterContextMenuInfo;,
        Landroid/widget/Gallery$ListViewDragShadowBuilder;,
        Landroid/widget/Gallery$DragShadowItem;,
        Landroid/widget/Gallery$MultiChoiceModeWrapper;,
        Landroid/widget/Gallery$MultiChoiceModeListener;,
        Landroid/widget/Gallery$OnScrollListener;,
        Landroid/widget/Gallery$LayoutParams;,
        Landroid/widget/Gallery$FlingRunnable;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final CHECK_POSITION_SEARCH_DISTANCE:I = 0x14

.field public static final CHOICE_MODE_MULTIPLE:I = 0x1

.field public static final CHOICE_MODE_SINGLE:I = 0x0

.field private static final SCROLL_TO_FLING_UNCERTAINTY_TIMEOUT:I = 0xfa

.field private static final TAG:Ljava/lang/String; = "Gallery"

.field private static final localLOGV:Z


# instance fields
.field private mAnimationDuration:I

.field private mChangeChildAlphaWhenDragView:Z

.field private mCheckStates:Landroid/util/SparseBooleanArray;

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

.field private mCheckedItemCount:I

.field private mChoiceActionMode:Landroid/view/ActionMode;

.field private mChoiceMode:I

.field private mContextMenuInfo:Landroid/widget/Gallery$AdapterContextMenuInfo;

.field private mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

.field private mDownTouchPosition:I

.field private mDownTouchView:Landroid/view/View;

.field protected mDragAndDropPosition:I

.field private mDragEnable:Z

.field private mDragOffsetX:I

.field private mDragOffsetY:I

.field private mDragScrollY:I

.field private mDragViewBackground:I

.field private mDragViewBackgroundDelete:I

.field private mDragViewBackgroundFilter:I

.field private mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGravity:I

.field private mIsFirstScroll:Z

.field private mIsRtl:Z

.field private mLastScrollState:I

.field private mLeftMost:I

.field mMotionX:I

.field mMotionY:I

.field mMultiChoiceModeCallback:Landroid/widget/Gallery$MultiChoiceModeWrapper;

.field private mOnScrollListener:Landroid/widget/Gallery$OnScrollListener;

.field private mPerformClick:Landroid/widget/Gallery$PerformClick;

.field private mReceivedInvokeKeyDown:Z

.field private mRightMost:I

.field private mSelectedCenterOffset:I

.field private mSelectedChild:Landroid/view/View;

.field private mShadowBuilder:Landroid/widget/Gallery$ListViewDragShadowBuilder;

.field private mShouldCallbackDuringFling:Z

.field private mShouldCallbackOnUnselectedItemClick:Z

.field private mShouldStopFling:Z

.field private mSpacing:I

.field private mSuppressSelectionChanged:Z

.field private mTouchFrame:Landroid/graphics/Rect;

.field private mUnselectedAlpha:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 299
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 300
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 303
    const v0, 0x1010070

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 304
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 307
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    iput v6, p0, Landroid/widget/Gallery;->mSpacing:I

    .line 98
    const/16 v5, 0x190

    iput v5, p0, Landroid/widget/Gallery;->mAnimationDuration:I

    .line 135
    new-instance v5, Landroid/widget/Gallery$FlingRunnable;

    invoke-direct {v5, p0}, Landroid/widget/Gallery$FlingRunnable;-><init>(Landroid/widget/Gallery;)V

    iput-object v5, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    .line 141
    new-instance v5, Landroid/widget/Gallery$1;

    invoke-direct {v5, p0}, Landroid/widget/Gallery$1;-><init>(Landroid/widget/Gallery;)V

    iput-object v5, p0, Landroid/widget/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    .line 166
    iput-boolean v7, p0, Landroid/widget/Gallery;->mShouldCallbackDuringFling:Z

    .line 171
    iput-boolean v7, p0, Landroid/widget/Gallery;->mShouldCallbackOnUnselectedItemClick:Z

    .line 197
    iput-boolean v7, p0, Landroid/widget/Gallery;->mIsRtl:Z

    .line 227
    iput v6, p0, Landroid/widget/Gallery;->mChoiceMode:I

    .line 259
    iput-boolean v6, p0, Landroid/widget/Gallery;->mChangeChildAlphaWhenDragView:Z

    .line 261
    const v5, 0x1080649

    iput v5, p0, Landroid/widget/Gallery;->mDragViewBackground:I

    .line 263
    const v5, 0x1080648

    iput v5, p0, Landroid/widget/Gallery;->mDragViewBackgroundFilter:I

    .line 265
    const v5, 0x1080647

    iput v5, p0, Landroid/widget/Gallery;->mDragViewBackgroundDelete:I

    .line 279
    iput v6, p0, Landroid/widget/Gallery;->mDragScrollY:I

    .line 280
    iput v8, p0, Landroid/widget/Gallery;->mDragAndDropPosition:I

    .line 281
    iput v6, p0, Landroid/widget/Gallery;->mDragOffsetX:I

    .line 282
    iput v6, p0, Landroid/widget/Gallery;->mDragOffsetY:I

    .line 295
    iput-boolean v6, p0, Landroid/widget/Gallery;->mDragEnable:Z

    .line 1845
    iput v6, p0, Landroid/widget/Gallery;->mLastScrollState:I

    .line 309
    new-instance v5, Landroid/view/GestureDetector;

    invoke-direct {v5, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v5, p0, Landroid/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    .line 310
    iget-object v5, p0, Landroid/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v5, v7}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 312
    sget-object v5, Lcom/android/internal/R$styleable;->Gallery:[I

    invoke-virtual {p1, p2, v5, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 315
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 316
    .local v2, index:I
    if-ltz v2, :cond_0

    .line 317
    invoke-virtual {p0, v2}, Landroid/widget/Gallery;->setGravity(I)V

    .line 320
    :cond_0
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 322
    .local v1, animationDuration:I
    if-lez v1, :cond_1

    .line 323
    invoke-virtual {p0, v1}, Landroid/widget/Gallery;->setAnimationDuration(I)V

    .line 326
    :cond_1
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    .line 328
    .local v3, spacing:I
    invoke-virtual {p0, v3}, Landroid/widget/Gallery;->setSpacing(I)V

    .line 330
    const/4 v5, 0x3

    const/high16 v6, 0x3f00

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 332
    .local v4, unselectedAlpha:F
    invoke-virtual {p0, v4}, Landroid/widget/Gallery;->setUnselectedAlpha(F)V

    .line 334
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 338
    iget v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v5, v5, 0x400

    iput v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 340
    iget v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v5, v5, 0x800

    iput v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 341
    return-void
.end method

.method static synthetic access$002(Landroid/widget/Gallery;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-boolean p1, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    return p1
.end method

.method static synthetic access$1000(Landroid/widget/Gallery;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-boolean v0, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    return v0
.end method

.method static synthetic access$1002(Landroid/widget/Gallery;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-boolean p1, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    return p1
.end method

.method static synthetic access$1102(Landroid/widget/Gallery;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput p1, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    return p1
.end method

.method static synthetic access$1200(Landroid/widget/Gallery;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-boolean v0, p0, Landroid/widget/Gallery;->mIsRtl:Z

    return v0
.end method

.method static synthetic access$1300(Landroid/widget/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$1400(Landroid/widget/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$1500(Landroid/widget/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$1600(Landroid/widget/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$1700(Landroid/widget/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Landroid/widget/Gallery;->mChoiceMode:I

    return v0
.end method

.method static synthetic access$1800(Landroid/widget/Gallery;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/widget/Gallery;->clearChoices()V

    return-void
.end method

.method static synthetic access$1900(Landroid/widget/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Landroid/widget/Gallery;->mDragViewBackground:I

    return v0
.end method

.method static synthetic access$200(Landroid/widget/Gallery;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-boolean v0, p0, Landroid/widget/Gallery;->mChangeChildAlphaWhenDragView:Z

    return v0
.end method

.method static synthetic access$2000(Landroid/widget/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Landroid/widget/Gallery;->mDragViewBackgroundFilter:I

    return v0
.end method

.method static synthetic access$2100(Landroid/widget/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Landroid/widget/Gallery;->mDragViewBackgroundDelete:I

    return v0
.end method

.method static synthetic access$2200(Landroid/widget/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Landroid/widget/Gallery;->mDragScrollY:I

    return v0
.end method

.method static synthetic access$2202(Landroid/widget/Gallery;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput p1, p0, Landroid/widget/Gallery;->mDragScrollY:I

    return p1
.end method

.method static synthetic access$2300(Landroid/widget/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Landroid/widget/Gallery;->mDragOffsetX:I

    return v0
.end method

.method static synthetic access$2400(Landroid/widget/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Landroid/widget/Gallery;->mDragOffsetY:I

    return v0
.end method

.method static synthetic access$2500(Landroid/widget/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-virtual {p0}, Landroid/view/View;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Landroid/widget/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-virtual {p0}, Landroid/view/View;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Landroid/widget/Gallery;Landroid/view/View;IJ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Gallery;->performItemClicks(Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/widget/Gallery;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/widget/Gallery;->invalidateViews()V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/Gallery;)Landroid/view/ActionMode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Landroid/widget/Gallery;->mChoiceActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$402(Landroid/widget/Gallery;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-object p1, p0, Landroid/widget/Gallery;->mChoiceActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$700(Landroid/widget/Gallery;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/widget/Gallery;->dispatchUnpress()V

    return-void
.end method

.method static synthetic access$800(Landroid/widget/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Landroid/widget/Gallery;->mAnimationDuration:I

    return v0
.end method

.method static synthetic access$900(Landroid/widget/Gallery;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/widget/Gallery;->scrollIntoSlots()V

    return-void
.end method

.method private calculateTop(Landroid/view/View;Z)I
    .locals 6
    .parameter "child"
    .parameter "duringLayout"

    .prologue
    .line 1157
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 1158
    .local v3, myHeight:I
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 1160
    .local v1, childHeight:I
    :goto_1
    const/4 v2, 0x0

    .line 1162
    .local v2, childTop:I
    iget v4, p0, Landroid/widget/Gallery;->mGravity:I

    sparse-switch v4, :sswitch_data_0

    .line 1175
    :goto_2
    return v2

    .line 1157
    .end local v1           #childHeight:I
    .end local v2           #childTop:I
    .end local v3           #myHeight:I
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    goto :goto_0

    .line 1158
    .restart local v3       #myHeight:I
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_1

    .line 1164
    .restart local v1       #childHeight:I
    .restart local v2       #childTop:I
    :sswitch_0
    iget-object v4, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v4, Landroid/graphics/Rect;->top:I

    .line 1165
    goto :goto_2

    .line 1167
    :sswitch_1
    iget-object v4, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v3, v4

    iget-object v5, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int v0, v4, v1

    .line 1169
    .local v0, availableSpace:I
    iget-object v4, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    div-int/lit8 v5, v0, 0x2

    add-int v2, v4, v5

    .line 1170
    goto :goto_2

    .line 1172
    .end local v0           #availableSpace:I
    :sswitch_2
    iget-object v4, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v3, v4

    sub-int v2, v4, v1

    goto :goto_2

    .line 1162
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method private clearChoices()V
    .locals 1

    .prologue
    .line 2083
    iget-object v0, p0, Landroid/widget/Gallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 2084
    iget-object v0, p0, Landroid/widget/Gallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 2086
    :cond_0
    iget-object v0, p0, Landroid/widget/Gallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    .line 2087
    iget-object v0, p0, Landroid/widget/Gallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 2089
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Gallery;->mCheckedItemCount:I

    .line 2090
    return-void
.end method

.method private detachOffScreenChildren(Z)V
    .locals 11
    .parameter "toLeft"

    .prologue
    .line 592
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    .line 593
    .local v7, numChildren:I
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 594
    .local v2, firstPosition:I
    const/4 v8, 0x0

    .line 595
    .local v8, start:I
    const/4 v1, 0x0

    .line 597
    .local v1, count:I
    if-eqz p1, :cond_5

    .line 598
    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    .line 599
    .local v3, galleryLeft:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v7, :cond_0

    .line 600
    iget-boolean v9, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-eqz v9, :cond_3

    add-int/lit8 v9, v7, -0x1

    sub-int v6, v9, v5

    .line 601
    .local v6, n:I
    :goto_1
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 602
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v9

    if-lt v9, v3, :cond_4

    .line 610
    .end local v0           #child:Landroid/view/View;
    .end local v6           #n:I
    :cond_0
    iget-boolean v9, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-nez v9, :cond_1

    .line 611
    const/4 v8, 0x0

    .line 631
    .end local v3           #galleryLeft:I
    :cond_1
    :goto_2
    invoke-virtual {p0, v8, v1}, Landroid/view/ViewGroup;->detachViewsFromParent(II)V

    .line 633
    iget-boolean v9, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-eq p1, v9, :cond_2

    .line 634
    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v9, v1

    iput v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 636
    :cond_2
    return-void

    .restart local v3       #galleryLeft:I
    :cond_3
    move v6, v5

    .line 600
    goto :goto_1

    .line 605
    .restart local v0       #child:Landroid/view/View;
    .restart local v6       #n:I
    :cond_4
    move v8, v6

    .line 606
    add-int/lit8 v1, v1, 0x1

    .line 607
    iget-object v9, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    add-int v10, v2, v6

    invoke-virtual {v9, v10, v0}, Landroid/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 599
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 614
    .end local v0           #child:Landroid/view/View;
    .end local v3           #galleryLeft:I
    .end local v5           #i:I
    .end local v6           #n:I
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v9

    iget v10, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v4, v9, v10

    .line 615
    .local v4, galleryRight:I
    add-int/lit8 v5, v7, -0x1

    .restart local v5       #i:I
    :goto_3
    if-ltz v5, :cond_6

    .line 616
    iget-boolean v9, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-eqz v9, :cond_7

    add-int/lit8 v9, v7, -0x1

    sub-int v6, v9, v5

    .line 617
    .restart local v6       #n:I
    :goto_4
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 618
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v9

    if-gt v9, v4, :cond_8

    .line 626
    .end local v0           #child:Landroid/view/View;
    .end local v6           #n:I
    :cond_6
    iget-boolean v9, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-eqz v9, :cond_1

    .line 627
    const/4 v8, 0x0

    goto :goto_2

    :cond_7
    move v6, v5

    .line 616
    goto :goto_4

    .line 621
    .restart local v0       #child:Landroid/view/View;
    .restart local v6       #n:I
    :cond_8
    move v8, v6

    .line 622
    add-int/lit8 v1, v1, 0x1

    .line 623
    iget-object v9, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    add-int v10, v2, v6

    invoke-virtual {v9, v10, v0}, Landroid/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 615
    add-int/lit8 v5, v5, -0x1

    goto :goto_3
.end method

.method private dispatchLongPress(Landroid/view/View;IJ)Z
    .locals 7
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1451
    const/4 v6, 0x0

    .line 1453
    .local v6, handled:Z
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 1454
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    iget-object v2, p0, Landroid/widget/Gallery;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    move-object v1, p0

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 1458
    :cond_0
    if-nez v6, :cond_1

    .line 1459
    new-instance v0, Landroid/widget/Gallery$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/Gallery$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    iput-object v0, p0, Landroid/widget/Gallery;->mContextMenuInfo:Landroid/widget/Gallery$AdapterContextMenuInfo;

    .line 1460
    invoke-super {p0, p0}, Landroid/view/ViewGroup;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 1463
    :cond_1
    if-eqz v6, :cond_2

    .line 1464
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 1467
    :cond_2
    return v6
.end method

.method private dispatchPress(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    const/4 v0, 0x1

    .line 1387
    if-eqz p1, :cond_0

    .line 1388
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 1391
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    .line 1392
    return-void
.end method

.method private dispatchUnpress()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1396
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 1397
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1396
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1400
    :cond_0
    invoke-virtual {p0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1401
    return-void
.end method

.method private fillToGalleryLeft()V
    .locals 1

    .prologue
    .line 819
    iget-boolean v0, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-eqz v0, :cond_0

    .line 820
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryLeftRtl()V

    .line 824
    :goto_0
    return-void

    .line 822
    :cond_0
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryLeftLtr()V

    goto :goto_0
.end method

.method private fillToGalleryLeftLtr()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 858
    iget v3, p0, Landroid/widget/Gallery;->mSpacing:I

    .line 859
    .local v3, itemSpacing:I
    iget v2, p0, Landroid/view/View;->mPaddingLeft:I

    .line 862
    .local v2, galleryLeft:I
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 866
    .local v4, prevIterationView:Landroid/view/View;
    if-eqz v4, :cond_0

    .line 867
    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/lit8 v0, v5, -0x1

    .line 868
    .local v0, curPosition:I
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v1, v5, v3

    .line 876
    .local v1, curRightEdge:I
    :goto_0
    if-le v1, v2, :cond_1

    if-ltz v0, :cond_1

    .line 877
    iget v5, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    sub-int v5, v0, v5

    invoke-direct {p0, v0, v5, v1, v7}, Landroid/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v4

    .line 881
    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 884
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v1, v5, v3

    .line 885
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 871
    .end local v0           #curPosition:I
    .end local v1           #curRightEdge:I
    :cond_0
    const/4 v0, 0x0

    .line 872
    .restart local v0       #curPosition:I
    iget v5, p0, Landroid/view/View;->mRight:I

    iget v6, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v1, v5, v6

    .line 873
    .restart local v1       #curRightEdge:I
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    goto :goto_0

    .line 887
    :cond_1
    return-void
.end method

.method private fillToGalleryLeftRtl()V
    .locals 9

    .prologue
    .line 827
    iget v3, p0, Landroid/widget/Gallery;->mSpacing:I

    .line 828
    .local v3, itemSpacing:I
    iget v2, p0, Landroid/view/View;->mPaddingLeft:I

    .line 829
    .local v2, galleryLeft:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 830
    .local v4, numChildren:I
    iget v5, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 833
    .local v5, numItems:I
    add-int/lit8 v7, v4, -0x1

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 837
    .local v6, prevIterationView:Landroid/view/View;
    if-eqz v6, :cond_0

    .line 838
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int v0, v7, v4

    .line 839
    .local v0, curPosition:I
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int v1, v7, v3

    .line 847
    .local v1, curRightEdge:I
    :goto_0
    if-le v1, v2, :cond_1

    iget v7, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ge v0, v7, :cond_1

    .line 848
    iget v7, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    sub-int v7, v0, v7

    const/4 v8, 0x0

    invoke-direct {p0, v0, v7, v1, v8}, Landroid/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v6

    .line 852
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int v1, v7, v3

    .line 853
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 842
    .end local v0           #curPosition:I
    .end local v1           #curRightEdge:I
    :cond_0
    iget v7, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v0, v7, -0x1

    .restart local v0       #curPosition:I
    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 843
    iget v7, p0, Landroid/view/View;->mRight:I

    iget v8, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v1, v7, v8

    .line 844
    .restart local v1       #curRightEdge:I
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    goto :goto_0

    .line 855
    :cond_1
    return-void
.end method

.method private fillToGalleryRight()V
    .locals 1

    .prologue
    .line 890
    iget-boolean v0, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-eqz v0, :cond_0

    .line 891
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryRightRtl()V

    .line 895
    :goto_0
    return-void

    .line 893
    :cond_0
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryRightLtr()V

    goto :goto_0
.end method

.method private fillToGalleryRightLtr()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 929
    iget v3, p0, Landroid/widget/Gallery;->mSpacing:I

    .line 930
    .local v3, itemSpacing:I
    iget v7, p0, Landroid/view/View;->mRight:I

    iget v8, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v2, v7, v8

    .line 931
    .local v2, galleryRight:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 932
    .local v4, numChildren:I
    iget v5, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 935
    .local v5, numItems:I
    add-int/lit8 v7, v4, -0x1

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 939
    .local v6, prevIterationView:Landroid/view/View;
    if-eqz v6, :cond_0

    .line 940
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int v1, v7, v4

    .line 941
    .local v1, curPosition:I
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    add-int v0, v7, v3

    .line 948
    .local v0, curLeftEdge:I
    :goto_0
    if-ge v0, v2, :cond_1

    if-ge v1, v5, :cond_1

    .line 949
    iget v7, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    sub-int v7, v1, v7

    invoke-direct {p0, v1, v7, v0, v9}, Landroid/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v6

    .line 953
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    add-int v0, v7, v3

    .line 954
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 943
    .end local v0           #curLeftEdge:I
    .end local v1           #curPosition:I
    :cond_0
    iget v7, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v1, v7, -0x1

    .restart local v1       #curPosition:I
    iput v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 944
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    .line 945
    .restart local v0       #curLeftEdge:I
    iput-boolean v9, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    goto :goto_0

    .line 956
    :cond_1
    return-void
.end method

.method private fillToGalleryRightRtl()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 898
    iget v3, p0, Landroid/widget/Gallery;->mSpacing:I

    .line 899
    .local v3, itemSpacing:I
    iget v5, p0, Landroid/view/View;->mRight:I

    iget v6, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v2, v5, v6

    .line 902
    .local v2, galleryRight:I
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 906
    .local v4, prevIterationView:Landroid/view/View;
    if-eqz v4, :cond_0

    .line 907
    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/lit8 v1, v5, -0x1

    .line 908
    .local v1, curPosition:I
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v5

    add-int v0, v5, v3

    .line 915
    .local v0, curLeftEdge:I
    :goto_0
    if-ge v0, v2, :cond_1

    if-ltz v1, :cond_1

    .line 916
    iget v5, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    sub-int v5, v1, v5

    invoke-direct {p0, v1, v5, v0, v7}, Landroid/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v4

    .line 920
    iput v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 923
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v5

    add-int v0, v5, v3

    .line 924
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 910
    .end local v0           #curLeftEdge:I
    .end local v1           #curPosition:I
    :cond_0
    const/4 v1, 0x0

    .line 911
    .restart local v1       #curPosition:I
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    .line 912
    .restart local v0       #curLeftEdge:I
    iput-boolean v7, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    goto :goto_0

    .line 926
    :cond_1
    return-void
.end method

.method private getCenterOfGallery()I
    .locals 2

    .prologue
    .line 575
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v0, v1

    return v0
.end method

.method private static getCenterOfView(Landroid/view/View;)I
    .locals 2
    .parameter "view"

    .prologue
    .line 582
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private invalidateViews()V
    .locals 1

    .prologue
    .line 2195
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 2196
    iget-object v0, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 2197
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->requestLayout()V

    .line 2198
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 2199
    return-void
.end method

.method private makeAndAddView(IIIZ)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "offset"
    .parameter "x"
    .parameter "fromLeft"

    .prologue
    .line 976
    iget-boolean v3, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-nez v3, :cond_0

    .line 977
    iget-object v3, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v3, p1}, Landroid/widget/AbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v0

    .line 978
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 980
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 983
    .local v2, childLeft:I
    iget v3, p0, Landroid/widget/Gallery;->mRightMost:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Landroid/widget/Gallery;->mRightMost:I

    .line 985
    iget v3, p0, Landroid/widget/Gallery;->mLeftMost:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Landroid/widget/Gallery;->mLeftMost:I

    .line 988
    invoke-direct {p0, v0, p2, p3, p4}, Landroid/widget/Gallery;->setUpChild(Landroid/view/View;IIZ)V

    move-object v1, v0

    .line 1000
    .end local v0           #child:Landroid/view/View;
    .end local v2           #childLeft:I
    .local v1, child:Landroid/view/View;
    :goto_0
    return-object v1

    .line 995
    .end local v1           #child:Landroid/view/View;
    :cond_0
    iget-object v3, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 998
    .restart local v0       #child:Landroid/view/View;
    invoke-direct {p0, v0, p2, p3, p4}, Landroid/widget/Gallery;->setUpChild(Landroid/view/View;IIZ)V

    move-object v1, v0

    .line 1000
    .end local v0           #child:Landroid/view/View;
    .restart local v1       #child:Landroid/view/View;
    goto :goto_0
.end method

.method private offsetChildrenLeftAndRight(I)V
    .locals 2
    .parameter "offset"

    .prologue
    .line 566
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 567
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 566
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 569
    :cond_0
    return-void
.end method

.method private onFinishedMovement()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 671
    iget-boolean v0, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    if-eqz v0, :cond_0

    .line 672
    iput-boolean v1, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    .line 675
    invoke-super {p0}, Landroid/widget/AdapterView;->selectionChanged()V

    .line 677
    :cond_0
    iput v1, p0, Landroid/widget/Gallery;->mSelectedCenterOffset:I

    .line 678
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 679
    return-void
.end method

.method private performItemClicks(Landroid/view/View;IJ)Z
    .locals 16
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 2637
    const/4 v15, 0x0

    .line 2638
    .local v15, handled:Z
    const/4 v14, 0x1

    .line 2640
    .local v14, dispatchItemClick:Z
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/Gallery;->mChoiceMode:I

    if-eqz v1, :cond_3

    .line 2641
    const/4 v15, 0x1

    .line 2642
    const/4 v13, 0x0

    .line 2644
    .local v13, checkedStateChanged:Z
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/Gallery;->mChoiceMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Gallery;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_2

    .line 2645
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Gallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    move/from16 v0, p2

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v6, 0x1

    .line 2646
    .local v6, checked:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Gallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    move/from16 v0, p2

    invoke-virtual {v1, v0, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2647
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Gallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2648
    if-eqz v6, :cond_6

    .line 2649
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Gallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    move/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2654
    :cond_0
    :goto_1
    if-eqz v6, :cond_7

    .line 2655
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/Gallery;->mCheckedItemCount:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Landroid/widget/Gallery;->mCheckedItemCount:I

    .line 2659
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Gallery;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Gallery;->mMultiChoiceModeCallback:Landroid/widget/Gallery$MultiChoiceModeWrapper;

    if-eqz v1, :cond_1

    .line 2660
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Gallery;->mMultiChoiceModeCallback:Landroid/widget/Gallery$MultiChoiceModeWrapper;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Gallery;->mChoiceActionMode:Landroid/view/ActionMode;

    move/from16 v3, p2

    move-wide/from16 v4, p3

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Gallery$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 2662
    const/4 v14, 0x0

    .line 2664
    :cond_1
    const/4 v13, 0x1

    .line 2667
    .end local v6           #checked:Z
    :cond_2
    if-eqz v13, :cond_3

    .line 2668
    invoke-direct/range {p0 .. p0}, Landroid/widget/Gallery;->updateOnScreenCheckedViews()V

    .line 2672
    .end local v13           #checkedStateChanged:Z
    :cond_3
    if-eqz v14, :cond_8

    .line 2673
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AdapterView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v1, :cond_8

    .line 2674
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    .line 2675
    if-eqz p1, :cond_4

    .line 2676
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 2678
    :cond_4
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/AdapterView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move-wide/from16 v11, p3

    invoke-interface/range {v7 .. v12}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 2679
    const/4 v1, 0x1

    .line 2683
    :goto_3
    return v1

    .line 2645
    .restart local v13       #checkedStateChanged:Z
    :cond_5
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 2651
    .restart local v6       #checked:Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Gallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    move/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_1

    .line 2657
    :cond_7
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/Gallery;->mCheckedItemCount:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Landroid/widget/Gallery;->mCheckedItemCount:I

    goto :goto_2

    .line 2683
    .end local v6           #checked:Z
    .end local v13           #checkedStateChanged:Z
    :cond_8
    const/4 v1, 0x0

    goto :goto_3
.end method

.method private scrollIntoSlots()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 644
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-nez v3, :cond_2

    .line 645
    :cond_0
    iget v3, p0, Landroid/widget/Gallery;->mLastScrollState:I

    if-eqz v3, :cond_1

    .line 646
    invoke-virtual {p0, v4}, Landroid/widget/Gallery;->reportScrollStateChange(I)V

    .line 668
    :cond_1
    :goto_0
    return-void

    .line 651
    :cond_2
    iget-object v3, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    invoke-static {v3}, Landroid/widget/Gallery;->getCenterOfView(Landroid/view/View;)I

    move-result v1

    .line 652
    .local v1, selectedCenter:I
    invoke-direct {p0}, Landroid/widget/Gallery;->getCenterOfGallery()I

    move-result v2

    .line 654
    .local v2, targetCenter:I
    sub-int v0, v2, v1

    .line 655
    .local v0, scrollAmount:I
    if-eqz v0, :cond_4

    .line 656
    iget v3, p0, Landroid/widget/Gallery;->mLastScrollState:I

    if-eq v3, v5, :cond_3

    .line 657
    invoke-virtual {p0, v5}, Landroid/widget/Gallery;->reportScrollStateChange(I)V

    .line 660
    :cond_3
    iget-object v3, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    invoke-virtual {v3, v0}, Landroid/widget/Gallery$FlingRunnable;->startUsingDistance(I)V

    goto :goto_0

    .line 662
    :cond_4
    iget v3, p0, Landroid/widget/Gallery;->mLastScrollState:I

    if-eqz v3, :cond_5

    .line 663
    invoke-virtual {p0, v4}, Landroid/widget/Gallery;->reportScrollStateChange(I)V

    .line 666
    :cond_5
    invoke-direct {p0}, Landroid/widget/Gallery;->onFinishedMovement()V

    goto :goto_0
.end method

.method private scrollToChild(I)Z
    .locals 5
    .parameter "childPosition"

    .prologue
    const/4 v2, 0x1

    .line 1557
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1559
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1560
    invoke-direct {p0}, Landroid/widget/Gallery;->getCenterOfGallery()I

    move-result v3

    invoke-static {v0}, Landroid/widget/Gallery;->getCenterOfView(Landroid/view/View;)I

    move-result v4

    sub-int v1, v3, v4

    .line 1561
    .local v1, distance:I
    invoke-virtual {p0, v2}, Landroid/widget/Gallery;->reportScrollStateChange(I)V

    .line 1562
    iget-object v3, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    invoke-virtual {v3, v1}, Landroid/widget/Gallery$FlingRunnable;->startUsingDistance(I)V

    .line 1566
    .end local v1           #distance:I
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setSelectionToCenterChild()V
    .locals 10

    .prologue
    .line 694
    iget-object v7, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    .line 695
    .local v7, selView:Landroid/view/View;
    iget-object v8, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-nez v8, :cond_1

    .line 732
    :cond_0
    :goto_0
    return-void

    .line 697
    :cond_1
    invoke-direct {p0}, Landroid/widget/Gallery;->getCenterOfGallery()I

    move-result v3

    .line 700
    .local v3, galleryCenter:I
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-gt v8, v3, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v8, v3, :cond_0

    .line 705
    :cond_2
    const v2, 0x7fffffff

    .line 706
    .local v2, closestEdgeDistance:I
    const/4 v6, 0x0

    .line 707
    .local v6, newSelectedChildIndex:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    .local v4, i:I
    :goto_1
    if-ltz v4, :cond_3

    .line 709
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 711
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    if-gt v8, v3, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v8

    if-lt v8, v3, :cond_4

    .line 713
    move v6, v4

    .line 725
    .end local v0           #child:Landroid/view/View;
    :cond_3
    iget v8, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int v5, v8, v6

    .line 727
    .local v5, newPos:I
    iget v8, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-eq v5, v8, :cond_0

    .line 728
    invoke-virtual {p0, v5}, Landroid/widget/Gallery;->setSelectedPositionInt(I)V

    .line 729
    invoke-virtual {p0, v5}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 730
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    goto :goto_0

    .line 717
    .end local v5           #newPos:I
    .restart local v0       #child:Landroid/view/View;
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v8, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 719
    .local v1, childClosestEdgeDistance:I
    if-ge v1, v2, :cond_5

    .line 720
    move v2, v1

    .line 721
    move v6, v4

    .line 707
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_1
.end method

.method private setUpChild(Landroid/view/View;IIZ)V
    .locals 11
    .parameter "child"
    .parameter "offset"
    .parameter "x"
    .parameter "fromLeft"

    .prologue
    .line 1019
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/Gallery$LayoutParams;

    .line 1020
    .local v6, lp:Landroid/widget/Gallery$LayoutParams;
    if-nez v6, :cond_0

    .line 1021
    invoke-virtual {p0}, Landroid/widget/Gallery;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .end local v6           #lp:Landroid/widget/Gallery$LayoutParams;
    check-cast v6, Landroid/widget/Gallery$LayoutParams;

    .line 1024
    .restart local v6       #lp:Landroid/widget/Gallery$LayoutParams;
    :cond_0
    iget-boolean v8, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-eq p4, v8, :cond_3

    const/4 v8, -0x1

    :goto_0
    invoke-virtual {p0, p1, v8, v6}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 1026
    iget v8, p0, Landroid/widget/Gallery;->mChoiceMode:I

    if-nez v8, :cond_1

    .line 1027
    if-nez p2, :cond_4

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {p1, v8}, Landroid/view/View;->setSelected(Z)V

    .line 1030
    :cond_1
    iget v8, p0, Landroid/widget/AbsSpinner;->mHeightMeasureSpec:I

    iget-object v9, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1032
    .local v1, childHeightSpec:I
    iget v8, p0, Landroid/widget/AbsSpinner;->mWidthMeasureSpec:I

    iget-object v9, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 1036
    .local v5, childWidthSpec:I
    invoke-virtual {p1, v5, v1}, Landroid/view/View;->measure(II)V

    .line 1042
    const/4 v8, 0x1

    invoke-direct {p0, p1, v8}, Landroid/widget/Gallery;->calculateTop(Landroid/view/View;Z)I

    move-result v4

    .line 1043
    .local v4, childTop:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int v0, v4, v8

    .line 1045
    .local v0, childBottom:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 1046
    .local v7, width:I
    if-eqz p4, :cond_5

    .line 1047
    move v2, p3

    .line 1048
    .local v2, childLeft:I
    add-int v3, v2, v7

    .line 1054
    .local v3, childRight:I
    :goto_2
    invoke-virtual {p1, v2, v4, v3, v0}, Landroid/view/View;->layout(IIII)V

    .line 1056
    iget v8, p0, Landroid/widget/Gallery;->mChoiceMode:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    iget-boolean v8, p0, Landroid/widget/Gallery;->mDragEnable:Z

    if-eqz v8, :cond_2

    .line 1057
    new-instance v8, Landroid/widget/Gallery$2;

    invoke-direct {v8, p0}, Landroid/widget/Gallery$2;-><init>(Landroid/widget/Gallery;)V

    invoke-virtual {p1, v8}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 1148
    :cond_2
    return-void

    .line 1024
    .end local v0           #childBottom:I
    .end local v1           #childHeightSpec:I
    .end local v2           #childLeft:I
    .end local v3           #childRight:I
    .end local v4           #childTop:I
    .end local v5           #childWidthSpec:I
    .end local v7           #width:I
    :cond_3
    const/4 v8, 0x0

    goto :goto_0

    .line 1027
    :cond_4
    const/4 v8, 0x0

    goto :goto_1

    .line 1050
    .restart local v0       #childBottom:I
    .restart local v1       #childHeightSpec:I
    .restart local v4       #childTop:I
    .restart local v5       #childWidthSpec:I
    .restart local v7       #width:I
    :cond_5
    sub-int v2, p3, v7

    .line 1051
    .restart local v2       #childLeft:I
    move v3, p3

    .restart local v3       #childRight:I
    goto :goto_2
.end method

.method private updateOnScreenCheckedViews()V
    .locals 8

    .prologue
    .line 2741
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 2742
    .local v2, firstPos:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 2743
    .local v1, count:I
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_1

    const/4 v5, 0x1

    .line 2745
    .local v5, useActivated:Z
    :goto_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 2746
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2747
    .local v0, child:Landroid/view/View;
    add-int v4, v2, v3

    .line 2749
    .local v4, position:I
    instance-of v6, v0, Landroid/widget/Checkable;

    if-eqz v6, :cond_2

    .line 2750
    check-cast v0, Landroid/widget/Checkable;

    .end local v0           #child:Landroid/view/View;
    iget-object v6, p0, Landroid/widget/Gallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-interface {v0, v6}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 2745
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2743
    .end local v3           #i:I
    .end local v4           #position:I
    .end local v5           #useActivated:Z
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 2751
    .restart local v0       #child:Landroid/view/View;
    .restart local v3       #i:I
    .restart local v4       #position:I
    .restart local v5       #useActivated:Z
    :cond_2
    if-eqz v5, :cond_0

    .line 2752
    iget-object v6, p0, Landroid/widget/Gallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setActivated(Z)V

    goto :goto_2

    .line 2755
    .end local v0           #child:Landroid/view/View;
    .end local v4           #position:I
    :cond_3
    return-void
.end method

.method private updateSelectedItemMetadata()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1579
    iget-object v1, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    .line 1581
    .local v1, oldSelectedChild:Landroid/view/View;
    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    .line 1582
    .local v0, child:Landroid/view/View;
    if-nez v0, :cond_1

    .line 1610
    :cond_0
    :goto_0
    return-void

    .line 1587
    :cond_1
    iget v2, p0, Landroid/widget/Gallery;->mChoiceMode:I

    if-nez v2, :cond_0

    .line 1591
    invoke-virtual {v0, v5}, Landroid/view/View;->setSelected(Z)V

    .line 1592
    invoke-virtual {v0, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 1594
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1595
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1600
    :cond_2
    if-eqz v1, :cond_0

    if-eq v1, v0, :cond_0

    .line 1603
    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 1607
    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_0
.end method


# virtual methods
.method public changeChildAlphaWhenDragView(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 2429
    iput-boolean p1, p0, Landroid/widget/Gallery;->mChangeChildAlphaWhenDragView:Z

    .line 2430
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 435
    instance-of v0, p1, Landroid/widget/Gallery$LayoutParams;

    return v0
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 1

    .prologue
    .line 418
    const/4 v0, 0x1

    return v0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 1

    .prologue
    .line 424
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 430
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    return v0
.end method

.method confirmCheckedPositionsById()V
    .locals 17

    .prologue
    .line 2689
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Gallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 2691
    const/4 v7, 0x0

    .line 2693
    .local v7, checkedCountChanged:Z
    const/4 v8, 0x0

    .local v8, checkedIndex:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Gallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-ge v8, v1, :cond_6

    .line 2694
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Gallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v8}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    .line 2695
    .local v4, id:J
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Gallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v8}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2696
    .local v3, lastPos:I
    const-wide/16 v11, -0x1

    .line 2697
    .local v11, lastPosId:J
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/AdapterView;->mItemCount:I

    if-ge v3, v1, :cond_0

    .line 2698
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1, v3}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v11

    .line 2700
    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/AdapterView;->mItemCount:I

    if-ge v3, v1, :cond_1

    cmp-long v1, v4, v11

    if-eqz v1, :cond_5

    .line 2702
    :cond_1
    const/4 v1, 0x0

    add-int/lit8 v2, v3, -0x14

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 2703
    .local v16, start:I
    add-int/lit8 v1, v3, 0x14

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mItemCount:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 2704
    .local v9, end:I
    const/4 v10, 0x0

    .line 2705
    .local v10, found:Z
    move/from16 v15, v16

    .local v15, searchPos:I
    :goto_1
    if-ge v15, v9, :cond_2

    .line 2706
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1, v15}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v13

    .line 2707
    .local v13, searchId:J
    cmp-long v1, v4, v13

    if-nez v1, :cond_4

    .line 2708
    const/4 v10, 0x1

    .line 2709
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Gallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v15, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2710
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Gallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 2715
    .end local v13           #searchId:J
    :cond_2
    if-nez v10, :cond_3

    .line 2716
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Gallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v4, v5}, Landroid/util/LongSparseArray;->delete(J)V

    .line 2717
    add-int/lit8 v8, v8, -0x1

    .line 2718
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/Gallery;->mCheckedItemCount:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Landroid/widget/Gallery;->mCheckedItemCount:I

    .line 2719
    const/4 v7, 0x1

    .line 2720
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Gallery;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Gallery;->mMultiChoiceModeCallback:Landroid/widget/Gallery$MultiChoiceModeWrapper;

    if-eqz v1, :cond_3

    .line 2721
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Gallery;->mMultiChoiceModeCallback:Landroid/widget/Gallery$MultiChoiceModeWrapper;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Gallery;->mChoiceActionMode:Landroid/view/ActionMode;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Gallery$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 2693
    .end local v9           #end:I
    .end local v10           #found:Z
    .end local v15           #searchPos:I
    .end local v16           #start:I
    :cond_3
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 2705
    .restart local v9       #end:I
    .restart local v10       #found:Z
    .restart local v13       #searchId:J
    .restart local v15       #searchPos:I
    .restart local v16       #start:I
    :cond_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 2726
    .end local v9           #end:I
    .end local v10           #found:Z
    .end local v13           #searchId:J
    .end local v15           #searchPos:I
    .end local v16           #start:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Gallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_2

    .line 2730
    .end local v3           #lastPos:I
    .end local v4           #id:J
    .end local v11           #lastPosId:J
    :cond_6
    if-eqz v7, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Gallery;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_7

    .line 2731
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Gallery;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->invalidate()V

    .line 2733
    :cond_7
    return-void
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 2560
    new-instance v0, Landroid/widget/Gallery$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/Gallery$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 1473
    invoke-virtual {p1, p0, v0, v0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected dispatchSetPressed(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    .line 1416
    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1417
    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 1419
    :cond_0
    return-void
.end method

.method public dispatchSetSelected(Z)V
    .locals 0
    .parameter "selected"

    .prologue
    .line 1410
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 453
    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 445
    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/Gallery$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 440
    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/Gallery$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getCheckedItemCount()I
    .locals 1

    .prologue
    .line 2219
    iget v0, p0, Landroid/widget/Gallery;->mCheckedItemCount:I

    return v0
.end method

.method public getCheckedItemIds()[J
    .locals 6

    .prologue
    .line 2273
    iget v4, p0, Landroid/widget/Gallery;->mChoiceMode:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/Gallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-nez v4, :cond_2

    .line 2274
    :cond_0
    const/4 v4, 0x0

    new-array v3, v4, [J

    .line 2284
    :cond_1
    return-object v3

    .line 2277
    :cond_2
    iget-object v2, p0, Landroid/widget/Gallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 2278
    .local v2, idStates:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 2279
    .local v0, count:I
    new-array v3, v0, [J

    .line 2281
    .local v3, ids:[J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2282
    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 2281
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 1

    .prologue
    .line 2234
    iget v0, p0, Landroid/widget/Gallery;->mChoiceMode:I

    if-eqz v0, :cond_0

    .line 2235
    iget-object v0, p0, Landroid/widget/Gallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 2237
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 3
    .parameter "childCount"
    .parameter "i"

    .prologue
    .line 1628
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v0, v1, v2

    .line 1631
    .local v0, selectedIndex:I
    if-gez v0, :cond_1

    .line 1641
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 1633
    .restart local p2
    :cond_1
    add-int/lit8 v1, p1, -0x1

    if-ne p2, v1, :cond_2

    move p2, v0

    .line 1635
    goto :goto_0

    .line 1636
    :cond_2
    if-lt p2, v0, :cond_0

    .line 1638
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method getChildHeight(Landroid/view/View;)I
    .locals 1
    .parameter "child"

    .prologue
    .line 472
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 1
    .parameter "child"
    .parameter "t"

    .prologue
    .line 407
    iget v0, p0, Landroid/widget/Gallery;->mChoiceMode:I

    if-nez v0, :cond_0

    .line 408
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->clear()V

    .line 409
    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-ne p1, v0, :cond_1

    const/high16 v0, 0x3f80

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 412
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 409
    :cond_1
    iget v0, p0, Landroid/widget/Gallery;->mUnselectedAlpha:F

    goto :goto_0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 1423
    iget-object v0, p0, Landroid/widget/Gallery;->mContextMenuInfo:Landroid/widget/Gallery$AdapterContextMenuInfo;

    return-object v0
.end method

.method getLimitedMotionScrollAmount(ZI)I
    .locals 7
    .parameter "motionToLeft"
    .parameter "deltaX"

    .prologue
    const/4 v5, 0x0

    .line 528
    iget-boolean v6, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-eq p1, v6, :cond_1

    iget v6, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v3, v6, -0x1

    .line 529
    .local v3, extremeItemPosition:I
    :goto_0
    iget v6, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v6, v3, v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 531
    .local v1, extremeChild:Landroid/view/View;
    if-nez v1, :cond_2

    move v5, p2

    .line 554
    :cond_0
    :goto_1
    return v5

    .end local v1           #extremeChild:Landroid/view/View;
    .end local v3           #extremeItemPosition:I
    :cond_1
    move v3, v5

    .line 528
    goto :goto_0

    .line 535
    .restart local v1       #extremeChild:Landroid/view/View;
    .restart local v3       #extremeItemPosition:I
    :cond_2
    invoke-static {v1}, Landroid/widget/Gallery;->getCenterOfView(Landroid/view/View;)I

    move-result v2

    .line 536
    .local v2, extremeChildCenter:I
    invoke-direct {p0}, Landroid/widget/Gallery;->getCenterOfGallery()I

    move-result v4

    .line 538
    .local v4, galleryCenter:I
    if-eqz p1, :cond_4

    .line 539
    if-le v2, v4, :cond_0

    .line 552
    :cond_3
    sub-int v0, v4, v2

    .line 554
    .local v0, centerDifference:I
    if-eqz p1, :cond_5

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_1

    .line 545
    .end local v0           #centerDifference:I
    :cond_4
    if-lt v2, v4, :cond_3

    goto :goto_1

    .line 554
    .restart local v0       #centerDifference:I
    :cond_5
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_1
.end method

.method invokeOnItemScrollListener()V
    .locals 4

    .prologue
    .line 1866
    iget-object v0, p0, Landroid/widget/Gallery;->mOnScrollListener:Landroid/widget/Gallery$OnScrollListener;

    if-eqz v0, :cond_0

    .line 1867
    iget-object v0, p0, Landroid/widget/Gallery;->mOnScrollListener:Landroid/widget/Gallery$OnScrollListener;

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/widget/Gallery$OnScrollListener;->onScroll(Landroid/widget/Gallery;III)V

    .line 1870
    :cond_0
    return-void
.end method

.method public isItemChecked(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 2254
    iget v0, p0, Landroid/widget/Gallery;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Gallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 2255
    iget-object v0, p0, Landroid/widget/Gallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 2258
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method layout(IZ)V
    .locals 8
    .parameter "delta"
    .parameter "animate"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 747
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v4

    iput-boolean v4, p0, Landroid/widget/Gallery;->mIsRtl:Z

    .line 749
    iget-object v4, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v0, v4, Landroid/graphics/Rect;->left:I

    .line 750
    .local v0, childrenLeft:I
    iget v4, p0, Landroid/view/View;->mRight:I

    iget v5, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int v1, v4, v5

    .line 752
    .local v1, childrenWidth:I
    iget-boolean v4, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v4, :cond_0

    .line 753
    invoke-virtual {p0}, Landroid/widget/AdapterView;->handleDataChanged()V

    .line 756
    :cond_0
    iget-boolean v4, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v4, :cond_1

    iget v4, p0, Landroid/widget/Gallery;->mChoiceMode:I

    if-ne v4, v7, :cond_1

    iget-object v4, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v4}, Landroid/widget/SpinnerAdapter;->hasStableIds()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 757
    invoke-virtual {p0}, Landroid/widget/Gallery;->confirmCheckedPositionsById()V

    .line 761
    :cond_1
    iget v4, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-nez v4, :cond_2

    .line 762
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->resetList()V

    .line 763
    invoke-virtual {p0}, Landroid/widget/Gallery;->invokeOnItemScrollListener()V

    .line 816
    :goto_0
    return-void

    .line 768
    :cond_2
    iget v4, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    if-ltz v4, :cond_3

    .line 769
    iget v4, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    invoke-virtual {p0, v4}, Landroid/widget/Gallery;->setSelectedPositionInt(I)V

    .line 773
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->recycleAllViews()V

    .line 777
    invoke-virtual {p0}, Landroid/view/ViewGroup;->detachAllViewsFromParent()V

    .line 783
    iput v6, p0, Landroid/widget/Gallery;->mRightMost:I

    .line 784
    iput v6, p0, Landroid/widget/Gallery;->mLeftMost:I

    .line 792
    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iput v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 793
    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-direct {p0, v4, v6, v6, v7}, Landroid/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v2

    .line 796
    .local v2, sel:Landroid/view/View;
    div-int/lit8 v4, v1, 0x2

    add-int/2addr v4, v0

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/Gallery;->mSelectedCenterOffset:I

    add-int v3, v4, v5

    .line 798
    .local v3, selectedOffset:I
    invoke-virtual {v2, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 800
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryRight()V

    .line 801
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryLeft()V

    .line 804
    iget-object v4, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v4}, Landroid/widget/AbsSpinner$RecycleBin;->clear()V

    .line 806
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 807
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    .line 809
    iput-boolean v6, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 810
    iput-boolean v6, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 811
    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {p0, v4}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 813
    invoke-direct {p0}, Landroid/widget/Gallery;->updateSelectedItemMetadata()V

    .line 815
    invoke-virtual {p0}, Landroid/widget/Gallery;->invokeOnItemScrollListener()V

    goto :goto_0
.end method

.method moveNext()Z
    .locals 2

    .prologue
    .line 1548
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 1549
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/Gallery;->scrollToChild(I)Z

    .line 1550
    const/4 v0, 0x1

    .line 1552
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method movePrevious()Z
    .locals 2

    .prologue
    .line 1539
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-lez v0, :cond_0

    .line 1540
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Landroid/widget/Gallery;->scrollToChild(I)Z

    .line 1541
    const/4 v0, 0x1

    .line 1543
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onCancel()V
    .locals 0

    .prologue
    .line 1342
    invoke-virtual {p0}, Landroid/widget/Gallery;->onUp()V

    .line 1343
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    const/4 v2, 0x1

    .line 1300
    iget v0, p0, Landroid/widget/Gallery;->mLastScrollState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1301
    invoke-virtual {p0, v2}, Landroid/widget/Gallery;->reportScrollStateChange(I)V

    .line 1305
    :cond_0
    iget-object v0, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Gallery$FlingRunnable;->stop(Z)V

    .line 1308
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/AbsSpinner;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    .line 1310
    iget v0, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    if-ltz v0, :cond_1

    .line 1311
    iget v0, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Gallery;->mDownTouchView:Landroid/view/View;

    .line 1312
    iget-object v0, p0, Landroid/widget/Gallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1316
    :cond_1
    iput-boolean v2, p0, Landroid/widget/Gallery;->mIsFirstScroll:Z

    .line 1319
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/Gallery;->mMotionX:I

    .line 1320
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/Gallery;->mMotionY:I

    .line 1323
    return v2
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v2, 0x1

    .line 1236
    iget-boolean v0, p0, Landroid/widget/Gallery;->mShouldCallbackDuringFling:Z

    if-nez v0, :cond_0

    .line 1240
    iget-object v0, p0, Landroid/widget/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1243
    iget-boolean v0, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    iput-boolean v2, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    .line 1246
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->reportScrollStateChange(I)V

    .line 1249
    iget-object v0, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    neg-float v1, p3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/Gallery$FlingRunnable;->startUsingVelocity(I)V

    .line 1251
    return v2
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1647
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1654
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/Gallery;->mChoiceMode:I

    if-nez v0, :cond_0

    .line 1655
    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->requestFocus(I)Z

    .line 1656
    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 1659
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 1663
    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1664
    const-class v0, Landroid/widget/Gallery;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 1665
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    const/4 v0, 0x1

    .line 1669
    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1670
    const-class v1, Landroid/widget/Gallery;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1671
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-le v1, v0, :cond_2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1672
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1673
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 1674
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1676
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_1

    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-lez v0, :cond_1

    .line 1677
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1680
    :cond_1
    return-void

    .line 1671
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1482
    sparse-switch p1, :sswitch_data_0

    .line 1502
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 1485
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/Gallery;->movePrevious()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1486
    invoke-virtual {p0, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_1

    .line 1491
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/Gallery;->moveNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1492
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_1

    .line 1498
    :sswitch_2
    iput-boolean v0, p0, Landroid/widget/Gallery;->mReceivedInvokeKeyDown:Z

    goto :goto_0

    .line 1482
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_2
        0x42 -> :sswitch_2
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1507
    sparse-switch p1, :sswitch_data_0

    .line 1535
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 1511
    :sswitch_0
    iget-boolean v1, p0, Landroid/widget/Gallery;->mReceivedInvokeKeyDown:Z

    if-eqz v1, :cond_0

    .line 1512
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v1, :cond_0

    .line 1514
    iget-object v1, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    invoke-direct {p0, v1}, Landroid/widget/Gallery;->dispatchPress(Landroid/view/View;)V

    .line 1515
    new-instance v1, Landroid/widget/Gallery$3;

    invoke-direct {v1, p0}, Landroid/widget/Gallery$3;-><init>(Landroid/widget/Gallery;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1522
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v0, v1, v2

    .line 1523
    .local v0, selectedIndex:I
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget-object v3, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-interface {v3, v4}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    .line 1529
    .end local v0           #selectedIndex:I
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/Gallery;->mReceivedInvokeKeyDown:Z

    .line 1531
    const/4 v1, 0x1

    goto :goto_0

    .line 1507
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v1, 0x0

    .line 459
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 465
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 466
    invoke-virtual {p0, v1, v1}, Landroid/widget/Gallery;->layout(IZ)V

    .line 467
    iput-boolean v1, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 468
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 12
    .parameter "e"

    .prologue
    const/4 v11, 0x0

    .line 1348
    iget v9, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    if-gez v9, :cond_0

    .line 1375
    :goto_0
    return-void

    .line 1352
    :cond_0
    iget v9, p0, Landroid/widget/Gallery;->mChoiceMode:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 1353
    iget v7, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    .line 1354
    .local v7, motionPosition:I
    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v9, v7, v9

    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1355
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 1356
    iget v6, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    .line 1357
    .local v6, longPressPosition:I
    iget-object v9, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget v10, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    invoke-interface {v9, v10}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v4

    .line 1359
    .local v4, longPressId:J
    const/4 v1, 0x0

    .line 1360
    .local v1, handled:Z
    const/4 v8, 0x1

    .line 1361
    .local v8, perforLongPress:Z
    if-eqz v8, :cond_1

    iget-boolean v9, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-nez v9, :cond_1

    .line 1362
    invoke-virtual {p0, v0, v6, v4, v5}, Landroid/widget/Gallery;->performLongPress(Landroid/view/View;IJ)Z

    move-result v1

    .line 1364
    :cond_1
    if-eqz v1, :cond_2

    .line 1365
    invoke-virtual {p0, v11}, Landroid/view/View;->setPressed(Z)V

    .line 1366
    invoke-virtual {v0, v11}, Landroid/view/View;->setPressed(Z)V

    .line 1372
    .end local v0           #child:Landroid/view/View;
    .end local v1           #handled:Z
    .end local v4           #longPressId:J
    .end local v6           #longPressPosition:I
    .end local v7           #motionPosition:I
    .end local v8           #perforLongPress:Z
    :cond_2
    invoke-virtual {p0, v11}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 1373
    iget v9, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    invoke-virtual {p0, v9}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v2

    .line 1374
    .local v2, id:J
    iget-object v9, p0, Landroid/widget/Gallery;->mDownTouchView:Landroid/view/View;

    iget v10, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    invoke-direct {p0, v9, v10, v2, v3}, Landroid/widget/Gallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1268
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1272
    iget-boolean v0, p0, Landroid/widget/Gallery;->mShouldCallbackDuringFling:Z

    if-nez v0, :cond_3

    .line 1273
    iget-boolean v0, p0, Landroid/widget/Gallery;->mIsFirstScroll:Z

    if-eqz v0, :cond_1

    .line 1279
    iget-boolean v0, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    iput-boolean v3, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    .line 1280
    :cond_0
    iget-object v0, p0, Landroid/widget/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xfa

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1286
    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroid/widget/Gallery;->mIsFirstScroll:Z

    if-eqz v0, :cond_2

    .line 1287
    invoke-virtual {p0, v3}, Landroid/widget/Gallery;->reportScrollStateChange(I)V

    .line 1291
    :cond_2
    float-to-int v0, p3

    mul-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->trackMotionScroll(I)V

    .line 1293
    iput-boolean v4, p0, Landroid/widget/Gallery;->mIsFirstScroll:Z

    .line 1294
    return v3

    .line 1283
    :cond_3
    iget-boolean v0, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    if-eqz v0, :cond_1

    iput-boolean v4, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 1381
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "e"

    .prologue
    const/4 v1, 0x1

    .line 1198
    iget v2, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    if-ltz v2, :cond_5

    .line 1201
    iget v2, p0, Landroid/widget/Gallery;->mChoiceMode:I

    if-nez v2, :cond_2

    .line 1203
    iget v2, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-direct {p0, v2}, Landroid/widget/Gallery;->scrollToChild(I)Z

    .line 1206
    iget-boolean v2, p0, Landroid/widget/Gallery;->mShouldCallbackOnUnselectedItemClick:Z

    if-nez v2, :cond_0

    iget v2, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    iget v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ne v2, v3, :cond_1

    .line 1207
    :cond_0
    iget-object v2, p0, Landroid/widget/Gallery;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    iget-object v4, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget v5, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    invoke-interface {v4, v5}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    .line 1230
    :cond_1
    :goto_0
    return v1

    .line 1210
    :cond_2
    iget v2, p0, Landroid/widget/Gallery;->mChoiceMode:I

    if-ne v2, v1, :cond_1

    .line 1211
    iget-object v2, p0, Landroid/widget/Gallery;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v2, :cond_3

    .line 1213
    iget v2, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-direct {p0, v2}, Landroid/widget/Gallery;->scrollToChild(I)Z

    .line 1216
    :cond_3
    iget-object v2, p0, Landroid/widget/Gallery;->mPerformClick:Landroid/widget/Gallery$PerformClick;

    if-nez v2, :cond_4

    .line 1217
    new-instance v2, Landroid/widget/Gallery$PerformClick;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/widget/Gallery$PerformClick;-><init>(Landroid/widget/Gallery;Landroid/widget/Gallery$1;)V

    iput-object v2, p0, Landroid/widget/Gallery;->mPerformClick:Landroid/widget/Gallery$PerformClick;

    .line 1221
    :cond_4
    iget-object v0, p0, Landroid/widget/Gallery;->mPerformClick:Landroid/widget/Gallery$PerformClick;

    .line 1222
    .local v0, performClick:Landroid/widget/Gallery$PerformClick;
    iget v2, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    iput v2, v0, Landroid/widget/Gallery$PerformClick;->mClickMotionPosition:I

    .line 1223
    invoke-virtual {v0}, Landroid/widget/Gallery$WindowRunnnable;->rememberWindowAttachCount()V

    .line 1224
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1230
    .end local v0           #performClick:Landroid/widget/Gallery$PerformClick;
    :cond_5
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 1182
    iget-object v2, p0, Landroid/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1184
    .local v1, retValue:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1185
    .local v0, action:I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1187
    invoke-virtual {p0}, Landroid/widget/Gallery;->onUp()V

    .line 1192
    :cond_0
    :goto_0
    return v1

    .line 1188
    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 1189
    invoke-virtual {p0}, Landroid/widget/Gallery;->onCancel()V

    goto :goto_0
.end method

.method onUp()V
    .locals 1

    .prologue
    .line 1331
    iget-object v0, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    #getter for: Landroid/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;
    invoke-static {v0}, Landroid/widget/Gallery$FlingRunnable;->access$600(Landroid/widget/Gallery$FlingRunnable;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1332
    invoke-direct {p0}, Landroid/widget/Gallery;->scrollIntoSlots()V

    .line 1335
    :cond_0
    invoke-direct {p0}, Landroid/widget/Gallery;->dispatchUnpress()V

    .line 1336
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 4
    .parameter "action"
    .parameter "arguments"

    .prologue
    const/4 v1, 0x0

    .line 1684
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1685
    const/4 v1, 0x1

    .line 1701
    :cond_0
    :goto_0
    return v1

    .line 1687
    :cond_1
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 1689
    :sswitch_0
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v2, :cond_0

    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    .line 1690
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v0, v1, v2

    .line 1691
    .local v0, currentChildIndex:I
    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1}, Landroid/widget/Gallery;->scrollToChild(I)Z

    move-result v1

    goto :goto_0

    .line 1695
    .end local v0           #currentChildIndex:I
    :sswitch_1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v2, :cond_0

    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-lez v2, :cond_0

    .line 1696
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v0, v1, v2

    .line 1697
    .restart local v0       #currentChildIndex:I
    add-int/lit8 v1, v0, -0x1

    invoke-direct {p0, v1}, Landroid/widget/Gallery;->scrollToChild(I)Z

    move-result v1

    goto :goto_0

    .line 1687
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method performLongPress(Landroid/view/View;IJ)Z
    .locals 12
    .parameter "child"
    .parameter "longPressPosition"
    .parameter "longPressId"

    .prologue
    .line 2288
    iget v0, p0, Landroid/widget/Gallery;->mChoiceMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 2289
    iget-object v0, p0, Landroid/widget/Gallery;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/Gallery;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_9

    iget-object v0, p0, Landroid/widget/Gallery;->mMultiChoiceModeCallback:Landroid/widget/Gallery$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Gallery;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_9

    .line 2292
    :cond_0
    iput p2, p0, Landroid/widget/Gallery;->mDragAndDropPosition:I

    .line 2294
    const v0, 0x1020001

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 2295
    .local v6, checkbox:Landroid/view/View;
    if-eqz v6, :cond_1

    instance-of v0, v6, Landroid/widget/Checkable;

    if-eqz v0, :cond_1

    move-object v0, v6

    .line 2296
    check-cast v0, Landroid/widget/Checkable;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 2299
    :cond_1
    iget-object v7, p0, Landroid/widget/Gallery;->mTouchFrame:Landroid/graphics/Rect;

    .line 2300
    .local v7, frame:Landroid/graphics/Rect;
    if-nez v7, :cond_2

    .line 2301
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/Gallery;->mTouchFrame:Landroid/graphics/Rect;

    .line 2302
    iget-object v7, p0, Landroid/widget/Gallery;->mTouchFrame:Landroid/graphics/Rect;

    .line 2304
    :cond_2
    invoke-virtual {p1, v7}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 2306
    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/Gallery;->mMotionX:I

    iget v2, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/widget/Gallery;->mDragOffsetX:I

    .line 2307
    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/Gallery;->mMotionY:I

    iget v2, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/widget/Gallery;->mDragOffsetY:I

    .line 2309
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setActivated(Z)V

    .line 2310
    invoke-virtual {p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 2312
    iget-boolean v0, p0, Landroid/widget/Gallery;->mDragEnable:Z

    if-eqz v0, :cond_b

    .line 2313
    instance-of v0, p1, Landroid/widget/Gallery$DragShadowItem;

    if-eqz v0, :cond_6

    move-object v9, p1

    .line 2314
    check-cast v9, Landroid/widget/Gallery$DragShadowItem;

    .line 2315
    .local v9, item:Landroid/widget/Gallery$DragShadowItem;
    new-instance v0, Landroid/widget/Gallery$ListViewDragShadowBuilder;

    invoke-interface {v9}, Landroid/widget/Gallery$DragShadowItem;->getDragView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v9}, Landroid/widget/Gallery$DragShadowItem;->needBackground()Z

    move-result v2

    invoke-interface {v9}, Landroid/widget/Gallery$DragShadowItem;->getDragViewShowPosition()Landroid/graphics/Point;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Landroid/widget/Gallery$ListViewDragShadowBuilder;-><init>(Landroid/widget/Gallery;Landroid/view/View;ZLandroid/graphics/Point;)V

    iput-object v0, p0, Landroid/widget/Gallery;->mShadowBuilder:Landroid/widget/Gallery$ListViewDragShadowBuilder;

    .line 2320
    .end local v9           #item:Landroid/widget/Gallery$DragShadowItem;
    :goto_0
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/Gallery;->mShadowBuilder:Landroid/widget/Gallery$ListViewDragShadowBuilder;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p0, v2}, Landroid/view/View;->startDragMz(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2322
    if-eqz v6, :cond_3

    instance-of v0, v6, Landroid/widget/Checkable;

    if-eqz v0, :cond_3

    .line 2323
    check-cast v6, Landroid/widget/Checkable;

    .end local v6           #checkbox:Landroid/view/View;
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 2325
    :cond_3
    iget-object v0, p0, Landroid/widget/Gallery;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 2326
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/Gallery;->mDragAndDropPosition:I

    .line 2328
    iget-object v0, p0, Landroid/widget/Gallery;->mPerformClick:Landroid/widget/Gallery$PerformClick;

    if-nez v0, :cond_4

    .line 2329
    new-instance v0, Landroid/widget/Gallery$PerformClick;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/Gallery$PerformClick;-><init>(Landroid/widget/Gallery;Landroid/widget/Gallery$1;)V

    iput-object v0, p0, Landroid/widget/Gallery;->mPerformClick:Landroid/widget/Gallery$PerformClick;

    .line 2333
    :cond_4
    iget-object v10, p0, Landroid/widget/Gallery;->mPerformClick:Landroid/widget/Gallery$PerformClick;

    .line 2334
    .local v10, performClick:Landroid/widget/Gallery$PerformClick;
    iput p2, v10, Landroid/widget/Gallery$PerformClick;->mClickMotionPosition:I

    .line 2335
    invoke-virtual {v10}, Landroid/widget/Gallery$WindowRunnnable;->rememberWindowAttachCount()V

    .line 2336
    invoke-virtual {p0, v10}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 2337
    const/4 v8, 0x1

    .line 2371
    .end local v7           #frame:Landroid/graphics/Rect;
    .end local v10           #performClick:Landroid/widget/Gallery$PerformClick;
    :cond_5
    :goto_1
    return v8

    .line 2317
    .restart local v6       #checkbox:Landroid/view/View;
    .restart local v7       #frame:Landroid/graphics/Rect;
    :cond_6
    new-instance v0, Landroid/widget/Gallery$ListViewDragShadowBuilder;

    invoke-direct {v0, p0, p1}, Landroid/widget/Gallery$ListViewDragShadowBuilder;-><init>(Landroid/widget/Gallery;Landroid/view/View;)V

    iput-object v0, p0, Landroid/widget/Gallery;->mShadowBuilder:Landroid/widget/Gallery$ListViewDragShadowBuilder;

    goto :goto_0

    .line 2340
    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 2341
    instance-of v0, p1, Landroid/widget/Gallery$DragShadowItem;

    if-eqz v0, :cond_a

    move-object v0, p1

    .line 2342
    check-cast v0, Landroid/widget/Gallery$DragShadowItem;

    invoke-interface {v0}, Landroid/widget/Gallery$DragShadowItem;->getDragView()Landroid/view/View;

    move-result-object v11

    .line 2343
    .local v11, v:Landroid/view/View;
    if-eqz v11, :cond_8

    .line 2344
    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Landroid/view/View;->setAlpha(F)V

    .line 2346
    :cond_8
    iget-boolean v0, p0, Landroid/widget/Gallery;->mChangeChildAlphaWhenDragView:Z

    if-eqz v0, :cond_9

    .line 2347
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 2357
    .end local v6           #checkbox:Landroid/view/View;
    .end local v7           #frame:Landroid/graphics/Rect;
    .end local v11           #v:Landroid/view/View;
    :cond_9
    :goto_2
    const/4 v8, 0x1

    goto :goto_1

    .line 2350
    .restart local v6       #checkbox:Landroid/view/View;
    .restart local v7       #frame:Landroid/graphics/Rect;
    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    .line 2353
    :cond_b
    iget v0, p0, Landroid/widget/Gallery;->mDragAndDropPosition:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/widget/Gallery;->setItemChecked(IZ)V

    goto :goto_2

    .line 2360
    .end local v6           #checkbox:Landroid/view/View;
    .end local v7           #frame:Landroid/graphics/Rect;
    :cond_c
    const/4 v8, 0x0

    .line 2361
    .local v8, handled:Z
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_d

    .line 2362
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v8

    .line 2364
    :cond_d
    if-nez v8, :cond_e

    .line 2365
    invoke-virtual/range {p0 .. p4}, Landroid/widget/Gallery;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/Gallery$AdapterContextMenuInfo;

    iput-object v0, p0, Landroid/widget/Gallery;->mContextMenuInfo:Landroid/widget/Gallery$AdapterContextMenuInfo;

    .line 2366
    invoke-super {p0, p0}, Landroid/view/ViewGroup;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v8

    .line 2368
    :cond_e
    if-eqz v8, :cond_5

    .line 2369
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_1
.end method

.method reportScrollStateChange(I)V
    .locals 1
    .parameter "newState"

    .prologue
    .line 1880
    iget v0, p0, Landroid/widget/Gallery;->mLastScrollState:I

    if-eq p1, v0, :cond_0

    .line 1881
    iput p1, p0, Landroid/widget/Gallery;->mLastScrollState:I

    .line 1882
    iget-object v0, p0, Landroid/widget/Gallery;->mOnScrollListener:Landroid/widget/Gallery$OnScrollListener;

    if-eqz v0, :cond_0

    .line 1883
    iget-object v0, p0, Landroid/widget/Gallery;->mOnScrollListener:Landroid/widget/Gallery$OnScrollListener;

    invoke-interface {v0, p0, p1}, Landroid/widget/Gallery$OnScrollListener;->onScrollStateChanged(Landroid/widget/Gallery;I)V

    .line 1887
    :cond_0
    return-void
.end method

.method selectionChanged()V
    .locals 1

    .prologue
    .line 683
    iget-boolean v0, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    .line 684
    invoke-super {p0}, Landroid/widget/AdapterView;->selectionChanged()V

    .line 686
    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    check-cast p1, Landroid/widget/SpinnerAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 1955
    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1956
    if-eqz p1, :cond_2

    iget v0, p0, Landroid/widget/Gallery;->mChoiceMode:I

    if-eqz v0, :cond_2

    .line 1957
    iget-object v0, p0, Landroid/widget/Gallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    .line 1958
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/widget/Gallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 1960
    :cond_0
    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Gallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_1

    .line 1961
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/Gallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1963
    :cond_1
    invoke-direct {p0}, Landroid/widget/Gallery;->clearChoices()V

    .line 1965
    :cond_2
    return-void
.end method

.method public setAnimationDuration(I)V
    .locals 0
    .parameter "animationDurationMillis"

    .prologue
    .line 379
    iput p1, p0, Landroid/widget/Gallery;->mAnimationDuration:I

    .line 380
    return-void
.end method

.method public setCallbackDuringFling(Z)V
    .locals 0
    .parameter "shouldCallback"

    .prologue
    .line 353
    iput-boolean p1, p0, Landroid/widget/Gallery;->mShouldCallbackDuringFling:Z

    .line 354
    return-void
.end method

.method public setCallbackOnUnselectedItemClick(Z)V
    .locals 0
    .parameter "shouldCallback"

    .prologue
    .line 366
    iput-boolean p1, p0, Landroid/widget/Gallery;->mShouldCallbackOnUnselectedItemClick:Z

    .line 367
    return-void
.end method

.method public setChoiceMode(I)V
    .locals 2
    .parameter "choiceMode"

    .prologue
    const/4 v1, 0x1

    .line 2059
    iput p1, p0, Landroid/widget/Gallery;->mChoiceMode:I

    .line 2060
    iget-object v0, p0, Landroid/widget/Gallery;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 2061
    iget-object v0, p0, Landroid/widget/Gallery;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 2062
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/Gallery;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 2064
    :cond_0
    iget v0, p0, Landroid/widget/Gallery;->mChoiceMode:I

    if-eqz v0, :cond_3

    .line 2065
    iget-object v0, p0, Landroid/widget/Gallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_1

    .line 2066
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/widget/Gallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 2068
    :cond_1
    iget-object v0, p0, Landroid/widget/Gallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2069
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/Gallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 2072
    :cond_2
    iget v0, p0, Landroid/widget/Gallery;->mChoiceMode:I

    if-ne v0, v1, :cond_3

    .line 2073
    invoke-direct {p0}, Landroid/widget/Gallery;->clearChoices()V

    .line 2074
    invoke-virtual {p0, v1}, Landroid/view/View;->setLongClickable(Z)V

    .line 2077
    :cond_3
    return-void
.end method

.method public setDragEnable(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 1950
    iput-boolean p1, p0, Landroid/widget/Gallery;->mDragEnable:Z

    .line 1951
    return-void
.end method

.method public setDragItemBackgroundResources([I)V
    .locals 3
    .parameter "bgres"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 2409
    if-eqz p1, :cond_2

    .line 2410
    array-length v0, p1

    if-lez v0, :cond_0

    .line 2411
    const/4 v0, 0x0

    aget v0, p1, v0

    iput v0, p0, Landroid/widget/Gallery;->mDragViewBackground:I

    .line 2413
    :cond_0
    array-length v0, p1

    if-le v0, v1, :cond_1

    .line 2414
    aget v0, p1, v1

    iput v0, p0, Landroid/widget/Gallery;->mDragViewBackgroundFilter:I

    .line 2416
    :cond_1
    array-length v0, p1

    if-le v0, v2, :cond_2

    .line 2417
    aget v0, p1, v2

    iput v0, p0, Landroid/widget/Gallery;->mDragViewBackgroundDelete:I

    .line 2420
    :cond_2
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .parameter "gravity"

    .prologue
    .line 1620
    iget v0, p0, Landroid/widget/Gallery;->mGravity:I

    if-eq v0, p1, :cond_0

    .line 1621
    iput p1, p0, Landroid/widget/Gallery;->mGravity:I

    .line 1622
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->requestLayout()V

    .line 1624
    :cond_0
    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 10
    .parameter "position"
    .parameter "value"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1979
    iget v2, p0, Landroid/widget/Gallery;->mChoiceMode:I

    if-nez v2, :cond_1

    .line 2045
    :cond_0
    :goto_0
    return-void

    .line 1984
    :cond_1
    if-eqz p2, :cond_4

    iget-object v2, p0, Landroid/widget/Gallery;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v2, :cond_4

    iget v2, p0, Landroid/widget/Gallery;->mChoiceMode:I

    if-ne v2, v0, :cond_4

    .line 1986
    iget-object v2, p0, Landroid/widget/Gallery;->mMultiChoiceModeCallback:Landroid/widget/Gallery$MultiChoiceModeWrapper;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/Gallery;->mMultiChoiceModeCallback:Landroid/widget/Gallery$MultiChoiceModeWrapper;

    invoke-virtual {v2}, Landroid/widget/Gallery$MultiChoiceModeWrapper;->hasWrappedCallback()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1988
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "StaggeredGridView: attempted to start selection mode for CHOICE_MODE_MULTIPLE_MODAL but no choice mode callback was supplied. Call setMultiChoiceModeListener to set a callback."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1992
    :cond_3
    iget-object v2, p0, Landroid/widget/Gallery;->mMultiChoiceModeCallback:Landroid/widget/Gallery$MultiChoiceModeWrapper;

    invoke-virtual {p0, v2}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/Gallery;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1995
    :cond_4
    iget v2, p0, Landroid/widget/Gallery;->mChoiceMode:I

    if-ne v2, v0, :cond_a

    .line 1996
    iget-object v0, p0, Landroid/widget/Gallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    .line 1997
    .local v6, oldValue:Z
    iget-object v0, p0, Landroid/widget/Gallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1998
    iget-object v0, p0, Landroid/widget/Gallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1999
    if-eqz p2, :cond_8

    .line 2000
    iget-object v0, p0, Landroid/widget/Gallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1, p1}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v2, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2005
    :cond_5
    :goto_1
    if-eq v6, p2, :cond_6

    .line 2006
    if-eqz p2, :cond_9

    .line 2007
    iget v0, p0, Landroid/widget/Gallery;->mCheckedItemCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/Gallery;->mCheckedItemCount:I

    .line 2012
    :cond_6
    :goto_2
    iget-object v0, p0, Landroid/widget/Gallery;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_7

    .line 2013
    iget-object v0, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v3

    .line 2014
    .local v3, id:J
    iget-object v0, p0, Landroid/widget/Gallery;->mMultiChoiceModeCallback:Landroid/widget/Gallery$MultiChoiceModeWrapper;

    iget-object v1, p0, Landroid/widget/Gallery;->mChoiceActionMode:Landroid/view/ActionMode;

    move v2, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Gallery$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 2041
    .end local v3           #id:J
    .end local v6           #oldValue:Z
    :cond_7
    :goto_3
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mInLayout:Z

    if-nez v0, :cond_0

    .line 2042
    invoke-direct {p0}, Landroid/widget/Gallery;->invalidateViews()V

    goto :goto_0

    .line 2002
    .restart local v6       #oldValue:Z
    :cond_8
    iget-object v0, p0, Landroid/widget/Gallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1, p1}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_1

    .line 2009
    :cond_9
    iget v0, p0, Landroid/widget/Gallery;->mCheckedItemCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/widget/Gallery;->mCheckedItemCount:I

    goto :goto_2

    .line 2018
    .end local v6           #oldValue:Z
    :cond_a
    iget-object v2, p0, Landroid/widget/Gallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_e

    iget-object v2, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v2}, Landroid/widget/SpinnerAdapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_e

    move v7, v0

    .line 2021
    .local v7, updateIds:Z
    :goto_4
    if-nez p2, :cond_b

    invoke-virtual {p0, p1}, Landroid/widget/Gallery;->isItemChecked(I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2022
    :cond_b
    iget-object v2, p0, Landroid/widget/Gallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 2023
    if-eqz v7, :cond_c

    .line 2024
    iget-object v2, p0, Landroid/widget/Gallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 2029
    :cond_c
    if-eqz p2, :cond_f

    .line 2030
    iget-object v1, p0, Landroid/widget/Gallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2031
    if-eqz v7, :cond_d

    .line 2032
    iget-object v1, p0, Landroid/widget/Gallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v2, p1}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v8, v9, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2034
    :cond_d
    iput v0, p0, Landroid/widget/Gallery;->mCheckedItemCount:I

    goto :goto_3

    .end local v7           #updateIds:Z
    :cond_e
    move v7, v1

    .line 2018
    goto :goto_4

    .line 2035
    .restart local v7       #updateIds:Z
    :cond_f
    iget-object v0, p0, Landroid/widget/Gallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/widget/Gallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2036
    :cond_10
    iput v1, p0, Landroid/widget/Gallery;->mCheckedItemCount:I

    goto :goto_3
.end method

.method public setMultiChoiceModeListener(Landroid/widget/Gallery$MultiChoiceModeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 2105
    iget-object v0, p0, Landroid/widget/Gallery;->mMultiChoiceModeCallback:Landroid/widget/Gallery$MultiChoiceModeWrapper;

    if-nez v0, :cond_0

    .line 2106
    new-instance v0, Landroid/widget/Gallery$MultiChoiceModeWrapper;

    invoke-direct {v0, p0}, Landroid/widget/Gallery$MultiChoiceModeWrapper;-><init>(Landroid/widget/Gallery;)V

    iput-object v0, p0, Landroid/widget/Gallery;->mMultiChoiceModeCallback:Landroid/widget/Gallery$MultiChoiceModeWrapper;

    .line 2108
    :cond_0
    iget-object v0, p0, Landroid/widget/Gallery;->mMultiChoiceModeCallback:Landroid/widget/Gallery$MultiChoiceModeWrapper;

    invoke-virtual {v0, p1}, Landroid/widget/Gallery$MultiChoiceModeWrapper;->setWrapped(Landroid/widget/Gallery$MultiChoiceModeListener;)V

    .line 2109
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/Gallery$OnScrollListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 1855
    iput-object p1, p0, Landroid/widget/Gallery;->mOnScrollListener:Landroid/widget/Gallery$OnScrollListener;

    .line 1856
    invoke-virtual {p0}, Landroid/widget/Gallery;->invokeOnItemScrollListener()V

    .line 1857
    return-void
.end method

.method setSelectedPositionInt(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 1571
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 1574
    invoke-direct {p0}, Landroid/widget/Gallery;->updateSelectedItemMetadata()V

    .line 1575
    return-void
.end method

.method public setSpacing(I)V
    .locals 0
    .parameter "spacing"

    .prologue
    .line 390
    iput p1, p0, Landroid/widget/Gallery;->mSpacing:I

    .line 391
    return-void
.end method

.method public setUnselectedAlpha(F)V
    .locals 0
    .parameter "unselectedAlpha"

    .prologue
    .line 401
    iput p1, p0, Landroid/widget/Gallery;->mUnselectedAlpha:F

    .line 402
    return-void
.end method

.method public showContextMenu()Z
    .locals 5

    .prologue
    .line 1441
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ltz v2, :cond_0

    .line 1442
    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v0, v2, v3

    .line 1443
    .local v0, index:I
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1444
    .local v1, v:Landroid/view/View;
    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget-wide v3, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    invoke-direct {p0, v1, v2, v3, v4}, Landroid/widget/Gallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v2

    .line 1447
    .end local v0           #index:I
    .end local v1           #v:Landroid/view/View;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 4
    .parameter "originalView"

    .prologue
    .line 1429
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v2

    .line 1430
    .local v2, longPressPosition:I
    if-gez v2, :cond_0

    .line 1431
    const/4 v3, 0x0

    .line 1435
    :goto_0
    return v3

    .line 1434
    :cond_0
    iget-object v3, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v3, v2}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v0

    .line 1435
    .local v0, longPressId:J
    invoke-direct {p0, p1, v2, v0, v1}, Landroid/widget/Gallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v3

    goto :goto_0
.end method

.method trackMotionScroll(I)V
    .locals 8
    .parameter "deltaX"

    .prologue
    const/4 v6, 0x0

    .line 483
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-nez v7, :cond_0

    .line 525
    :goto_0
    return-void

    .line 487
    :cond_0
    if-gez p1, :cond_3

    const/4 v5, 0x1

    .line 489
    .local v5, toLeft:Z
    :goto_1
    invoke-virtual {p0, v5, p1}, Landroid/widget/Gallery;->getLimitedMotionScrollAmount(ZI)I

    move-result v3

    .line 490
    .local v3, limitedDeltaX:I
    if-eq v3, p1, :cond_1

    .line 492
    iget-object v7, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    #calls: Landroid/widget/Gallery$FlingRunnable;->endFling(Z)V
    invoke-static {v7, v6}, Landroid/widget/Gallery$FlingRunnable;->access$100(Landroid/widget/Gallery$FlingRunnable;Z)V

    .line 493
    invoke-direct {p0}, Landroid/widget/Gallery;->onFinishedMovement()V

    .line 496
    :cond_1
    invoke-direct {p0, v3}, Landroid/widget/Gallery;->offsetChildrenLeftAndRight(I)V

    .line 498
    invoke-direct {p0, v5}, Landroid/widget/Gallery;->detachOffScreenChildren(Z)V

    .line 500
    if-eqz v5, :cond_4

    .line 502
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryRight()V

    .line 509
    :goto_2
    iget-object v7, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v7}, Landroid/widget/AbsSpinner$RecycleBin;->clear()V

    .line 511
    invoke-direct {p0}, Landroid/widget/Gallery;->setSelectionToCenterChild()V

    .line 513
    iget-object v4, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    .line 514
    .local v4, selChild:Landroid/view/View;
    if-eqz v4, :cond_2

    .line 515
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 516
    .local v1, childLeft:I
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v0, v7, 0x2

    .line 517
    .local v0, childCenter:I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v2, v7, 0x2

    .line 518
    .local v2, galleryCenter:I
    add-int v7, v1, v0

    sub-int/2addr v7, v2

    iput v7, p0, Landroid/widget/Gallery;->mSelectedCenterOffset:I

    .line 521
    .end local v0           #childCenter:I
    .end local v1           #childLeft:I
    .end local v2           #galleryCenter:I
    :cond_2
    invoke-virtual {p0}, Landroid/widget/Gallery;->invokeOnItemScrollListener()V

    .line 522
    invoke-virtual {p0, v6, v6, v6, v6}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 524
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .end local v3           #limitedDeltaX:I
    .end local v4           #selChild:Landroid/view/View;
    .end local v5           #toLeft:Z
    :cond_3
    move v5, v6

    .line 487
    goto :goto_1

    .line 505
    .restart local v3       #limitedDeltaX:I
    .restart local v5       #toLeft:Z
    :cond_4
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryLeft()V

    goto :goto_2
.end method
