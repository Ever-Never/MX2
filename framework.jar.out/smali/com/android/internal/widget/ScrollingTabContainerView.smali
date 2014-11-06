.class public Lcom/android/internal/widget/ScrollingTabContainerView;
.super Landroid/widget/HorizontalScrollView;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;,
        Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;,
        Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;,
        Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    }
.end annotation


# static fields
.field private static final FADE_DURATION:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "ScrollingTabContainerView"

.field private static final sAlphaInterpolator:Landroid/animation/TimeInterpolator;


# instance fields
.field private mAllowCollapse:Z

.field private mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

.field private mBackIcon:Landroid/graphics/drawable/Drawable;

.field private mBackImeIcon:Landroid/graphics/drawable/Drawable;

.field private mContentHeight:I

.field private mEnableBackButton:Z

.field private mExpandedTouchWidth:I

.field private mExtraPadding:I

.field private mExtraPaddingFor4:I

.field private mItemPadding:I

.field mMaxTabWidth:I

.field private mMeasureWithLargestChild:Z

.field private mMenuView:Landroid/view/View;

.field private mSelectedTabIndex:I

.field private mShouldDectePaddingAjustment:Z

.field private mShowAtBottom:Z

.field private mSmartBarConfig:Lcom/meizu/widget/SmartBarConfiguration;

.field private mSplitActionBar:Z

.field mStackedTabMaxWidth:I

.field private mTabCellWidth:I

.field private mTabClickListener:Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;

.field private mTabFlagDrawable:Landroid/graphics/drawable/Drawable;

.field private mTabHeight:I

.field private mTabLayout:Landroid/widget/LinearLayout;

.field mTabSelector:Ljava/lang/Runnable;

.field private mTabSpinner:Landroid/widget/Spinner;

.field private mTabWidth:I

.field protected final mVisAnimListener:Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

.field protected mVisibilityAnim:Landroid/animation/Animator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/internal/widget/ScrollingTabContainerView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 87
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 80
    new-instance v3, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;)V

    iput-object v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mVisAnimListener:Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    .line 783
    iput-boolean v7, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mShowAtBottom:Z

    .line 784
    iput-boolean v7, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mSplitActionBar:Z

    .line 785
    iput v7, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    .line 786
    iput v7, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabWidth:I

    .line 787
    iput v7, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    .line 788
    iput v7, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPaddingFor4:I

    .line 790
    iput v7, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabHeight:I

    .line 792
    iput v7, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExpandedTouchWidth:I

    .line 843
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMeasureWithLargestChild:Z

    .line 870
    iput-boolean v7, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mEnableBackButton:Z

    .line 1138
    iput-boolean v7, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mShouldDectePaddingAjustment:Z

    .line 88
    invoke-virtual {p0, v7}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 90
    invoke-static {p1}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    move-result-object v0

    .line 91
    .local v0, abp:Lcom/android/internal/view/ActionBarPolicy;
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getTabContainerHeight()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 92
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getStackedTabMaxWidth()I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    .line 94
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    sget-object v5, Lcom/android/internal/R$styleable;->View:[I

    const v6, 0x10102f3

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 96
    .local v2, ta:Landroid/content/res/TypedArray;
    const/16 v3, 0xc

    invoke-virtual {v2, v3, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 97
    .local v1, bgId:I
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 98
    const v3, 0x10807a6

    if-ne v1, v3, :cond_0

    .line 99
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10804ab

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabFlagDrawable:Landroid/graphics/drawable/Drawable;

    .line 102
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->createTabLayout()Landroid/widget/LinearLayout;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    .line 103
    iget-object v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v4}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 106
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 107
    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/widget/ScrollingTabContainerView;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/widget/ScrollingTabContainerView;Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ScrollingTabContainerView;->createTabView(Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object v0

    return-object v0
.end method

.method private addBackButton(Landroid/view/View;)V
    .locals 2
    .parameter "button"

    .prologue
    .line 904
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 905
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 907
    :cond_0
    return-void
.end method

.method private createSpinner()Landroid/widget/Spinner;
    .locals 4

    .prologue
    .line 305
    new-instance v0, Landroid/widget/Spinner;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x10102d7

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 307
    .local v0, spinner:Landroid/widget/Spinner;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemClickListenerInt(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 310
    return-object v0
.end method

.method private createTabLayout()Landroid/widget/LinearLayout;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 292
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x10102f4

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 294
    .local v0, tabLayout:Landroid/widget/LinearLayout;
    iget-boolean v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMeasureWithLargestChild:Z

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMeasureWithLargestChildEnabled(Z)V

    .line 295
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 296
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 298
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    .line 299
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 300
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 301
    return-object v0
.end method

.method private createTabView(Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    .locals 4
    .parameter "tab"
    .parameter "forAdapter"

    .prologue
    const/4 v2, 0x0

    .line 402
    new-instance v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;Landroid/content/Context;Landroid/app/ActionBar$Tab;Z)V

    .line 403
    .local v0, tabView:Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    if-eqz p2, :cond_0

    .line 404
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 405
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setShowAtBottom(Z)V

    .line 406
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mContentHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 416
    :goto_0
    return-object v0

    .line 409
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 410
    iget-boolean v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mShowAtBottom:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setShowAtBottom(Z)V

    .line 411
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabClickListener:Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;

    if-nez v1, :cond_1

    .line 412
    new-instance v1, Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;Lcom/android/internal/widget/ScrollingTabContainerView$1;)V

    iput-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabClickListener:Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;

    .line 414
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabClickListener:Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private isCollapsed()Z
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private layoutTabs(II)V
    .locals 17
    .parameter "t"
    .parameter "b"

    .prologue
    .line 926
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 927
    .local v3, childCount:I
    add-int v13, p1, p2

    div-int/lit8 v9, v13, 0x2

    .line 928
    .local v9, midVertical:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v11

    .line 929
    .local v11, tabRight:I
    const/4 v2, 0x0

    .line 930
    .local v2, child:Landroid/view/View;
    const/4 v10, 0x0

    .line 931
    .local v10, startLeft:I
    const/4 v6, 0x0

    .line 932
    .local v6, endRight:I
    const/4 v4, 0x0

    .line 933
    .local v4, childLeft:I
    const/4 v5, 0x0

    .line 934
    .local v5, childRight:I
    const/4 v7, 0x0

    .line 935
    .local v7, height:I
    const/4 v12, 0x0

    .line 937
    .local v12, top:I
    sget-object v13, Landroid/os/Build;->HAS_PERMANENTKEY:Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-nez v13, :cond_7

    .line 938
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mShowAtBottom:Z

    if-eqz v13, :cond_2

    if-lez v3, :cond_2

    const/4 v13, 0x5

    if-gt v3, v13, :cond_2

    .line 939
    const/4 v13, 0x1

    if-eq v3, v13, :cond_0

    const/4 v13, 0x5

    if-ne v3, v13, :cond_1

    .line 940
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    mul-int/lit8 v14, v14, 0x2

    sub-int/2addr v13, v14

    div-int v1, v13, v3

    .line 941
    .local v1, cellWidth:I
    const/4 v8, 0x0

    .local v8, index:I
    :goto_0
    if-ge v8, v3, :cond_2

    .line 942
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 943
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 944
    add-int/lit8 v13, v8, 0x1

    mul-int v6, v13, v1

    .line 945
    add-int v13, v10, v6

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    sub-int/2addr v13, v14

    div-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    add-int v4, v13, v14

    .line 946
    div-int/lit8 v13, v7, 0x2

    sub-int v12, v9, v13

    .line 947
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    add-int/2addr v13, v4

    add-int v14, v12, v7

    invoke-virtual {v2, v4, v12, v13, v14}, Landroid/view/View;->layout(IIII)V

    .line 948
    move v10, v6

    .line 941
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 950
    .end local v1           #cellWidth:I
    .end local v8           #index:I
    :cond_1
    const/4 v13, 0x2

    if-ne v3, v13, :cond_4

    .line 952
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 953
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 954
    div-int/lit8 v13, v7, 0x2

    sub-int v12, v9, v13

    .line 955
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    add-int/2addr v14, v15

    add-int v15, v12, v7

    invoke-virtual {v2, v13, v12, v14, v15}, Landroid/view/View;->layout(IIII)V

    .line 958
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 959
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 960
    div-int/lit8 v13, v7, 0x2

    sub-int v12, v9, v13

    .line 961
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    sub-int v13, v11, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    sub-int v14, v11, v14

    add-int v15, v12, v7

    invoke-virtual {v2, v13, v12, v14, v15}, Landroid/view/View;->layout(IIII)V

    .line 1059
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mShouldDectePaddingAjustment:Z

    if-eqz v13, :cond_f

    .line 1060
    const/4 v13, 0x1

    if-ne v3, v13, :cond_c

    .line 1061
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1062
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v13}, Lcom/android/internal/widget/ScrollingTabContainerView;->setChildLayoutPosition(Landroid/view/View;I)V

    .line 1083
    :cond_3
    if-lez v3, :cond_10

    const/4 v13, 0x5

    if-ge v3, v13, :cond_10

    .line 1084
    const/4 v8, 0x0

    .restart local v8       #index:I
    :goto_2
    if-ge v8, v3, :cond_10

    .line 1085
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1086
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExpandedTouchWidth:I

    invoke-virtual {v2, v13}, Landroid/view/View;->expandTouchWidth(I)V

    .line 1084
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 962
    .end local v8           #index:I
    :cond_4
    const/4 v13, 0x3

    if-ne v3, v13, :cond_5

    .line 964
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 965
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 966
    div-int/lit8 v13, v7, 0x2

    sub-int v12, v9, v13

    .line 967
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    add-int/2addr v14, v15

    add-int v15, v12, v7

    invoke-virtual {v2, v13, v12, v14, v15}, Landroid/view/View;->layout(IIII)V

    .line 970
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 971
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 972
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    sub-int v13, v11, v13

    div-int/lit8 v4, v13, 0x2

    .line 973
    div-int/lit8 v13, v7, 0x2

    sub-int v12, v9, v13

    .line 974
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    add-int/2addr v13, v4

    add-int v14, v12, v7

    invoke-virtual {v2, v4, v12, v13, v14}, Landroid/view/View;->layout(IIII)V

    .line 977
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 978
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 979
    div-int/lit8 v13, v7, 0x2

    sub-int v12, v9, v13

    .line 980
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    sub-int v13, v11, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    sub-int v14, v11, v14

    add-int v15, v12, v7

    invoke-virtual {v2, v13, v12, v14, v15}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_1

    .line 981
    :cond_5
    const/4 v13, 0x4

    if-ne v3, v13, :cond_2

    .line 982
    const/4 v8, 0x0

    .restart local v8       #index:I
    :goto_3
    if-ge v8, v3, :cond_2

    .line 983
    div-int/lit8 v13, v3, 0x2

    if-ge v8, v13, :cond_6

    .line 984
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 985
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 986
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mItemPadding:I

    add-int/2addr v14, v15

    mul-int/2addr v14, v8

    add-int v4, v13, v14

    .line 987
    div-int/lit8 v13, v7, 0x2

    sub-int p1, v9, v13

    .line 988
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    add-int/2addr v13, v4

    add-int v14, p1, v7

    move/from16 v0, p1

    invoke-virtual {v2, v4, v0, v13, v14}, Landroid/view/View;->layout(IIII)V

    .line 982
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 990
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 991
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 992
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    sub-int v13, v11, v13

    add-int/lit8 v14, v3, -0x1

    sub-int/2addr v14, v8

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mItemPadding:I

    move/from16 v16, v0

    add-int v15, v15, v16

    mul-int/2addr v14, v15

    sub-int v5, v13, v14

    .line 994
    div-int/lit8 v13, v7, 0x2

    sub-int p1, v9, v13

    .line 995
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    sub-int v13, v5, v13

    add-int v14, p1, v7

    move/from16 v0, p1

    invoke-virtual {v2, v13, v0, v5, v14}, Landroid/view/View;->layout(IIII)V

    goto :goto_4

    .line 1001
    .end local v8           #index:I
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mShowAtBottom:Z

    if-eqz v13, :cond_2

    if-lez v3, :cond_2

    const/4 v13, 0x5

    if-gt v3, v13, :cond_2

    .line 1002
    const/4 v13, 0x1

    if-eq v3, v13, :cond_8

    const/4 v13, 0x5

    if-ne v3, v13, :cond_9

    .line 1003
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v13

    div-int v1, v13, v3

    .line 1004
    .restart local v1       #cellWidth:I
    const/4 v8, 0x0

    .restart local v8       #index:I
    :goto_5
    if-ge v8, v3, :cond_2

    .line 1005
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1006
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1007
    add-int/lit8 v13, v8, 0x1

    mul-int v6, v13, v1

    .line 1008
    add-int v13, v10, v6

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    sub-int/2addr v13, v14

    div-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    add-int v4, v13, v14

    .line 1009
    div-int/lit8 v13, v7, 0x2

    sub-int v12, v9, v13

    .line 1010
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    add-int/2addr v13, v4

    add-int v14, v12, v7

    invoke-virtual {v2, v4, v12, v13, v14}, Landroid/view/View;->layout(IIII)V

    .line 1011
    move v10, v6

    .line 1004
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 1013
    .end local v1           #cellWidth:I
    .end local v8           #index:I
    :cond_9
    const/4 v13, 0x2

    if-ne v3, v13, :cond_a

    .line 1015
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1016
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1017
    div-int/lit8 v13, v7, 0x2

    sub-int v12, v9, v13

    .line 1018
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    add-int/2addr v14, v15

    add-int v15, v12, v7

    invoke-virtual {v2, v13, v12, v14, v15}, Landroid/view/View;->layout(IIII)V

    .line 1021
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1022
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1023
    div-int/lit8 v13, v7, 0x2

    sub-int v12, v9, v13

    .line 1024
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    sub-int v13, v11, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    sub-int v14, v11, v14

    add-int v15, v12, v7

    invoke-virtual {v2, v13, v12, v14, v15}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_1

    .line 1025
    :cond_a
    const/4 v13, 0x3

    if-ne v3, v13, :cond_b

    .line 1027
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1028
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1029
    div-int/lit8 v13, v7, 0x2

    sub-int v12, v9, v13

    .line 1030
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    add-int/2addr v14, v15

    add-int v15, v12, v7

    invoke-virtual {v2, v13, v12, v14, v15}, Landroid/view/View;->layout(IIII)V

    .line 1033
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1034
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1035
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    sub-int v13, v11, v13

    div-int/lit8 v4, v13, 0x2

    .line 1036
    div-int/lit8 v13, v7, 0x2

    sub-int v12, v9, v13

    .line 1037
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    add-int/2addr v13, v4

    add-int v14, v12, v7

    invoke-virtual {v2, v4, v12, v13, v14}, Landroid/view/View;->layout(IIII)V

    .line 1040
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1041
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1042
    div-int/lit8 v13, v7, 0x2

    sub-int v12, v9, v13

    .line 1043
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    sub-int v13, v11, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    sub-int v14, v11, v14

    add-int v15, v12, v7

    invoke-virtual {v2, v13, v12, v14, v15}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_1

    .line 1044
    :cond_b
    const/4 v13, 0x4

    if-ne v3, v13, :cond_2

    .line 1045
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPaddingFor4:I

    mul-int/lit8 v14, v14, 0x2

    sub-int/2addr v13, v14

    div-int v1, v13, v3

    .line 1046
    .restart local v1       #cellWidth:I
    const/4 v8, 0x0

    .restart local v8       #index:I
    :goto_6
    if-ge v8, v3, :cond_2

    .line 1047
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1048
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1049
    add-int/lit8 v13, v8, 0x1

    mul-int v6, v13, v1

    .line 1050
    add-int v13, v10, v6

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    sub-int/2addr v13, v14

    div-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPaddingFor4:I

    add-int v4, v13, v14

    .line 1051
    div-int/lit8 v13, v7, 0x2

    sub-int v12, v9, v13

    .line 1052
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    add-int/2addr v13, v4

    add-int v14, v12, v7

    invoke-virtual {v2, v4, v12, v13, v14}, Landroid/view/View;->layout(IIII)V

    .line 1053
    move v10, v6

    .line 1046
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 1064
    .end local v1           #cellWidth:I
    .end local v8           #index:I
    :cond_c
    const/4 v8, 0x0

    .restart local v8       #index:I
    :goto_7
    if-ge v8, v3, :cond_3

    .line 1065
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1067
    if-nez v8, :cond_d

    .line 1068
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v13}, Lcom/android/internal/widget/ScrollingTabContainerView;->setChildLayoutPosition(Landroid/view/View;I)V

    .line 1064
    :goto_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 1069
    :cond_d
    add-int/lit8 v13, v3, -0x1

    if-ne v8, v13, :cond_e

    .line 1070
    const/4 v13, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v13}, Lcom/android/internal/widget/ScrollingTabContainerView;->setChildLayoutPosition(Landroid/view/View;I)V

    goto :goto_8

    .line 1072
    :cond_e
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v13}, Lcom/android/internal/widget/ScrollingTabContainerView;->setChildLayoutPosition(Landroid/view/View;I)V

    goto :goto_8

    .line 1077
    .end local v8           #index:I
    :cond_f
    const/4 v8, 0x0

    .restart local v8       #index:I
    :goto_9
    if-ge v8, v3, :cond_3

    .line 1078
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1079
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v13}, Lcom/android/internal/widget/ScrollingTabContainerView;->setChildLayoutPosition(Landroid/view/View;I)V

    .line 1077
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 1089
    .end local v8           #index:I
    :cond_10
    return-void
.end method

.method private performCollapse()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 220
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->isCollapsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    :goto_0
    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_1

    .line 223
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->createSpinner()Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 226
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    if-eqz v0, :cond_2

    .line 227
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 230
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMenuView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 231
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMenuView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 233
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-nez v0, :cond_4

    .line 236
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-direct {v1, p0, v4}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;Lcom/android/internal/widget/ScrollingTabContainerView$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 238
    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_5

    .line 239
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 240
    iput-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    .line 242
    :cond_5
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    iget v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/AbsSpinner;->setSelection(I)V

    goto :goto_0
.end method

.method private performExpand()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 246
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->isCollapsed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    :goto_0
    return v4

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 249
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMenuView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 254
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMenuView:Landroid/view/View;

    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 256
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 258
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    goto :goto_0
.end method

.method private removeBackButton(Landroid/view/View;)V
    .locals 1
    .parameter "button"

    .prologue
    .line 895
    if-eqz p1, :cond_0

    .line 896
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 897
    .local v0, parent:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 898
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 901
    .end local v0           #parent:Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private setChildLayoutPosition(Landroid/view/View;I)V
    .locals 5
    .parameter "child"
    .parameter "layoutPosition"

    .prologue
    .line 1092
    instance-of v3, p1, Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v3, :cond_0

    move-object v3, p1

    check-cast v3, Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    move-object v3, p1

    .line 1094
    check-cast v3, Lcom/android/internal/view/menu/ActionMenuView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1095
    .local v2, overflowButton:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1096
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    instance-of v3, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    if-eqz v3, :cond_0

    .line 1097
    check-cast v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .end local v1           #lp:Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 1098
    .local v0, isOverflowButton:Z
    if-eqz v0, :cond_0

    .line 1099
    move-object p1, v2

    .line 1104
    .end local v0           #isOverflowButton:Z
    .end local v2           #overflowButton:Landroid/view/View;
    :cond_0
    instance-of v3, p1, Lcom/meizu/widget/LayoutPositionState;

    if-eqz v3, :cond_1

    .line 1105
    check-cast p1, Lcom/meizu/widget/LayoutPositionState;

    .end local p1
    invoke-interface {p1, p2}, Lcom/meizu/widget/LayoutPositionState;->setLayoutPosition(I)V

    .line 1107
    :cond_1
    return-void
.end method

.method private updateSmartBarConfiguration()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1140
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/widget/SmartBarConfiguration;->get(Landroid/content/Context;)Lcom/meizu/widget/SmartBarConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mSmartBarConfig:Lcom/meizu/widget/SmartBarConfiguration;

    .line 1141
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mSmartBarConfig:Lcom/meizu/widget/SmartBarConfiguration;

    invoke-virtual {v1}, Lcom/meizu/widget/SmartBarConfiguration;->getButtonWidth()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    .line 1142
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mSmartBarConfig:Lcom/meizu/widget/SmartBarConfiguration;

    invoke-virtual {v1}, Lcom/meizu/widget/SmartBarConfiguration;->getHorizontalPadding()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    .line 1143
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mSmartBarConfig:Lcom/meizu/widget/SmartBarConfiguration;

    invoke-virtual {v1}, Lcom/meizu/widget/SmartBarConfiguration;->getHorizontalPaddingFor4()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPaddingFor4:I

    .line 1144
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mSmartBarConfig:Lcom/meizu/widget/SmartBarConfiguration;

    invoke-virtual {v1}, Lcom/meizu/widget/SmartBarConfiguration;->getButtonPadding()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mItemPadding:I

    .line 1145
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mSmartBarConfig:Lcom/meizu/widget/SmartBarConfiguration;

    invoke-virtual {v1}, Lcom/meizu/widget/SmartBarConfiguration;->getExpandedTouchWidth()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExpandedTouchWidth:I

    .line 1147
    sget-object v1, Landroid/os/Build;->IS_MX:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->IS_MX2:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1148
    :cond_0
    iput-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mShouldDectePaddingAjustment:Z

    .line 1154
    :goto_0
    return-void

    .line 1150
    :cond_1
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "mz_smartbar_padding"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "mz_smartbar_padding_is_max"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mShouldDectePaddingAjustment:Z

    goto :goto_0
.end method


# virtual methods
.method public addTab(Landroid/app/ActionBar$Tab;IZ)V
    .locals 6
    .parameter "tab"
    .parameter "position"
    .parameter "setSelected"

    .prologue
    const/4 v5, 0x0

    .line 435
    iget-boolean v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mEnableBackButton:Z

    if-eqz v1, :cond_0

    .line 436
    add-int/lit8 p2, p2, 0x1

    .line 438
    :cond_0
    invoke-direct {p0, p1, v5}, Lcom/android/internal/widget/ScrollingTabContainerView;->createTabView(Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object v0

    .line 439
    .local v0, tabView:Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x3f80

    invoke-direct {v2, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, p2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 441
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_1

    .line 442
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 444
    :cond_1
    if-eqz p3, :cond_2

    .line 445
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 447
    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v1, :cond_3

    .line 448
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    .line 450
    :cond_3
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;Z)V
    .locals 6
    .parameter "tab"
    .parameter "setSelected"

    .prologue
    const/4 v5, 0x0

    .line 420
    invoke-direct {p0, p1, v5}, Lcom/android/internal/widget/ScrollingTabContainerView;->createTabView(Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object v0

    .line 421
    .local v0, tabView:Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x3f80

    invoke-direct {v2, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 423
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_0

    .line 424
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 426
    :cond_0
    if-eqz p2, :cond_1

    .line 427
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 429
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v1, :cond_2

    .line 430
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    .line 432
    :cond_2
    return-void
.end method

.method public animateToTab(I)V
    .locals 6
    .parameter "position"

    .prologue
    .line 361
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 362
    .local v2, tabCount:I
    iget-boolean v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mShowAtBottom:Z

    if-eqz v4, :cond_0

    if-lez v2, :cond_0

    .line 363
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 364
    .local v0, first:Landroid/view/View;
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 365
    .local v1, last:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    if-gt v4, v5, :cond_0

    .line 382
    .end local v0           #first:Landroid/view/View;
    .end local v1           #last:Landroid/view/View;
    :goto_0
    return-void

    .line 370
    :cond_0
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 371
    .local v3, tabView:Landroid/view/View;
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v4, :cond_1

    .line 372
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 374
    :cond_1
    new-instance v4, Lcom/android/internal/widget/ScrollingTabContainerView$1;

    invoke-direct {v4, p0, v3}, Lcom/android/internal/widget/ScrollingTabContainerView$1;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;Landroid/view/View;)V

    iput-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    .line 381
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public animateToVisibility(I)V
    .locals 7
    .parameter "visibility"

    .prologue
    const-wide/16 v5, 0xc8

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 332
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mVisibilityAnim:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    .line 333
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mVisibilityAnim:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 335
    :cond_0
    if-nez p1, :cond_2

    .line 336
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 337
    invoke-virtual {p0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 339
    :cond_1
    const-string v1, "alpha"

    new-array v2, v2, [F

    const/high16 v3, 0x3f80

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 340
    .local v0, anim:Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 341
    sget-object v1, Lcom/android/internal/widget/ScrollingTabContainerView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 343
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mVisAnimListener:Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 344
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 353
    :goto_0
    return-void

    .line 346
    .end local v0           #anim:Landroid/animation/ObjectAnimator;
    :cond_2
    const-string v1, "alpha"

    new-array v2, v2, [F

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 347
    .restart local v0       #anim:Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 348
    sget-object v1, Lcom/android/internal/widget/ScrollingTabContainerView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 350
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mVisAnimListener:Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 351
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method public getTabFlagDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabFlagDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTabItemCount()I
    .locals 2

    .prologue
    .line 859
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_1

    .line 860
    const/4 v0, 0x0

    .line 866
    :cond_0
    :goto_0
    return v0

    .line 862
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 863
    .local v0, count:I
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMenuView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 864
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public isShowAtBottom()Z
    .locals 1

    .prologue
    .line 832
    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mShowAtBottom:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 386
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 387
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 391
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 315
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 317
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    move-result-object v0

    .line 320
    .local v0, abp:Lcom/android/internal/view/ActionBarPolicy;
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getStackedTabMaxWidth()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    .line 321
    iget-boolean v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mShowAtBottom:Z

    if-eqz v1, :cond_0

    .line 322
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050227

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 329
    :goto_0
    return-void

    .line 324
    :cond_0
    iget v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabHeight:I

    if-lez v1, :cond_1

    .line 325
    iget v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabHeight:I

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    goto :goto_0

    .line 327
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getTabContainerHeight()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 395
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 396
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 399
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 490
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    move-object v0, p2

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    .line 491
    .local v0, tabView:Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar$Tab;->select()V

    .line 492
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v9, 0x0

    .line 172
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    .line 174
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabFlagDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-ne v4, p0, :cond_0

    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 176
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 177
    .local v3, parent:Landroid/view/View;
    instance-of v4, v3, Lcom/android/internal/widget/ActionBarView;

    if-eqz v4, :cond_2

    .line 178
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabFlagDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 185
    .end local v3           #parent:Landroid/view/View;
    :cond_0
    :goto_0
    iget-boolean v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mShowAtBottom:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mSplitActionBar:Z

    if-eqz v4, :cond_3

    .line 186
    invoke-direct {p0, p3, p5}, Lcom/android/internal/widget/ScrollingTabContainerView;->layoutTabs(II)V

    .line 197
    :cond_1
    return-void

    .line 180
    .restart local v3       #parent:Landroid/view/View;
    :cond_2
    instance-of v4, v3, Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v4, :cond_0

    .line 181
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabFlagDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p2, p3, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 187
    .end local v3           #parent:Landroid/view/View;
    :cond_3
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_1

    .line 188
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 190
    .local v1, childCount:I
    const/4 v2, 0x0

    .local v2, index:I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 191
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 192
    .local v0, child:Landroid/view/View;
    invoke-direct {p0, v0, v9}, Lcom/android/internal/widget/ScrollingTabContainerView;->setChildLayoutPosition(Landroid/view/View;I)V

    .line 193
    invoke-virtual {v0, v9}, Landroid/view/View;->expandTouchWidth(I)V

    .line 190
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public onMeasure(II)V
    .locals 12
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 111
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 112
    .local v9, widthMode:I
    const/high16 v10, 0x4000

    if-ne v9, v10, :cond_2

    const/4 v4, 0x1

    .line 113
    .local v4, lockedExpanded:Z
    :goto_0
    invoke-virtual {p0, v4}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    .line 115
    iget-object v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 116
    .local v2, childCount:I
    const/4 v10, 0x1

    if-le v2, v10, :cond_4

    const/high16 v10, 0x4000

    if-eq v9, v10, :cond_0

    const/high16 v10, -0x8000

    if-ne v9, v10, :cond_4

    .line 118
    :cond_0
    const/4 v10, 0x2

    if-le v2, v10, :cond_3

    .line 119
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    int-to-float v10, v10

    const v11, 0x3ecccccd

    mul-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    .line 123
    :goto_1
    iget v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    iget v11, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    iput v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    .line 128
    :goto_2
    iget v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mContentHeight:I

    const/high16 v11, 0x4000

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 130
    if-nez v4, :cond_5

    iget-boolean v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v10, :cond_5

    const/4 v0, 0x1

    .line 132
    .local v0, canCollapse:Z
    :goto_3
    if-eqz v0, :cond_7

    .line 134
    iget-object v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, p2}, Landroid/view/View;->measure(II)V

    .line 135
    iget-object v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    if-le v10, v11, :cond_6

    .line 136
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->performCollapse()V

    .line 144
    :goto_4
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 145
    .local v7, oldWidth:I
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 146
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 148
    .local v6, newWidth:I
    iget-boolean v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mShowAtBottom:Z

    if-eqz v10, :cond_8

    .line 149
    const/4 v1, 0x0

    .line 150
    .local v1, child:Landroid/view/View;
    const/4 v8, 0x0

    .line 151
    .local v8, params:Landroid/view/ViewGroup$LayoutParams;
    const/4 v3, 0x0

    .local v3, index:I
    :goto_5
    if-ge v3, v2, :cond_8

    .line 152
    iget-object v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 153
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 154
    if-eqz v8, :cond_1

    .line 155
    iget v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabWidth:I

    iput v10, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 151
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 112
    .end local v0           #canCollapse:Z
    .end local v1           #child:Landroid/view/View;
    .end local v2           #childCount:I
    .end local v3           #index:I
    .end local v4           #lockedExpanded:Z
    .end local v6           #newWidth:I
    .end local v7           #oldWidth:I
    .end local v8           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 121
    .restart local v2       #childCount:I
    .restart local v4       #lockedExpanded:Z
    :cond_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    iput v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    goto :goto_1

    .line 125
    :cond_4
    const/4 v10, -0x1

    iput v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    goto :goto_2

    .line 130
    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    .line 138
    .restart local v0       #canCollapse:Z
    :cond_6
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->performExpand()Z

    goto :goto_4

    .line 141
    :cond_7
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->performExpand()Z

    goto :goto_4

    .line 159
    .restart local v6       #newWidth:I
    .restart local v7       #oldWidth:I
    :cond_8
    iget-object v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMenuView:Landroid/view/View;

    if-eqz v10, :cond_9

    .line 160
    iget-object v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMenuView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 161
    .local v5, menuWidthSpec:I
    iget-object v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMenuView:Landroid/view/View;

    invoke-virtual {v10, v5, p2}, Landroid/view/View;->measure(II)V

    .line 164
    .end local v5           #menuWidthSpec:I
    :cond_9
    if-eqz v4, :cond_a

    if-eq v7, v6, :cond_a

    .line 166
    iget v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-virtual {p0, v10}, Lcom/android/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    .line 168
    :cond_a
    return-void
.end method

.method public onSmartBarConfigurationChanged()V
    .locals 0

    .prologue
    .line 1134
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->updateSmartBarConfiguration()V

    .line 1135
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    .line 1136
    return-void
.end method

.method public removeAllTabs()V
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 480
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 483
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_1

    .line 484
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    .line 486
    :cond_1
    return-void
.end method

.method public removeTabAt(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 466
    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mEnableBackButton:Z

    if-eqz v0, :cond_0

    .line 467
    add-int/lit8 p1, p1, 0x1

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 470
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_1

    .line 471
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 473
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_2

    .line 474
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    .line 476
    :cond_2
    return-void
.end method

.method public setAllowCollapse(Z)V
    .locals 0
    .parameter "allowCollapse"

    .prologue
    .line 216
    iput-boolean p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    .line 217
    return-void
.end method

.method public setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "backIcon"

    .prologue
    .line 1124
    if-eqz p1, :cond_0

    .line 1125
    iput-object p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    .line 1127
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    if-eqz v0, :cond_0

    .line 1128
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/KeyBackButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1131
    :cond_0
    return-void
.end method

.method public setBackButtonEnable(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 874
    sget-object v0, Landroid/os/Build;->HAS_PERMANENTKEY:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 892
    :cond_0
    :goto_0
    return-void

    .line 879
    :cond_1
    iput-boolean p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mEnableBackButton:Z

    .line 880
    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mEnableBackButton:Z

    if-eqz v0, :cond_3

    .line 881
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    if-nez v0, :cond_2

    .line 882
    new-instance v0, Lcom/android/internal/view/menu/KeyBackButton;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/view/menu/KeyBackButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    .line 883
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/KeyBackButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 886
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeBackButton(Landroid/view/View;)V

    .line 887
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->addBackButton(Landroid/view/View;)V

    goto :goto_0

    .line 888
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    if-eqz v0, :cond_0

    .line 889
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeBackButton(Landroid/view/View;)V

    .line 890
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    goto :goto_0
.end method

.method public setContentHeight(I)V
    .locals 0
    .parameter "contentHeight"

    .prologue
    .line 287
    iput p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mContentHeight:I

    .line 288
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    .line 289
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 836
    iput p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabHeight:I

    .line 837
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 838
    return-void
.end method

.method public setMeasureWithLargestChildEnable(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 848
    iput-boolean p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMeasureWithLargestChild:Z

    .line 849
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 850
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setMeasureWithLargestChildEnabled(Z)V

    .line 852
    :cond_0
    return-void
.end method

.method public setMenu(Landroid/view/View;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 912
    if-eqz p1, :cond_0

    .line 913
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 914
    .local v0, parent:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 915
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 919
    .end local v0           #parent:Landroid/view/ViewGroup;
    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    .line 920
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 922
    :cond_1
    iput-object p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMenuView:Landroid/view/View;

    .line 923
    return-void
.end method

.method public setShowAtBottom(ZZ)V
    .locals 6
    .parameter "atBottom"
    .parameter "splitActionBar"

    .prologue
    .line 799
    iget-boolean v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mShowAtBottom:Z

    if-ne v4, p1, :cond_1

    iget-boolean v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mSplitActionBar:Z

    if-ne v4, p2, :cond_1

    .line 826
    :cond_0
    return-void

    .line 804
    :cond_1
    iput-boolean p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mShowAtBottom:Z

    .line 805
    iput-boolean p2, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mSplitActionBar:Z

    .line 806
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 807
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x1050226

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabWidth:I

    .line 808
    const v4, 0x1050169

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    .line 809
    const v4, 0x1050165

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    .line 810
    const v4, 0x1050167

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPaddingFor4:I

    .line 812
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050166

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mItemPadding:I

    .line 813
    const v4, 0x1050227

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 815
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->updateSmartBarConfiguration()V

    .line 817
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_0

    .line 818
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 819
    .local v1, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 820
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 821
    .local v0, child:Landroid/view/View;
    instance-of v4, v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    if-eqz v4, :cond_2

    .line 822
    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    .end local v0           #child:Landroid/view/View;
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setShowAtBottom(Z)V

    .line 819
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setTabSelected(I)V
    .locals 5
    .parameter "position"

    .prologue
    .line 263
    iput p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    .line 264
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->isCollapsed()Z

    move-result v4

    if-nez v4, :cond_3

    .line 265
    iget-boolean v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mEnableBackButton:Z

    if-eqz v4, :cond_0

    .line 266
    add-int/lit8 p1, p1, 0x1

    .line 268
    :cond_0
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 269
    .local v3, tabCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_4

    .line 270
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 271
    .local v0, child:Landroid/view/View;
    if-ne v1, p1, :cond_2

    const/4 v2, 0x1

    .line 272
    .local v2, isSelected:Z
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 273
    if-eqz v2, :cond_1

    .line 274
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ScrollingTabContainerView;->animateToTab(I)V

    .line 269
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 271
    .end local v2           #isSelected:Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 277
    .end local v0           #child:Landroid/view/View;
    .end local v1           #i:I
    .end local v3           #tabCount:I
    :cond_3
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v4, :cond_4

    .line 278
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, p1}, Landroid/widget/AbsSpinner;->setSelection(I)V

    .line 281
    :cond_4
    iget-boolean v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mShowAtBottom:Z

    if-eqz v4, :cond_5

    .line 282
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    .line 284
    :cond_5
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 1110
    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mShowAtBottom:Z

    if-eqz v0, :cond_0

    .line 1111
    const/4 v0, 0x0

    .line 1113
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public updateTab(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 453
    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mEnableBackButton:Z

    if-eqz v0, :cond_0

    .line 454
    add-int/lit8 p1, p1, 0x1

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->update()V

    .line 457
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_1

    .line 458
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 460
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_2

    .line 461
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    .line 463
    :cond_2
    return-void
.end method
