.class public Landroid/widget/ListView;
.super Landroid/widget/AbsListView;
.source "ListView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ListView$1;,
        Landroid/widget/ListView$ScrollSelectionRunnable;,
        Landroid/widget/ListView$OnDragSelectListener;,
        Landroid/widget/ListView$DividerFilter;,
        Landroid/widget/ListView$ArrowScrollFocusResult;,
        Landroid/widget/ListView$FocusSelector;,
        Landroid/widget/ListView$FixedViewInfo;
    }
.end annotation


# static fields
.field private static final MAX_SCROLL_FACTOR:F = 0.33f

.field private static final MIN_SCROLL_PREVIEW_PIXELS:I = 0x2

.field static final NO_POSITION:I = -0x1

.field private static final tag:Ljava/lang/String; = "AbsListView"


# instance fields
.field private isAbsBasePartitionAdapter:Z

.field private mAbsBasePartitionAdapterClass:Ljava/lang/Class;

.field private mAreAllItemsSelectable:Z

.field private final mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

.field mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerFilter:Landroid/widget/ListView$DividerFilter;

.field mDividerHeight:I

.field private mDividerIsOpaque:Z

.field private mDividerPaint:Landroid/graphics/Paint;

.field private mDragDownPosition:I

.field private mDragMotionPosition:I

.field private mDragMotionViewBottom:I

.field private mDragMotionViewTop:I

.field private mDragMotionY:I

.field private mDragRegionRect:Landroid/graphics/Rect;

.field private mDragSelectListener:Landroid/widget/ListView$OnDragSelectListener;

.field private mDragSlop:I

.field private mDragWidth:I

.field private mEnableDragSelection:Z

.field private mEnableTopShadow:Z

.field private mFocusSelector:Landroid/widget/ListView$FocusSelector;

.field private mFocuseRect:Landroid/graphics/Rect;

.field private mFooterDividersEnabled:Z

.field private mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderDividersEnabled:Z

.field private mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIntercepeDragMotionX:I

.field private mIntercepeDragMotionY:I

.field private mIsBeginDragSelect:Z

.field private mIsCacheColorOpaque:Z

.field private mIsMeizuPartitionStyle:Z

.field private mIsOutOfDragRegion:Z

.field private mIsOutOfListContent:Z

.field private mItemsCanFocus:Z

.field private mLastDownSelectPosition:I

.field private mLastDragMotionY:I

.field private mLastUpSelectPosition:I

.field private mLongPressPosition:I

.field mOverScrollFooter:Landroid/graphics/drawable/Drawable;

.field mOverScrollHeader:Landroid/graphics/drawable/Drawable;

.field private mScrollSelection:Landroid/widget/ListView$ScrollSelectionRunnable;

.field private mSelectToBottom:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopShadowLight:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 149
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 152
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 153
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    .line 156
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 109
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 110
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 124
    iput-boolean v10, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 126
    iput-boolean v9, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    .line 129
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 134
    new-instance v7, Landroid/widget/ListView$ArrowScrollFocusResult;

    invoke-direct {v7, v11}, Landroid/widget/ListView$ArrowScrollFocusResult;-><init>(Landroid/widget/ListView$1;)V

    iput-object v7, p0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    .line 142
    iput-boolean v9, p0, Landroid/widget/ListView;->mEnableTopShadow:Z

    .line 145
    iput-boolean v9, p0, Landroid/widget/ListView;->isAbsBasePartitionAdapter:Z

    .line 3974
    iput-boolean v9, p0, Landroid/widget/ListView;->mEnableDragSelection:Z

    .line 3975
    iput-object v11, p0, Landroid/widget/ListView;->mDragSelectListener:Landroid/widget/ListView$OnDragSelectListener;

    .line 3976
    iput-boolean v9, p0, Landroid/widget/ListView;->mIsBeginDragSelect:Z

    .line 3977
    iput v9, p0, Landroid/widget/ListView;->mDragMotionViewTop:I

    .line 3978
    iput v9, p0, Landroid/widget/ListView;->mDragMotionViewBottom:I

    .line 3979
    iput v8, p0, Landroid/widget/ListView;->mDragMotionPosition:I

    .line 3980
    iput v8, p0, Landroid/widget/ListView;->mDragMotionY:I

    .line 3981
    iput v9, p0, Landroid/widget/ListView;->mLastDragMotionY:I

    .line 3982
    iput v9, p0, Landroid/widget/ListView;->mIntercepeDragMotionX:I

    .line 3983
    iput v9, p0, Landroid/widget/ListView;->mIntercepeDragMotionY:I

    .line 3985
    iput v8, p0, Landroid/widget/ListView;->mLastUpSelectPosition:I

    .line 3986
    iput v8, p0, Landroid/widget/ListView;->mLastDownSelectPosition:I

    .line 3987
    iput v8, p0, Landroid/widget/ListView;->mDragDownPosition:I

    .line 3989
    iput-boolean v9, p0, Landroid/widget/ListView;->mIsOutOfListContent:Z

    .line 3990
    iput v9, p0, Landroid/widget/ListView;->mDragWidth:I

    .line 3991
    iput v9, p0, Landroid/widget/ListView;->mDragSlop:I

    .line 3992
    iput v8, p0, Landroid/widget/ListView;->mLongPressPosition:I

    .line 3995
    iput-boolean v9, p0, Landroid/widget/ListView;->mIsOutOfDragRegion:Z

    .line 3996
    iput-object v11, p0, Landroid/widget/ListView;->mDragRegionRect:Landroid/graphics/Rect;

    .line 3998
    iput-boolean v9, p0, Landroid/widget/ListView;->mSelectToBottom:Z

    .line 3999
    iput-object v11, p0, Landroid/widget/ListView;->mFocuseRect:Landroid/graphics/Rect;

    .line 4529
    iput-object v11, p0, Landroid/widget/ListView;->mScrollSelection:Landroid/widget/ListView$ScrollSelectionRunnable;

    .line 158
    sget-object v7, Lcom/android/internal/R$styleable;->ListView:[I

    invoke-virtual {p1, p2, v7, p3, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 161
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    .line 163
    .local v4, entries:[Ljava/lang/CharSequence;
    if-eqz v4, :cond_0

    .line 164
    new-instance v7, Landroid/widget/ArrayAdapter;

    const v8, 0x1090003

    invoke-direct {v7, p1, v8, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 168
    :cond_0
    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 169
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 171
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 174
    :cond_1
    const/4 v7, 0x5

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 176
    .local v6, osHeader:Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_2

    .line 177
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V

    .line 180
    :cond_2
    const/4 v7, 0x6

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 182
    .local v5, osFooter:Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_3

    .line 183
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V

    .line 187
    :cond_3
    const/4 v7, 0x2

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 189
    .local v2, dividerHeight:I
    if-eqz v2, :cond_4

    .line 190
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 193
    :cond_4
    const/4 v7, 0x3

    invoke-virtual {v0, v7, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    .line 194
    const/4 v7, 0x4

    invoke-virtual {v0, v7, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    .line 197
    const/4 v7, 0x7

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Landroid/widget/ListView;->mIsMeizuPartitionStyle:Z

    .line 199
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 202
    invoke-virtual {p1}, Landroid/content/Context;->isThemeLight()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 203
    iput-boolean v10, p0, Landroid/widget/ListView;->mEnableTopShadow:Z

    .line 204
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10807b1

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/ListView;->mTopShadowLight:Landroid/graphics/drawable/Drawable;

    .line 207
    :cond_5
    :try_start_0
    const-string v7, "com.meizu.common.widget.AbsBasePartitionAdapter"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/ListView;->mAbsBasePartitionAdapterClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :goto_0
    return-void

    .line 208
    :catch_0
    move-exception v3

    .line 209
    .local v3, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$200(Landroid/widget/ListView;Z)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/widget/ListView;->findCandidateScrollSelection(Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/widget/ListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Landroid/widget/ListView;->mLastUpSelectPosition:I

    return v0
.end method

.method static synthetic access$400(Landroid/widget/ListView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;->upSelect(II)V

    return-void
.end method

.method static synthetic access$500(Landroid/widget/ListView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/widget/ListView;->correctTooLow(I)V

    return-void
.end method

.method static synthetic access$600(Landroid/widget/ListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Landroid/widget/ListView;->mLastDownSelectPosition:I

    return v0
.end method

.method static synthetic access$700(Landroid/widget/ListView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;->downSelect(II)V

    return-void
.end method

.method static synthetic access$800(Landroid/widget/ListView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/widget/ListView;->correctTooHigh(I)V

    return-void
.end method

.method private addViewAbove(Landroid/view/View;I)Landroid/view/View;
    .locals 8
    .parameter "theView"
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    .line 3183
    add-int/lit8 v2, p2, -0x1

    .line 3184
    .local v2, abovePosition:I
    iget-object v0, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Landroid/widget/AbsListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 3185
    .local v1, view:Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v5, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int v3, v0, v5

    .line 3186
    .local v3, edgeOfNewChild:I
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    aget-boolean v7, v0, v4

    move-object v0, p0

    move v6, v4

    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 3188
    return-object v1
.end method

.method private addViewBelow(Landroid/view/View;I)Landroid/view/View;
    .locals 8
    .parameter "theView"
    .parameter "position"

    .prologue
    const/4 v6, 0x0

    .line 3192
    add-int/lit8 v2, p2, 0x1

    .line 3193
    .local v2, belowPosition:I
    iget-object v0, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Landroid/widget/AbsListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 3194
    .local v1, view:Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v4, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int v3, v0, v4

    .line 3195
    .local v3, edgeOfNewChild:I
    const/4 v4, 0x1

    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    aget-boolean v7, v0, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 3197
    return-object v1
.end method

.method private adjustViewsUpOrDown()V
    .locals 6

    .prologue
    .line 226
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 229
    .local v1, childCount:I
    if-lez v1, :cond_2

    .line 232
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v3, :cond_3

    .line 235
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 236
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v2, v3, v4

    .line 237
    .local v2, delta:I
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-eqz v3, :cond_0

    .line 240
    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int/2addr v2, v3

    .line 242
    :cond_0
    if-gez v2, :cond_1

    .line 244
    const/4 v2, 0x0

    .line 263
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 264
    neg-int v3, v2

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->offsetChildrenTopAndBottom(I)V

    .line 267
    .end local v0           #child:Landroid/view/View;
    .end local v2           #delta:I
    :cond_2
    return-void

    .line 248
    :cond_3
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 250
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/AbsListView;->mDockingBottomHeight:I

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    .line 252
    .restart local v2       #delta:I
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ge v3, v4, :cond_4

    .line 255
    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int/2addr v2, v3

    .line 258
    :cond_4
    if-lez v2, :cond_1

    .line 259
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private amountToScroll(II)I
    .locals 12
    .parameter "direction"
    .parameter "nextSelectedPosition"

    .prologue
    .line 2791
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v10

    iget-object v11, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v10, v11

    .line 2792
    .local v4, listBottom:I
    iget-object v10, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v10, Landroid/graphics/Rect;->top:I

    .line 2794
    .local v5, listTop:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    .line 2796
    .local v7, numChildren:I
    const/16 v10, 0x82

    if-ne p1, v10, :cond_5

    .line 2797
    add-int/lit8 v3, v7, -0x1

    .line 2798
    .local v3, indexToMakeVisible:I
    const/4 v10, -0x1

    if-eq p2, v10, :cond_0

    .line 2799
    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v3, p2, v10

    .line 2802
    :cond_0
    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int v8, v10, v3

    .line 2803
    .local v8, positionToMakeVisible:I
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2805
    .local v9, viewToMakeVisible:Landroid/view/View;
    move v1, v4

    .line 2806
    .local v1, goalBottom:I
    iget v10, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    if-ge v8, v10, :cond_1

    .line 2807
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v10

    sub-int/2addr v1, v10

    .line 2810
    :cond_1
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    if-gt v10, v1, :cond_2

    .line 2812
    const/4 v10, 0x0

    .line 2858
    .end local v1           #goalBottom:I
    :goto_0
    return v10

    .line 2815
    .restart local v1       #goalBottom:I
    :cond_2
    const/4 v10, -0x1

    if-eq p2, v10, :cond_3

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v10, v1, v10

    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v11

    if-lt v10, v11, :cond_3

    .line 2818
    const/4 v10, 0x0

    goto :goto_0

    .line 2821
    :cond_3
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int v0, v10, v1

    .line 2823
    .local v0, amountToScroll:I
    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v10, v7

    iget v11, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ne v10, v11, :cond_4

    .line 2825
    add-int/lit8 v10, v7, -0x1

    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int v6, v10, v4

    .line 2826
    .local v6, max:I
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2829
    .end local v6           #max:I
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_0

    .line 2831
    .end local v0           #amountToScroll:I
    .end local v1           #goalBottom:I
    .end local v3           #indexToMakeVisible:I
    .end local v8           #positionToMakeVisible:I
    .end local v9           #viewToMakeVisible:Landroid/view/View;
    :cond_5
    const/4 v3, 0x0

    .line 2832
    .restart local v3       #indexToMakeVisible:I
    const/4 v10, -0x1

    if-eq p2, v10, :cond_6

    .line 2833
    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v3, p2, v10

    .line 2835
    :cond_6
    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int v8, v10, v3

    .line 2836
    .restart local v8       #positionToMakeVisible:I
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2837
    .restart local v9       #viewToMakeVisible:Landroid/view/View;
    move v2, v5

    .line 2838
    .local v2, goalTop:I
    if-lez v8, :cond_7

    .line 2839
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v10

    add-int/2addr v2, v10

    .line 2841
    :cond_7
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    if-lt v10, v2, :cond_8

    .line 2843
    const/4 v10, 0x0

    goto :goto_0

    .line 2846
    :cond_8
    const/4 v10, -0x1

    if-eq p2, v10, :cond_9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int/2addr v10, v2

    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v11

    if-lt v10, v11, :cond_9

    .line 2849
    const/4 v10, 0x0

    goto :goto_0

    .line 2852
    :cond_9
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v0, v2, v10

    .line 2853
    .restart local v0       #amountToScroll:I
    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-nez v10, :cond_a

    .line 2855
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v6, v5, v10

    .line 2856
    .restart local v6       #max:I
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2858
    .end local v6           #max:I
    :cond_a
    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto/16 :goto_0
.end method

.method private amountToScrollToNewFocus(ILandroid/view/View;I)I
    .locals 4
    .parameter "direction"
    .parameter "newFocus"
    .parameter "positionOfNewFocus"

    .prologue
    .line 3050
    const/4 v0, 0x0

    .line 3051
    .local v0, amountToScroll:I
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3052
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v2}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3053
    const/16 v2, 0x21

    if-ne p1, v2, :cond_1

    .line 3054
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_0

    .line 3055
    iget-object v2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v3

    .line 3056
    if-lez p3, :cond_0

    .line 3057
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    .line 3069
    :cond_0
    :goto_0
    return v0

    .line 3061
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v2, v3

    .line 3062
    .local v1, listBottom:I
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-le v2, v1, :cond_0

    .line 3063
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v1

    .line 3064
    iget v2, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge p3, v2, :cond_0

    .line 3065
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0
.end method

.method private arrowScrollFocused(I)Landroid/widget/ListView$ArrowScrollFocusResult;
    .locals 17
    .parameter "direction"

    .prologue
    .line 2948
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v11

    .line 2950
    .local v11, selectedView:Landroid/view/View;
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Landroid/view/View;->hasFocus()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 2951
    invoke-virtual {v11}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v8

    .line 2952
    .local v8, oldFocus:Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v14

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v14, v0, v8, v1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    .line 2977
    .end local v8           #oldFocus:Landroid/view/View;
    .local v7, newFocus:Landroid/view/View;
    :goto_0
    if-eqz v7, :cond_c

    .line 2978
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/widget/ListView;->positionOfNewFocus(Landroid/view/View;)I

    move-result v9

    .line 2982
    .local v9, positionOfNewFocus:I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_a

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-eq v9, v14, :cond_a

    .line 2983
    invoke-direct/range {p0 .. p1}, Landroid/widget/ListView;->lookForSelectablePositionOnScreen(I)I

    move-result v10

    .line 2984
    .local v10, selectablePosition:I
    const/4 v14, -0x1

    if-eq v10, v14, :cond_a

    const/16 v14, 0x82

    move/from16 v0, p1

    if-ne v0, v14, :cond_0

    if-lt v10, v9, :cond_1

    :cond_0
    const/16 v14, 0x21

    move/from16 v0, p1

    if-ne v0, v14, :cond_a

    if-le v10, v9, :cond_a

    .line 2987
    :cond_1
    const/4 v14, 0x0

    .line 3009
    .end local v9           #positionOfNewFocus:I
    .end local v10           #selectablePosition:I
    :goto_1
    return-object v14

    .line 2954
    .end local v7           #newFocus:Landroid/view/View;
    :cond_2
    const/16 v14, 0x82

    move/from16 v0, p1

    if-ne v0, v14, :cond_6

    .line 2955
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v14, :cond_3

    const/4 v12, 0x1

    .line 2956
    .local v12, topFadingEdgeShowing:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v14, Landroid/graphics/Rect;->top:I

    if-eqz v12, :cond_4

    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v14

    :goto_3
    add-int v5, v15, v14

    .line 2958
    .local v5, listTop:I
    if-eqz v11, :cond_5

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v14

    if-le v14, v5, :cond_5

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v13

    .line 2962
    .local v13, ySearchPoint:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v13, v0, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 2974
    .end local v5           #listTop:I
    .end local v12           #topFadingEdgeShowing:Z
    :goto_5
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v14, v0, v15, v1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v7

    .restart local v7       #newFocus:Landroid/view/View;
    goto :goto_0

    .line 2955
    .end local v7           #newFocus:Landroid/view/View;
    .end local v13           #ySearchPoint:I
    :cond_3
    const/4 v12, 0x0

    goto :goto_2

    .line 2956
    .restart local v12       #topFadingEdgeShowing:Z
    :cond_4
    const/4 v14, 0x0

    goto :goto_3

    .restart local v5       #listTop:I
    :cond_5
    move v13, v5

    .line 2958
    goto :goto_4

    .line 2964
    .end local v5           #listTop:I
    .end local v12           #topFadingEdgeShowing:Z
    :cond_6
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v15

    add-int/2addr v14, v15

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/AdapterView;->mItemCount:I

    if-ge v14, v15, :cond_7

    const/4 v2, 0x1

    .line 2966
    .local v2, bottomFadingEdgeShowing:Z
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    sub-int v15, v14, v15

    if-eqz v2, :cond_8

    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v14

    :goto_7
    sub-int v4, v15, v14

    .line 2968
    .local v4, listBottom:I
    if-eqz v11, :cond_9

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v14

    if-ge v14, v4, :cond_9

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v13

    .line 2972
    .restart local v13       #ySearchPoint:I
    :goto_8
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v13, v0, v13}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_5

    .line 2964
    .end local v2           #bottomFadingEdgeShowing:Z
    .end local v4           #listBottom:I
    .end local v13           #ySearchPoint:I
    :cond_7
    const/4 v2, 0x0

    goto :goto_6

    .line 2966
    .restart local v2       #bottomFadingEdgeShowing:Z
    :cond_8
    const/4 v14, 0x0

    goto :goto_7

    .restart local v4       #listBottom:I
    :cond_9
    move v13, v4

    .line 2968
    goto :goto_8

    .line 2991
    .end local v2           #bottomFadingEdgeShowing:Z
    .end local v4           #listBottom:I
    .restart local v7       #newFocus:Landroid/view/View;
    .restart local v9       #positionOfNewFocus:I
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v7, v9}, Landroid/widget/ListView;->amountToScrollToNewFocus(ILandroid/view/View;I)I

    move-result v3

    .line 2993
    .local v3, focusScroll:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v6

    .line 2994
    .local v6, maxScrollAmount:I
    if-ge v3, v6, :cond_b

    .line 2996
    move/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/view/View;->requestFocus(I)Z

    .line 2997
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    invoke-virtual {v14, v9, v3}, Landroid/widget/ListView$ArrowScrollFocusResult;->populate(II)V

    .line 2998
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    goto/16 :goto_1

    .line 2999
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/widget/ListView;->distanceToView(Landroid/view/View;)I

    move-result v14

    if-ge v14, v6, :cond_c

    .line 3004
    move/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/view/View;->requestFocus(I)Z

    .line 3005
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    invoke-virtual {v14, v9, v6}, Landroid/widget/ListView$ArrowScrollFocusResult;->populate(II)V

    .line 3006
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    goto/16 :goto_1

    .line 3009
    .end local v3           #focusScroll:I
    .end local v6           #maxScrollAmount:I
    .end local v9           #positionOfNewFocus:I
    :cond_c
    const/4 v14, 0x0

    goto/16 :goto_1
.end method

.method private arrowScrollImpl(I)Z
    .locals 11
    .parameter "direction"

    .prologue
    const/4 v8, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 2575
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-gtz v7, :cond_1

    .line 2649
    :cond_0
    :goto_0
    return v9

    .line 2579
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v6

    .line 2580
    .local v6, selectedView:Landroid/view/View;
    iget v5, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 2582
    .local v5, selectedPos:I
    invoke-direct {p0, p1}, Landroid/widget/ListView;->lookForSelectablePositionOnScreen(I)I

    move-result v4

    .line 2583
    .local v4, nextSelectedPosition:I
    invoke-direct {p0, p1, v4}, Landroid/widget/ListView;->amountToScroll(II)I

    move-result v0

    .line 2586
    .local v0, amountToScroll:I
    iget-boolean v7, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v7, :cond_b

    invoke-direct {p0, p1}, Landroid/widget/ListView;->arrowScrollFocused(I)Landroid/widget/ListView$ArrowScrollFocusResult;

    move-result-object v1

    .line 2587
    .local v1, focusResult:Landroid/widget/ListView$ArrowScrollFocusResult;
    :goto_1
    if-eqz v1, :cond_2

    .line 2588
    invoke-virtual {v1}, Landroid/widget/ListView$ArrowScrollFocusResult;->getSelectedPosition()I

    move-result v4

    .line 2589
    invoke-virtual {v1}, Landroid/widget/ListView$ArrowScrollFocusResult;->getAmountToScroll()I

    move-result v0

    .line 2592
    :cond_2
    if-eqz v1, :cond_c

    move v3, v8

    .line 2593
    .local v3, needToRedraw:Z
    :goto_2
    if-eq v4, v10, :cond_4

    .line 2594
    if-eqz v1, :cond_d

    move v7, v8

    :goto_3
    invoke-direct {p0, v6, p1, v4, v7}, Landroid/widget/ListView;->handleNewSelectionChange(Landroid/view/View;IIZ)V

    .line 2595
    invoke-virtual {p0, v4}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 2596
    invoke-virtual {p0, v4}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 2597
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v6

    .line 2598
    move v5, v4

    .line 2599
    iget-boolean v7, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v7, :cond_3

    if-nez v1, :cond_3

    .line 2602
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 2603
    .local v2, focused:Landroid/view/View;
    if-eqz v2, :cond_3

    .line 2604
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 2607
    .end local v2           #focused:Landroid/view/View;
    :cond_3
    const/4 v3, 0x1

    .line 2608
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    .line 2611
    :cond_4
    if-lez v0, :cond_5

    .line 2612
    const/16 v7, 0x21

    if-ne p1, v7, :cond_e

    .end local v0           #amountToScroll:I
    :goto_4
    invoke-direct {p0, v0}, Landroid/widget/ListView;->scrollListItemsBy(I)V

    .line 2613
    const/4 v3, 0x1

    .line 2618
    :cond_5
    iget-boolean v7, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v7, :cond_7

    if-nez v1, :cond_7

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Landroid/view/View;->hasFocus()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2620
    invoke-virtual {v6}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 2621
    .restart local v2       #focused:Landroid/view/View;
    invoke-direct {p0, v2, p0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-direct {p0, v2}, Landroid/widget/ListView;->distanceToView(Landroid/view/View;)I

    move-result v7

    if-lez v7, :cond_7

    .line 2622
    :cond_6
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 2627
    .end local v2           #focused:Landroid/view/View;
    :cond_7
    if-ne v4, v10, :cond_8

    if-eqz v6, :cond_8

    invoke-direct {p0, v6, p0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 2629
    const/4 v6, 0x0

    .line 2630
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 2634
    iput v10, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 2637
    :cond_8
    if-eqz v3, :cond_0

    .line 2638
    if-eqz v6, :cond_9

    .line 2639
    invoke-virtual {p0, v5, v6}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 2640
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    iput v7, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 2642
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    move-result v7

    if-nez v7, :cond_a

    .line 2643
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 2645
    :cond_a
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    move v9, v8

    .line 2646
    goto/16 :goto_0

    .line 2586
    .end local v1           #focusResult:Landroid/widget/ListView$ArrowScrollFocusResult;
    .end local v3           #needToRedraw:Z
    .restart local v0       #amountToScroll:I
    :cond_b
    const/4 v1, 0x0

    goto/16 :goto_1

    .restart local v1       #focusResult:Landroid/widget/ListView$ArrowScrollFocusResult;
    :cond_c
    move v3, v9

    .line 2592
    goto/16 :goto_2

    .restart local v3       #needToRedraw:Z
    :cond_d
    move v7, v9

    .line 2594
    goto :goto_3

    .line 2612
    :cond_e
    neg-int v0, v0

    goto :goto_4
.end method

.method private canScrollSelect(I)Z
    .locals 12
    .parameter "motionY"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 4484
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 4485
    .local v4, childCount:I
    if-lez v4, :cond_0

    .line 4486
    iget-object v9, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v9, Landroid/graphics/Rect;->top:I

    .line 4487
    .local v6, listTop:I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v9

    iget-object v10, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v9, v10

    .line 4488
    .local v5, listBottom:I
    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-nez v9, :cond_1

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    iget-object v10, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    if-lt v9, v10, :cond_1

    move v2, v7

    .line 4489
    .local v2, atListTop:Z
    :goto_0
    iget v9, p0, Landroid/widget/AbsListView;->mListItemHeight:I

    add-int/2addr v9, v6

    if-ge p1, v9, :cond_2

    move v3, v7

    .line 4490
    .local v3, atTopRegion:Z
    :goto_1
    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    .line 4503
    .end local v2           #atListTop:Z
    .end local v3           #atTopRegion:Z
    .end local v5           #listBottom:I
    .end local v6           #listTop:I
    :cond_0
    :goto_2
    return v8

    .restart local v5       #listBottom:I
    .restart local v6       #listTop:I
    :cond_1
    move v2, v8

    .line 4488
    goto :goto_0

    .restart local v2       #atListTop:Z
    :cond_2
    move v3, v8

    .line 4489
    goto :goto_1

    .line 4494
    .restart local v3       #atTopRegion:Z
    :cond_3
    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v9, v4

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v10

    if-ne v9, v10, :cond_6

    add-int/lit8 v9, v4, -0x1

    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v10

    iget-object v11, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v11

    if-gt v9, v10, :cond_6

    move v1, v7

    .line 4496
    .local v1, atListBottom:Z
    :goto_3
    iget v9, p0, Landroid/widget/AbsListView;->mListItemHeight:I

    sub-int v9, v5, v9

    if-le p1, v9, :cond_7

    move v0, v7

    .line 4497
    .local v0, atBottomRegion:Z
    :goto_4
    if-eqz v1, :cond_4

    if-nez v0, :cond_0

    .line 4501
    :cond_4
    if-nez v3, :cond_5

    if-eqz v0, :cond_0

    :cond_5
    move v8, v7

    goto :goto_2

    .end local v0           #atBottomRegion:Z
    .end local v1           #atListBottom:Z
    :cond_6
    move v1, v8

    .line 4494
    goto :goto_3

    .restart local v1       #atListBottom:Z
    :cond_7
    move v0, v8

    .line 4496
    goto :goto_4
.end method

.method private clearRecycledState(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 545
    .local p1, infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 546
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 548
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 549
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView$FixedViewInfo;

    iget-object v0, v4, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 550
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .line 551
    .local v3, p:Landroid/widget/AbsListView$LayoutParams;
    if-eqz v3, :cond_0

    .line 552
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 548
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 556
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #p:Landroid/widget/AbsListView$LayoutParams;
    :cond_1
    return-void
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "keyCode"
    .parameter "count"
    .parameter "event"

    .prologue
    const/4 v8, 0x2

    const/16 v7, 0x82

    const/16 v6, 0x21

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2267
    iget-object v5, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Landroid/widget/AbsListView;->mIsAttached:Z

    if-nez v5, :cond_2

    :cond_0
    move v4, v3

    .line 2414
    :cond_1
    :goto_0
    return v4

    .line 2271
    :cond_2
    iget-boolean v5, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v5, :cond_3

    .line 2272
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 2275
    :cond_3
    const/4 v2, 0x0

    .line 2276
    .local v2, handled:Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 2278
    .local v0, action:I
    if-eq v0, v4, :cond_4

    .line 2279
    sparse-switch p1, :sswitch_data_0

    .line 2395
    :cond_4
    :goto_1
    if-nez v2, :cond_1

    .line 2399
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/AbsListView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2403
    packed-switch v0, :pswitch_data_0

    move v4, v3

    .line 2414
    goto :goto_0

    .line 2281
    :sswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2282
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    .line 2283
    if-nez v2, :cond_4

    move v1, p2

    .line 2284
    .end local p2
    .local v1, count:I
    :goto_2
    add-int/lit8 p2, v1, -0x1

    .end local v1           #count:I
    .restart local p2
    if-lez v1, :cond_4

    .line 2285
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->arrowScroll(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2286
    const/4 v2, 0x1

    move v1, p2

    .end local p2
    .restart local v1       #count:I
    goto :goto_2

    .line 2292
    .end local v1           #count:I
    .restart local p2
    :cond_5
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2293
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_6
    move v2, v4

    :goto_3
    goto :goto_1

    :cond_7
    move v2, v3

    goto :goto_3

    .line 2298
    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2299
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    .line 2300
    if-nez v2, :cond_4

    move v1, p2

    .line 2301
    .end local p2
    .restart local v1       #count:I
    :goto_4
    add-int/lit8 p2, v1, -0x1

    .end local v1           #count:I
    .restart local p2
    if-lez v1, :cond_4

    .line 2302
    invoke-virtual {p0, v7}, Landroid/widget/ListView;->arrowScroll(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2303
    const/4 v2, 0x1

    move v1, p2

    .end local p2
    .restart local v1       #count:I
    goto :goto_4

    .line 2309
    .end local v1           #count:I
    .restart local p2
    :cond_8
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2310
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_9
    move v2, v4

    :goto_5
    goto :goto_1

    :cond_a
    move v2, v3

    goto :goto_5

    .line 2315
    :sswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2316
    const/16 v5, 0x11

    invoke-direct {p0, v5}, Landroid/widget/ListView;->handleHorizontalFocusWithinListItem(I)Z

    move-result v2

    goto :goto_1

    .line 2321
    :sswitch_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2322
    const/16 v5, 0x42

    invoke-direct {p0, v5}, Landroid/widget/ListView;->handleHorizontalFocusWithinListItem(I)Z

    move-result v2

    goto/16 :goto_1

    .line 2328
    :sswitch_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2329
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    .line 2330
    if-nez v2, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-lez v5, :cond_4

    .line 2332
    invoke-virtual {p0}, Landroid/widget/AbsListView;->keyPressed()V

    .line 2333
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 2339
    :sswitch_5
    iget-object v5, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v5, :cond_b

    iget-object v5, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2340
    :cond_b
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 2341
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_c

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_e

    :cond_c
    move v2, v4

    .line 2345
    :cond_d
    :goto_6
    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_e
    move v2, v3

    .line 2341
    goto :goto_6

    .line 2342
    :cond_f
    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 2343
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_10

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_11

    :cond_10
    move v2, v4

    :goto_7
    goto :goto_6

    :cond_11
    move v2, v3

    goto :goto_7

    .line 2350
    :sswitch_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 2351
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_12

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_13

    :cond_12
    move v2, v4

    :goto_8
    goto/16 :goto_1

    :cond_13
    move v2, v3

    goto :goto_8

    .line 2352
    :cond_14
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2353
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_15

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_16

    :cond_15
    move v2, v4

    :goto_9
    goto/16 :goto_1

    :cond_16
    move v2, v3

    goto :goto_9

    .line 2358
    :sswitch_7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 2359
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_17

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_18

    :cond_17
    move v2, v4

    :goto_a
    goto/16 :goto_1

    :cond_18
    move v2, v3

    goto :goto_a

    .line 2360
    :cond_19
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2361
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_1a

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_1b

    :cond_1a
    move v2, v4

    :goto_b
    goto/16 :goto_1

    :cond_1b
    move v2, v3

    goto :goto_b

    .line 2366
    :sswitch_8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2367
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_1c

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_1d

    :cond_1c
    move v2, v4

    :goto_c
    goto/16 :goto_1

    :cond_1d
    move v2, v3

    goto :goto_c

    .line 2372
    :sswitch_9
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2373
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_1e

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_1f

    :cond_1e
    move v2, v4

    :goto_d
    goto/16 :goto_1

    :cond_1f
    move v2, v3

    goto :goto_d

    .line 2405
    :pswitch_0
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0

    .line 2408
    :pswitch_1
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0

    .line 2411
    :pswitch_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0

    .line 2279
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x17 -> :sswitch_4
        0x3e -> :sswitch_5
        0x42 -> :sswitch_4
        0x5c -> :sswitch_6
        0x5d -> :sswitch_7
        0x7a -> :sswitch_8
        0x7b -> :sswitch_9
    .end sparse-switch

    .line 2403
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private correctTooHigh(I)V
    .locals 10
    .parameter "childCount"

    .prologue
    .line 1447
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v7, p1

    add-int/lit8 v6, v7, -0x1

    .line 1448
    .local v6, lastPosition:I
    iget v7, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_2

    if-lez p1, :cond_2

    .line 1451
    add-int/lit8 v7, p1, -0x1

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1454
    .local v5, lastChild:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 1460
    .local v4, lastBottom:I
    iget v7, p0, Landroid/view/View;->mBottom:I

    iget v8, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/AbsListView;->mDockingBottomHeight:I

    sub-int v1, v7, v8

    .line 1464
    .local v1, end:I
    sub-int v0, v1, v4

    .line 1465
    .local v0, bottomOffset:I
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1466
    .local v2, firstChild:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1470
    .local v3, firstTop:I
    if-lez v0, :cond_2

    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-gtz v7, :cond_0

    iget-object v7, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ge v3, v7, :cond_2

    .line 1471
    :cond_0
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-nez v7, :cond_1

    .line 1473
    iget-object v7, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v3

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1476
    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->offsetChildrenTopAndBottom(I)V

    .line 1477
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v7, :cond_2

    .line 1480
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v8

    iget v9, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int/2addr v8, v9

    invoke-direct {p0, v7, v8}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 1482
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1487
    .end local v0           #bottomOffset:I
    .end local v1           #end:I
    .end local v2           #firstChild:Landroid/view/View;
    .end local v3           #firstTop:I
    .end local v4           #lastBottom:I
    .end local v5           #lastChild:Landroid/view/View;
    :cond_2
    return-void
.end method

.method private correctTooLow(I)V
    .locals 11
    .parameter "childCount"

    .prologue
    .line 1499
    iget v8, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-nez v8, :cond_2

    if-lez p1, :cond_2

    .line 1502
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1505
    .local v1, firstChild:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1508
    .local v2, firstTop:I
    iget-object v8, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v8, Landroid/graphics/Rect;->top:I

    .line 1511
    .local v6, start:I
    iget v8, p0, Landroid/view/View;->mBottom:I

    iget v9, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v8, v9

    .line 1515
    .local v0, end:I
    sub-int v7, v2, v6

    .line 1516
    .local v7, topOffset:I
    add-int/lit8 v8, p1, -0x1

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1517
    .local v4, lastChild:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 1518
    .local v3, lastBottom:I
    iget v8, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v8, p1

    add-int/lit8 v5, v8, -0x1

    .line 1522
    .local v5, lastPosition:I
    if-lez v7, :cond_2

    .line 1523
    iget v8, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-lt v5, v8, :cond_0

    if-le v3, v0, :cond_3

    .line 1524
    :cond_0
    iget v8, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_1

    .line 1526
    sub-int v8, v3, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1529
    :cond_1
    neg-int v8, v7

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->offsetChildrenTopAndBottom(I)V

    .line 1530
    iget v8, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ge v5, v8, :cond_2

    .line 1533
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v9

    iget v10, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int/2addr v9, v10

    invoke-direct {p0, v8, v9}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 1535
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1542
    .end local v0           #end:I
    .end local v1           #firstChild:Landroid/view/View;
    .end local v2           #firstTop:I
    .end local v3           #lastBottom:I
    .end local v4           #lastChild:Landroid/view/View;
    .end local v5           #lastPosition:I
    .end local v6           #start:I
    .end local v7           #topOffset:I
    :cond_2
    :goto_0
    return-void

    .line 1537
    .restart local v0       #end:I
    .restart local v1       #firstChild:Landroid/view/View;
    .restart local v2       #firstTop:I
    .restart local v3       #lastBottom:I
    .restart local v4       #lastChild:Landroid/view/View;
    .restart local v5       #lastPosition:I
    .restart local v6       #start:I
    .restart local v7       #topOffset:I
    :cond_3
    iget v8, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_2

    .line 1538
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    goto :goto_0
.end method

.method private distanceToView(Landroid/view/View;)I
    .locals 4
    .parameter "descendant"

    .prologue
    .line 3080
    const/4 v0, 0x0

    .line 3081
    .local v0, distance:I
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3082
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v2}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3083
    iget v2, p0, Landroid/view/View;->mBottom:I

    iget v3, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v2, v3

    .line 3084
    .local v1, listBottom:I
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_1

    .line 3085
    iget-object v2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v3

    .line 3089
    :cond_0
    :goto_0
    return v0

    .line 3086
    :cond_1
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-le v2, v1, :cond_0

    .line 3087
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v1

    goto :goto_0
.end method

.method private downSelect(II)V
    .locals 7
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v6, -0x1

    .line 4028
    if-ne p1, v6, :cond_1

    .line 4029
    move p1, p2

    .line 4032
    :goto_0
    move v4, p1

    .local v4, position:I
    :goto_1
    if-gt v4, p2, :cond_6

    .line 4033
    iget v5, p0, Landroid/widget/ListView;->mLongPressPosition:I

    if-ne v4, v5, :cond_2

    .line 4059
    :cond_0
    :goto_2
    return-void

    .line 4031
    .end local v4           #position:I
    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 4037
    .restart local v4       #position:I
    :cond_2
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->isItemSelectable(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 4032
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 4041
    :cond_3
    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v5, v4, v5

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4042
    .local v0, dragView:Landroid/view/View;
    iget-object v5, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 4043
    .local v1, id:J
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->isHeaderOrFooter(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 4044
    const/4 v3, 0x0

    .line 4045
    .local v3, newSelected:Z
    iget-object v5, p0, Landroid/widget/ListView;->mDragSelectListener:Landroid/widget/ListView$OnDragSelectListener;

    if-eqz v5, :cond_4

    .line 4046
    iget-object v5, p0, Landroid/widget/ListView;->mDragSelectListener:Landroid/widget/ListView$OnDragSelectListener;

    invoke-interface {v5, v0, v4, v1, v2}, Landroid/widget/ListView$OnDragSelectListener;->onDragSelection(Landroid/view/View;IJ)Z

    move-result v3

    .line 4051
    :goto_4
    invoke-direct {p0, v0, v3}, Landroid/widget/ListView;->updateDragView(Landroid/view/View;Z)V

    .line 4055
    iput v4, p0, Landroid/widget/ListView;->mLastDownSelectPosition:I

    .line 4056
    iput v6, p0, Landroid/widget/ListView;->mLastUpSelectPosition:I

    goto :goto_3

    .line 4048
    :cond_4
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v5

    if-nez v5, :cond_5

    const/4 v3, 0x1

    .line 4049
    :goto_5
    invoke-virtual {p0, v4, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_4

    .line 4048
    :cond_5
    const/4 v3, 0x0

    goto :goto_5

    .line 4058
    .end local v0           #dragView:Landroid/view/View;
    .end local v1           #id:J
    .end local v3           #newSelected:Z
    :cond_6
    iput v6, p0, Landroid/widget/ListView;->mLongPressPosition:I

    goto :goto_2
.end method

.method private endDragSelection()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 4359
    iput v0, p0, Landroid/widget/ListView;->mDragMotionY:I

    .line 4360
    iput v0, p0, Landroid/widget/ListView;->mLastDragMotionY:I

    .line 4361
    iput-boolean v1, p0, Landroid/widget/ListView;->mIsBeginDragSelect:Z

    .line 4362
    iput-boolean v1, p0, Landroid/widget/ListView;->mIsOutOfDragRegion:Z

    .line 4363
    iput v0, p0, Landroid/widget/ListView;->mDragDownPosition:I

    .line 4364
    iput v0, p0, Landroid/widget/ListView;->mLongPressPosition:I

    .line 4365
    iput v0, p0, Landroid/widget/ListView;->mLastDownSelectPosition:I

    .line 4366
    iput v0, p0, Landroid/widget/ListView;->mLastUpSelectPosition:I

    .line 4367
    iput v0, p0, Landroid/widget/ListView;->mDragMotionPosition:I

    .line 4368
    iput-boolean v1, p0, Landroid/widget/ListView;->mIsOutOfListContent:Z

    .line 4369
    iput v0, p0, Landroid/widget/ListView;->mIntercepeDragMotionX:I

    .line 4370
    iput v0, p0, Landroid/widget/ListView;->mIntercepeDragMotionY:I

    .line 4371
    iget-object v0, p0, Landroid/widget/ListView;->mScrollSelection:Landroid/widget/ListView$ScrollSelectionRunnable;

    if-eqz v0, :cond_0

    .line 4372
    iget-object v0, p0, Landroid/widget/ListView;->mScrollSelection:Landroid/widget/ListView$ScrollSelectionRunnable;

    invoke-virtual {v0}, Landroid/widget/ListView$ScrollSelectionRunnable;->finish()V

    .line 4374
    :cond_0
    return-void
.end method

.method private fillAboveAndBelow(Landroid/view/View;I)V
    .locals 3
    .parameter "sel"
    .parameter "position"

    .prologue
    .line 846
    iget v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 847
    .local v0, dividerHeight:I
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v1, :cond_0

    .line 848
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 849
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 850
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 856
    :goto_0
    return-void

    .line 852
    :cond_0
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 853
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 854
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    goto :goto_0
.end method

.method private fillDown(II)Landroid/view/View;
    .locals 10
    .parameter "pos"
    .parameter "nextTop"

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x1

    .line 699
    const/4 v8, 0x0

    .line 701
    .local v8, selectedView:Landroid/view/View;
    iget v0, p0, Landroid/view/View;->mBottom:I

    iget v1, p0, Landroid/view/View;->mTop:I

    sub-int v7, v0, v1

    .line 702
    .local v7, end:I
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    .line 703
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v0

    .line 706
    :cond_0
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mEnableForEditTextPreference:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mEnableLoadAllItems:Z

    if-nez v0, :cond_3

    .line 707
    :goto_0
    if-ge p2, v7, :cond_6

    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ge p1, v0, :cond_6

    .line 709
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ne p1, v0, :cond_2

    move v5, v3

    .line 710
    .local v5, selected:Z
    :goto_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 712
    .local v6, child:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int p2, v0, v1

    .line 713
    if-eqz v5, :cond_1

    .line 714
    move-object v8, v6

    .line 716
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 717
    goto :goto_0

    .end local v5           #selected:Z
    .end local v6           #child:Landroid/view/View;
    :cond_2
    move v5, v9

    .line 709
    goto :goto_1

    .line 720
    :cond_3
    :goto_2
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ge p1, v0, :cond_6

    .line 722
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ne p1, v0, :cond_5

    move v5, v3

    .line 723
    .restart local v5       #selected:Z
    :goto_3
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 725
    .restart local v6       #child:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int p2, v0, v1

    .line 726
    if-eqz v5, :cond_4

    .line 727
    move-object v8, v6

    .line 729
    :cond_4
    add-int/lit8 p1, p1, 0x1

    .line 730
    goto :goto_2

    .end local v5           #selected:Z
    .end local v6           #child:Landroid/view/View;
    :cond_5
    move v5, v9

    .line 722
    goto :goto_3

    .line 733
    :cond_6
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/widget/AbsListView;->setVisibleRangeHint(II)V

    .line 734
    return-object v8
.end method

.method private fillFromMiddle(II)Landroid/view/View;
    .locals 9
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    const/4 v3, 0x1

    .line 814
    sub-int v6, p2, p1

    .line 816
    .local v6, height:I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->reconcileSelectedPosition()I

    move-result v1

    .line 818
    .local v1, position:I
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v2, p1

    move v5, v3

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v7

    .line 820
    .local v7, sel:Landroid/view/View;
    iput v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 822
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 823
    .local v8, selHeight:I
    if-gt v8, v6, :cond_0

    .line 824
    sub-int v0, v6, v8

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v7, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 827
    :cond_0
    invoke-direct {p0, v7, v1}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 829
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v0, :cond_1

    .line 830
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/ListView;->correctTooHigh(I)V

    .line 835
    :goto_0
    return-object v7

    .line 832
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/ListView;->correctTooLow(I)V

    goto :goto_0
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .locals 14
    .parameter "selectedTop"
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    .line 870
    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v8

    .line 871
    .local v8, fadingEdgeLength:I
    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 875
    .local v2, selectedPosition:I
    move/from16 v0, p2

    invoke-direct {p0, v0, v8, v2}, Landroid/widget/ListView;->getTopSelectionPixel(III)I

    move-result v13

    .line 877
    .local v13, topSelectionPixel:I
    move/from16 v0, p3

    invoke-direct {p0, v0, v8, v2}, Landroid/widget/ListView;->getBottomSelectionPixel(III)I

    move-result v7

    .line 880
    .local v7, bottomSelectionPixel:I
    const/4 v4, 0x1

    iget-object v1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    const/4 v6, 0x1

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v10

    .line 884
    .local v10, sel:Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    if-le v1, v7, :cond_1

    .line 887
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v11, v1, v13

    .line 891
    .local v11, spaceAbove:I
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int v12, v1, v7

    .line 892
    .local v12, spaceBelow:I
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 895
    .local v9, offset:I
    neg-int v1, v9

    invoke-virtual {v10, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 911
    .end local v9           #offset:I
    .end local v11           #spaceAbove:I
    .end local v12           #spaceBelow:I
    :cond_0
    :goto_0
    invoke-direct {p0, v10, v2}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 913
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v1, :cond_2

    .line 914
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/ListView;->correctTooHigh(I)V

    .line 919
    :goto_1
    return-object v10

    .line 896
    :cond_1
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    if-ge v1, v13, :cond_0

    .line 899
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v11, v13, v1

    .line 903
    .restart local v11       #spaceAbove:I
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int v12, v7, v1

    .line 904
    .restart local v12       #spaceBelow:I
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 907
    .restart local v9       #offset:I
    invoke-virtual {v10, v9}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_0

    .line 916
    .end local v9           #offset:I
    .end local v11           #spaceAbove:I
    .end local v12           #spaceBelow:I
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/ListView;->correctTooLow(I)V

    goto :goto_1
.end method

.method private fillFromTop(I)Landroid/view/View;
    .locals 2
    .parameter "nextTop"

    .prologue
    .line 794
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 795
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 796
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-gez v0, :cond_0

    .line 797
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 799
    :cond_0
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillSpecific(II)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "top"

    .prologue
    const/4 v3, 0x1

    .line 1399
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ne p1, v0, :cond_1

    move v5, v3

    .line 1400
    .local v5, tempIsSelected:Z
    :goto_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v10

    .line 1402
    .local v10, temp:Landroid/view/View;
    iput p1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 1407
    iget v9, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 1408
    .local v9, dividerHeight:I
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v0, :cond_2

    .line 1409
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v6

    .line 1411
    .local v6, above:Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1412
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    move-result-object v7

    .line 1413
    .local v7, below:Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    .line 1414
    .local v8, childCount:I
    if-lez v8, :cond_0

    .line 1415
    invoke-direct {p0, v8}, Landroid/widget/ListView;->correctTooHigh(I)V

    .line 1428
    :cond_0
    :goto_1
    if-eqz v5, :cond_3

    .line 1433
    .end local v10           #temp:Landroid/view/View;
    :goto_2
    return-object v10

    .line 1399
    .end local v5           #tempIsSelected:Z
    .end local v6           #above:Landroid/view/View;
    .end local v7           #below:Landroid/view/View;
    .end local v8           #childCount:I
    .end local v9           #dividerHeight:I
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 1418
    .restart local v5       #tempIsSelected:Z
    .restart local v9       #dividerHeight:I
    .restart local v10       #temp:Landroid/view/View;
    :cond_2
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    move-result-object v7

    .line 1420
    .restart local v7       #below:Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1421
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v6

    .line 1422
    .restart local v6       #above:Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    .line 1423
    .restart local v8       #childCount:I
    if-lez v8, :cond_0

    .line 1424
    invoke-direct {p0, v8}, Landroid/widget/ListView;->correctTooLow(I)V

    goto :goto_1

    .line 1430
    :cond_3
    if-eqz v6, :cond_4

    move-object v10, v6

    .line 1431
    goto :goto_2

    :cond_4
    move-object v10, v7

    .line 1433
    goto :goto_2
.end method

.method private fillUp(II)Landroid/view/View;
    .locals 10
    .parameter "pos"
    .parameter "nextBottom"

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 748
    const/4 v8, 0x0

    .line 750
    .local v8, selectedView:Landroid/view/View;
    const/4 v7, 0x0

    .line 751
    .local v7, end:I
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    .line 752
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/widget/AbsListView;->mTopSpacing:I

    sub-int v7, v0, v1

    .line 755
    :cond_0
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mEnableForEditTextPreference:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mEnableLoadAllItems:Z

    if-nez v0, :cond_3

    .line 756
    :goto_0
    if-le p2, v7, :cond_6

    if-ltz p1, :cond_6

    .line 758
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ne p1, v0, :cond_2

    move v5, v9

    .line 759
    .local v5, selected:Z
    :goto_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 760
    .local v6, child:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int p2, v0, v1

    .line 761
    if-eqz v5, :cond_1

    .line 762
    move-object v8, v6

    .line 764
    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 765
    goto :goto_0

    .end local v5           #selected:Z
    .end local v6           #child:Landroid/view/View;
    :cond_2
    move v5, v3

    .line 758
    goto :goto_1

    .line 768
    :cond_3
    :goto_2
    if-ltz p1, :cond_6

    .line 770
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ne p1, v0, :cond_5

    move v5, v9

    .line 771
    .restart local v5       #selected:Z
    :goto_3
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 772
    .restart local v6       #child:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int p2, v0, v1

    .line 773
    if-eqz v5, :cond_4

    .line 774
    move-object v8, v6

    .line 776
    :cond_4
    add-int/lit8 p1, p1, -0x1

    .line 777
    goto :goto_2

    .end local v5           #selected:Z
    .end local v6           #child:Landroid/view/View;
    :cond_5
    move v5, v3

    .line 770
    goto :goto_3

    .line 780
    :cond_6
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 781
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/widget/AbsListView;->setVisibleRangeHint(II)V

    .line 782
    return-object v8
.end method

.method private findAccessibilityFocusedChild(Landroid/view/View;)Landroid/view/View;
    .locals 2
    .parameter "focusedView"

    .prologue
    .line 1904
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1905
    .local v0, viewParent:Landroid/view/ViewParent;
    :goto_0
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    if-eq v0, p0, :cond_0

    move-object p1, v0

    .line 1906
    check-cast p1, Landroid/view/View;

    .line 1907
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 1909
    :cond_0
    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_1

    .line 1910
    const/4 p1, 0x0

    .line 1912
    .end local p1
    :cond_1
    return-object p1
.end method

.method private findCandidateScrollSelection(Z)I
    .locals 6
    .parameter "up"

    .prologue
    .line 4509
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 4510
    .local v1, childCount:I
    if-eqz p1, :cond_1

    .line 4511
    const/4 v2, 0x0

    .local v2, index:I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 4512
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4513
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-le v3, v4, :cond_0

    .line 4514
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v3, v2

    .line 4526
    .end local v0           #child:Landroid/view/View;
    :goto_1
    return v3

    .line 4511
    .restart local v0       #child:Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4518
    .end local v0           #child:Landroid/view/View;
    .end local v2           #index:I
    :cond_1
    add-int/lit8 v2, v1, -0x1

    .restart local v2       #index:I
    :goto_2
    if-ltz v2, :cond_3

    .line 4519
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4520
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    if-ge v3, v4, :cond_2

    .line 4521
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v3, v2

    goto :goto_1

    .line 4518
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 4526
    .end local v0           #child:Landroid/view/View;
    :cond_3
    const/4 v3, -0x1

    goto :goto_1
.end method

.method private getArrowScrollPreviewLength()I
    .locals 2

    .prologue
    .line 2775
    const/4 v0, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getBottomSelectionPixel(III)I
    .locals 2
    .parameter "childrenBottom"
    .parameter "fadingEdgeLength"
    .parameter "selectedPosition"

    .prologue
    .line 932
    move v0, p1

    .line 933
    .local v0, bottomSelectionPixel:I
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-eq p3, v1, :cond_0

    .line 934
    sub-int/2addr v0, p2

    .line 936
    :cond_0
    return v0
.end method

.method private getTopSelectionPixel(III)I
    .locals 1
    .parameter "childrenTop"
    .parameter "fadingEdgeLength"
    .parameter "selectedPosition"

    .prologue
    .line 949
    move v0, p1

    .line 950
    .local v0, topSelectionPixel:I
    if-lez p3, :cond_0

    .line 951
    add-int/2addr v0, p2

    .line 953
    :cond_0
    return v0
.end method

.method private handleHorizontalFocusWithinListItem(I)Z
    .locals 7
    .parameter "direction"

    .prologue
    .line 2510
    const/16 v5, 0x11

    if-eq p1, v5, :cond_0

    const/16 v5, 0x42

    if-eq p1, v5, :cond_0

    .line 2511
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "direction must be one of {View.FOCUS_LEFT, View.FOCUS_RIGHT}"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2515
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 2516
    .local v3, numChildren:I
    iget-boolean v5, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v5, :cond_2

    if-lez v3, :cond_2

    iget v5, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 2517
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v4

    .line 2518
    .local v4, selectedView:Landroid/view/View;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_2

    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    .line 2521
    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2522
    .local v0, currentFocus:Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v5

    check-cast v4, Landroid/view/ViewGroup;

    .end local v4           #selectedView:Landroid/view/View;
    invoke-virtual {v5, v4, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 2524
    .local v2, nextFocus:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 2526
    iget-object v5, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2527
    iget-object v5, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v5}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2528
    iget-object v5, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v5}, Landroid/view/ViewGroup;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2529
    iget-object v5, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, v5}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2530
    const/4 v5, 0x1

    .line 2544
    .end local v0           #currentFocus:Landroid/view/View;
    .end local v2           #nextFocus:Landroid/view/View;
    :goto_0
    return v5

    .line 2537
    .restart local v0       #currentFocus:Landroid/view/View;
    .restart local v2       #nextFocus:Landroid/view/View;
    :cond_1
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v6, v5, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 2539
    .local v1, globalNextFocus:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 2540
    invoke-direct {p0, v1, p0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    goto :goto_0

    .line 2544
    .end local v0           #currentFocus:Landroid/view/View;
    .end local v1           #globalNextFocus:Landroid/view/View;
    .end local v2           #nextFocus:Landroid/view/View;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private handleNewSelectionChange(Landroid/view/View;IIZ)V
    .locals 10
    .parameter "selectedView"
    .parameter "direction"
    .parameter "newSelectedPosition"
    .parameter "newFocusAssigned"

    .prologue
    .line 2667
    const/4 v8, -0x1

    if-ne p3, v8, :cond_0

    .line 2668
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "newSelectedPosition needs to be valid"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2678
    :cond_0
    const/4 v5, 0x0

    .line 2679
    .local v5, topSelected:Z
    iget v8, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v4, v8, v9

    .line 2680
    .local v4, selectedIndex:I
    iget v8, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v2, p3, v8

    .line 2681
    .local v2, nextSelectedIndex:I
    const/16 v8, 0x21

    if-ne p2, v8, :cond_3

    .line 2682
    move v7, v2

    .line 2683
    .local v7, topViewIndex:I
    move v1, v4

    .line 2684
    .local v1, bottomViewIndex:I
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2685
    .local v6, topView:Landroid/view/View;
    move-object v0, p1

    .line 2686
    .local v0, bottomView:Landroid/view/View;
    const/4 v5, 0x1

    .line 2694
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 2697
    .local v3, numChildren:I
    if-eqz v6, :cond_1

    .line 2698
    if-nez p4, :cond_4

    if-eqz v5, :cond_4

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v6, v8}, Landroid/view/View;->setSelected(Z)V

    .line 2699
    invoke-direct {p0, v6, v7, v3}, Landroid/widget/ListView;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 2703
    :cond_1
    if-eqz v0, :cond_2

    .line 2704
    if-nez p4, :cond_5

    if-nez v5, :cond_5

    const/4 v8, 0x1

    :goto_2
    invoke-virtual {v0, v8}, Landroid/view/View;->setSelected(Z)V

    .line 2705
    invoke-direct {p0, v0, v1, v3}, Landroid/widget/ListView;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 2707
    :cond_2
    return-void

    .line 2688
    .end local v0           #bottomView:Landroid/view/View;
    .end local v1           #bottomViewIndex:I
    .end local v3           #numChildren:I
    .end local v6           #topView:Landroid/view/View;
    .end local v7           #topViewIndex:I
    :cond_3
    move v7, v4

    .line 2689
    .restart local v7       #topViewIndex:I
    move v1, v2

    .line 2690
    .restart local v1       #bottomViewIndex:I
    move-object v6, p1

    .line 2691
    .restart local v6       #topView:Landroid/view/View;
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .restart local v0       #bottomView:Landroid/view/View;
    goto :goto_0

    .line 2698
    .restart local v3       #numChildren:I
    :cond_4
    const/4 v8, 0x0

    goto :goto_1

    .line 2704
    :cond_5
    const/4 v8, 0x0

    goto :goto_2
.end method

.method private isDirectChildHeaderOrFooter(Landroid/view/View;)Z
    .locals 7
    .parameter "child"

    .prologue
    const/4 v6, 0x1

    .line 1921
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 1922
    .local v1, headers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1923
    .local v4, numHeaders:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 1924
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView$FixedViewInfo;

    iget-object v5, v5, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v5, :cond_0

    move v5, v6

    .line 1935
    :goto_1
    return v5

    .line 1923
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1928
    :cond_1
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 1929
    .local v0, footers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1930
    .local v3, numFooters:I
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_3

    .line 1931
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView$FixedViewInfo;

    iget-object v5, v5, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v5, :cond_2

    move v5, v6

    .line 1932
    goto :goto_1

    .line 1930
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1935
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .parameter "child"
    .parameter "parent"

    .prologue
    const/4 v1, 0x1

    .line 3032
    if-ne p1, p2, :cond_1

    .line 3037
    :cond_0
    :goto_0
    return v1

    .line 3036
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3037
    .local v0, theParent:Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/view/View;

    .end local v0           #theParent:Landroid/view/ViewParent;
    invoke-direct {p0, v0, p2}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private lookForSelectablePositionOnScreen(I)I
    .locals 8
    .parameter "direction"

    .prologue
    const/4 v6, -0x1

    .line 2895
    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 2896
    .local v1, firstPosition:I
    const/16 v7, 0x82

    if-ne p1, v7, :cond_5

    .line 2897
    iget v7, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-eq v7, v6, :cond_1

    iget v7, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    add-int/lit8 v5, v7, 0x1

    .line 2900
    .local v5, startPos:I
    :goto_0
    iget-object v7, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    if-lt v5, v7, :cond_2

    move v4, v6

    .line 2935
    :cond_0
    :goto_1
    return v4

    .end local v5           #startPos:I
    :cond_1
    move v5, v1

    .line 2897
    goto :goto_0

    .line 2903
    .restart local v5       #startPos:I
    :cond_2
    if-ge v5, v1, :cond_3

    .line 2904
    move v5, v1

    .line 2907
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v3

    .line 2908
    .local v3, lastVisiblePos:I
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 2909
    .local v0, adapter:Landroid/widget/ListAdapter;
    move v4, v5

    .local v4, pos:I
    :goto_2
    if-gt v4, v3, :cond_b

    .line 2910
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_4

    sub-int v7, v4, v1

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_0

    .line 2909
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2916
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v3           #lastVisiblePos:I
    .end local v4           #pos:I
    .end local v5           #startPos:I
    :cond_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    add-int/2addr v7, v1

    add-int/lit8 v2, v7, -0x1

    .line 2917
    .local v2, last:I
    iget v7, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-eq v7, v6, :cond_7

    iget v7, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    add-int/lit8 v5, v7, -0x1

    .line 2920
    .restart local v5       #startPos:I
    :goto_3
    if-ltz v5, :cond_6

    iget-object v7, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    if-lt v5, v7, :cond_8

    :cond_6
    move v4, v6

    .line 2921
    goto :goto_1

    .line 2917
    .end local v5           #startPos:I
    :cond_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    add-int/2addr v7, v1

    add-int/lit8 v5, v7, -0x1

    goto :goto_3

    .line 2923
    .restart local v5       #startPos:I
    :cond_8
    if-le v5, v2, :cond_9

    .line 2924
    move v5, v2

    .line 2927
    :cond_9
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 2928
    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    move v4, v5

    .restart local v4       #pos:I
    :goto_4
    if-lt v4, v1, :cond_b

    .line 2929
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_a

    sub-int v7, v4, v1

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_0

    .line 2928
    :cond_a
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .end local v2           #last:I
    :cond_b
    move v4, v6

    .line 2935
    goto :goto_1
.end method

.method private makeAndAddView(IIZIZ)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "y"
    .parameter "flow"
    .parameter "childrenLeft"
    .parameter "selected"

    .prologue
    .line 1956
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 1958
    iget-object v0, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    .line 1959
    .local v1, child:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1962
    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    move-object v8, v1

    .line 1974
    .end local v1           #child:Landroid/view/View;
    .local v8, child:Landroid/view/View;
    :goto_0
    return-object v8

    .line 1969
    .end local v8           #child:Landroid/view/View;
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v0}, Landroid/widget/AbsListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 1972
    .restart local v1       #child:Landroid/view/View;
    iget-object v0, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    const/4 v2, 0x0

    aget-boolean v7, v0, v2

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    move-object v8, v1

    .line 1974
    .end local v1           #child:Landroid/view/View;
    .restart local v8       #child:Landroid/view/View;
    goto :goto_0
.end method

.method private measureAndAdjustDown(Landroid/view/View;II)V
    .locals 4
    .parameter "child"
    .parameter "childIndex"
    .parameter "numChildren"

    .prologue
    .line 2717
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 2718
    .local v2, oldHeight:I
    invoke-direct {p0, p1}, Landroid/widget/ListView;->measureItem(Landroid/view/View;)V

    .line 2719
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-eq v3, v2, :cond_0

    .line 2721
    invoke-direct {p0, p1}, Landroid/widget/ListView;->relayoutMeasuredItem(Landroid/view/View;)V

    .line 2724
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int v0, v3, v2

    .line 2725
    .local v0, heightDelta:I
    add-int/lit8 v1, p2, 0x1

    .local v1, i:I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 2726
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 2725
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2729
    .end local v0           #heightDelta:I
    .end local v1           #i:I
    :cond_0
    return-void
.end method

.method private measureItem(Landroid/view/View;)V
    .locals 8
    .parameter "child"

    .prologue
    const/4 v7, 0x0

    .line 2737
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 2738
    .local v3, p:Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_0

    .line 2739
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .end local v3           #p:Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2744
    .restart local v3       #p:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget v4, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v4, v5, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 2746
    .local v1, childWidthSpec:I
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2748
    .local v2, lpHeight:I
    if-lez v2, :cond_1

    .line 2749
    const/high16 v4, 0x4000

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2753
    .local v0, childHeightSpec:I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 2754
    return-void

    .line 2751
    .end local v0           #childHeightSpec:I
    :cond_1
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0       #childHeightSpec:I
    goto :goto_0
.end method

.method private measureScrapChild(Landroid/view/View;II)V
    .locals 7
    .parameter "child"
    .parameter "position"
    .parameter "widthMeasureSpec"

    .prologue
    const/4 v6, 0x0

    .line 1246
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .line 1247
    .local v3, p:Landroid/widget/AbsListView$LayoutParams;
    if-nez v3, :cond_0

    .line 1248
    invoke-virtual {p0}, Landroid/widget/AbsListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3           #p:Landroid/widget/AbsListView$LayoutParams;
    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .line 1249
    .restart local v3       #p:Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1251
    :cond_0
    iget-object v4, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v4

    iput v4, v3, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1252
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 1254
    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p3, v4, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1256
    .local v1, childWidthSpec:I
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1258
    .local v2, lpHeight:I
    if-lez v2, :cond_1

    .line 1259
    const/high16 v4, 0x4000

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1263
    .local v0, childHeightSpec:I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1264
    return-void

    .line 1261
    .end local v0           #childHeightSpec:I
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0       #childHeightSpec:I
    goto :goto_0
.end method

.method private moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;
    .locals 19
    .parameter "oldSel"
    .parameter "newSel"
    .parameter "delta"
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    .line 995
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v10

    .line 996
    .local v10, fadingEdgeLength:I
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 1000
    .local v15, selectedPosition:I
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1, v10, v15}, Landroid/widget/ListView;->getTopSelectionPixel(III)I

    move-result v18

    .line 1002
    .local v18, topSelectionPixel:I
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1, v10, v15}, Landroid/widget/ListView;->getBottomSelectionPixel(III)I

    move-result v8

    .line 1005
    .local v8, bottomSelectionPixel:I
    if-lez p3, :cond_2

    .line 1027
    add-int/lit8 v3, v15, -0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object p1

    .line 1030
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/ListView;->mDividerHeight:I

    .line 1033
    .local v9, dividerHeight:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int v4, v2, v9

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move v3, v15

    invoke-direct/range {v2 .. v7}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v14

    .line 1037
    .local v14, sel:Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v2

    if-le v2, v8, :cond_0

    .line 1040
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v16, v2, v18

    .line 1043
    .local v16, spaceAbove:I
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int v17, v2, v8

    .line 1046
    .local v17, spaceBelow:I
    sub-int v2, p5, p4

    div-int/lit8 v11, v2, 0x2

    .line 1047
    .local v11, halfVerticalSpace:I
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1048
    .local v13, offset:I
    invoke-static {v13, v11}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1051
    neg-int v2, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1053
    neg-int v2, v13

    invoke-virtual {v14, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1057
    .end local v11           #halfVerticalSpace:I
    .end local v13           #offset:I
    .end local v16           #spaceAbove:I
    .end local v17           #spaceBelow:I
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v2, :cond_1

    .line 1058
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 1059
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1060
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 1141
    .end local v9           #dividerHeight:I
    :goto_0
    return-object v14

    .line 1062
    .restart local v9       #dividerHeight:I
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 1063
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1064
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    goto :goto_0

    .line 1066
    .end local v9           #dividerHeight:I
    .end local v14           #sel:Landroid/view/View;
    :cond_2
    if-gez p3, :cond_5

    .line 1087
    if-eqz p2, :cond_4

    .line 1089
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move v3, v15

    invoke-direct/range {v2 .. v7}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v14

    .line 1099
    .restart local v14       #sel:Landroid/view/View;
    :goto_1
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    move/from16 v0, v18

    if-ge v2, v0, :cond_3

    .line 1101
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v16, v18, v2

    .line 1104
    .restart local v16       #spaceAbove:I
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int v17, v8, v2

    .line 1107
    .restart local v17       #spaceBelow:I
    sub-int v2, p5, p4

    div-int/lit8 v11, v2, 0x2

    .line 1108
    .restart local v11       #halfVerticalSpace:I
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1109
    .restart local v13       #offset:I
    invoke-static {v13, v11}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1112
    invoke-virtual {v14, v13}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1116
    .end local v11           #halfVerticalSpace:I
    .end local v13           #offset:I
    .end local v16           #spaceAbove:I
    .end local v17           #spaceBelow:I
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    goto :goto_0

    .line 1094
    .end local v14           #sel:Landroid/view/View;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move v3, v15

    invoke-direct/range {v2 .. v7}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v14

    .restart local v14       #sel:Landroid/view/View;
    goto :goto_1

    .line 1119
    .end local v14           #sel:Landroid/view/View;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v4

    .line 1124
    .local v4, oldTop:I
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move v3, v15

    invoke-direct/range {v2 .. v7}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v14

    .line 1127
    .restart local v14       #sel:Landroid/view/View;
    move/from16 v0, p4

    if-ge v4, v0, :cond_6

    .line 1130
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v12

    .line 1131
    .local v12, newBottom:I
    add-int/lit8 v2, p4, 0x14

    if-ge v12, v2, :cond_6

    .line 1133
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v2, p4, v2

    invoke-virtual {v14, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1138
    .end local v12           #newBottom:I
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    goto/16 :goto_0
.end method

.method private onDragMotionChanged(I)Z
    .locals 7
    .parameter "motionY"

    .prologue
    const/4 v4, 0x0

    .line 4006
    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v5, Landroid/graphics/Rect;->top:I

    .line 4007
    .local v3, listTop:I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    iget-object v6, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v5, v6

    .line 4008
    .local v2, listBottom:I
    if-lt p1, v3, :cond_0

    if-le p1, v2, :cond_1

    .line 4023
    :cond_0
    :goto_0
    return v4

    .line 4012
    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->findMotionRow(I)I

    move-result v1

    .line 4013
    .local v1, dragPosition:I
    if-ltz p1, :cond_0

    if-ltz v1, :cond_0

    .line 4014
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v4, v1, v4

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4015
    .local v0, dragMotionView:Landroid/view/View;
    iput v1, p0, Landroid/widget/ListView;->mDragMotionPosition:I

    .line 4016
    iget v4, p0, Landroid/widget/ListView;->mDragMotionPosition:I

    if-nez v4, :cond_2

    .line 4017
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    iput v4, p0, Landroid/widget/ListView;->mDragMotionViewTop:I

    .line 4020
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    iput v4, p0, Landroid/widget/ListView;->mDragMotionViewBottom:I

    .line 4021
    const/4 v4, 0x1

    goto :goto_0

    .line 4019
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int/2addr v4, v5

    iput v4, p0, Landroid/widget/ListView;->mDragMotionViewTop:I

    goto :goto_1
.end method

.method private positionOfNewFocus(Landroid/view/View;)I
    .locals 5
    .parameter "newFocus"

    .prologue
    .line 3017
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 3018
    .local v2, numChildren:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 3019
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3020
    .local v0, child:Landroid/view/View;
    invoke-direct {p0, p1, v0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3021
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    .line 3018
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3024
    .end local v0           #child:Landroid/view/View;
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "newFocus is not a child of any of the children of the list!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private relayoutMeasuredItem(Landroid/view/View;)V
    .locals 7
    .parameter "child"

    .prologue
    .line 2762
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 2763
    .local v5, w:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 2764
    .local v4, h:I
    iget-object v6, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v6, Landroid/graphics/Rect;->left:I

    .line 2765
    .local v1, childLeft:I
    add-int v2, v1, v5

    .line 2766
    .local v2, childRight:I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 2767
    .local v3, childTop:I
    add-int v0, v3, v4

    .line 2768
    .local v0, childBottom:I
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/view/View;->layout(IIII)V

    .line 2769
    return-void
.end method

.method private removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4
    .parameter "v"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 345
    .local p2, where:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 346
    .local v2, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 347
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView$FixedViewInfo;

    .line 348
    .local v1, info:Landroid/widget/ListView$FixedViewInfo;
    iget-object v3, v1, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_1

    .line 349
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 353
    .end local v1           #info:Landroid/widget/ListView$FixedViewInfo;
    :cond_0
    return-void

    .line 346
    .restart local v1       #info:Landroid/widget/ListView$FixedViewInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private scrollListItemsBy(I)V
    .locals 12
    .parameter "amount"

    .prologue
    const/4 v11, 0x0

    .line 3102
    iget-boolean v9, p0, Landroid/widget/AbsListView;->mEnableForEditTextPreference:Z

    if-eqz v9, :cond_1

    .line 3103
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->offsetChildrenTopAndBottom(I)V

    .line 3180
    :cond_0
    return-void

    .line 3107
    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->offsetChildrenTopAndBottom(I)V

    .line 3109
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v9

    iget-object v10, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v9, v10

    .line 3110
    .local v5, listBottom:I
    iget-object v9, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v9, Landroid/graphics/Rect;->top:I

    .line 3111
    .local v6, listTop:I
    iget-object v8, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 3113
    .local v8, recycleBin:Landroid/widget/AbsListView$RecycleBin;
    if-gez p1, :cond_5

    .line 3117
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    .line 3118
    .local v7, numChildren:I
    add-int/lit8 v9, v7, -0x1

    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3119
    .local v1, last:Landroid/view/View;
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v5, :cond_2

    .line 3120
    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v9, v7

    add-int/lit8 v3, v9, -0x1

    .line 3121
    .local v3, lastVisiblePosition:I
    iget v9, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v9, v9, -0x1

    if-ge v3, v9, :cond_2

    .line 3122
    invoke-direct {p0, v1, v3}, Landroid/widget/ListView;->addViewBelow(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 3123
    add-int/lit8 v7, v7, 0x1

    .line 3127
    goto :goto_0

    .line 3132
    .end local v3           #lastVisiblePosition:I
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v5, :cond_3

    .line 3133
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    sub-int v9, v5, v9

    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->offsetChildrenTopAndBottom(I)V

    .line 3137
    :cond_3
    invoke-virtual {p0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3138
    .local v0, first:Landroid/view/View;
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v6, :cond_0

    .line 3139
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    .line 3140
    .local v4, layoutParams:Landroid/widget/AbsListView$LayoutParams;
    iget v9, v4, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v9}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 3141
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->detachViewFromParent(Landroid/view/View;)V

    .line 3142
    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {v8, v0, v9}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 3146
    :goto_2
    invoke-virtual {p0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3147
    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    goto :goto_1

    .line 3144
    :cond_4
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_2

    .line 3151
    .end local v0           #first:Landroid/view/View;
    .end local v1           #last:Landroid/view/View;
    .end local v4           #layoutParams:Landroid/widget/AbsListView$LayoutParams;
    .end local v7           #numChildren:I
    :cond_5
    invoke-virtual {p0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3154
    .restart local v0       #first:Landroid/view/View;
    :goto_3
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v6, :cond_6

    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v9, :cond_6

    .line 3155
    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-direct {p0, v0, v9}, Landroid/widget/ListView;->addViewAbove(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 3156
    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    goto :goto_3

    .line 3161
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v6, :cond_7

    .line 3162
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int v9, v6, v9

    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->offsetChildrenTopAndBottom(I)V

    .line 3165
    :cond_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    .line 3166
    .local v2, lastIndex:I
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3169
    .restart local v1       #last:Landroid/view/View;
    :goto_4
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v5, :cond_0

    .line 3170
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    .line 3171
    .restart local v4       #layoutParams:Landroid/widget/AbsListView$LayoutParams;
    iget v9, v4, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v9}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 3172
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->detachViewFromParent(Landroid/view/View;)V

    .line 3173
    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v9, v2

    invoke-virtual {v8, v1, v9}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 3177
    :goto_5
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3178
    goto :goto_4

    .line 3175
    :cond_8
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_5
.end method

.method private setupChild(Landroid/view/View;IIZIZZ)V
    .locals 25
    .parameter "child"
    .parameter "position"
    .parameter "y"
    .parameter "flowDown"
    .parameter "childrenLeft"
    .parameter "selected"
    .parameter "recycled"

    .prologue
    .line 1993
    if-eqz p6, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->shouldShowSelector()Z

    move-result v22

    if-eqz v22, :cond_9

    const/4 v14, 0x1

    .line 1994
    .local v14, isSelected:Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v22

    move/from16 v0, v22

    if-eq v14, v0, :cond_a

    const/16 v20, 0x1

    .line 1995
    .local v20, updateChildSelected:Z
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v16, v0

    .line 1996
    .local v16, mode:I
    if-lez v16, :cond_b

    const/16 v22, 0x3

    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, p2

    if-ne v0, v1, :cond_b

    const/4 v13, 0x1

    .line 1998
    .local v13, isPressed:Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v22

    move/from16 v0, v22

    if-eq v13, v0, :cond_c

    const/16 v19, 0x1

    .line 1999
    .local v19, updateChildPressed:Z
    :goto_3
    if-eqz p7, :cond_0

    if-nez v20, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v22

    if-eqz v22, :cond_d

    :cond_0
    const/16 v17, 0x1

    .line 2003
    .local v17, needToMeasure:Z
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Landroid/widget/AbsListView$LayoutParams;

    .line 2004
    .local v18, p:Landroid/widget/AbsListView$LayoutParams;
    if-nez v18, :cond_1

    .line 2005
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    .end local v18           #p:Landroid/widget/AbsListView$LayoutParams;
    check-cast v18, Landroid/widget/AbsListView$LayoutParams;

    .line 2007
    .restart local v18       #p:Landroid/widget/AbsListView$LayoutParams;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v18

    iput v0, v1, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 2009
    if-eqz p7, :cond_2

    move-object/from16 v0, v18

    iget-boolean v0, v0, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    move/from16 v22, v0

    if-eqz v22, :cond_3

    :cond_2
    move-object/from16 v0, v18

    iget-boolean v0, v0, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    move/from16 v22, v0

    if-eqz v22, :cond_f

    move-object/from16 v0, v18

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    move/from16 v22, v0

    const/16 v23, -0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_f

    .line 2011
    :cond_3
    if-eqz p4, :cond_e

    const/16 v22, -0x1

    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2020
    :goto_6
    if-eqz v20, :cond_4

    .line 2021
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->setSelected(Z)V

    .line 2024
    :cond_4
    if-eqz v19, :cond_5

    .line 2025
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->setPressed(Z)V

    .line 2028
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mChoiceMode:I

    move/from16 v22, v0

    if-eqz v22, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v22, v0

    if-eqz v22, :cond_6

    .line 2029
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/Checkable;

    move/from16 v22, v0

    if-eqz v22, :cond_12

    move-object/from16 v22, p1

    .line 2030
    check-cast v22, Landroid/widget/Checkable;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v23

    invoke-interface/range {v22 .. v23}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 2049
    :cond_6
    :goto_7
    if-eqz v17, :cond_17

    .line 2050
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    add-int v23, v23, v24

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v24, v0

    invoke-static/range {v22 .. v24}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v10

    .line 2052
    .local v10, childWidthSpec:I
    move-object/from16 v0, v18

    iget v15, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2054
    .local v15, lpHeight:I
    if-lez v15, :cond_16

    .line 2055
    const/high16 v22, 0x4000

    move/from16 v0, v22

    invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 2059
    .local v7, childHeightSpec:I
    :goto_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v7}, Landroid/view/View;->measure(II)V

    .line 2064
    .end local v7           #childHeightSpec:I
    .end local v10           #childWidthSpec:I
    .end local v15           #lpHeight:I
    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    .line 2065
    .local v21, w:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    .line 2066
    .local v11, h:I
    if-eqz p4, :cond_18

    move/from16 v9, p3

    .line 2068
    .local v9, childTop:I
    :goto_a
    if-eqz v17, :cond_19

    .line 2069
    add-int v8, p5, v21

    .line 2070
    .local v8, childRight:I
    add-int v6, v9, v11

    .line 2071
    .local v6, childBottom:I
    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v0, v1, v9, v8, v6}, Landroid/view/View;->layout(IIII)V

    .line 2077
    .end local v6           #childBottom:I
    .end local v8           #childRight:I
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mCachingStarted:Z

    move/from16 v22, v0

    if-eqz v22, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v22

    if-nez v22, :cond_7

    .line 2078
    const/16 v22, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 2081
    :cond_7
    if-eqz p7, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Landroid/widget/AbsListView$LayoutParams;

    move-object/from16 v0, v22

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, p2

    if-eq v0, v1, :cond_8

    .line 2083
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 2085
    :cond_8
    return-void

    .line 1993
    .end local v9           #childTop:I
    .end local v11           #h:I
    .end local v13           #isPressed:Z
    .end local v14           #isSelected:Z
    .end local v16           #mode:I
    .end local v17           #needToMeasure:Z
    .end local v18           #p:Landroid/widget/AbsListView$LayoutParams;
    .end local v19           #updateChildPressed:Z
    .end local v20           #updateChildSelected:Z
    .end local v21           #w:I
    :cond_9
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 1994
    .restart local v14       #isSelected:Z
    :cond_a
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 1996
    .restart local v16       #mode:I
    .restart local v20       #updateChildSelected:Z
    :cond_b
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 1998
    .restart local v13       #isPressed:Z
    :cond_c
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 1999
    .restart local v19       #updateChildPressed:Z
    :cond_d
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 2011
    .restart local v17       #needToMeasure:Z
    .restart local v18       #p:Landroid/widget/AbsListView$LayoutParams;
    :cond_e
    const/16 v22, 0x0

    goto/16 :goto_5

    .line 2013
    :cond_f
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v18

    iput-boolean v0, v1, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 2014
    move-object/from16 v0, v18

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    move/from16 v22, v0

    const/16 v23, -0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_10

    .line 2015
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v18

    iput-boolean v0, v1, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 2017
    :cond_10
    if-eqz p4, :cond_11

    const/16 v22, -0x1

    :goto_c
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    move-object/from16 v3, v18

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto/16 :goto_6

    :cond_11
    const/16 v22, 0x0

    goto :goto_c

    .line 2031
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v22, v0

    const/16 v23, 0xb

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_6

    .line 2035
    if-eqz p1, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mChoiceMode:I

    move/from16 v22, v0

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mChoiceMode:I

    move/from16 v22, v0

    const/16 v23, 0x5

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_14

    .line 2037
    :cond_13
    const v22, 0x1020001

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 2038
    .local v5, checkbox:Landroid/view/View;
    if-eqz v5, :cond_14

    instance-of v0, v5, Landroid/widget/Checkable;

    move/from16 v22, v0

    if-eqz v22, :cond_14

    .line 2039
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move-object/from16 v22, v0

    if-eqz v22, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mDragAndDropPosition:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_15

    const/4 v12, 0x1

    .line 2040
    .local v12, inSelectionMode:Z
    :goto_d
    check-cast v5, Landroid/widget/Checkable;

    .end local v5           #checkbox:Landroid/view/View;
    invoke-interface {v5, v12}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 2045
    .end local v12           #inSelectionMode:Z
    :cond_14
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    goto/16 :goto_7

    .line 2039
    .restart local v5       #checkbox:Landroid/view/View;
    :cond_15
    const/4 v12, 0x0

    goto :goto_d

    .line 2057
    .end local v5           #checkbox:Landroid/view/View;
    .restart local v10       #childWidthSpec:I
    .restart local v15       #lpHeight:I
    :cond_16
    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .restart local v7       #childHeightSpec:I
    goto/16 :goto_8

    .line 2061
    .end local v7           #childHeightSpec:I
    .end local v10           #childWidthSpec:I
    .end local v15           #lpHeight:I
    :cond_17
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->cleanupLayoutState(Landroid/view/View;)V

    goto/16 :goto_9

    .line 2066
    .restart local v11       #h:I
    .restart local v21       #w:I
    :cond_18
    sub-int v9, p3, v11

    goto/16 :goto_a

    .line 2073
    .restart local v9       #childTop:I
    :cond_19
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v22

    sub-int v22, p5, v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2074
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v22

    sub-int v22, v9, v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_b
.end method

.method private showingBottomFadingEdge()Z
    .locals 6

    .prologue
    .line 570
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 571
    .local v1, childCount:I
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 572
    .local v0, bottomOfBottomChild:I
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v4, v1

    add-int/lit8 v2, v4, -0x1

    .line 574
    .local v2, lastVisiblePosition:I
    iget v4, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v4, v5

    .line 576
    .local v3, listBottom:I
    iget v4, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v4, v4, -0x1

    if-lt v2, v4, :cond_0

    if-ge v0, v3, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private showingTopFadingEdge()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 562
    iget v2, p0, Landroid/view/View;->mScrollY:I

    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int v0, v2, v3

    .line 563
    .local v0, listTop:I
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-gtz v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-le v2, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private upSelect(II)V
    .locals 7
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v6, -0x1

    .line 4063
    if-ne p1, v6, :cond_1

    .line 4064
    move p1, p2

    .line 4068
    :goto_0
    move v4, p1

    .local v4, position:I
    :goto_1
    if-lt v4, p2, :cond_6

    .line 4069
    iget v5, p0, Landroid/widget/ListView;->mLongPressPosition:I

    if-ne v4, v5, :cond_2

    .line 4096
    :cond_0
    :goto_2
    return-void

    .line 4066
    .end local v4           #position:I
    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 4073
    .restart local v4       #position:I
    :cond_2
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->isItemSelectable(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 4068
    :goto_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 4077
    :cond_3
    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v5, v4, v5

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4078
    .local v0, dragView:Landroid/view/View;
    iget-object v5, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 4079
    .local v1, id:J
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->isHeaderOrFooter(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 4080
    const/4 v3, 0x0

    .line 4081
    .local v3, newSelected:Z
    iget-object v5, p0, Landroid/widget/ListView;->mDragSelectListener:Landroid/widget/ListView$OnDragSelectListener;

    if-eqz v5, :cond_4

    .line 4082
    iget-object v5, p0, Landroid/widget/ListView;->mDragSelectListener:Landroid/widget/ListView$OnDragSelectListener;

    invoke-interface {v5, v0, v4, v1, v2}, Landroid/widget/ListView$OnDragSelectListener;->onDragSelection(Landroid/view/View;IJ)Z

    move-result v3

    .line 4087
    :goto_4
    invoke-direct {p0, v0, v3}, Landroid/widget/ListView;->updateDragView(Landroid/view/View;Z)V

    .line 4092
    iput v4, p0, Landroid/widget/ListView;->mLastUpSelectPosition:I

    .line 4093
    iput v6, p0, Landroid/widget/ListView;->mLastDownSelectPosition:I

    goto :goto_3

    .line 4084
    :cond_4
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v5

    if-nez v5, :cond_5

    const/4 v3, 0x1

    .line 4085
    :goto_5
    invoke-virtual {p0, v4, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_4

    .line 4084
    :cond_5
    const/4 v3, 0x0

    goto :goto_5

    .line 4095
    .end local v0           #dragView:Landroid/view/View;
    .end local v1           #id:J
    .end local v3           #newSelected:Z
    :cond_6
    iput v6, p0, Landroid/widget/ListView;->mLongPressPosition:I

    goto :goto_2
.end method

.method private updateDragView(Landroid/view/View;Z)V
    .locals 0
    .parameter "dragView"
    .parameter "checked"

    .prologue
    .line 4102
    if-nez p1, :cond_0

    .line 4106
    :goto_0
    return-void

    .line 4105
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setActivated(Z)V

    goto :goto_0
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 399
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 400
    return-void
.end method

.method public addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 2
    .parameter "v"
    .parameter "data"
    .parameter "isSelectable"

    .prologue
    .line 375
    new-instance v0, Landroid/widget/ListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/ListView$FixedViewInfo;-><init>(Landroid/widget/ListView;)V

    .line 376
    .local v0, info:Landroid/widget/ListView$FixedViewInfo;
    iput-object p1, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 377
    iput-object p2, v0, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 378
    iput-boolean p3, v0, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    .line 379
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 384
    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 386
    :cond_0
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 314
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 315
    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 3
    .parameter "v"
    .parameter "data"
    .parameter "isSelectable"

    .prologue
    .line 284
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/HeaderViewListAdapter;

    if-nez v1, :cond_0

    .line 285
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot add header view to list -- setAdapter has already been called."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 289
    :cond_0
    new-instance v0, Landroid/widget/ListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/ListView$FixedViewInfo;-><init>(Landroid/widget/ListView;)V

    .line 290
    .local v0, info:Landroid/widget/ListView$FixedViewInfo;
    iput-object p1, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 291
    iput-object p2, v0, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 292
    iput-boolean p3, v0, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    .line 293
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_1

    .line 298
    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 300
    :cond_1
    return-void
.end method

.method public applyMeizuPartitionStyle()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 4611
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ListView;->mIsMeizuPartitionStyle:Z

    .line 4612
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050219

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105021a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x105021f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 4617
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 4618
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 4619
    const/high16 v0, 0x200

    invoke-virtual {p0, v0}, Landroid/view/View;->setScrollBarStyle(I)V

    .line 4620
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080506

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 4621
    const v0, 0x1080507

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setSelector(I)V

    .line 4622
    return-void
.end method

.method arrowScroll(I)Z
    .locals 3
    .parameter "direction"

    .prologue
    const/4 v2, 0x0

    .line 2556
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 2557
    invoke-direct {p0, p1}, Landroid/widget/ListView;->arrowScrollImpl(I)Z

    move-result v0

    .line 2558
    .local v0, handled:Z
    if-eqz v0, :cond_0

    .line 2559
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->playSoundEffect(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2563
    :cond_0
    iput-boolean v2, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 2561
    return v0

    .line 2563
    .end local v0           #handled:Z
    :catchall_0
    move-exception v1

    iput-boolean v2, p0, Landroid/widget/AdapterView;->mInLayout:Z

    throw v1
.end method

.method protected canAnimate()Z
    .locals 1

    .prologue
    .line 2089
    invoke-super {p0}, Landroid/widget/AdapterView;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkedAll()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 4384
    iget v2, p0, Landroid/widget/AdapterView;->mItemCount:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v3

    sub-int v0, v2, v3

    .line 4385
    .local v0, firtFooterPosition:I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->clearChoices()V

    .line 4386
    iget v2, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_2

    .line 4387
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    .local v1, position:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 4389
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->isItemSelectable(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4387
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4393
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 4394
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4395
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 4397
    :cond_1
    iget v2, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_1

    .line 4401
    .end local v1           #position:I
    :cond_2
    iget-boolean v2, p0, Landroid/widget/AdapterView;->mInLayout:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    if-nez v2, :cond_3

    .line 4402
    iput-boolean v6, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 4403
    invoke-virtual {p0}, Landroid/widget/ListView;->rememberSyncState()V

    .line 4404
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 4406
    :cond_3
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 52
    .parameter "canvas"

    .prologue
    .line 3306
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mCachingStarted:Z

    move/from16 v48, v0

    if-eqz v48, :cond_0

    .line 3307
    const/16 v48, 0x1

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mCachingActive:Z

    .line 3311
    :cond_0
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ListView;->mDividerHeight:I

    .line 3312
    .local v14, dividerHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    move-object/from16 v40, v0

    .line 3313
    .local v40, overscrollHeader:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    move-object/from16 v39, v0

    .line 3314
    .local v39, overscrollFooter:Landroid/graphics/drawable/Drawable;
    if-eqz v40, :cond_b

    const/16 v18, 0x1

    .line 3315
    .local v18, drawOverscrollHeader:Z
    :goto_0
    if-eqz v39, :cond_c

    const/16 v17, 0x1

    .line 3316
    .local v17, drawOverscrollFooter:Z
    :goto_1
    if-lez v14, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v48, v0

    if-eqz v48, :cond_d

    const/16 v16, 0x1

    .line 3318
    .local v16, drawDividers:Z
    :goto_2
    if-nez v16, :cond_1

    if-nez v18, :cond_1

    if-eqz v17, :cond_16

    .line 3320
    :cond_1
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 3321
    .local v9, bounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v48, v0

    move/from16 v0, v48

    iput v0, v9, Landroid/graphics/Rect;->left:I

    .line 3322
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v48, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v49, v0

    sub-int v48, v48, v49

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingRight:I

    move/from16 v49, v0

    sub-int v48, v48, v49

    move/from16 v0, v48

    iput v0, v9, Landroid/graphics/Rect;->right:I

    .line 3324
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    .line 3325
    .local v13, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Ljava/util/ArrayList;->size()I

    move-result v28

    .line 3326
    .local v28, headerCount:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v34, v0

    .line 3327
    .local v34, itemCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Ljava/util/ArrayList;->size()I

    move-result v48

    sub-int v48, v34, v48

    add-int/lit8 v26, v48, -0x1

    .line 3328
    .local v26, footerLimit:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    move/from16 v29, v0

    .line 3329
    .local v29, headerDividers:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    move/from16 v25, v0

    .line 3330
    .local v25, footerDividers:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v24, v0

    .line 3331
    .local v24, first:I
    move-object/from16 v0, p0

    iget-boolean v7, v0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 3332
    .local v7, areAllItemsSelectable:Z
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3337
    .local v6, adapter:Landroid/widget/ListAdapter;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->isOpaque()Z

    move-result v48

    if-eqz v48, :cond_e

    invoke-super/range {p0 .. p0}, Landroid/view/View;->isOpaque()Z

    move-result v48

    if-nez v48, :cond_e

    const/16 v23, 0x1

    .line 3339
    .local v23, fillForMissingDividers:Z
    :goto_3
    if-eqz v23, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v48, v0

    if-nez v48, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mIsCacheColorOpaque:Z

    move/from16 v48, v0

    if-eqz v48, :cond_2

    .line 3340
    new-instance v48, Landroid/graphics/Paint;

    invoke-direct/range {v48 .. v48}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 3341
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v48, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getCacheColorHint()I

    move-result v49

    invoke-virtual/range {v48 .. v49}, Landroid/graphics/Paint;->setColor(I)V

    .line 3343
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v41, v0

    .line 3345
    .local v41, paint:Landroid/graphics/Paint;
    const/16 v22, 0x0

    .line 3346
    .local v22, effectivePaddingTop:I
    const/16 v21, 0x0

    .line 3347
    .local v21, effectivePaddingBottom:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v48, v0

    and-int/lit8 v48, v48, 0x22

    const/16 v49, 0x22

    move/from16 v0, v48

    move/from16 v1, v49

    if-ne v0, v1, :cond_3

    .line 3348
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    .line 3349
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    .line 3352
    :cond_3
    instance-of v0, v6, Landroid/widget/ListView$DividerFilter;

    move/from16 v32, v0

    .line 3354
    .local v32, isDividerFilter:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v48, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v49, v0

    sub-int v48, v48, v49

    sub-int v48, v48, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v49, v0

    add-int v35, v48, v49

    .line 3355
    .local v35, listBottom:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    move/from16 v48, v0

    if-nez v48, :cond_1b

    .line 3356
    const/4 v8, 0x0

    .line 3359
    .local v8, bottom:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v43, v0

    .line 3360
    .local v43, scrollY:I
    if-lez v13, :cond_4

    if-gez v43, :cond_4

    .line 3361
    if-eqz v18, :cond_f

    .line 3362
    const/16 v48, 0x0

    move/from16 v0, v48

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    .line 3363
    move/from16 v0, v43

    iput v0, v9, Landroid/graphics/Rect;->top:I

    .line 3364
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2, v9}, Landroid/widget/ListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3372
    :cond_4
    :goto_4
    const/16 v31, 0x0

    .local v31, i:I
    :goto_5
    move/from16 v0, v31

    if-ge v0, v13, :cond_11

    .line 3373
    if-nez v29, :cond_5

    add-int v48, v24, v31

    move/from16 v0, v48

    move/from16 v1, v28

    if-lt v0, v1, :cond_a

    :cond_5
    if-nez v25, :cond_6

    add-int v48, v24, v31

    move/from16 v0, v48

    move/from16 v1, v26

    if-ge v0, v1, :cond_a

    .line 3375
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 3376
    .local v10, child:Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v8

    .line 3379
    const/16 v45, 0x1

    .line 3380
    .local v45, toDraw:Z
    if-eqz v32, :cond_7

    move-object/from16 v48, v6

    .line 3381
    check-cast v48, Landroid/widget/ListView$DividerFilter;

    add-int v49, v24, v31

    invoke-interface/range {v48 .. v49}, Landroid/widget/ListView$DividerFilter;->dividerEnabled(I)Z

    move-result v45

    .line 3384
    :cond_7
    if-eqz v16, :cond_a

    if-eqz v45, :cond_a

    move/from16 v0, v35

    if-ge v8, v0, :cond_a

    if-eqz v17, :cond_8

    add-int/lit8 v48, v13, -0x1

    move/from16 v0, v31

    move/from16 v1, v48

    if-eq v0, v1, :cond_a

    .line 3386
    :cond_8
    if-nez v7, :cond_9

    add-int v48, v24, v31

    move/from16 v0, v48

    invoke-interface {v6, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v48

    if-eqz v48, :cond_10

    add-int/lit8 v48, v13, -0x1

    move/from16 v0, v31

    move/from16 v1, v48

    if-eq v0, v1, :cond_9

    add-int v48, v24, v31

    add-int/lit8 v48, v48, 0x1

    move/from16 v0, v48

    invoke-interface {v6, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v48

    if-eqz v48, :cond_10

    .line 3389
    :cond_9
    iput v8, v9, Landroid/graphics/Rect;->top:I

    .line 3390
    add-int v48, v8, v14

    move/from16 v0, v48

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    .line 3391
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v31

    invoke-virtual {v0, v1, v9, v2}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3372
    .end local v10           #child:Landroid/view/View;
    .end local v45           #toDraw:Z
    :cond_a
    :goto_6
    add-int/lit8 v31, v31, 0x1

    goto :goto_5

    .line 3314
    .end local v6           #adapter:Landroid/widget/ListAdapter;
    .end local v7           #areAllItemsSelectable:Z
    .end local v8           #bottom:I
    .end local v9           #bounds:Landroid/graphics/Rect;
    .end local v13           #count:I
    .end local v16           #drawDividers:Z
    .end local v17           #drawOverscrollFooter:Z
    .end local v18           #drawOverscrollHeader:Z
    .end local v21           #effectivePaddingBottom:I
    .end local v22           #effectivePaddingTop:I
    .end local v23           #fillForMissingDividers:Z
    .end local v24           #first:I
    .end local v25           #footerDividers:Z
    .end local v26           #footerLimit:I
    .end local v28           #headerCount:I
    .end local v29           #headerDividers:Z
    .end local v31           #i:I
    .end local v32           #isDividerFilter:Z
    .end local v34           #itemCount:I
    .end local v35           #listBottom:I
    .end local v41           #paint:Landroid/graphics/Paint;
    .end local v43           #scrollY:I
    :cond_b
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 3315
    .restart local v18       #drawOverscrollHeader:Z
    :cond_c
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 3316
    .restart local v17       #drawOverscrollFooter:Z
    :cond_d
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 3337
    .restart local v6       #adapter:Landroid/widget/ListAdapter;
    .restart local v7       #areAllItemsSelectable:Z
    .restart local v9       #bounds:Landroid/graphics/Rect;
    .restart local v13       #count:I
    .restart local v16       #drawDividers:Z
    .restart local v24       #first:I
    .restart local v25       #footerDividers:Z
    .restart local v26       #footerLimit:I
    .restart local v28       #headerCount:I
    .restart local v29       #headerDividers:Z
    .restart local v34       #itemCount:I
    :cond_e
    const/16 v23, 0x0

    goto/16 :goto_3

    .line 3365
    .restart local v8       #bottom:I
    .restart local v21       #effectivePaddingBottom:I
    .restart local v22       #effectivePaddingTop:I
    .restart local v23       #fillForMissingDividers:Z
    .restart local v32       #isDividerFilter:Z
    .restart local v35       #listBottom:I
    .restart local v41       #paint:Landroid/graphics/Paint;
    .restart local v43       #scrollY:I
    :cond_f
    if-eqz v16, :cond_4

    .line 3366
    const/16 v48, 0x0

    move/from16 v0, v48

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    .line 3367
    neg-int v0, v14

    move/from16 v48, v0

    move/from16 v0, v48

    iput v0, v9, Landroid/graphics/Rect;->top:I

    .line 3368
    const/16 v48, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v48

    invoke-virtual {v0, v1, v9, v2}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto/16 :goto_4

    .line 3392
    .restart local v10       #child:Landroid/view/View;
    .restart local v31       #i:I
    .restart local v45       #toDraw:Z
    :cond_10
    if-eqz v23, :cond_a

    .line 3393
    iput v8, v9, Landroid/graphics/Rect;->top:I

    .line 3394
    add-int v48, v8, v14

    move/from16 v0, v48

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    .line 3395
    move-object/from16 v0, p1

    move-object/from16 v1, v41

    invoke-virtual {v0, v9, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_6

    .line 3401
    .end local v10           #child:Landroid/view/View;
    .end local v45           #toDraw:Z
    :cond_11
    const/16 v19, 0x1

    .line 3402
    .local v19, drawTop:Z
    if-eqz v32, :cond_12

    move-object/from16 v48, v6

    .line 3403
    check-cast v48, Landroid/widget/ListView$DividerFilter;

    invoke-interface/range {v48 .. v48}, Landroid/widget/ListView$DividerFilter;->topDividerEnabled()Z

    move-result v19

    .line 3406
    :cond_12
    if-eqz v19, :cond_15

    if-eqz v16, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mCurrentOverScrollDistance:I

    move/from16 v48, v0

    if-ltz v48, :cond_13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mCenterContent:Z

    move/from16 v48, v0

    if-eqz v48, :cond_15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->shouldCenterContent()Z

    move-result v48

    if-eqz v48, :cond_15

    :cond_13
    if-nez v24, :cond_15

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v48

    if-lez v48, :cond_15

    const/16 v48, 0x0

    move/from16 v0, v48

    invoke-interface {v6, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v48

    if-eqz v48, :cond_15

    if-eqz v28, :cond_14

    if-lez v28, :cond_15

    if-eqz v29, :cond_15

    .line 3410
    :cond_14
    const/16 v48, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Landroid/view/View;->getTop()I

    move-result v48

    sub-int v46, v48, v14

    .line 3411
    .local v46, top:I
    move/from16 v0, v46

    iput v0, v9, Landroid/graphics/Rect;->top:I

    .line 3412
    add-int v48, v46, v14

    move/from16 v0, v48

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    .line 3413
    const/16 v48, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v48

    invoke-virtual {v0, v1, v9, v2}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3416
    .end local v46           #top:I
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v48, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v49, v0

    add-int v38, v48, v49

    .line 3417
    .local v38, overFooterBottom:I
    if-eqz v17, :cond_16

    add-int v48, v24, v13

    move/from16 v0, v48

    move/from16 v1, v34

    if-ne v0, v1, :cond_16

    move/from16 v0, v38

    if-le v0, v8, :cond_16

    .line 3419
    iput v8, v9, Landroid/graphics/Rect;->top:I

    .line 3420
    move/from16 v0, v38

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    .line 3421
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2, v9}, Landroid/widget/ListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3498
    .end local v6           #adapter:Landroid/widget/ListAdapter;
    .end local v7           #areAllItemsSelectable:Z
    .end local v8           #bottom:I
    .end local v9           #bounds:Landroid/graphics/Rect;
    .end local v13           #count:I
    .end local v19           #drawTop:Z
    .end local v21           #effectivePaddingBottom:I
    .end local v22           #effectivePaddingTop:I
    .end local v23           #fillForMissingDividers:Z
    .end local v24           #first:I
    .end local v25           #footerDividers:Z
    .end local v26           #footerLimit:I
    .end local v28           #headerCount:I
    .end local v29           #headerDividers:Z
    .end local v31           #i:I
    .end local v32           #isDividerFilter:Z
    .end local v34           #itemCount:I
    .end local v35           #listBottom:I
    .end local v38           #overFooterBottom:I
    .end local v41           #paint:Landroid/graphics/Paint;
    .end local v43           #scrollY:I
    :cond_16
    :goto_7
    invoke-super/range {p0 .. p1}, Landroid/widget/AbsListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3501
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mEnableTopShadow:Z

    move/from16 v48, v0

    if-eqz v48, :cond_1a

    .line 3502
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    .line 3503
    .restart local v13       #count:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v48, v0

    and-int/lit8 v48, v48, 0x22

    const/16 v49, 0x22

    move/from16 v0, v48

    move/from16 v1, v49

    if-ne v0, v1, :cond_28

    const/4 v11, 0x1

    .line 3504
    .local v11, clipToPadding:Z
    :goto_8
    if-eqz v11, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v36, v0

    .line 3505
    .local v36, listTop:I
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Ljava/util/ArrayList;->size()I

    move-result v30

    .line 3511
    .local v30, headerSize:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->isAbsBasePartitionAdapter:Z

    move/from16 v48, v0

    if-eqz v48, :cond_19

    .line 3513
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v48, v0

    add-int/lit8 v49, v30, 0x1

    move/from16 v0, v48

    move/from16 v1, v49

    if-ge v0, v1, :cond_19

    .line 3514
    const/16 v33, 0x0

    .line 3515
    .local v33, isHeadView:Z
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3516
    .local v6, adapter:Landroid/widget/Adapter;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    instance-of v0, v0, Landroid/widget/HeaderViewListAdapter;

    move/from16 v48, v0

    if-eqz v48, :cond_17

    .line 3517
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v48, v0

    check-cast v48, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual/range {v48 .. v48}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    .line 3519
    :cond_17
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    .line 3523
    .local v12, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    const-string v48, "isTopHeader"

    const/16 v49, 0x0

    move/from16 v0, v49

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v49, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    invoke-virtual {v12, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v37

    .line 3524
    .local v37, method:Ljava/lang/reflect/Method;
    if-eqz v37, :cond_18

    .line 3525
    const/16 v48, 0x0

    move/from16 v0, v48

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v48, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v48

    invoke-virtual {v0, v6, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/lang/Boolean;

    invoke-virtual/range {v48 .. v48}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v33

    .line 3537
    .end local v37           #method:Ljava/lang/reflect/Method;
    :cond_18
    :goto_a
    if-eqz v33, :cond_19

    .line 3538
    add-int/lit8 v30, v30, 0x1

    .line 3543
    .end local v6           #adapter:Landroid/widget/Adapter;
    .end local v12           #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v33           #isHeadView:Z
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Ljava/util/ArrayList;->size()I

    move-result v27

    .line 3544
    .local v27, footerSize:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v48, v0

    sub-int v48, v30, v48

    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v47

    .line 3546
    .local v47, view:Landroid/view/View;
    sub-int v48, v13, v30

    sub-int v48, v48, v27

    if-eqz v48, :cond_1a

    if-eqz v47, :cond_2a

    invoke-virtual/range {v47 .. v47}, Landroid/view/View;->getTop()I

    move-result v48

    move/from16 v0, v48

    move/from16 v1, v36

    if-lt v0, v1, :cond_2a

    .line 3559
    .end local v11           #clipToPadding:Z
    .end local v13           #count:I
    .end local v27           #footerSize:I
    .end local v30           #headerSize:I
    .end local v36           #listTop:I
    .end local v47           #view:Landroid/view/View;
    :cond_1a
    :goto_b
    return-void

    .line 3426
    .local v6, adapter:Landroid/widget/ListAdapter;
    .restart local v7       #areAllItemsSelectable:Z
    .restart local v9       #bounds:Landroid/graphics/Rect;
    .restart local v13       #count:I
    .restart local v21       #effectivePaddingBottom:I
    .restart local v22       #effectivePaddingTop:I
    .restart local v23       #fillForMissingDividers:Z
    .restart local v24       #first:I
    .restart local v25       #footerDividers:Z
    .restart local v26       #footerLimit:I
    .restart local v28       #headerCount:I
    .restart local v29       #headerDividers:Z
    .restart local v32       #isDividerFilter:Z
    .restart local v34       #itemCount:I
    .restart local v35       #listBottom:I
    .restart local v41       #paint:Landroid/graphics/Paint;
    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v43, v0

    .line 3428
    .restart local v43       #scrollY:I
    if-lez v13, :cond_1c

    if-eqz v18, :cond_1c

    .line 3429
    move/from16 v0, v43

    iput v0, v9, Landroid/graphics/Rect;->top:I

    .line 3430
    const/16 v48, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Landroid/view/View;->getTop()I

    move-result v48

    move/from16 v0, v48

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    .line 3431
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2, v9}, Landroid/widget/ListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3434
    :cond_1c
    if-eqz v18, :cond_22

    const/16 v44, 0x1

    .line 3435
    .local v44, start:I
    :goto_c
    move/from16 v31, v44

    .restart local v31       #i:I
    :goto_d
    move/from16 v0, v31

    if-ge v0, v13, :cond_24

    .line 3436
    if-nez v29, :cond_1d

    add-int v48, v24, v31

    move/from16 v0, v48

    move/from16 v1, v28

    if-lt v0, v1, :cond_21

    :cond_1d
    if-nez v25, :cond_1e

    add-int v48, v24, v31

    move/from16 v0, v48

    move/from16 v1, v26

    if-ge v0, v1, :cond_21

    .line 3439
    :cond_1e
    const/16 v45, 0x1

    .line 3440
    .restart local v45       #toDraw:Z
    if-eqz v32, :cond_1f

    move-object/from16 v48, v6

    .line 3441
    check-cast v48, Landroid/widget/ListView$DividerFilter;

    add-int v49, v24, v31

    invoke-interface/range {v48 .. v49}, Landroid/widget/ListView$DividerFilter;->dividerEnabled(I)Z

    move-result v45

    .line 3443
    :cond_1f
    if-eqz v45, :cond_21

    .line 3444
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 3445
    .restart local v10       #child:Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v46

    .line 3447
    .restart local v46       #top:I
    move/from16 v0, v46

    move/from16 v1, v22

    if-le v0, v1, :cond_21

    .line 3448
    if-nez v7, :cond_20

    add-int v48, v24, v31

    move/from16 v0, v48

    invoke-interface {v6, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v48

    if-eqz v48, :cond_23

    add-int/lit8 v48, v13, -0x1

    move/from16 v0, v31

    move/from16 v1, v48

    if-eq v0, v1, :cond_20

    add-int v48, v24, v31

    add-int/lit8 v48, v48, 0x1

    move/from16 v0, v48

    invoke-interface {v6, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v48

    if-eqz v48, :cond_23

    .line 3451
    :cond_20
    sub-int v48, v46, v14

    move/from16 v0, v48

    iput v0, v9, Landroid/graphics/Rect;->top:I

    .line 3452
    move/from16 v0, v46

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    .line 3457
    add-int/lit8 v48, v31, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v48

    invoke-virtual {v0, v1, v9, v2}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3435
    .end local v10           #child:Landroid/view/View;
    .end local v45           #toDraw:Z
    .end local v46           #top:I
    :cond_21
    :goto_e
    add-int/lit8 v31, v31, 0x1

    goto :goto_d

    .line 3434
    .end local v31           #i:I
    .end local v44           #start:I
    :cond_22
    const/16 v44, 0x0

    goto :goto_c

    .line 3458
    .restart local v10       #child:Landroid/view/View;
    .restart local v31       #i:I
    .restart local v44       #start:I
    .restart local v45       #toDraw:Z
    .restart local v46       #top:I
    :cond_23
    if-eqz v23, :cond_21

    .line 3459
    sub-int v48, v46, v14

    move/from16 v0, v48

    iput v0, v9, Landroid/graphics/Rect;->top:I

    .line 3460
    move/from16 v0, v46

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    .line 3461
    move-object/from16 v0, p1

    move-object/from16 v1, v41

    invoke-virtual {v0, v9, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_e

    .line 3468
    .end local v10           #child:Landroid/view/View;
    .end local v45           #toDraw:Z
    .end local v46           #top:I
    :cond_24
    const/4 v15, 0x1

    .line 3469
    .local v15, drawBottom:Z
    if-eqz v32, :cond_25

    .line 3470
    check-cast v6, Landroid/widget/ListView$DividerFilter;

    .end local v6           #adapter:Landroid/widget/ListAdapter;
    invoke-interface {v6}, Landroid/widget/ListView$DividerFilter;->bottomDeviderEnabled()Z

    move-result v15

    .line 3473
    :cond_25
    if-eqz v15, :cond_26

    if-eqz v16, :cond_26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mCurrentOverScrollDistance:I

    move/from16 v48, v0

    if-lez v48, :cond_26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v48, v0

    add-int v48, v48, v13

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v49, v0

    move/from16 v0, v48

    move/from16 v1, v49

    if-ne v0, v1, :cond_26

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v48

    if-lez v48, :cond_26

    .line 3476
    add-int/lit8 v48, v13, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Landroid/view/View;->getBottom()I

    move-result v46

    .line 3477
    .restart local v46       #top:I
    move/from16 v0, v46

    iput v0, v9, Landroid/graphics/Rect;->top:I

    .line 3478
    add-int v48, v46, v14

    move/from16 v0, v48

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    .line 3479
    add-int/lit8 v48, v13, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v48

    invoke-virtual {v0, v1, v9, v2}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3482
    .end local v46           #top:I
    :cond_26
    if-lez v13, :cond_16

    if-lez v43, :cond_16

    .line 3483
    if-eqz v17, :cond_27

    .line 3484
    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/View;->mBottom:I

    .line 3485
    .local v5, absListBottom:I
    iput v5, v9, Landroid/graphics/Rect;->top:I

    .line 3486
    add-int v48, v5, v43

    move/from16 v0, v48

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    .line 3487
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2, v9}, Landroid/widget/ListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    goto/16 :goto_7

    .line 3488
    .end local v5           #absListBottom:I
    :cond_27
    if-eqz v16, :cond_16

    .line 3489
    move/from16 v0, v35

    iput v0, v9, Landroid/graphics/Rect;->top:I

    .line 3490
    add-int v48, v35, v14

    move/from16 v0, v48

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    .line 3491
    const/16 v48, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v48

    invoke-virtual {v0, v1, v9, v2}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto/16 :goto_7

    .line 3503
    .end local v7           #areAllItemsSelectable:Z
    .end local v9           #bounds:Landroid/graphics/Rect;
    .end local v15           #drawBottom:Z
    .end local v21           #effectivePaddingBottom:I
    .end local v22           #effectivePaddingTop:I
    .end local v23           #fillForMissingDividers:Z
    .end local v24           #first:I
    .end local v25           #footerDividers:Z
    .end local v26           #footerLimit:I
    .end local v28           #headerCount:I
    .end local v29           #headerDividers:Z
    .end local v31           #i:I
    .end local v32           #isDividerFilter:Z
    .end local v34           #itemCount:I
    .end local v35           #listBottom:I
    .end local v41           #paint:Landroid/graphics/Paint;
    .end local v43           #scrollY:I
    .end local v44           #start:I
    :cond_28
    const/4 v11, 0x0

    goto/16 :goto_8

    .line 3504
    .restart local v11       #clipToPadding:Z
    :cond_29
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v48, v0

    add-int/lit8 v36, v48, 0x0

    goto/16 :goto_9

    .line 3527
    .local v6, adapter:Landroid/widget/Adapter;
    .restart local v12       #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v30       #headerSize:I
    .restart local v33       #isHeadView:Z
    .restart local v36       #listTop:I
    :catch_0
    move-exception v20

    .line 3528
    .local v20, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_a

    .line 3529
    .end local v20           #e:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v20

    .line 3530
    .local v20, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_a

    .line 3531
    .end local v20           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v20

    .line 3532
    .local v20, e:Ljava/lang/IllegalAccessException;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_a

    .line 3533
    .end local v20           #e:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v20

    .line 3534
    .local v20, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_a

    .line 3549
    .end local v6           #adapter:Landroid/widget/Adapter;
    .end local v12           #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v20           #e:Ljava/lang/reflect/InvocationTargetException;
    .end local v33           #isHeadView:Z
    .restart local v27       #footerSize:I
    .restart local v47       #view:Landroid/view/View;
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mTopShadowLight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v48, v0

    if-eqz v48, :cond_1a

    .line 3550
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v42

    .line 3551
    .local v42, restoreCount:I
    if-eqz v11, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v46, v0

    .line 3552
    .restart local v46       #top:I
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mTopShadowLight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v50

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mTopShadowLight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v51, v0

    invoke-virtual/range {v51 .. v51}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v51

    add-int v51, v51, v46

    move-object/from16 v0, v48

    move/from16 v1, v49

    move/from16 v2, v46

    move/from16 v3, v50

    move/from16 v4, v51

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3553
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mTopShadowLight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3554
    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_b

    .line 3551
    .end local v46           #top:I
    :cond_2b
    const/16 v46, 0x0

    goto :goto_f
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 2238
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 2239
    .local v1, handled:Z
    if-nez v1, :cond_0

    .line 2241
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 2242
    .local v0, focused:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 2245
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {p0, v2, p1}, Landroid/widget/ListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 2248
    .end local v0           #focused:Landroid/view/View;
    :cond_0
    return v1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 2
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    .line 3572
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 3573
    .local v0, more:Z
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mCachingActive:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p2, Landroid/view/View;->mCachingFailed:Z

    if-eqz v1, :cond_0

    .line 3574
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mCachingActive:Z

    .line 3576
    :cond_0
    return v0
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 1
    .parameter "canvas"
    .parameter "bounds"
    .parameter "childIndex"

    .prologue
    .line 3590
    iget-object v0, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 3592
    .local v0, divider:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3593
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3594
    return-void
.end method

.method drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 4
    .parameter "canvas"
    .parameter "drawable"
    .parameter "bounds"

    .prologue
    .line 3273
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 3275
    .local v0, height:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3276
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3278
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v3

    .line 3279
    .local v1, span:I
    if-ge v1, v0, :cond_0

    .line 3280
    iget v2, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iput v2, p3, Landroid/graphics/Rect;->bottom:I

    .line 3283
    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3284
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3286
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3287
    return-void
.end method

.method drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 4
    .parameter "canvas"
    .parameter "drawable"
    .parameter "bounds"

    .prologue
    .line 3256
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 3258
    .local v0, height:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3259
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3261
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v3

    .line 3262
    .local v1, span:I
    if-ge v1, v0, :cond_0

    .line 3263
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v0

    iput v2, p3, Landroid/graphics/Rect;->top:I

    .line 3266
    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3267
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3269
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3270
    return-void
.end method

.method fillGap(Z)V
    .locals 6
    .parameter "down"

    .prologue
    const/16 v5, 0x22

    .line 665
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 666
    .local v0, count:I
    if-eqz p1, :cond_2

    .line 667
    const/4 v2, 0x0

    .line 668
    .local v2, paddingTop:I
    iget v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v4, v4, 0x22

    if-ne v4, v5, :cond_0

    .line 669
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getListPaddingTop()I

    move-result v2

    .line 671
    :cond_0
    if-lez v0, :cond_1

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int v3, v4, v5

    .line 673
    .local v3, startOffset:I
    :goto_0
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v4, v0

    invoke-direct {p0, v4, v3}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 685
    .end local v2           #paddingTop:I
    :goto_1
    return-void

    .end local v3           #startOffset:I
    .restart local v2       #paddingTop:I
    :cond_1
    move v3, v2

    .line 671
    goto :goto_0

    .line 676
    .end local v2           #paddingTop:I
    :cond_2
    const/4 v1, 0x0

    .line 677
    .local v1, paddingBottom:I
    iget v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v4, v4, 0x22

    if-ne v4, v5, :cond_3

    .line 678
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getListPaddingBottom()I

    move-result v1

    .line 680
    :cond_3
    if-lez v0, :cond_4

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int v3, v4, v5

    .line 682
    .restart local v3       #startOffset:I
    :goto_2
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v4, v3}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    goto :goto_1

    .line 680
    .end local v3           #startOffset:I
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int v3, v4, v1

    goto :goto_2
.end method

.method findMotionRow(I)I
    .locals 4
    .parameter "y"

    .prologue
    .line 1366
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1367
    .local v0, childCount:I
    if-lez v0, :cond_3

    .line 1368
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v3, :cond_1

    .line 1369
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 1370
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1371
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_0

    .line 1372
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    .line 1384
    .end local v1           #i:I
    .end local v2           #v:Landroid/view/View;
    :goto_1
    return v3

    .line 1369
    .restart local v1       #i:I
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1376
    .end local v1           #i:I
    .end local v2           #v:Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v0, -0x1

    .restart local v1       #i:I
    :goto_2
    if-ltz v1, :cond_3

    .line 1377
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1378
    .restart local v2       #v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_2

    .line 1379
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    goto :goto_1

    .line 1376
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1384
    .end local v1           #i:I
    .end local v2           #v:Landroid/view/View;
    :cond_3
    const/4 v3, -0x1

    goto :goto_1
.end method

.method findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter "childToSkip"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3898
    .local p1, where:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    .local p2, predicate:Lcom/android/internal/util/Predicate;,"Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    if-eqz p1, :cond_1

    .line 3899
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3902
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3903
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView$FixedViewInfo;

    iget-object v2, v3, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3905
    .local v2, v:Landroid/view/View;
    if-eq v2, p3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3906
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewByPredicate(Lcom/android/internal/util/Predicate;)Landroid/view/View;

    move-result-object v2

    .line 3908
    if-eqz v2, :cond_0

    .line 3914
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :goto_1
    return-object v2

    .line 3902
    .restart local v0       #i:I
    .restart local v1       #len:I
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3914
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter "childToSkip"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3876
    .local p1, predicate:Lcom/android/internal/util/Predicate;,"Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 3877
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_1

    .line 3878
    iget-object v2, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1, p2}, Landroid/widget/ListView;->findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 3879
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 3888
    .end local v0           #v:Landroid/view/View;
    .local v1, v:Landroid/view/View;
    :goto_0
    return-object v1

    .line 3883
    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1, p2}, Landroid/widget/ListView;->findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 3884
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 3885
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_0

    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_1
    move-object v1, v0

    .line 3888
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_0
.end method

.method findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;
    .locals 4
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3803
    .local p1, where:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 3804
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3807
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3808
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView$FixedViewInfo;

    iget-object v2, v3, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3810
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3811
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3813
    if-eqz v2, :cond_0

    .line 3819
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :goto_1
    return-object v2

    .line 3807
    .restart local v0       #i:I
    .restart local v1       #len:I
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3819
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected findViewTraversal(I)Landroid/view/View;
    .locals 3
    .parameter "id"

    .prologue
    .line 3784
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->findViewTraversal(I)Landroid/view/View;

    move-result-object v0

    .line 3785
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_1

    .line 3786
    iget-object v2, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Landroid/widget/ListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 3787
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 3795
    .end local v0           #v:Landroid/view/View;
    .local v1, v:Landroid/view/View;
    :goto_0
    return-object v1

    .line 3790
    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Landroid/widget/ListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 3791
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 3792
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_0

    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_1
    move-object v1, v0

    .line 3795
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_0
.end method

.method findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter "tag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3849
    .local p1, where:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 3850
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3853
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3854
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView$FixedViewInfo;

    iget-object v2, v3, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3856
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3857
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 3859
    if-eqz v2, :cond_0

    .line 3865
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :goto_1
    return-object v2

    .line 3853
    .restart local v0       #i:I
    .restart local v1       #len:I
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3865
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .locals 3
    .parameter "tag"

    .prologue
    .line 3829
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3830
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_1

    .line 3831
    iget-object v2, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Landroid/widget/ListView;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3832
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 3841
    .end local v0           #v:Landroid/view/View;
    .local v1, v:Landroid/view/View;
    :goto_0
    return-object v1

    .line 3836
    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Landroid/widget/ListView;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3837
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 3838
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_0

    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_1
    move-object v1, v0

    .line 3841
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_0
.end method

.method fullScroll(I)Z
    .locals 5
    .parameter "direction"

    .prologue
    const/4 v4, 0x1

    .line 2471
    const/4 v0, 0x0

    .line 2472
    .local v0, moved:Z
    const/16 v2, 0x21

    if-ne p1, v2, :cond_3

    .line 2473
    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-eqz v2, :cond_1

    .line 2474
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v4}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v1

    .line 2475
    .local v1, position:I
    if-ltz v1, :cond_0

    .line 2476
    iput v4, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 2477
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setSelectionInt(I)V

    .line 2478
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 2480
    :cond_0
    const/4 v0, 0x1

    .line 2494
    .end local v1           #position:I
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2495
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 2496
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 2499
    :cond_2
    return v0

    .line 2482
    :cond_3
    const/16 v2, 0x82

    if-ne p1, v2, :cond_1

    .line 2483
    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    .line 2484
    iget v2, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2, v4}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v1

    .line 2485
    .restart local v1       #position:I
    if-ltz v1, :cond_4

    .line 2486
    const/4 v2, 0x3

    iput v2, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 2487
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setSelectionInt(I)V

    .line 2488
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 2490
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getCheckItemIds()[J
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 3929
    iget-object v8, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v8, :cond_1

    iget-object v8, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 3930
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCheckedItemIds()[J

    move-result-object v5

    .line 3959
    :cond_0
    :goto_0
    return-object v5

    .line 3935
    :cond_1
    iget v8, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v8, :cond_3

    iget-object v8, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v8, :cond_3

    iget-object v8, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v8, :cond_3

    .line 3936
    iget-object v7, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 3937
    .local v7, states:Landroid/util/SparseBooleanArray;
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    .line 3938
    .local v3, count:I
    new-array v5, v3, [J

    .line 3939
    .local v5, ids:[J
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3941
    .local v0, adapter:Landroid/widget/ListAdapter;
    const/4 v1, 0x0

    .line 3942
    .local v1, checkedCount:I
    const/4 v4, 0x0

    .local v4, i:I
    move v2, v1

    .end local v1           #checkedCount:I
    .local v2, checkedCount:I
    :goto_1
    if-ge v4, v3, :cond_2

    .line 3943
    invoke-virtual {v7, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3944
    add-int/lit8 v1, v2, 0x1

    .end local v2           #checkedCount:I
    .restart local v1       #checkedCount:I
    invoke-virtual {v7, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    aput-wide v8, v5, v2

    .line 3942
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v2, v1

    .end local v1           #checkedCount:I
    .restart local v2       #checkedCount:I
    goto :goto_1

    .line 3950
    :cond_2
    if-eq v2, v3, :cond_0

    .line 3953
    new-array v6, v2, [J

    .line 3954
    .local v6, result:[J
    invoke-static {v5, v10, v6, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v5, v6

    .line 3956
    goto :goto_0

    .line 3959
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v2           #checkedCount:I
    .end local v3           #count:I
    .end local v4           #i:I
    .end local v5           #ids:[J
    .end local v6           #result:[J
    .end local v7           #states:Landroid/util/SparseBooleanArray;
    :cond_3
    new-array v5, v10, [J

    goto :goto_0

    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    .restart local v2       #checkedCount:I
    .restart local v3       #count:I
    .restart local v4       #i:I
    .restart local v5       #ids:[J
    .restart local v7       #states:Landroid/util/SparseBooleanArray;
    :cond_4
    move v1, v2

    .end local v2           #checkedCount:I
    .restart local v1       #checkedCount:I
    goto :goto_2
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 3602
    iget-object v0, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerHeight()I
    .locals 1

    .prologue
    .line 3627
    iget v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    return v0
.end method

.method public getFooterViewsCount()I
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemsCanFocus()Z
    .locals 1

    .prologue
    .line 3218
    iget-boolean v0, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    return v0
.end method

.method public getMaxScrollAmount()I
    .locals 3

    .prologue
    .line 218
    const v0, 0x3ea8f5c3

    iget v1, p0, Landroid/view/View;->mBottom:I

    iget v2, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getOverscrollFooter()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 3704
    iget-object v0, p0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getOverscrollHeader()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 3685
    iget-object v0, p0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public isOpaque()Z
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 3223
    iget-boolean v5, p0, Landroid/widget/AbsListView;->mCachingActive:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Landroid/widget/ListView;->mIsCacheColorOpaque:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Landroid/widget/ListView;->mDividerIsOpaque:Z

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->hasOpaqueScrollbars()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/view/View;->isOpaque()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_1
    const/4 v4, 0x1

    .line 3225
    .local v4, retValue:Z
    :goto_0
    if-eqz v4, :cond_3

    .line 3227
    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v5, :cond_5

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v5, Landroid/graphics/Rect;->top:I

    .line 3228
    .local v3, listTop:I
    :goto_1
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3229
    .local v0, first:Landroid/view/View;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    if-le v5, v3, :cond_6

    :cond_2
    move v4, v6

    .line 3239
    .end local v0           #first:Landroid/view/View;
    .end local v3           #listTop:I
    .end local v4           #retValue:Z
    :cond_3
    :goto_2
    return v4

    :cond_4
    move v4, v6

    .line 3223
    goto :goto_0

    .line 3227
    .restart local v4       #retValue:Z
    :cond_5
    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    goto :goto_1

    .line 3232
    .restart local v0       #first:Landroid/view/View;
    .restart local v3       #listTop:I
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v5, :cond_8

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    :goto_3
    sub-int v2, v7, v5

    .line 3234
    .local v2, listBottom:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3235
    .local v1, last:Landroid/view/View;
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v5

    if-ge v5, v2, :cond_3

    :cond_7
    move v4, v6

    .line 3236
    goto :goto_2

    .line 3232
    .end local v1           #last:Landroid/view/View;
    .end local v2           #listBottom:I
    :cond_8
    iget v5, p0, Landroid/view/View;->mPaddingBottom:I

    goto :goto_3
.end method

.method protected layoutChildren()V
    .locals 40

    .prologue
    .line 1546
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 1547
    .local v14, blockLayoutRequests:Z
    if-nez v14, :cond_1

    .line 1548
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 1554
    const/16 v33, 0x0

    .line 1555
    .local v33, restoreOffset:I
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->shouldRestoreOverScroll()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1556
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mCurrentOverScrollDistance:I

    neg-int v0, v3

    move/from16 v33, v0

    .line 1558
    :cond_0
    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 1560
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 1562
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v3, :cond_2

    .line 1563
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->resetList()V

    .line 1564
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1893
    if-nez v14, :cond_1

    .line 1894
    :goto_0
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 1897
    .end local v33           #restoreOffset:I
    :cond_1
    return-void

    .line 1568
    .restart local v33       #restoreOffset:I
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->top:I

    .line 1569
    .local v7, childrenTop:I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mBottom:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v38, v0

    sub-int v3, v3, v38

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v38, v0

    sub-int v8, v3, v38

    .line 1571
    .local v8, childrenBottom:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v17

    .line 1572
    .local v17, childCount:I
    const/16 v27, 0x0

    .line 1573
    .local v27, index:I
    const/4 v6, 0x0

    .line 1576
    .local v6, delta:I
    const/4 v4, 0x0

    .line 1577
    .local v4, oldSel:Landroid/view/View;
    const/16 v30, 0x0

    .line 1578
    .local v30, oldFirst:Landroid/view/View;
    const/4 v5, 0x0

    .line 1580
    .local v5, newSel:Landroid/view/View;
    const/16 v22, 0x0

    .line 1582
    .local v22, focusLayoutRestoreView:Landroid/view/View;
    const/4 v11, 0x0

    .line 1583
    .local v11, accessibilityFocusLayoutRestoreNode:Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v12, 0x0

    .line 1584
    .local v12, accessibilityFocusLayoutRestoreView:Landroid/view/View;
    const/4 v13, -0x1

    .line 1587
    .local v13, accessibilityFocusPosition:I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLayoutMode:I

    packed-switch v3, :pswitch_data_0

    .line 1602
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v38, v0

    sub-int v27, v3, v38

    .line 1603
    if-ltz v27, :cond_3

    move/from16 v0, v27

    move/from16 v1, v17

    if-ge v0, v1, :cond_3

    .line 1604
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1608
    :cond_3
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    .line 1610
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    if-ltz v3, :cond_4

    .line 1611
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v38, v0

    sub-int v6, v3, v38

    .line 1615
    :cond_4
    add-int v3, v27, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1619
    :cond_5
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    move/from16 v19, v0

    .line 1620
    .local v19, dataChanged:Z
    if-eqz v19, :cond_6

    .line 1621
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->handleDataChanged()V

    .line 1626
    :cond_6
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AdapterView;->mItemCount:I

    if-nez v3, :cond_7

    .line 1627
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->resetList()V

    .line 1628
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 1893
    if-nez v14, :cond_1

    goto/16 :goto_0

    .line 1589
    .end local v19           #dataChanged:Z
    :pswitch_1
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v38, v0

    sub-int v27, v3, v38

    .line 1590
    if-ltz v27, :cond_5

    move/from16 v0, v27

    move/from16 v1, v17

    if-ge v0, v1, :cond_5

    .line 1591
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    goto :goto_1

    .line 1630
    .restart local v19       #dataChanged:Z
    :cond_7
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AdapterView;->mItemCount:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v38, v0

    invoke-interface/range {v38 .. v38}, Landroid/widget/ListAdapter;->getCount()I

    move-result v38

    move/from16 v0, v38

    if-eq v3, v0, :cond_9

    .line 1631
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "The content of the adapter has changed but ListView did not receive a notification. Make sure the content of your adapter is not modified from a background thread, but only from the UI thread. [in ListView("

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    move-result v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, ", "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, ") with Adapter("

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, ")]"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1893
    .end local v4           #oldSel:Landroid/view/View;
    .end local v5           #newSel:Landroid/view/View;
    .end local v6           #delta:I
    .end local v7           #childrenTop:I
    .end local v8           #childrenBottom:I
    .end local v11           #accessibilityFocusLayoutRestoreNode:Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v12           #accessibilityFocusLayoutRestoreView:Landroid/view/View;
    .end local v13           #accessibilityFocusPosition:I
    .end local v17           #childCount:I
    .end local v19           #dataChanged:Z
    .end local v22           #focusLayoutRestoreView:Landroid/view/View;
    .end local v27           #index:I
    .end local v30           #oldFirst:Landroid/view/View;
    :catchall_0
    move-exception v3

    if-nez v14, :cond_8

    .line 1894
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 1893
    :cond_8
    throw v3

    .line 1638
    .restart local v4       #oldSel:Landroid/view/View;
    .restart local v5       #newSel:Landroid/view/View;
    .restart local v6       #delta:I
    .restart local v7       #childrenTop:I
    .restart local v8       #childrenBottom:I
    .restart local v11       #accessibilityFocusLayoutRestoreNode:Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v12       #accessibilityFocusLayoutRestoreView:Landroid/view/View;
    .restart local v13       #accessibilityFocusPosition:I
    .restart local v17       #childCount:I
    .restart local v19       #dataChanged:Z
    .restart local v22       #focusLayoutRestoreView:Landroid/view/View;
    .restart local v27       #index:I
    .restart local v30       #oldFirst:Landroid/view/View;
    :cond_9
    :try_start_2
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 1642
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v20, v0

    .line 1643
    .local v20, firstPosition:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v32, v0

    .line 1646
    .local v32, recycleBin:Landroid/widget/AbsListView$RecycleBin;
    const/16 v21, 0x0

    .line 1650
    .local v21, focusLayoutRestoreDirectChild:Landroid/view/View;
    if-eqz v19, :cond_a

    .line 1668
    add-int/lit8 v26, v17, -0x1

    .local v26, i:I
    :goto_2
    if-ltz v26, :cond_b

    .line 1669
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    add-int v38, v20, v26

    move-object/from16 v0, v32

    move/from16 v1, v38

    invoke-virtual {v0, v3, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1668
    add-int/lit8 v26, v26, -0x1

    goto :goto_2

    .line 1676
    .end local v26           #i:I
    :cond_a
    move-object/from16 v0, v32

    move/from16 v1, v17

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView$RecycleBin;->fillActiveViews(II)V

    .line 1683
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v25

    .line 1684
    .local v25, focusedChild:Landroid/view/View;
    if-eqz v25, :cond_e

    .line 1689
    if-eqz v19, :cond_c

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/widget/ListView;->isDirectChildHeaderOrFooter(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1690
    :cond_c
    move-object/from16 v21, v25

    .line 1692
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v22

    .line 1693
    if-eqz v22, :cond_d

    .line 1695
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 1698
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->requestFocus()Z

    .line 1702
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v37

    .line 1703
    .local v37, viewRootImpl:Landroid/view/ViewRootImpl;
    if-eqz v37, :cond_10

    .line 1704
    invoke-virtual/range {v37 .. v37}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v10

    .line 1705
    .local v10, accessFocusedView:Landroid/view/View;
    if-eqz v10, :cond_10

    .line 1706
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Landroid/widget/ListView;->findAccessibilityFocusedChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v9

    .line 1708
    .local v9, accessFocusedChild:Landroid/view/View;
    if-eqz v9, :cond_10

    .line 1709
    if-eqz v19, :cond_f

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Landroid/widget/ListView;->isDirectChildHeaderOrFooter(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 1713
    :cond_f
    move-object v12, v10

    .line 1714
    invoke-virtual/range {v37 .. v37}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedVirtualView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v11

    .line 1726
    .end local v9           #accessFocusedChild:Landroid/view/View;
    .end local v10           #accessFocusedView:Landroid/view/View;
    :cond_10
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->detachAllViewsFromParent()V

    .line 1727
    invoke-virtual/range {v32 .. v32}, Landroid/widget/AbsListView$RecycleBin;->removeSkippedScrap()V

    .line 1729
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLayoutMode:I

    packed-switch v3, :pswitch_data_1

    .line 1756
    if-nez v17, :cond_20

    .line 1757
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v3, :cond_1f

    .line 1758
    const/4 v3, 0x0

    const/16 v38, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v3, v1}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v31

    .line 1759
    .local v31, position:I
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 1760
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/widget/ListView;->fillFromTop(I)Landroid/view/View;

    move-result-object v35

    .line 1786
    .end local v7           #childrenTop:I
    .end local v31           #position:I
    .local v35, sel:Landroid/view/View;
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/ListView;->mSelectToBottom:Z

    if-eqz v3, :cond_25

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_25

    .line 1788
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    .line 1789
    .local v28, lastChild:Landroid/view/View;
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBottom()I

    move-result v38

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v39

    sub-int v38, v38, v39

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mDockingBottomHeight:I

    move/from16 v39, v0

    sub-int v38, v38, v39

    sub-int v15, v3, v38

    .line 1790
    .local v15, bottomDelta:I
    if-lez v15, :cond_11

    .line 1792
    neg-int v3, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->offsetChildrenTopAndBottom(I)V

    .line 1794
    :cond_11
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/widget/ListView;->mSelectToBottom:Z

    .line 1799
    .end local v15           #bottomDelta:I
    .end local v28           #lastChild:Landroid/view/View;
    :cond_12
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/AbsListView;->mCenterContent:Z

    if-eqz v3, :cond_14

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->shouldCenterContent()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1801
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getTop()I

    move-result v38

    sub-int v18, v3, v38

    .line 1802
    .local v18, childrenHeight:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v38, v0

    sub-int v3, v3, v38

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v38, v0

    sub-int v29, v3, v38

    .line 1803
    .local v29, listHeight:I
    sub-int v3, v29, v18

    div-int/lit8 v36, v3, 0x2

    .line 1804
    .local v36, trackOffset:I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v3, :cond_13

    move/from16 v0, v36

    neg-int v0, v0

    move/from16 v36, v0

    .line 1805
    :cond_13
    move-object/from16 v0, p0

    move/from16 v1, v36

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    .line 1809
    .end local v18           #childrenHeight:I
    .end local v29           #listHeight:I
    .end local v36           #trackOffset:I
    :cond_14
    invoke-virtual/range {v32 .. v32}, Landroid/widget/AbsListView$RecycleBin;->scrapActiveViews()V

    .line 1811
    if-eqz v35, :cond_29

    .line 1814
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v3, :cond_28

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-nez v3, :cond_28

    .line 1815
    move-object/from16 v0, v35

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_15

    if-eqz v22, :cond_15

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    move-result v3

    if-nez v3, :cond_16

    :cond_15
    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->requestFocus()Z

    move-result v3

    if-eqz v3, :cond_26

    :cond_16
    const/16 v23, 0x1

    .line 1818
    .local v23, focusWasTaken:Z
    :goto_6
    if-nez v23, :cond_27

    .line 1822
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v24

    .line 1823
    .local v24, focused:Landroid/view/View;
    if-eqz v24, :cond_17

    .line 1824
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->clearFocus()V

    .line 1826
    :cond_17
    const/4 v3, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v3, v1}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 1834
    .end local v23           #focusWasTaken:Z
    .end local v24           #focused:Landroid/view/View;
    :goto_7
    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getTop()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 1852
    :cond_18
    :goto_8
    if-eqz v11, :cond_2c

    .line 1853
    const/16 v3, 0x40

    invoke-virtual {v11, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    .line 1869
    :cond_19
    :goto_9
    if-eqz v22, :cond_1a

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_1a

    .line 1871
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 1874
    :cond_1a
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 1875
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 1876
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    if-eqz v3, :cond_1b

    .line 1877
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1878
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 1880
    :cond_1b
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 1881
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 1883
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->updateScrollIndicators()V

    .line 1885
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v3, :cond_1c

    .line 1886
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    .line 1889
    :cond_1c
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->restoreOverScroll(I)V

    .line 1891
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 1893
    if-nez v14, :cond_1

    goto/16 :goto_0

    .line 1719
    .end local v35           #sel:Landroid/view/View;
    .restart local v7       #childrenTop:I
    .restart local v9       #accessFocusedChild:Landroid/view/View;
    .restart local v10       #accessFocusedView:Landroid/view/View;
    :cond_1d
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v13

    goto/16 :goto_3

    .line 1731
    .end local v9           #accessFocusedChild:Landroid/view/View;
    .end local v10           #accessFocusedView:Landroid/view/View;
    :pswitch_2
    if-eqz v5, :cond_1e

    .line 1732
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v7, v8}, Landroid/widget/ListView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v35

    .restart local v35       #sel:Landroid/view/View;
    goto/16 :goto_4

    .line 1734
    .end local v35           #sel:Landroid/view/View;
    :cond_1e
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Landroid/widget/ListView;->fillFromMiddle(II)Landroid/view/View;

    move-result-object v35

    .line 1736
    .restart local v35       #sel:Landroid/view/View;
    goto/16 :goto_4

    .line 1738
    .end local v35           #sel:Landroid/view/View;
    :pswitch_3
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AdapterView;->mSyncPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSpecificTop:I

    move/from16 v38, v0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-direct {v0, v3, v1}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v35

    .line 1739
    .restart local v35       #sel:Landroid/view/View;
    goto/16 :goto_4

    .line 1741
    .end local v35           #sel:Landroid/view/View;
    :pswitch_4
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v8}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v35

    .line 1742
    .restart local v35       #sel:Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    goto/16 :goto_4

    .line 1745
    .end local v35           #sel:Landroid/view/View;
    :pswitch_5
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 1746
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/widget/ListView;->fillFromTop(I)Landroid/view/View;

    move-result-object v35

    .line 1747
    .restart local v35       #sel:Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    goto/16 :goto_4

    .line 1750
    .end local v35           #sel:Landroid/view/View;
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->reconcileSelectedPosition()I

    move-result v3

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSpecificTop:I

    move/from16 v38, v0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-direct {v0, v3, v1}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v35

    .line 1751
    .restart local v35       #sel:Landroid/view/View;
    goto/16 :goto_4

    .end local v35           #sel:Landroid/view/View;
    :pswitch_7
    move-object/from16 v3, p0

    .line 1753
    invoke-direct/range {v3 .. v8}, Landroid/widget/ListView;->moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;

    move-result-object v35

    .line 1754
    .restart local v35       #sel:Landroid/view/View;
    goto/16 :goto_4

    .line 1762
    .end local v35           #sel:Landroid/view/View;
    :cond_1f
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v3, v1}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v31

    .line 1763
    .restart local v31       #position:I
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 1766
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mDockingBottomHeight:I

    move/from16 v38, v0

    sub-int v38, v8, v38

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-direct {v0, v3, v1}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v35

    .line 1767
    .restart local v35       #sel:Landroid/view/View;
    goto/16 :goto_4

    .line 1769
    .end local v31           #position:I
    .end local v35           #sel:Landroid/view/View;
    :cond_20
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ltz v3, :cond_22

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v38, v0

    move/from16 v0, v38

    if-ge v3, v0, :cond_22

    .line 1770
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-nez v4, :cond_21

    .end local v7           #childrenTop:I
    :goto_a
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v7}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v35

    .restart local v35       #sel:Landroid/view/View;
    goto/16 :goto_4

    .end local v35           #sel:Landroid/view/View;
    .restart local v7       #childrenTop:I
    :cond_21
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v7

    goto :goto_a

    .line 1772
    :cond_22
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v38, v0

    move/from16 v0, v38

    if-ge v3, v0, :cond_24

    .line 1773
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-nez v30, :cond_23

    .end local v7           #childrenTop:I
    :goto_b
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v7}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v35

    .restart local v35       #sel:Landroid/view/View;
    goto/16 :goto_4

    .end local v35           #sel:Landroid/view/View;
    .restart local v7       #childrenTop:I
    :cond_23
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getTop()I

    move-result v7

    goto :goto_b

    .line 1776
    :cond_24
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v7}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v35

    .restart local v35       #sel:Landroid/view/View;
    goto/16 :goto_4

    .line 1795
    .end local v7           #childrenTop:I
    :cond_25
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/ListView;->mSelectToBottom:Z

    if-eqz v3, :cond_12

    .line 1796
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/widget/ListView;->mSelectToBottom:Z

    goto/16 :goto_5

    .line 1815
    :cond_26
    const/16 v23, 0x0

    goto/16 :goto_6

    .line 1828
    .restart local v23       #focusWasTaken:Z
    :cond_27
    const/4 v3, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 1829
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_7

    .line 1832
    .end local v23           #focusWasTaken:Z
    :cond_28
    const/4 v3, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v3, v1}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_7

    .line 1836
    :cond_29
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mTouchMode:I

    if-lez v3, :cond_2b

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mTouchMode:I

    const/16 v38, 0x3

    move/from16 v0, v38

    if-ge v3, v0, :cond_2b

    .line 1837
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v38, v0

    sub-int v3, v3, v38

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 1838
    .local v16, child:Landroid/view/View;
    if-eqz v16, :cond_2a

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v3, v1}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 1846
    .end local v16           #child:Landroid/view/View;
    :cond_2a
    :goto_c
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_18

    if-eqz v22, :cond_18

    .line 1847
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_8

    .line 1840
    :cond_2b
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 1841
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_c

    .line 1855
    :cond_2c
    if-eqz v12, :cond_2d

    .line 1856
    invoke-virtual {v12}, Landroid/view/View;->requestAccessibilityFocus()Z

    goto/16 :goto_9

    .line 1857
    :cond_2d
    const/4 v3, -0x1

    if-eq v13, v3, :cond_19

    .line 1859
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v3, v13, v3

    const/16 v38, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v39

    add-int/lit8 v39, v39, -0x1

    move/from16 v0, v38

    move/from16 v1, v39

    invoke-static {v3, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v31

    .line 1861
    .restart local v31       #position:I
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v34

    .line 1862
    .local v34, restoreView:Landroid/view/View;
    if-eqz v34, :cond_19

    .line 1863
    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->requestAccessibilityFocus()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_9

    .line 1587
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1729
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_7
    .end packed-switch
.end method

.method lookForSelectablePosition(IZ)I
    .locals 4
    .parameter "position"
    .parameter "lookDown"

    .prologue
    const/4 v2, -0x1

    .line 2184
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2185
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2211
    :cond_0
    :goto_0
    return v2

    .line 2189
    :cond_1
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 2190
    .local v1, count:I
    iget-boolean v3, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    if-nez v3, :cond_4

    .line 2191
    if-eqz p2, :cond_2

    .line 2192
    const/4 v3, 0x0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2193
    :goto_1
    if-ge p1, v1, :cond_3

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2194
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 2197
    :cond_2
    add-int/lit8 v3, v1, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2198
    :goto_2
    if-ltz p1, :cond_3

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2199
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 2203
    :cond_3
    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    move v2, p1

    .line 2206
    goto :goto_0

    .line 2208
    :cond_4
    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    move v2, p1

    .line 2211
    goto :goto_0
.end method

.method final measureHeightOfChildren(IIIII)I
    .locals 12
    .parameter "widthMeasureSpec"
    .parameter "startPosition"
    .parameter "endPosition"
    .parameter "maxHeight"
    .parameter "disallowPartialChildPosition"

    .prologue
    .line 1305
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 1306
    .local v1, adapter:Landroid/widget/ListAdapter;
    if-nez v1, :cond_1

    .line 1307
    iget-object v10, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int v6, v10, v11

    .line 1361
    :cond_0
    :goto_0
    return v6

    .line 1311
    :cond_1
    iget-object v10, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int v9, v10, v11

    .line 1312
    .local v9, returnedHeight:I
    iget v10, p0, Landroid/widget/ListView;->mDividerHeight:I

    if-lez v10, :cond_6

    iget-object v10, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_6

    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 1315
    .local v3, dividerHeight:I
    :goto_1
    const/4 v6, 0x0

    .line 1320
    .local v6, prevHeightWithoutPartialChild:I
    const/4 v10, -0x1

    if-ne p3, v10, :cond_2

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    add-int/lit8 p3, v10, -0x1

    .line 1321
    :cond_2
    iget-object v7, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 1322
    .local v7, recycleBin:Landroid/widget/AbsListView$RecycleBin;
    invoke-virtual {p0}, Landroid/widget/ListView;->recycleOnMeasure()Z

    move-result v8

    .line 1323
    .local v8, recyle:Z
    iget-object v5, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    .line 1325
    .local v5, isScrap:[Z
    move v4, p2

    .local v4, i:I
    :goto_2
    if-gt v4, p3, :cond_9

    .line 1326
    invoke-virtual {p0, v4, v5}, Landroid/widget/AbsListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v2

    .line 1328
    .local v2, child:Landroid/view/View;
    invoke-direct {p0, v2, v4, p1}, Landroid/widget/ListView;->measureScrapChild(Landroid/view/View;II)V

    .line 1330
    if-lez v4, :cond_3

    .line 1332
    add-int/2addr v9, v3

    .line 1336
    :cond_3
    if-eqz v8, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/AbsListView$LayoutParams;

    iget v10, v10, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v7, v10}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1338
    const/4 v10, -0x1

    invoke-virtual {v7, v2, v10}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1341
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v9, v10

    .line 1343
    move/from16 v0, p4

    if-lt v9, v0, :cond_7

    .line 1346
    if-ltz p5, :cond_5

    move/from16 v0, p5

    if-le v4, v0, :cond_5

    if-lez v6, :cond_5

    move/from16 v0, p4

    if-ne v9, v0, :cond_0

    :cond_5
    move/from16 v6, p4

    goto :goto_0

    .line 1312
    .end local v2           #child:Landroid/view/View;
    .end local v3           #dividerHeight:I
    .end local v4           #i:I
    .end local v5           #isScrap:[Z
    .end local v6           #prevHeightWithoutPartialChild:I
    .end local v7           #recycleBin:Landroid/widget/AbsListView$RecycleBin;
    .end local v8           #recyle:Z
    :cond_6
    const/4 v3, 0x0

    goto :goto_1

    .line 1354
    .restart local v2       #child:Landroid/view/View;
    .restart local v3       #dividerHeight:I
    .restart local v4       #i:I
    .restart local v5       #isScrap:[Z
    .restart local v6       #prevHeightWithoutPartialChild:I
    .restart local v7       #recycleBin:Landroid/widget/AbsListView$RecycleBin;
    .restart local v8       #recyle:Z
    :cond_7
    if-ltz p5, :cond_8

    move/from16 v0, p5

    if-lt v4, v0, :cond_8

    .line 1355
    move v6, v9

    .line 1325
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v2           #child:Landroid/view/View;
    :cond_9
    move v6, v9

    .line 1361
    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "newConfig"

    .prologue
    .line 4592
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4593
    iget-boolean v0, p0, Landroid/widget/ListView;->mIsMeizuPartitionStyle:Z

    if-eqz v0, :cond_0

    .line 4594
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050219

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105021a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x105021f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 4600
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 3766
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 3768
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 3769
    .local v0, count:I
    if-lez v0, :cond_1

    .line 3770
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3771
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 3770
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3773
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->removeAllViews()V

    .line 3775
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 15
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 3709
    invoke-super/range {p0 .. p3}, Landroid/widget/AbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 3711
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3712
    .local v2, adapter:Landroid/widget/ListAdapter;
    const/4 v5, -0x1

    .line 3713
    .local v5, closetChildIndex:I
    const/4 v4, 0x0

    .line 3714
    .local v4, closestChildTop:I
    if-eqz v2, :cond_3

    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    .line 3715
    iget v12, p0, Landroid/view/View;->mScrollX:I

    iget v13, p0, Landroid/view/View;->mScrollY:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Rect;->offset(II)V

    .line 3719
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v12

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    iget v14, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v13, v14

    if-ge v12, v13, :cond_0

    .line 3720
    const/4 v12, 0x0

    iput v12, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 3721
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 3726
    :cond_0
    iget-object v11, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 3727
    .local v11, otherRect:Landroid/graphics/Rect;
    const v9, 0x7fffffff

    .line 3728
    .local v9, minDistance:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 3729
    .local v3, childCount:I
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 3731
    .local v7, firstPosition:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v3, :cond_3

    .line 3733
    add-int v12, v7, v8

    invoke-interface {v2, v12}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v12

    if-nez v12, :cond_2

    .line 3731
    :cond_1
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 3737
    :cond_2
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 3738
    .local v10, other:Landroid/view/View;
    invoke-virtual {v10, v11}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3739
    invoke-virtual {p0, v10, v11}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3740
    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-static {v0, v11, v1}, Landroid/widget/ListView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v6

    .line 3742
    .local v6, distance:I
    if-ge v6, v9, :cond_1

    .line 3743
    move v9, v6

    .line 3744
    move v5, v8

    .line 3745
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v4

    goto :goto_1

    .line 3750
    .end local v3           #childCount:I
    .end local v6           #distance:I
    .end local v7           #firstPosition:I
    .end local v8           #i:I
    .end local v9           #minDistance:I
    .end local v10           #other:Landroid/view/View;
    .end local v11           #otherRect:Landroid/graphics/Rect;
    :cond_3
    if-ltz v5, :cond_4

    .line 3751
    iget v12, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v12, v5

    invoke-virtual {p0, v12, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 3755
    :goto_2
    return-void

    .line 3753
    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    goto :goto_2
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 3964
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 3965
    const-class v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 3966
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 3970
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 3971
    const-class v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 3972
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    const/4 v4, -0x1

    .line 4159
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v0, v3

    .line 4160
    .local v0, dragMotionX:I
    iget-object v2, p0, Landroid/widget/ListView;->mDragRegionRect:Landroid/graphics/Rect;

    .line 4162
    .local v2, dragRegion:Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Landroid/widget/ListView;->mEnableDragSelection:Z

    if-eqz v3, :cond_0

    iget v3, v2, Landroid/graphics/Rect;->left:I

    if-lt v0, v3, :cond_0

    iget v3, v2, Landroid/graphics/Rect;->right:I

    if-gt v0, v3, :cond_0

    .line 4164
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v1, v3

    .line 4165
    .local v1, dragMotionY:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    packed-switch v3, :pswitch_data_0

    .line 4189
    .end local v1           #dragMotionY:I
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    :goto_1
    return v3

    .line 4167
    .restart local v1       #dragMotionY:I
    :pswitch_1
    iget v3, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-eq v3, v4, :cond_1

    iget-boolean v3, p0, Landroid/widget/AbsListView;->mWaitingForSpringBack:Z

    if-eqz v3, :cond_0

    .line 4168
    :cond_1
    iput v0, p0, Landroid/widget/ListView;->mIntercepeDragMotionX:I

    .line 4169
    iput v1, p0, Landroid/widget/ListView;->mIntercepeDragMotionY:I

    .line 4170
    iput v4, p0, Landroid/widget/ListView;->mLongPressPosition:I

    goto :goto_0

    .line 4175
    :pswitch_2
    iget v3, p0, Landroid/widget/ListView;->mIntercepeDragMotionY:I

    sub-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Landroid/widget/ListView;->mDragSlop:I

    if-le v3, v4, :cond_0

    .line 4177
    iget v3, p0, Landroid/widget/ListView;->mIntercepeDragMotionY:I

    invoke-direct {p0, v3}, Landroid/widget/ListView;->onDragMotionChanged(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4179
    iget v3, p0, Landroid/widget/ListView;->mDragMotionPosition:I

    iput v3, p0, Landroid/widget/ListView;->mDragDownPosition:I

    .line 4180
    iget v3, p0, Landroid/widget/ListView;->mIntercepeDragMotionY:I

    iput v3, p0, Landroid/widget/ListView;->mDragMotionY:I

    .line 4181
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/ListView;->mIsBeginDragSelect:Z

    .line 4182
    const/4 v3, 0x1

    goto :goto_1

    .line 4165
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2253
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    .line 2258
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2263
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 13
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1193
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->onMeasure(II)V

    .line 1195
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 1196
    .local v11, widthMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 1197
    .local v10, heightMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    .line 1198
    .local v12, widthSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 1200
    .local v4, heightSize:I
    const/4 v9, 0x0

    .line 1201
    .local v9, childWidth:I
    const/4 v7, 0x0

    .line 1202
    .local v7, childHeight:I
    const/4 v8, 0x0

    .line 1204
    .local v8, childState:I
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_5

    move v0, v2

    :goto_0
    iput v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 1205
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_2

    if-eqz v11, :cond_0

    if-nez v10, :cond_2

    .line 1207
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Landroid/widget/AbsListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v6

    .line 1209
    .local v6, child:Landroid/view/View;
    invoke-direct {p0, v6, v2, p1}, Landroid/widget/ListView;->measureScrapChild(Landroid/view/View;II)V

    .line 1211
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 1212
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1213
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    invoke-static {v8, v0}, Landroid/widget/ListView;->combineMeasuredStates(II)I

    move-result v8

    .line 1215
    invoke-virtual {p0}, Landroid/widget/ListView;->recycleOnMeasure()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v1, v0}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1217
    iget-object v0, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0, v6, v3}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1220
    :cond_1
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mEnableForEditTextPreference:Z

    if-eqz v0, :cond_2

    .line 1221
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 1224
    .end local v6           #child:Landroid/view/View;
    :cond_2
    if-nez v11, :cond_6

    .line 1225
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, v9

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalScrollbarWidth()I

    move-result v1

    add-int v12, v0, v1

    .line 1231
    :goto_1
    if-nez v10, :cond_3

    .line 1232
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    add-int/2addr v0, v7

    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int v4, v0, v1

    .line 1236
    :cond_3
    const/high16 v0, -0x8000

    if-ne v10, v0, :cond_4

    move-object v0, p0

    move v1, p1

    move v5, v3

    .line 1238
    invoke-virtual/range {v0 .. v5}, Landroid/widget/ListView;->measureHeightOfChildren(IIIII)I

    move-result v4

    .line 1241
    :cond_4
    invoke-virtual {p0, v12, v4}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 1242
    iput p1, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    .line 1243
    return-void

    .line 1204
    :cond_5
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    goto/16 :goto_0

    .line 1228
    :cond_6
    const/high16 v0, -0x100

    and-int/2addr v0, v8

    or-int/2addr v12, v0

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 8
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1161
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-lez v5, :cond_1

    .line 1162
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 1163
    .local v2, focusedChild:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 1164
    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v6

    add-int v1, v5, v6

    .line 1165
    .local v1, childPosition:I
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1166
    .local v0, childBottom:I
    const/4 v5, 0x0

    iget v6, p0, Landroid/view/View;->mPaddingTop:I

    sub-int v6, p2, v6

    sub-int v6, v0, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1167
    .local v3, offset:I
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v4, v5, v3

    .line 1168
    .local v4, top:I
    iget-object v5, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-nez v5, :cond_0

    .line 1169
    new-instance v5, Landroid/widget/ListView$FocusSelector;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Landroid/widget/ListView$FocusSelector;-><init>(Landroid/widget/ListView;Landroid/widget/ListView$1;)V

    iput-object v5, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    .line 1171
    :cond_0
    iget-object v5, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    invoke-virtual {v5, v1, v4}, Landroid/widget/ListView$FocusSelector;->setup(II)Landroid/widget/ListView$FocusSelector;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1174
    .end local v0           #childBottom:I
    .end local v1           #childPosition:I
    .end local v2           #focusedChild:Landroid/view/View;
    .end local v3           #offset:I
    .end local v4           #top:I
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->onSizeChanged(IIII)V

    .line 1176
    iget-object v5, p0, Landroid/widget/ListView;->mDragRegionRect:Landroid/graphics/Rect;

    if-nez v5, :cond_2

    .line 1177
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Landroid/widget/ListView;->mDragRegionRect:Landroid/graphics/Rect;

    .line 1180
    :cond_2
    iget-object v5, p0, Landroid/widget/AbsListView;->mCheckRegionRect:Landroid/graphics/Rect;

    if-eqz v5, :cond_3

    .line 1181
    iget-object v5, p0, Landroid/widget/ListView;->mDragRegionRect:Landroid/graphics/Rect;

    iget-object v6, p0, Landroid/widget/AbsListView;->mCheckRegionRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1188
    :goto_0
    return-void

    .line 1183
    :cond_3
    iget-object v5, p0, Landroid/widget/ListView;->mDragRegionRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v6

    iget v7, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 1184
    iget-object v5, p0, Landroid/widget/ListView;->mDragRegionRect:Landroid/graphics/Rect;

    iget-object v6, p0, Landroid/widget/ListView;->mDragRegionRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget v7, p0, Landroid/widget/AbsListView;->mDefaultCheckWidth:I

    sub-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 1185
    iget-object v5, p0, Landroid/widget/ListView;->mDragRegionRect:Landroid/graphics/Rect;

    iget v6, p0, Landroid/view/View;->mPaddingTop:I

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 1186
    iget-object v5, p0, Landroid/widget/ListView;->mDragRegionRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v6

    iget v7, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 15
    .parameter "ev"

    .prologue
    .line 4194
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v11, v0

    .line 4195
    .local v11, dragMotionY:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v10, v0

    .line 4196
    .local v10, dragMotionX:I
    iget-object v12, p0, Landroid/widget/ListView;->mDragRegionRect:Landroid/graphics/Rect;

    .line 4197
    .local v12, dragRegion:Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v8, v0, 0xff

    .line 4198
    .local v8, action:I
    packed-switch v8, :pswitch_data_0

    .line 4248
    :cond_0
    :goto_0
    iget-boolean v0, p0, Landroid/widget/ListView;->mIsBeginDragSelect:Z

    if-eqz v0, :cond_19

    .line 4249
    packed-switch v8, :pswitch_data_1

    .line 4330
    :goto_1
    const/4 v0, 0x1

    .line 4332
    :goto_2
    return v0

    .line 4200
    :pswitch_0
    iget-boolean v0, p0, Landroid/widget/ListView;->mEnableDragSelection:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/ListView;->mIsBeginDragSelect:Z

    if-nez v0, :cond_0

    iget v0, v12, Landroid/graphics/Rect;->left:I

    if-lt v10, v0, :cond_0

    iget v0, v12, Landroid/graphics/Rect;->right:I

    if-gt v10, v0, :cond_0

    .line 4204
    invoke-direct {p0, v11}, Landroid/widget/ListView;->onDragMotionChanged(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4205
    iput v11, p0, Landroid/widget/ListView;->mDragMotionY:I

    goto :goto_0

    .line 4210
    :pswitch_1
    iget-boolean v0, p0, Landroid/widget/ListView;->mEnableDragSelection:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/ListView;->mIsBeginDragSelect:Z

    if-nez v0, :cond_1

    iget v0, p0, Landroid/widget/ListView;->mDragMotionY:I

    if-ltz v0, :cond_1

    iget v0, p0, Landroid/widget/ListView;->mIntercepeDragMotionX:I

    iget v1, v12, Landroid/graphics/Rect;->left:I

    if-lt v0, v1, :cond_1

    iget v0, p0, Landroid/widget/ListView;->mIntercepeDragMotionX:I

    iget v1, v12, Landroid/graphics/Rect;->right:I

    if-gt v0, v1, :cond_1

    iget v0, p0, Landroid/widget/ListView;->mDragMotionY:I

    sub-int/2addr v0, v11

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/widget/ListView;->mDragSlop:I

    if-le v0, v1, :cond_1

    .line 4214
    iget v0, p0, Landroid/widget/ListView;->mDragMotionPosition:I

    iput v0, p0, Landroid/widget/ListView;->mDragDownPosition:I

    .line 4215
    iput v11, p0, Landroid/widget/ListView;->mDragMotionY:I

    .line 4216
    iget v0, p0, Landroid/widget/ListView;->mDragMotionY:I

    iput v0, p0, Landroid/widget/ListView;->mLastDragMotionY:I

    .line 4219
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ListView;->mIsBeginDragSelect:Z

    .line 4221
    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v9

    .line 4223
    .local v9, cancelMotion:Landroid/view/MotionEvent;
    invoke-super {p0, v9}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4224
    const/4 v0, 0x3

    iput v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4225
    const/4 v0, 0x1

    goto :goto_2

    .line 4226
    .end local v9           #cancelMotion:Landroid/view/MotionEvent;
    :cond_1
    iget-boolean v0, p0, Landroid/widget/ListView;->mIsOutOfDragRegion:Z

    if-eqz v0, :cond_2

    .line 4227
    const/4 v0, 0x1

    goto :goto_2

    .line 4228
    :cond_2
    iget-boolean v0, p0, Landroid/widget/ListView;->mIsBeginDragSelect:Z

    if-eqz v0, :cond_5

    iget v0, v12, Landroid/graphics/Rect;->left:I

    if-lt v10, v0, :cond_3

    iget v0, v12, Landroid/graphics/Rect;->right:I

    if-le v10, v0, :cond_5

    .line 4229
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ListView;->mIsOutOfDragRegion:Z

    .line 4230
    iget-object v0, p0, Landroid/widget/ListView;->mScrollSelection:Landroid/widget/ListView$ScrollSelectionRunnable;

    if-eqz v0, :cond_4

    .line 4231
    iget-object v0, p0, Landroid/widget/ListView;->mScrollSelection:Landroid/widget/ListView$ScrollSelectionRunnable;

    invoke-virtual {v0}, Landroid/widget/ListView$ScrollSelectionRunnable;->finish()V

    .line 4233
    :cond_4
    const/4 v0, 0x1

    goto/16 :goto_2

    .line 4234
    :cond_5
    iget-boolean v0, p0, Landroid/widget/ListView;->mIsBeginDragSelect:Z

    if-eqz v0, :cond_0

    .line 4235
    iget v0, p0, Landroid/widget/ListView;->mDragMotionY:I

    iput v0, p0, Landroid/widget/ListView;->mLastDragMotionY:I

    .line 4236
    iput v11, p0, Landroid/widget/ListView;->mDragMotionY:I

    goto/16 :goto_0

    .line 4240
    :pswitch_2
    iget-boolean v0, p0, Landroid/widget/ListView;->mIsBeginDragSelect:Z

    if-eqz v0, :cond_6

    iget v0, p0, Landroid/widget/ListView;->mDragDownPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 4241
    const/4 v0, -0x1

    iget v1, p0, Landroid/widget/ListView;->mDragDownPosition:I

    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->downSelect(II)V

    .line 4244
    :cond_6
    :pswitch_3
    invoke-direct {p0}, Landroid/widget/ListView;->endDragSelection()V

    goto/16 :goto_0

    .line 4251
    :pswitch_4
    iget-boolean v0, p0, Landroid/widget/ListView;->mIsOutOfListContent:Z

    if-eqz v0, :cond_9

    .line 4253
    invoke-direct {p0, v11}, Landroid/widget/ListView;->onDragMotionChanged(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4255
    iget v0, p0, Landroid/widget/ListView;->mLastDragMotionY:I

    if-gez v0, :cond_8

    .line 4256
    const/4 v0, -0x1

    iget v1, p0, Landroid/widget/ListView;->mDragMotionPosition:I

    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->downSelect(II)V

    .line 4259
    :goto_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ListView;->mIsOutOfListContent:Z

    .line 4262
    :cond_7
    const/4 v0, 0x1

    goto/16 :goto_2

    .line 4258
    :cond_8
    const/4 v0, -0x1

    iget v1, p0, Landroid/widget/ListView;->mDragMotionPosition:I

    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->upSelect(II)V

    goto :goto_3

    .line 4263
    :cond_9
    invoke-direct {p0, v11}, Landroid/widget/ListView;->canScrollSelect(I)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v0

    if-nez v0, :cond_d

    .line 4265
    iget-object v0, p0, Landroid/widget/ListView;->mScrollSelection:Landroid/widget/ListView$ScrollSelectionRunnable;

    if-nez v0, :cond_a

    .line 4266
    new-instance v0, Landroid/widget/ListView$ScrollSelectionRunnable;

    invoke-direct {v0, p0}, Landroid/widget/ListView$ScrollSelectionRunnable;-><init>(Landroid/widget/ListView;)V

    iput-object v0, p0, Landroid/widget/ListView;->mScrollSelection:Landroid/widget/ListView$ScrollSelectionRunnable;

    .line 4269
    :cond_a
    iget-object v0, p0, Landroid/widget/ListView;->mScrollSelection:Landroid/widget/ListView$ScrollSelectionRunnable;

    invoke-virtual {v0}, Landroid/widget/ListView$ScrollSelectionRunnable;->isStarted()Z

    move-result v0

    if-nez v0, :cond_b

    .line 4270
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/widget/AbsListView;->mListItemHeight:I

    add-int/2addr v0, v1

    if-ge v11, v0, :cond_c

    const/4 v14, 0x1

    .line 4271
    .local v14, upSelect:Z
    :goto_4
    iget-object v0, p0, Landroid/widget/ListView;->mScrollSelection:Landroid/widget/ListView$ScrollSelectionRunnable;

    invoke-virtual {v0, v14}, Landroid/widget/ListView$ScrollSelectionRunnable;->startScrollSelecte(Z)V

    .line 4273
    .end local v14           #upSelect:Z
    :cond_b
    const/4 v0, 0x1

    goto/16 :goto_2

    .line 4270
    :cond_c
    const/4 v14, 0x0

    goto :goto_4

    .line 4274
    :cond_d
    iget-object v0, p0, Landroid/widget/ListView;->mScrollSelection:Landroid/widget/ListView$ScrollSelectionRunnable;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/widget/ListView;->mScrollSelection:Landroid/widget/ListView$ScrollSelectionRunnable;

    invoke-virtual {v0}, Landroid/widget/ListView$ScrollSelectionRunnable;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4276
    iget-object v0, p0, Landroid/widget/ListView;->mScrollSelection:Landroid/widget/ListView$ScrollSelectionRunnable;

    invoke-virtual {v0}, Landroid/widget/ListView$ScrollSelectionRunnable;->finish()V

    .line 4279
    :cond_e
    iget v0, p0, Landroid/widget/ListView;->mDragMotionViewTop:I

    if-ge v11, v0, :cond_13

    .line 4280
    iget v0, p0, Landroid/widget/ListView;->mDragDownPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    .line 4282
    const/4 v0, -0x1

    iget v1, p0, Landroid/widget/ListView;->mDragDownPosition:I

    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->upSelect(II)V

    .line 4283
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/ListView;->mDragDownPosition:I

    .line 4285
    :cond_f
    iget v0, p0, Landroid/widget/ListView;->mLastDownSelectPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    .line 4286
    const/4 v0, -0x1

    iget v1, p0, Landroid/widget/ListView;->mLastDownSelectPosition:I

    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->upSelect(II)V

    .line 4289
    :cond_10
    invoke-direct {p0, v11}, Landroid/widget/ListView;->onDragMotionChanged(I)Z

    move-result v0

    if-nez v0, :cond_12

    .line 4292
    iget v0, p0, Landroid/widget/ListView;->mLastUpSelectPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-eq v0, v1, :cond_11

    .line 4293
    iget v0, p0, Landroid/widget/ListView;->mLastUpSelectPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->upSelect(II)V

    .line 4294
    :cond_11
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/ListView;->mLastDownSelectPosition:I

    .line 4295
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/ListView;->mLastUpSelectPosition:I

    .line 4296
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ListView;->mIsOutOfListContent:Z

    .line 4297
    const/4 v0, 0x1

    goto/16 :goto_2

    .line 4300
    :cond_12
    iget v0, p0, Landroid/widget/ListView;->mLastUpSelectPosition:I

    iget v1, p0, Landroid/widget/ListView;->mDragMotionPosition:I

    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->upSelect(II)V

    goto/16 :goto_1

    .line 4301
    :cond_13
    iget v0, p0, Landroid/widget/ListView;->mDragMotionViewBottom:I

    if-le v11, v0, :cond_18

    .line 4302
    iget v0, p0, Landroid/widget/ListView;->mDragDownPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_14

    .line 4304
    const/4 v0, -0x1

    iget v1, p0, Landroid/widget/ListView;->mDragDownPosition:I

    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->downSelect(II)V

    .line 4305
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/ListView;->mDragDownPosition:I

    .line 4307
    :cond_14
    iget v0, p0, Landroid/widget/ListView;->mLastUpSelectPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_15

    .line 4308
    const/4 v0, -0x1

    iget v1, p0, Landroid/widget/ListView;->mLastUpSelectPosition:I

    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->downSelect(II)V

    .line 4310
    :cond_15
    invoke-direct {p0, v11}, Landroid/widget/ListView;->onDragMotionChanged(I)Z

    move-result v0

    if-nez v0, :cond_17

    .line 4313
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v13

    .line 4314
    .local v13, lastPosition:I
    iget v0, p0, Landroid/widget/ListView;->mLastDownSelectPosition:I

    if-eq v0, v13, :cond_16

    .line 4315
    iget v0, p0, Landroid/widget/ListView;->mLastDownSelectPosition:I

    invoke-direct {p0, v0, v13}, Landroid/widget/ListView;->downSelect(II)V

    .line 4316
    :cond_16
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/ListView;->mLastDownSelectPosition:I

    .line 4317
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/ListView;->mLastUpSelectPosition:I

    .line 4318
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ListView;->mIsOutOfListContent:Z

    .line 4319
    const/4 v0, 0x1

    goto/16 :goto_2

    .line 4322
    .end local v13           #lastPosition:I
    :cond_17
    iget v0, p0, Landroid/widget/ListView;->mLastDownSelectPosition:I

    iget v1, p0, Landroid/widget/ListView;->mDragMotionPosition:I

    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->downSelect(II)V

    goto/16 :goto_1

    .line 4325
    :cond_18
    const/4 v0, 0x1

    goto/16 :goto_2

    .line 4332
    :cond_19
    invoke-super/range {p0 .. p1}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_2

    .line 4198
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 4249
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
    .end packed-switch
.end method

.method pageScroll(I)Z
    .locals 8
    .parameter "direction"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2425
    const/4 v1, -0x1

    .line 2426
    .local v1, nextPage:I
    const/4 v0, 0x0

    .line 2428
    .local v0, down:Z
    const/16 v5, 0x21

    if-ne p1, v5, :cond_4

    .line 2429
    iget v5, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2435
    :cond_0
    :goto_0
    if-ltz v1, :cond_5

    .line 2436
    invoke-virtual {p0, v1, v0}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 2437
    .local v2, position:I
    if-ltz v2, :cond_5

    .line 2438
    const/4 v4, 0x4

    iput v4, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 2439
    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 2441
    if-eqz v0, :cond_1

    iget v4, p0, Landroid/widget/AdapterView;->mItemCount:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v4, v5

    if-le v2, v4, :cond_1

    .line 2442
    const/4 v4, 0x3

    iput v4, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 2445
    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 2446
    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 2449
    :cond_2
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setSelectionInt(I)V

    .line 2450
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 2451
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    move-result v4

    if-nez v4, :cond_3

    .line 2452
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 2459
    .end local v2           #position:I
    :cond_3
    :goto_1
    return v3

    .line 2430
    :cond_4
    const/16 v5, 0x82

    if-ne p1, v5, :cond_0

    .line 2431
    iget v5, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2432
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    move v3, v4

    .line 2459
    goto :goto_1
.end method

.method performLongPress(Landroid/view/View;IJ)Z
    .locals 3
    .parameter "child"
    .parameter "longPressPosition"
    .parameter "longPressId"

    .prologue
    .line 4145
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v0

    .line 4147
    .local v0, result:Z
    iget-boolean v1, p0, Landroid/widget/ListView;->mEnableDragSelection:Z

    if-eqz v1, :cond_0

    .line 4148
    iput p2, p0, Landroid/widget/ListView;->mLongPressPosition:I

    .line 4151
    :cond_0
    iget v1, p0, Landroid/widget/AbsListView;->mDragAndDropPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 4152
    invoke-direct {p0}, Landroid/widget/ListView;->endDragSelection()V

    .line 4154
    :cond_1
    return v0
.end method

.method protected recycleOnMeasure()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation

    .prologue
    .line 1273
    const/4 v0, 0x1

    return v0
.end method

.method rememberSyncState()V
    .locals 1

    .prologue
    .line 4440
    iget-boolean v0, p0, Landroid/widget/ListView;->mSelectToBottom:Z

    if-nez v0, :cond_0

    .line 4441
    invoke-super {p0}, Landroid/widget/AdapterView;->rememberSyncState()V

    .line 4442
    :cond_0
    return-void
.end method

.method public removeFooterView(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 415
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 416
    const/4 v0, 0x0

    .line 417
    .local v0, result:Z
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/HeaderViewListAdapter;->removeFooter(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 418
    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 419
    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 421
    :cond_0
    const/4 v0, 0x1

    .line 423
    :cond_1
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Landroid/widget/ListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 426
    .end local v0           #result:Z
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeHeaderView(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 330
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 331
    const/4 v0, 0x0

    .line 332
    .local v0, result:Z
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/HeaderViewListAdapter;->removeHeader(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 333
    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 334
    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 336
    :cond_0
    const/4 v0, 0x1

    .line 338
    :cond_1
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Landroid/widget/ListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 341
    .end local v0           #result:Z
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 8
    .parameter "child"
    .parameter "focused"

    .prologue
    const/4 v7, -0x1

    .line 4446
    iget-boolean v5, p0, Landroid/widget/AbsListView;->mEnableForEditTextPreference:Z

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Landroid/widget/AdapterView;->mInLayout:Z

    if-nez v5, :cond_4

    if-eqz p1, :cond_4

    .line 4448
    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v5, Landroid/graphics/Rect;->top:I

    .line 4449
    .local v4, top:I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    iget-object v6, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/AbsListView;->mDockingBottomHeight:I

    sub-int v0, v5, v6

    .line 4450
    .local v0, bottom:I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    if-ge v4, v5, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    if-ge v5, v0, :cond_0

    .line 4451
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 4473
    .end local v0           #bottom:I
    .end local v4           #top:I
    :goto_0
    return-void

    .line 4454
    .restart local v0       #bottom:I
    .restart local v4       #top:I
    :cond_0
    const/4 v3, -0x1

    .line 4455
    .local v3, position:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 4456
    .local v1, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 4457
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 4458
    move v3, v2

    .line 4462
    :cond_1
    if-eq v3, v7, :cond_4

    .line 4463
    iget-object v5, p0, Landroid/widget/ListView;->mFocuseRect:Landroid/graphics/Rect;

    if-nez v5, :cond_2

    .line 4464
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Landroid/widget/ListView;->mFocuseRect:Landroid/graphics/Rect;

    .line 4465
    :cond_2
    iget-object v5, p0, Landroid/widget/ListView;->mFocuseRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v5}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 4466
    iget v5, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-ne v5, v7, :cond_3

    .line 4467
    iget-object v5, p0, Landroid/widget/ListView;->mFocuseRect:Landroid/graphics/Rect;

    const/4 v6, 0x1

    invoke-virtual {p0, p1, v5, v6}, Landroid/widget/ListView;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    .line 4469
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 4472
    .end local v0           #bottom:I
    .end local v1           #childCount:I
    .end local v2           #i:I
    .end local v3           #position:I
    .end local v4           #top:I
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0

    .line 4456
    .restart local v0       #bottom:I
    .restart local v1       #childCount:I
    .restart local v2       #i:I
    .restart local v3       #position:I
    .restart local v4       #top:I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 15
    .parameter "child"
    .parameter "rect"
    .parameter "immediate"

    .prologue
    .line 584
    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/Rect;->top:I

    .line 587
    .local v9, rectTopWithinChild:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 588
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v13

    neg-int v13, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v14

    neg-int v14, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 590
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 591
    .local v6, height:I
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v8

    .line 592
    .local v8, listUnfadedTop:I
    add-int v7, v8, v6

    .line 593
    .local v7, listUnfadedBottom:I
    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v5

    .line 595
    .local v5, fadingEdge:I
    invoke-direct {p0}, Landroid/widget/ListView;->showingTopFadingEdge()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 597
    iget v13, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-gtz v13, :cond_0

    if-le v9, v5, :cond_1

    .line 598
    :cond_0
    add-int/2addr v8, v5

    .line 602
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 603
    .local v2, childCount:I
    add-int/lit8 v13, v2, -0x1

    invoke-virtual {p0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 605
    .local v1, bottomOfBottomChild:I
    invoke-direct {p0}, Landroid/widget/ListView;->showingBottomFadingEdge()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 607
    iget v13, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v14, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v14, v14, -0x1

    if-lt v13, v14, :cond_2

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v14, v1, v5

    if-ge v13, v14, :cond_3

    .line 609
    :cond_2
    sub-int/2addr v7, v5

    .line 613
    :cond_3
    const/4 v11, 0x0

    .line 615
    .local v11, scrollYDelta:I
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    if-le v13, v7, :cond_7

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    if-le v13, v8, :cond_7

    .line 620
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v13

    if-le v13, v6, :cond_6

    .line 622
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v13, v8

    add-int/2addr v11, v13

    .line 629
    :goto_0
    sub-int v4, v1, v7

    .line 630
    .local v4, distanceToBottom:I
    invoke-static {v11, v4}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 650
    .end local v4           #distanceToBottom:I
    :cond_4
    :goto_1
    if-eqz v11, :cond_9

    const/4 v10, 0x1

    .line 651
    .local v10, scroll:Z
    :goto_2
    if-eqz v10, :cond_5

    .line 652
    neg-int v13, v11

    invoke-direct {p0, v13}, Landroid/widget/ListView;->scrollListItemsBy(I)V

    .line 653
    const/4 v13, -0x1

    move-object/from16 v0, p1

    invoke-virtual {p0, v13, v0}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 654
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v13

    iput v13, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 655
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 657
    :cond_5
    return v10

    .line 625
    .end local v10           #scroll:Z
    :cond_6
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v13, v7

    add-int/2addr v11, v13

    goto :goto_0

    .line 631
    :cond_7
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    if-ge v13, v8, :cond_4

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v13, v7, :cond_4

    .line 636
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v13

    if-le v13, v6, :cond_8

    .line 638
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v13, v7, v13

    sub-int/2addr v11, v13

    .line 645
    :goto_3
    const/4 v13, 0x0

    invoke-virtual {p0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v12

    .line 646
    .local v12, top:I
    sub-int v3, v12, v8

    .line 647
    .local v3, deltaToTop:I
    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_1

    .line 641
    .end local v3           #deltaToTop:I
    .end local v12           #top:I
    :cond_8
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    sub-int v13, v8, v13

    sub-int/2addr v11, v13

    goto :goto_3

    .line 650
    :cond_9
    const/4 v10, 0x0

    goto :goto_2
.end method

.method resetList()V
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/widget/ListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 537
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/widget/ListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 539
    invoke-super {p0}, Landroid/widget/AbsListView;->resetList()V

    .line 541
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 542
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 6
    .parameter "adapter"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 468
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 469
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 472
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->resetList()V

    .line 473
    iget-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v1}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    .line 476
    iget-object v1, p0, Landroid/widget/ListView;->mAbsBasePartitionAdapterClass:Ljava/lang/Class;

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    iget-object v1, p0, Landroid/widget/ListView;->mAbsBasePartitionAdapterClass:Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 477
    iput-boolean v5, p0, Landroid/widget/ListView;->isAbsBasePartitionAdapter:Z

    .line 482
    :goto_0
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 483
    :cond_1
    new-instance v1, Landroid/widget/HeaderViewListAdapter;

    iget-object v2, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, p1}, Landroid/widget/HeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 488
    :goto_1
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/AdapterView;->mOldSelectedPosition:I

    .line 489
    const-wide/high16 v1, -0x8000

    iput-wide v1, p0, Landroid/widget/AdapterView;->mOldSelectedRowId:J

    .line 492
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 494
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_6

    .line 495
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 496
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    iput v1, p0, Landroid/widget/AdapterView;->mOldItemCount:I

    .line 497
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 498
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkFocus()V

    .line 500
    new-instance v1, Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 501
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 503
    iget-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView$RecycleBin;->setViewTypeCount(I)V

    .line 506
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v1, :cond_5

    .line 507
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v4}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 511
    .local v0, position:I
    :goto_2
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 512
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 514
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-nez v1, :cond_2

    .line 516
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    .line 525
    .end local v0           #position:I
    :cond_2
    :goto_3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 526
    return-void

    .line 479
    :cond_3
    iput-boolean v4, p0, Landroid/widget/ListView;->isAbsBasePartitionAdapter:Z

    goto :goto_0

    .line 485
    :cond_4
    iput-object p1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    goto :goto_1

    .line 509
    :cond_5
    invoke-virtual {p0, v4, v5}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .restart local v0       #position:I
    goto :goto_2

    .line 519
    .end local v0           #position:I
    :cond_6
    iput-boolean v5, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 520
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkFocus()V

    .line 522
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    goto :goto_3
.end method

.method public setCacheColorHint(I)V
    .locals 3
    .parameter "color"

    .prologue
    .line 3244
    ushr-int/lit8 v1, p1, 0x18

    const/16 v2, 0xff

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    .line 3245
    .local v0, opaque:Z
    :goto_0
    iput-boolean v0, p0, Landroid/widget/ListView;->mIsCacheColorOpaque:Z

    .line 3246
    if-eqz v0, :cond_1

    .line 3247
    iget-object v1, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    .line 3248
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 3250
    :cond_0
    iget-object v1, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3252
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    .line 3253
    return-void

    .line 3244
    .end local v0           #opaque:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "divider"

    .prologue
    const/4 v0, 0x0

    .line 3612
    if-eqz p1, :cond_2

    .line 3613
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 3617
    :goto_0
    iput-object p1, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 3618
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Landroid/widget/ListView;->mDividerIsOpaque:Z

    .line 3619
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 3620
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 3621
    return-void

    .line 3615
    :cond_2
    iput v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    goto :goto_0
.end method

.method public setDividerHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 3637
    iput p1, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 3638
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 3639
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 3640
    return-void
.end method

.method public setEnableDragSelection(Landroid/widget/ListView$OnDragSelectListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 4126
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setEnableDragSelection(Z)V

    .line 4127
    iput-object p1, p0, Landroid/widget/ListView;->mDragSelectListener:Landroid/widget/ListView$OnDragSelectListener;

    .line 4128
    return-void
.end method

.method public setEnableDragSelection(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 4114
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/widget/ListView;->mDragSlop:I

    .line 4115
    iput-boolean p1, p0, Landroid/widget/ListView;->mEnableDragSelection:Z

    .line 4116
    return-void
.end method

.method public setFooterDividersEnabled(Z)V
    .locals 0
    .parameter "footerDividersEnabled"

    .prologue
    .line 3664
    iput-boolean p1, p0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    .line 3665
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 3666
    return-void
.end method

.method public setHeaderDividersEnabled(Z)V
    .locals 0
    .parameter "headerDividersEnabled"

    .prologue
    .line 3651
    iput-boolean p1, p0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    .line 3652
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 3653
    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 5
    .parameter "position"
    .parameter "value"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 4338
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 4339
    .local v0, blockLayoutRequests:Z
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v1

    .line 4340
    .local v1, count:I
    iget v2, p0, Landroid/widget/ListView;->mDragMotionPosition:I

    if-eq v2, v3, :cond_0

    .line 4341
    iput-boolean v4, p0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 4342
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 4343
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 4346
    iget v2, p0, Landroid/widget/ListView;->mDragMotionPosition:I

    if-eq v2, v3, :cond_2

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 4349
    :cond_1
    iget-boolean v2, p0, Landroid/widget/AdapterView;->mInLayout:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    if-nez v2, :cond_2

    .line 4350
    iput-boolean v4, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 4351
    invoke-virtual {p0}, Landroid/widget/ListView;->rememberSyncState()V

    .line 4352
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 4355
    :cond_2
    return-void
.end method

.method public setItemsCanFocus(Z)V
    .locals 1
    .parameter "itemsCanFocus"

    .prologue
    .line 3207
    iput-boolean p1, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    .line 3208
    if-nez p1, :cond_0

    .line 3209
    const/high16 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 3211
    :cond_0
    return-void
.end method

.method public setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "footer"

    .prologue
    .line 3696
    iput-object p1, p0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    .line 3697
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 3698
    return-void
.end method

.method public setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "header"

    .prologue
    .line 3675
    iput-object p1, p0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    .line 3676
    iget v0, p0, Landroid/view/View;->mScrollY:I

    if-gez v0, :cond_0

    .line 3677
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 3679
    :cond_0
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 450
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    .line 451
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 2101
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 2102
    return-void
.end method

.method public setSelectionAfterHeaderView()V
    .locals 2

    .prologue
    .line 2220
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2221
    .local v0, count:I
    if-lez v0, :cond_0

    .line 2222
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 2233
    :goto_0
    return-void

    .line 2226
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 2227
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 2229
    :cond_1
    iput v0, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 2230
    const/4 v1, 0x2

    iput v1, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    goto :goto_0
.end method

.method public setSelectionFromTop(II)V
    .locals 2
    .parameter "position"
    .parameter "y"

    .prologue
    .line 2114
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_1

    .line 2141
    :cond_0
    :goto_0
    return-void

    .line 2118
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2119
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result p1

    .line 2120
    if-ltz p1, :cond_2

    .line 2121
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 2127
    :cond_2
    :goto_1
    if-ltz p1, :cond_0

    .line 2128
    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 2129
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 2131
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    if-eqz v0, :cond_3

    .line 2132
    iput p1, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 2133
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 2136
    :cond_3
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-eqz v0, :cond_4

    .line 2137
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    invoke-virtual {v0}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 2139
    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    goto :goto_0

    .line 2124
    :cond_5
    iput p1, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    goto :goto_1
.end method

.method setSelectionInt(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 2150
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 2151
    const/4 v0, 0x0

    .line 2153
    .local v0, awakeScrollbars:Z
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 2155
    .local v1, selectedPosition:I
    if-ltz v1, :cond_0

    .line 2156
    add-int/lit8 v2, v1, -0x1

    if-ne p1, v2, :cond_3

    .line 2157
    const/4 v0, 0x1

    .line 2163
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-eqz v2, :cond_1

    .line 2164
    iget-object v2, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    invoke-virtual {v2}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 2167
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 2169
    if-eqz v0, :cond_2

    .line 2170
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 2172
    :cond_2
    return-void

    .line 2158
    :cond_3
    add-int/lit8 v2, v1, 0x1

    if-ne p1, v2, :cond_0

    .line 2159
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setSelectionToBottom()V
    .locals 1

    .prologue
    .line 4429
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 4436
    :goto_0
    return-void

    .line 4433
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ListView;->mSelectToBottom:Z

    .line 4434
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0
.end method

.method public setTopShadowEnable(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 3567
    iput-boolean p1, p0, Landroid/widget/ListView;->mEnableTopShadow:Z

    .line 3568
    return-void
.end method

.method public smoothScrollByOffset(I)V
    .locals 0
    .parameter "offset"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 973
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollByOffset(I)V

    .line 974
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 0
    .parameter "position"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 963
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    .line 964
    return-void
.end method

.method public unCheckedAll()V
    .locals 1

    .prologue
    .line 4414
    invoke-virtual {p0}, Landroid/widget/AbsListView;->clearChoices()V

    .line 4415
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mInLayout:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    .line 4416
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 4417
    invoke-virtual {p0}, Landroid/widget/ListView;->rememberSyncState()V

    .line 4418
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 4420
    :cond_0
    return-void
.end method
