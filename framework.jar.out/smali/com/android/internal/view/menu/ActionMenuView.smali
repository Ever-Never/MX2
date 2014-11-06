.class public Lcom/android/internal/view/menu/ActionMenuView;
.super Landroid/widget/LinearLayout;
.source "ActionMenuView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;
.implements Lcom/android/internal/view/menu/MenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;,
        Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;
    }
.end annotation


# static fields
.field static final GENERATED_ITEM_PADDING:I = 0x4

.field static final MIN_CELL_SIZE:I = 0x38

.field private static final TAG:Ljava/lang/String; = "ActionMenuView"


# instance fields
.field private mCellWidth:I

.field private mExpandedTouchWidth:I

.field private mExtraPadding:I

.field private mExtraPaddingFor4:I

.field private mFormatItems:Z

.field private mFormatItemsWidth:I

.field private mGeneratedItemPadding:I

.field private mItemPadding:I

.field private mMaxItemHeight:I

.field private mMeasuredExtraWidth:I

.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mMenuShowGravity:I

.field private mMinCellSize:I

.field private mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

.field private mReserveOverflow:Z

.field private mShouldDectePaddingAjustment:Z

.field mSmartBarConfig:Lcom/meizu/widget/SmartBarConfiguration;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/view/menu/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x0

    .line 74
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    iput v5, p0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    .line 63
    iput v5, p0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPaddingFor4:I

    .line 65
    iput v5, p0, Lcom/android/internal/view/menu/ActionMenuView;->mCellWidth:I

    .line 67
    iput v5, p0, Lcom/android/internal/view/menu/ActionMenuView;->mExpandedTouchWidth:I

    .line 1049
    iput-boolean v5, p0, Lcom/android/internal/view/menu/ActionMenuView;->mShouldDectePaddingAjustment:Z

    .line 75
    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->density:F

    .line 77
    .local v1, density:F
    const/high16 v3, 0x4260

    mul-float/2addr v3, v1

    float-to-int v3, v3

    iput v3, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMinCellSize:I

    .line 78
    const/high16 v3, 0x4080

    mul-float/2addr v3, v1

    float-to-int v3, v3

    iput v3, p0, Lcom/android/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    .line 80
    sget-object v3, Lcom/android/internal/R$styleable;->ActionBar:[I

    const v4, 0x10102ce

    invoke-virtual {p1, p2, v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 82
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v3, 0x4

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMaxItemHeight:I

    .line 83
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 85
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 86
    .local v2, res:Landroid/content/res/Resources;
    const v3, 0x1050165

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    .line 87
    const v3, 0x1050167

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPaddingFor4:I

    .line 89
    const v3, 0x1050166

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/view/menu/ActionMenuView;->mItemPadding:I

    .line 90
    const v3, 0x1050169

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/view/menu/ActionMenuView;->mCellWidth:I

    .line 92
    invoke-direct {p0}, Lcom/android/internal/view/menu/ActionMenuView;->updateSmartBarConfiguration()V

    .line 93
    return-void
.end method

.method private getVisibleChildAt(IZ)Landroid/view/View;
    .locals 5
    .parameter "index"
    .parameter "allVisiable"

    .prologue
    .line 802
    if-eqz p2, :cond_0

    .line 803
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 821
    :goto_0
    return-object v3

    .line 805
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 806
    .local v0, childCount:I
    const/4 v2, -0x1

    .line 807
    .local v2, visibleIndex:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 808
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1

    .line 809
    add-int/lit8 v2, v2, 0x1

    .line 812
    :cond_1
    if-ne v2, p1, :cond_3

    .line 813
    move v2, v1

    .line 818
    :cond_2
    if-ltz v2, :cond_4

    if-ge v2, v0, :cond_4

    .line 819
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    .line 807
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 821
    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static isActionView(Landroid/view/View;)Z
    .locals 3
    .parameter "child"

    .prologue
    const/4 v1, 0x0

    .line 1070
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 1072
    .local v0, lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    if-eqz v0, :cond_1

    iget-boolean v2, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v2, :cond_1

    .line 1081
    :cond_0
    :goto_0
    return v1

    .line 1076
    :cond_1
    instance-of v2, p0, Lcom/android/internal/view/menu/ActionMenuItemView;

    if-nez v2, :cond_0

    instance-of v2, p0, Lcom/android/internal/view/menu/KeyBackButton;

    if-nez v2, :cond_0

    instance-of v2, p0, Lcom/android/internal/view/menu/KeyBackButton;

    if-nez v2, :cond_0

    instance-of v2, p0, Lcom/meizu/widget/SelectionButton;

    if-nez v2, :cond_0

    .line 1081
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private layoutMenuItems(III)V
    .locals 20
    .parameter "visibleItemCount"
    .parameter "widthRemaining"
    .parameter "midVertical"

    .prologue
    .line 835
    const/4 v4, 0x0

    .line 836
    .local v4, child:Landroid/view/View;
    const/4 v14, 0x0

    .line 837
    .local v14, startLeft:I
    const/4 v8, 0x0

    .line 838
    .local v8, endRight:I
    const/4 v6, 0x0

    .line 839
    .local v6, childLeft:I
    const/4 v7, 0x0

    .line 840
    .local v7, childRight:I
    const/4 v9, 0x0

    .line 841
    .local v9, height:I
    const/16 v16, 0x0

    .line 842
    .local v16, width:I
    const/4 v15, 0x0

    .line 843
    .local v15, t:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 845
    .local v5, childCount:I
    move/from16 v0, p1

    if-ne v0, v5, :cond_1

    const/4 v11, 0x1

    .line 847
    .local v11, isAllVisible:Z
    :goto_0
    sget-object v17, Landroid/os/Build;->HAS_PERMANENTKEY:Ljava/lang/Boolean;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_8

    .line 848
    const/16 v17, 0x1

    move/from16 v0, p1

    move/from16 v1, v17

    if-eq v0, v1, :cond_0

    const/16 v17, 0x5

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 849
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0x2

    sub-int v17, p2, v17

    div-int v3, v17, p1

    .line 850
    .local v3, cellWidth:I
    const/4 v10, 0x0

    .local v10, index:I
    :goto_1
    move/from16 v0, p1

    if-ge v10, v0, :cond_3

    .line 851
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/internal/view/menu/ActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v4

    .line 852
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 853
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    .line 854
    add-int/lit8 v17, v10, 0x1

    mul-int v8, v17, v3

    .line 855
    add-int v17, v14, v8

    sub-int v17, v17, v16

    div-int/lit8 v17, v17, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v18, v0

    add-int v6, v17, v18

    .line 856
    div-int/lit8 v17, v9, 0x2

    sub-int v15, p3, v17

    .line 857
    add-int v17, v6, v16

    add-int v18, v15, v9

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v6, v15, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 858
    move v14, v8

    .line 850
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 845
    .end local v3           #cellWidth:I
    .end local v10           #index:I
    .end local v11           #isAllVisible:Z
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 860
    .restart local v11       #isAllVisible:Z
    :cond_2
    const/16 v17, 0x2

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    .line 862
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v11}, Lcom/android/internal/view/menu/ActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v4

    .line 863
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 864
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    .line 865
    div-int/lit8 v17, v9, 0x2

    sub-int v15, p3, v17

    .line 866
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v18, v0

    add-int v18, v18, v16

    add-int v19, v15, v9

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v4, v0, v15, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 869
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v11}, Lcom/android/internal/view/menu/ActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v4

    .line 870
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 871
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    .line 872
    div-int/lit8 v17, v9, 0x2

    sub-int v15, p3, v17

    .line 873
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v17, v0

    sub-int v17, p2, v17

    sub-int v17, v17, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v18, v0

    sub-int v18, p2, v18

    add-int v19, v15, v9

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v4, v0, v15, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 1006
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mShouldDectePaddingAjustment:Z

    move/from16 v17, v0

    if-eqz v17, :cond_11

    .line 1007
    const/16 v17, 0x1

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_e

    .line 1008
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v11}, Lcom/android/internal/view/menu/ActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v4

    .line 1009
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v4, v1}, Lcom/android/internal/view/menu/ActionMenuView;->setChildLayoutPosition(Landroid/view/View;I)V

    .line 1030
    :cond_4
    if-lez p1, :cond_12

    const/16 v17, 0x5

    move/from16 v0, p1

    move/from16 v1, v17

    if-ge v0, v1, :cond_12

    .line 1031
    const/4 v10, 0x0

    .restart local v10       #index:I
    :goto_3
    if-ge v10, v5, :cond_12

    .line 1032
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1033
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExpandedTouchWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/view/View;->expandTouchWidth(I)V

    .line 1031
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 874
    .end local v10           #index:I
    :cond_5
    const/16 v17, 0x3

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_6

    .line 876
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v11}, Lcom/android/internal/view/menu/ActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v4

    .line 877
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 878
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    .line 879
    div-int/lit8 v17, v9, 0x2

    sub-int v15, p3, v17

    .line 880
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v18, v0

    add-int v18, v18, v16

    add-int v19, v15, v9

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v4, v0, v15, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 883
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v11}, Lcom/android/internal/view/menu/ActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v4

    .line 884
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 885
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    .line 886
    sub-int v17, p2, v16

    div-int/lit8 v6, v17, 0x2

    .line 887
    div-int/lit8 v17, v9, 0x2

    sub-int v15, p3, v17

    .line 888
    add-int v17, v6, v16

    add-int v18, v15, v9

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v6, v15, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 891
    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v11}, Lcom/android/internal/view/menu/ActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v4

    .line 892
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 893
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    .line 894
    div-int/lit8 v17, v9, 0x2

    sub-int v15, p3, v17

    .line 895
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v17, v0

    sub-int v17, p2, v17

    sub-int v17, v17, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v18, v0

    sub-int v18, p2, v18

    add-int v19, v15, v9

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v4, v0, v15, v1, v2}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_2

    .line 896
    :cond_6
    const/16 v17, 0x4

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 897
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/view/menu/ActionMenuView;->mCellWidth:I

    .line 898
    .restart local v3       #cellWidth:I
    const/4 v10, 0x0

    .restart local v10       #index:I
    :goto_4
    move/from16 v0, p1

    if-ge v10, v0, :cond_3

    .line 899
    div-int/lit8 v17, p1, 0x2

    move/from16 v0, v17

    if-ge v10, v0, :cond_7

    .line 900
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/internal/view/menu/ActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v4

    .line 901
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 902
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    .line 903
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mItemPadding:I

    move/from16 v18, v0

    add-int v18, v18, v3

    mul-int v18, v18, v10

    add-int v6, v17, v18

    .line 905
    div-int/lit8 v17, v9, 0x2

    sub-int v15, p3, v17

    .line 906
    add-int v17, v6, v16

    add-int v18, v15, v9

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v6, v15, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 898
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 908
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/internal/view/menu/ActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v4

    .line 909
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 910
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    .line 911
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v17, v0

    sub-int v17, p2, v17

    add-int/lit8 v18, p1, -0x1

    sub-int v18, v18, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mItemPadding:I

    move/from16 v19, v0

    add-int v19, v19, v3

    mul-int v18, v18, v19

    sub-int v7, v17, v18

    .line 913
    div-int/lit8 v17, v9, 0x2

    sub-int v15, p3, v17

    .line 914
    sub-int v17, v7, v16

    add-int v18, v15, v9

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v15, v7, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_5

    .line 919
    .end local v3           #cellWidth:I
    .end local v10           #index:I
    :cond_8
    const/16 v17, 0x1

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMenuShowGravity:I

    move/from16 v17, v0

    if-lez v17, :cond_9

    .line 920
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v11}, Lcom/android/internal/view/menu/ActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v4

    .line 921
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    .line 922
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 923
    const/4 v12, 0x0

    .line 924
    .local v12, l:I
    div-int/lit8 v17, v9, 0x2

    sub-int v15, p3, v17

    .line 925
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMenuShowGravity:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 942
    :goto_6
    :pswitch_0
    add-int v17, v12, v16

    add-int v18, v15, v9

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v12, v15, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_2

    .line 927
    :pswitch_1
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    .line 928
    goto :goto_6

    .line 931
    :pswitch_2
    div-int/lit8 v13, p2, 0x2

    .line 932
    .local v13, midHorizontal:I
    div-int/lit8 v17, v16, 0x2

    sub-int v12, v13, v17

    .line 933
    goto :goto_6

    .line 936
    .end local v13           #midHorizontal:I
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v17, v0

    sub-int v17, p2, v17

    sub-int v12, v17, v16

    .line 937
    goto :goto_6

    .line 943
    .end local v12           #l:I
    :cond_9
    const/16 v17, 0x1

    move/from16 v0, p1

    move/from16 v1, v17

    if-eq v0, v1, :cond_a

    const/16 v17, 0x5

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_b

    .line 944
    :cond_a
    div-int v3, p2, p1

    .line 945
    .restart local v3       #cellWidth:I
    const/4 v10, 0x0

    .restart local v10       #index:I
    :goto_7
    move/from16 v0, p1

    if-ge v10, v0, :cond_3

    .line 946
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/internal/view/menu/ActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v4

    .line 947
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 948
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    .line 949
    add-int/lit8 v17, v10, 0x1

    mul-int v8, v17, v3

    .line 950
    add-int v17, v14, v8

    sub-int v17, v17, v16

    div-int/lit8 v6, v17, 0x2

    .line 951
    div-int/lit8 v17, v9, 0x2

    sub-int v15, p3, v17

    .line 952
    add-int v17, v6, v16

    add-int v18, v15, v9

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v6, v15, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 953
    move v14, v8

    .line 945
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 955
    .end local v3           #cellWidth:I
    .end local v10           #index:I
    :cond_b
    const/16 v17, 0x2

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_c

    .line 957
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v11}, Lcom/android/internal/view/menu/ActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v4

    .line 958
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 959
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    .line 960
    div-int/lit8 v17, v9, 0x2

    sub-int v15, p3, v17

    .line 961
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v18, v0

    add-int v18, v18, v16

    add-int v19, v15, v9

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v4, v0, v15, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 964
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v11}, Lcom/android/internal/view/menu/ActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v4

    .line 965
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 966
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    .line 967
    div-int/lit8 v17, v9, 0x2

    sub-int v15, p3, v17

    .line 968
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v17, v0

    sub-int v17, p2, v17

    sub-int v17, v17, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v18, v0

    sub-int v18, p2, v18

    add-int v19, v15, v9

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v4, v0, v15, v1, v2}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_2

    .line 969
    :cond_c
    const/16 v17, 0x3

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_d

    .line 971
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v11}, Lcom/android/internal/view/menu/ActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v4

    .line 972
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 973
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    .line 974
    div-int/lit8 v17, v9, 0x2

    sub-int v15, p3, v17

    .line 975
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v18, v0

    add-int v18, v18, v16

    add-int v19, v15, v9

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v4, v0, v15, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 978
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v11}, Lcom/android/internal/view/menu/ActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v4

    .line 979
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 980
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    .line 981
    sub-int v17, p2, v16

    div-int/lit8 v6, v17, 0x2

    .line 982
    div-int/lit8 v17, v9, 0x2

    sub-int v15, p3, v17

    .line 983
    add-int v17, v6, v16

    add-int v18, v15, v9

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v6, v15, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 986
    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v11}, Lcom/android/internal/view/menu/ActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v4

    .line 987
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 988
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    .line 989
    div-int/lit8 v17, v9, 0x2

    sub-int v15, p3, v17

    .line 990
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v17, v0

    sub-int v17, p2, v17

    sub-int v17, v17, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v18, v0

    sub-int v18, p2, v18

    add-int v19, v15, v9

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v4, v0, v15, v1, v2}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_2

    .line 991
    :cond_d
    const/16 v17, 0x4

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 992
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPaddingFor4:I

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0x2

    sub-int v17, p2, v17

    div-int v3, v17, p1

    .line 993
    .restart local v3       #cellWidth:I
    const/4 v10, 0x0

    .restart local v10       #index:I
    :goto_8
    move/from16 v0, p1

    if-ge v10, v0, :cond_3

    .line 994
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/internal/view/menu/ActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v4

    .line 995
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 996
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    .line 997
    add-int/lit8 v17, v10, 0x1

    mul-int v8, v17, v3

    .line 998
    add-int v17, v14, v8

    sub-int v17, v17, v16

    div-int/lit8 v17, v17, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPaddingFor4:I

    move/from16 v18, v0

    add-int v6, v17, v18

    .line 999
    div-int/lit8 v17, v9, 0x2

    sub-int v15, p3, v17

    .line 1000
    add-int v17, v6, v16

    add-int v18, v15, v9

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v6, v15, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1001
    move v14, v8

    .line 993
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 1011
    .end local v3           #cellWidth:I
    .end local v10           #index:I
    :cond_e
    const/4 v10, 0x0

    .restart local v10       #index:I
    :goto_9
    move/from16 v0, p1

    if-ge v10, v0, :cond_4

    .line 1012
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/internal/view/menu/ActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v4

    .line 1014
    if-nez v10, :cond_f

    .line 1015
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v4, v1}, Lcom/android/internal/view/menu/ActionMenuView;->setChildLayoutPosition(Landroid/view/View;I)V

    .line 1011
    :goto_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 1016
    :cond_f
    add-int/lit8 v17, p1, -0x1

    move/from16 v0, v17

    if-ne v10, v0, :cond_10

    .line 1017
    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v4, v1}, Lcom/android/internal/view/menu/ActionMenuView;->setChildLayoutPosition(Landroid/view/View;I)V

    goto :goto_a

    .line 1019
    :cond_10
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v4, v1}, Lcom/android/internal/view/menu/ActionMenuView;->setChildLayoutPosition(Landroid/view/View;I)V

    goto :goto_a

    .line 1024
    .end local v10           #index:I
    :cond_11
    const/4 v10, 0x0

    .restart local v10       #index:I
    :goto_b
    if-ge v10, v5, :cond_4

    .line 1025
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1026
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v4, v1}, Lcom/android/internal/view/menu/ActionMenuView;->setChildLayoutPosition(Landroid/view/View;I)V

    .line 1024
    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    .line 1036
    .end local v10           #index:I
    :cond_12
    return-void

    .line 925
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method static measureChildForCells(Landroid/view/View;IIII)I
    .locals 13
    .parameter "child"
    .parameter "cellSize"
    .parameter "cellsRemaining"
    .parameter "parentHeightMeasureSpec"
    .parameter "parentHeightPadding"

    .prologue
    .line 421
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 423
    .local v8, lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    sub-int v2, v11, p4

    .line 425
    .local v2, childHeightSize:I
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 426
    .local v1, childHeightMode:I
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 428
    .local v3, childHeightSpec:I
    instance-of v11, p0, Lcom/android/internal/view/menu/ActionMenuItemView;

    if-eqz v11, :cond_3

    move-object v11, p0

    check-cast v11, Lcom/android/internal/view/menu/ActionMenuItemView;

    move-object v7, v11

    .line 430
    .local v7, itemView:Lcom/android/internal/view/menu/ActionMenuItemView;
    :goto_0
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v6, 0x1

    .line 432
    .local v6, hasText:Z
    :goto_1
    const/4 v0, 0x0

    .line 433
    .local v0, cellsUsed:I
    if-lez p2, :cond_2

    if-eqz v6, :cond_0

    const/4 v11, 0x2

    if-lt p2, v11, :cond_2

    .line 434
    :cond_0
    mul-int v11, p1, p2

    const/high16 v12, -0x8000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 436
    .local v4, childWidthSpec:I
    invoke-virtual {p0, v4, v3}, Landroid/view/View;->measure(II)V

    .line 438
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 439
    .local v9, measuredWidth:I
    div-int v0, v9, p1

    .line 440
    invoke-static {p0}, Lcom/android/internal/view/menu/ActionMenuView;->isActionView(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 444
    rem-int v11, v9, p1

    if-eqz v11, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 446
    :cond_1
    if-eqz v6, :cond_2

    const/4 v11, 0x2

    if-ge v0, v11, :cond_2

    const/4 v0, 0x2

    .line 449
    .end local v4           #childWidthSpec:I
    .end local v9           #measuredWidth:I
    :cond_2
    iget-boolean v11, v8, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v11, :cond_5

    if-eqz v6, :cond_5

    const/4 v5, 0x1

    .line 450
    .local v5, expandable:Z
    :goto_2
    iput-boolean v5, v8, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    .line 452
    iput v0, v8, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 453
    mul-int v10, v0, p1

    .line 454
    .local v10, targetWidth:I
    const/high16 v11, 0x4000

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {p0, v11, v3}, Landroid/view/View;->measure(II)V

    .line 456
    return v0

    .line 428
    .end local v0           #cellsUsed:I
    .end local v5           #expandable:Z
    .end local v6           #hasText:Z
    .end local v7           #itemView:Lcom/android/internal/view/menu/ActionMenuItemView;
    .end local v10           #targetWidth:I
    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    .line 430
    .restart local v7       #itemView:Lcom/android/internal/view/menu/ActionMenuItemView;
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .line 449
    .restart local v0       #cellsUsed:I
    .restart local v6       #hasText:Z
    :cond_5
    const/4 v5, 0x0

    goto :goto_2
.end method

.method private onMeasureExactFormat(II)V
    .locals 51
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 153
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v23

    .line 154
    .local v23, heightMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v46

    .line 155
    .local v46, widthSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v25

    .line 157
    .local v25, heightSize:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v47

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v48

    add-int v45, v47, v48

    .line 158
    .local v45, widthPadding:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v47

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v48

    add-int v24, v47, v48

    .line 160
    .local v24, heightPadding:I
    const/high16 v47, 0x4000

    move/from16 v0, v23

    move/from16 v1, v47

    if-ne v0, v1, :cond_1

    sub-int v47, v25, v24

    const/high16 v48, 0x4000

    invoke-static/range {v47 .. v48}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v31

    .line 165
    .local v31, itemHeightSpec:I
    :goto_0
    sub-int v46, v46, v45

    .line 167
    move/from16 v10, v46

    .line 168
    .local v10, cellsWidthSize:I
    sget-object v47, Landroid/os/Build;->HAS_PERMANENTKEY:Ljava/lang/Boolean;

    invoke-virtual/range {v47 .. v47}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v47

    if-nez v47, :cond_0

    .line 169
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v47, v0

    mul-int/lit8 v47, v47, 0x2

    sub-int v10, v10, v47

    .line 172
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMinCellSize:I

    move/from16 v47, v0

    div-int v4, v10, v47

    .line 173
    .local v4, cellCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMinCellSize:I

    move/from16 v47, v0

    rem-int v6, v10, v47

    .line 175
    .local v6, cellSizeRemaining:I
    if-nez v4, :cond_2

    .line 177
    const/16 v47, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 404
    :goto_1
    return-void

    .line 160
    .end local v4           #cellCount:I
    .end local v6           #cellSizeRemaining:I
    .end local v10           #cellsWidthSize:I
    .end local v31           #itemHeightSpec:I
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMaxItemHeight:I

    move/from16 v47, v0

    sub-int v48, v25, v24

    invoke-static/range {v47 .. v48}, Ljava/lang/Math;->min(II)I

    move-result v47

    const/high16 v48, -0x8000

    invoke-static/range {v47 .. v48}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v31

    goto :goto_0

    .line 181
    .restart local v4       #cellCount:I
    .restart local v6       #cellSizeRemaining:I
    .restart local v10       #cellsWidthSize:I
    .restart local v31       #itemHeightSpec:I
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMinCellSize:I

    move/from16 v47, v0

    div-int v48, v6, v4

    add-int v5, v47, v48

    .line 183
    .local v5, cellSize:I
    move v8, v4

    .line 184
    .local v8, cellsRemaining:I
    const/16 v34, 0x0

    .line 185
    .local v34, maxChildHeight:I
    const/16 v33, 0x0

    .line 186
    .local v33, maxCellsUsed:I
    const/16 v19, 0x0

    .line 187
    .local v19, expandableItemCount:I
    const/16 v43, 0x0

    .line 188
    .local v43, visibleItemCount:I
    const/16 v22, 0x0

    .line 191
    .local v22, hasOverflow:Z
    const/16 v21, 0x0

    .line 194
    .local v21, hasCustomAction:Z
    const-wide/16 v41, 0x0

    .line 196
    .local v41, smallestItemsAt:J
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    .line 198
    .local v13, childCount:I
    invoke-static/range {v31 .. v31}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v47

    sub-int v15, v47, v24

    .line 199
    .local v15, childHeightSize:I
    invoke-static/range {v31 .. v31}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v14

    .line 200
    .local v14, childHeightMode:I
    invoke-static {v15, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    .line 201
    .local v16, childHeightSpec:I
    const/16 v17, 0x0

    .line 203
    .local v17, childWidthSpec:I
    const/16 v26, 0x0

    .local v26, i:I
    :goto_2
    move/from16 v0, v26

    if-ge v0, v13, :cond_d

    .line 204
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 205
    .local v12, child:Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v47

    const/16 v48, 0x8

    move/from16 v0, v47

    move/from16 v1, v48

    if-ne v0, v1, :cond_3

    .line 203
    :goto_3
    add-int/lit8 v26, v26, 0x1

    goto :goto_2

    .line 208
    :cond_3
    instance-of v0, v12, Lcom/android/internal/view/menu/ActionMenuItemView;

    move/from16 v28, v0

    .line 210
    .local v28, isGeneratedItem:Z
    instance-of v0, v12, Lcom/meizu/widget/SelectionButton;

    move/from16 v30, v0

    .line 212
    .local v30, isSelectionButton:Z
    instance-of v0, v12, Lcom/android/internal/view/menu/KeyBackButton;

    move/from16 v27, v0

    .line 214
    .local v27, isBackButton:Z
    instance-of v0, v12, Lcom/meizu/widget/MzActionMenuItem;

    move/from16 v29, v0

    .line 215
    .local v29, isMzActionMenuItem:Z
    add-int/lit8 v43, v43, 0x1

    .line 217
    if-eqz v28, :cond_4

    .line 220
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v47, v0

    const/16 v48, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v49, v0

    const/16 v50, 0x0

    move/from16 v0, v47

    move/from16 v1, v48

    move/from16 v2, v49

    move/from16 v3, v50

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 223
    :cond_4
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v32

    check-cast v32, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 224
    .local v32, lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, v32

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 225
    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, v32

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    .line 226
    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, v32

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 227
    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, v32

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    .line 228
    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, v32

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 229
    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, v32

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 230
    if-eqz v28, :cond_8

    move-object/from16 v47, v12

    check-cast v47, Lcom/android/internal/view/menu/ActionMenuItemView;

    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v47

    if-eqz v47, :cond_8

    const/16 v47, 0x1

    :goto_4
    move/from16 v0, v47

    move-object/from16 v1, v32

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 233
    move-object/from16 v0, v32

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v47, v0

    if-eqz v47, :cond_9

    const/4 v7, 0x1

    .line 235
    .local v7, cellsAvailable:I
    :goto_5
    move/from16 v0, v31

    move/from16 v1, v24

    invoke-static {v12, v5, v7, v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v9

    .line 238
    .local v9, cellsUsed:I
    move/from16 v0, v33

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v33

    .line 239
    move-object/from16 v0, v32

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    move/from16 v47, v0

    if-eqz v47, :cond_5

    add-int/lit8 v19, v19, 0x1

    .line 240
    :cond_5
    move-object/from16 v0, v32

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v47, v0

    if-eqz v47, :cond_6

    const/16 v22, 0x1

    .line 242
    :cond_6
    sub-int/2addr v8, v9

    .line 243
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v47

    move/from16 v0, v34

    move/from16 v1, v47

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v34

    .line 244
    const/16 v47, 0x1

    move/from16 v0, v47

    if-ne v9, v0, :cond_7

    const/16 v47, 0x1

    shl-int v47, v47, v26

    move/from16 v0, v47

    int-to-long v0, v0

    move-wide/from16 v47, v0

    or-long v41, v41, v47

    .line 246
    :cond_7
    if-eqz v28, :cond_a

    move-object/from16 v47, v12

    check-cast v47, Lcom/android/internal/view/menu/ActionMenuItemView;

    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v47

    if-eqz v47, :cond_a

    .line 247
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mCellWidth:I

    move/from16 v47, v0

    const/high16 v48, -0x8000

    invoke-static/range {v47 .. v48}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    .line 248
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v16

    invoke-virtual {v0, v12, v1, v2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    goto/16 :goto_3

    .line 230
    .end local v7           #cellsAvailable:I
    .end local v9           #cellsUsed:I
    :cond_8
    const/16 v47, 0x0

    goto :goto_4

    :cond_9
    move v7, v8

    .line 233
    goto :goto_5

    .line 249
    .restart local v7       #cellsAvailable:I
    .restart local v9       #cellsUsed:I
    :cond_a
    if-nez v28, :cond_b

    move-object/from16 v0, v32

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v47, v0

    if-nez v47, :cond_b

    if-nez v30, :cond_b

    if-nez v27, :cond_b

    if-eqz v29, :cond_c

    .line 251
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mCellWidth:I

    move/from16 v47, v0

    const/high16 v48, 0x4000

    invoke-static/range {v47 .. v48}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    .line 252
    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v12, v0, v1}, Landroid/view/View;->measure(II)V

    goto/16 :goto_3

    .line 254
    :cond_c
    const/16 v21, 0x1

    goto/16 :goto_3

    .line 260
    .end local v7           #cellsAvailable:I
    .end local v9           #cellsUsed:I
    .end local v12           #child:Landroid/view/View;
    .end local v27           #isBackButton:Z
    .end local v28           #isGeneratedItem:Z
    .end local v29           #isMzActionMenuItem:Z
    .end local v30           #isSelectionButton:Z
    .end local v32           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_d
    if-eqz v22, :cond_f

    const/16 v47, 0x2

    move/from16 v0, v43

    move/from16 v1, v47

    if-ne v0, v1, :cond_f

    const/4 v11, 0x1

    .line 265
    .local v11, centerSingleExpandedItem:Z
    :goto_6
    const/16 v39, 0x0

    .line 266
    .local v39, needsExpansion:Z
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMenuShowGravity:I

    move/from16 v47, v0

    if-nez v47, :cond_13

    if-lez v19, :cond_13

    if-lez v8, :cond_13

    .line 267
    const v35, 0x7fffffff

    .line 268
    .local v35, minCells:I
    const-wide/16 v36, 0x0

    .line 269
    .local v36, minCellsAt:J
    const/16 v38, 0x0

    .line 270
    .local v38, minCellsItemCount:I
    const/16 v26, 0x0

    :goto_8
    move/from16 v0, v26

    if-ge v0, v13, :cond_12

    .line 271
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 272
    .restart local v12       #child:Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v32

    check-cast v32, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 275
    .restart local v32       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v32

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    move/from16 v47, v0

    if-nez v47, :cond_10

    .line 270
    :cond_e
    :goto_9
    add-int/lit8 v26, v26, 0x1

    goto :goto_8

    .line 260
    .end local v11           #centerSingleExpandedItem:Z
    .end local v12           #child:Landroid/view/View;
    .end local v32           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v35           #minCells:I
    .end local v36           #minCellsAt:J
    .end local v38           #minCellsItemCount:I
    .end local v39           #needsExpansion:Z
    :cond_f
    const/4 v11, 0x0

    goto :goto_6

    .line 278
    .restart local v11       #centerSingleExpandedItem:Z
    .restart local v12       #child:Landroid/view/View;
    .restart local v32       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .restart local v35       #minCells:I
    .restart local v36       #minCellsAt:J
    .restart local v38       #minCellsItemCount:I
    .restart local v39       #needsExpansion:Z
    :cond_10
    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v47, v0

    move/from16 v0, v47

    move/from16 v1, v35

    if-ge v0, v1, :cond_11

    .line 279
    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v35, v0

    .line 280
    const/16 v47, 0x1

    shl-int v47, v47, v26

    move/from16 v0, v47

    int-to-long v0, v0

    move-wide/from16 v36, v0

    .line 281
    const/16 v38, 0x1

    goto :goto_9

    .line 282
    :cond_11
    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v47, v0

    move/from16 v0, v47

    move/from16 v1, v35

    if-ne v0, v1, :cond_e

    .line 283
    const/16 v47, 0x1

    shl-int v47, v47, v26

    move/from16 v0, v47

    int-to-long v0, v0

    move-wide/from16 v47, v0

    or-long v36, v36, v47

    .line 284
    add-int/lit8 v38, v38, 0x1

    goto :goto_9

    .line 289
    .end local v12           #child:Landroid/view/View;
    .end local v32           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_12
    or-long v41, v41, v36

    .line 291
    move/from16 v0, v38

    if-le v0, v8, :cond_18

    .line 320
    .end local v35           #minCells:I
    .end local v36           #minCellsAt:J
    .end local v38           #minCellsItemCount:I
    :cond_13
    if-nez v22, :cond_1d

    const/16 v47, 0x1

    move/from16 v0, v43

    move/from16 v1, v47

    if-ne v0, v1, :cond_1d

    const/16 v40, 0x1

    .line 328
    .local v40, singleItem:Z
    :goto_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMenuShowGravity:I

    move/from16 v47, v0

    if-nez v47, :cond_25

    if-lez v8, :cond_25

    const-wide/16 v47, 0x0

    cmp-long v47, v41, v47

    if-eqz v47, :cond_25

    if-eqz v21, :cond_25

    add-int/lit8 v47, v43, -0x1

    move/from16 v0, v47

    if-lt v8, v0, :cond_14

    if-nez v40, :cond_14

    const/16 v47, 0x1

    move/from16 v0, v33

    move/from16 v1, v47

    if-le v0, v1, :cond_25

    .line 331
    :cond_14
    invoke-static/range {v41 .. v42}, Ljava/lang/Long;->bitCount(J)I

    move-result v47

    move/from16 v0, v47

    int-to-float v0, v0

    move/from16 v18, v0

    .line 333
    .local v18, expandCount:F
    if-nez v40, :cond_16

    .line 335
    const-wide/16 v47, 0x1

    and-long v47, v47, v41

    const-wide/16 v49, 0x0

    cmp-long v47, v47, v49

    if-eqz v47, :cond_15

    .line 336
    const/16 v47, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v32

    check-cast v32, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 337
    .restart local v32       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v32

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v47, v0

    if-nez v47, :cond_15

    const/high16 v47, 0x3f00

    sub-float v18, v18, v47

    .line 339
    .end local v32           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_15
    const/16 v47, 0x1

    add-int/lit8 v48, v13, -0x1

    shl-int v47, v47, v48

    move/from16 v0, v47

    int-to-long v0, v0

    move-wide/from16 v47, v0

    and-long v47, v47, v41

    const-wide/16 v49, 0x0

    cmp-long v47, v47, v49

    if-eqz v47, :cond_16

    .line 340
    add-int/lit8 v47, v13, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v32

    check-cast v32, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 341
    .restart local v32       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v32

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v47, v0

    if-nez v47, :cond_16

    const/high16 v47, 0x3f00

    sub-float v18, v18, v47

    .line 345
    .end local v32           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_16
    const/16 v47, 0x0

    cmpl-float v47, v18, v47

    if-lez v47, :cond_1e

    mul-int v47, v8, v5

    move/from16 v0, v47

    int-to-float v0, v0

    move/from16 v47, v0

    div-float v47, v47, v18

    move/from16 v0, v47

    float-to-int v0, v0

    move/from16 v20, v0

    .line 348
    .local v20, extraPixels:I
    :goto_b
    const/16 v26, 0x0

    :goto_c
    move/from16 v0, v26

    if-ge v0, v13, :cond_24

    .line 349
    const/16 v47, 0x1

    shl-int v47, v47, v26

    move/from16 v0, v47

    int-to-long v0, v0

    move-wide/from16 v47, v0

    and-long v47, v47, v41

    const-wide/16 v49, 0x0

    cmp-long v47, v47, v49

    if-nez v47, :cond_1f

    .line 348
    :cond_17
    :goto_d
    add-int/lit8 v26, v26, 0x1

    goto :goto_c

    .line 294
    .end local v18           #expandCount:F
    .end local v20           #extraPixels:I
    .end local v40           #singleItem:Z
    .restart local v35       #minCells:I
    .restart local v36       #minCellsAt:J
    .restart local v38       #minCellsItemCount:I
    :cond_18
    add-int/lit8 v35, v35, 0x1

    .line 296
    const/16 v26, 0x0

    :goto_e
    move/from16 v0, v26

    if-ge v0, v13, :cond_1c

    .line 297
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 298
    .restart local v12       #child:Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v32

    check-cast v32, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 299
    .restart local v32       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    const/16 v47, 0x1

    shl-int v47, v47, v26

    move/from16 v0, v47

    int-to-long v0, v0

    move-wide/from16 v47, v0

    and-long v47, v47, v36

    const-wide/16 v49, 0x0

    cmp-long v47, v47, v49

    if-nez v47, :cond_1a

    .line 301
    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v47, v0

    move/from16 v0, v47

    move/from16 v1, v35

    if-ne v0, v1, :cond_19

    const/16 v47, 0x1

    shl-int v47, v47, v26

    move/from16 v0, v47

    int-to-long v0, v0

    move-wide/from16 v47, v0

    or-long v41, v41, v47

    .line 296
    :cond_19
    :goto_f
    add-int/lit8 v26, v26, 0x1

    goto :goto_e

    .line 305
    :cond_1a
    if-eqz v11, :cond_1b

    move-object/from16 v0, v32

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v47, v0

    if-eqz v47, :cond_1b

    const/16 v47, 0x1

    move/from16 v0, v47

    if-ne v8, v0, :cond_1b

    .line 307
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v47, v0

    add-int v47, v47, v5

    const/16 v48, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v49, v0

    const/16 v50, 0x0

    move/from16 v0, v47

    move/from16 v1, v48

    move/from16 v2, v49

    move/from16 v3, v50

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 309
    :cond_1b
    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v47, v0

    add-int/lit8 v47, v47, 0x1

    move/from16 v0, v47

    move-object/from16 v1, v32

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 310
    const/16 v47, 0x1

    move/from16 v0, v47

    move-object/from16 v1, v32

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 311
    add-int/lit8 v8, v8, -0x1

    goto :goto_f

    .line 314
    .end local v12           #child:Landroid/view/View;
    .end local v32           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_1c
    const/16 v39, 0x1

    .line 315
    goto/16 :goto_7

    .line 320
    .end local v35           #minCells:I
    .end local v36           #minCellsAt:J
    .end local v38           #minCellsItemCount:I
    :cond_1d
    const/16 v40, 0x0

    goto/16 :goto_a

    .line 345
    .restart local v18       #expandCount:F
    .restart local v40       #singleItem:Z
    :cond_1e
    const/16 v20, 0x0

    goto/16 :goto_b

    .line 351
    .restart local v20       #extraPixels:I
    :cond_1f
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 352
    .restart local v12       #child:Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v32

    check-cast v32, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 353
    .restart local v32       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    instance-of v0, v12, Lcom/android/internal/view/menu/ActionMenuItemView;

    move/from16 v47, v0

    if-eqz v47, :cond_21

    .line 355
    move/from16 v0, v20

    move-object/from16 v1, v32

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    .line 356
    const/16 v47, 0x1

    move/from16 v0, v47

    move-object/from16 v1, v32

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 357
    if-nez v26, :cond_20

    move-object/from16 v0, v32

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v47, v0

    if-nez v47, :cond_20

    .line 360
    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v47, v0

    div-int/lit8 v47, v47, 0x2

    move/from16 v0, v47

    move-object/from16 v1, v32

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 362
    :cond_20
    const/16 v39, 0x1

    goto/16 :goto_d

    .line 363
    :cond_21
    move-object/from16 v0, v32

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v47, v0

    if-eqz v47, :cond_22

    .line 364
    move/from16 v0, v20

    move-object/from16 v1, v32

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    .line 365
    const/16 v47, 0x1

    move/from16 v0, v47

    move-object/from16 v1, v32

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 366
    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v47, v0

    div-int/lit8 v47, v47, 0x2

    move/from16 v0, v47

    move-object/from16 v1, v32

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 367
    const/16 v39, 0x1

    goto/16 :goto_d

    .line 372
    :cond_22
    if-eqz v26, :cond_23

    .line 373
    div-int/lit8 v47, v20, 0x2

    move/from16 v0, v47

    move-object/from16 v1, v32

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 375
    :cond_23
    add-int/lit8 v47, v13, -0x1

    move/from16 v0, v26

    move/from16 v1, v47

    if-eq v0, v1, :cond_17

    .line 376
    div-int/lit8 v47, v20, 0x2

    move/from16 v0, v47

    move-object/from16 v1, v32

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto/16 :goto_d

    .line 381
    .end local v12           #child:Landroid/view/View;
    .end local v32           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_24
    const/4 v8, 0x0

    .line 385
    .end local v18           #expandCount:F
    .end local v20           #extraPixels:I
    :cond_25
    if-eqz v39, :cond_27

    .line 386
    const/16 v26, 0x0

    :goto_10
    move/from16 v0, v26

    if-ge v0, v13, :cond_27

    .line 387
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 388
    .restart local v12       #child:Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v32

    check-cast v32, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 390
    .restart local v32       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v32

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    move/from16 v47, v0

    if-nez v47, :cond_26

    .line 386
    :goto_11
    add-int/lit8 v26, v26, 0x1

    goto :goto_10

    .line 392
    :cond_26
    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v47, v0

    mul-int v47, v47, v5

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    move/from16 v48, v0

    add-int v44, v47, v48

    .line 393
    .local v44, width:I
    const/high16 v47, 0x4000

    move/from16 v0, v44

    move/from16 v1, v47

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v47

    move/from16 v0, v47

    move/from16 v1, v31

    invoke-virtual {v12, v0, v1}, Landroid/view/View;->measure(II)V

    goto :goto_11

    .line 398
    .end local v12           #child:Landroid/view/View;
    .end local v32           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v44           #width:I
    :cond_27
    const/high16 v47, 0x4000

    move/from16 v0, v23

    move/from16 v1, v47

    if-eq v0, v1, :cond_28

    .line 399
    move/from16 v25, v34

    .line 402
    :cond_28
    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 403
    mul-int v47, v8, v5

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView;->mMeasuredExtraWidth:I

    goto/16 :goto_1
.end method

.method private setChildLayoutPosition(Landroid/view/View;I)V
    .locals 1
    .parameter "child"
    .parameter "layoutPosition"

    .prologue
    .line 1039
    instance-of v0, p1, Lcom/meizu/widget/LayoutPositionState;

    if-eqz v0, :cond_0

    .line 1040
    check-cast p1, Lcom/meizu/widget/LayoutPositionState;

    .end local p1
    invoke-interface {p1, p2}, Lcom/meizu/widget/LayoutPositionState;->setLayoutPosition(I)V

    .line 1042
    :cond_0
    return-void
.end method

.method private updateSmartBarConfiguration()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1051
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/widget/SmartBarConfiguration;->get(Landroid/content/Context;)Lcom/meizu/widget/SmartBarConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mSmartBarConfig:Lcom/meizu/widget/SmartBarConfiguration;

    .line 1052
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mSmartBarConfig:Lcom/meizu/widget/SmartBarConfiguration;

    invoke-virtual {v1}, Lcom/meizu/widget/SmartBarConfiguration;->getHorizontalPadding()I

    move-result v1

    iput v1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    .line 1053
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mSmartBarConfig:Lcom/meizu/widget/SmartBarConfiguration;

    invoke-virtual {v1}, Lcom/meizu/widget/SmartBarConfiguration;->getHorizontalPaddingFor4()I

    move-result v1

    iput v1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPaddingFor4:I

    .line 1054
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mSmartBarConfig:Lcom/meizu/widget/SmartBarConfiguration;

    invoke-virtual {v1}, Lcom/meizu/widget/SmartBarConfiguration;->getButtonPadding()I

    move-result v1

    iput v1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mItemPadding:I

    .line 1055
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mSmartBarConfig:Lcom/meizu/widget/SmartBarConfiguration;

    invoke-virtual {v1}, Lcom/meizu/widget/SmartBarConfiguration;->getButtonWidth()I

    move-result v1

    iput v1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mCellWidth:I

    .line 1056
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mSmartBarConfig:Lcom/meizu/widget/SmartBarConfiguration;

    invoke-virtual {v1}, Lcom/meizu/widget/SmartBarConfiguration;->getExpandedTouchWidth()I

    move-result v1

    iput v1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mExpandedTouchWidth:I

    .line 1060
    sget-object v1, Landroid/os/Build;->IS_MX:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->IS_MX2:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1061
    :cond_0
    iput-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mShouldDectePaddingAjustment:Z

    .line 1067
    :goto_0
    return-void

    .line 1063
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
    iput-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mShouldDectePaddingAjustment:Z

    goto :goto_0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 710
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 749
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 683
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;-><init>(II)V

    .line 685
    .local v0, params:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 686
    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 691
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2
    .parameter "p"

    .prologue
    .line 696
    if-eqz p1, :cond_2

    .line 697
    instance-of v1, p1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    if-eqz v1, :cond_1

    new-instance v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    check-cast p1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .end local p1
    invoke-direct {v0, p1}, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;-><init>(Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;)V

    .line 700
    .local v0, result:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :goto_0
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gtz v1, :cond_0

    .line 701
    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 705
    .end local v0           #result:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_0
    :goto_1
    return-object v0

    .line 697
    .restart local p1
    :cond_1
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 705
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    goto :goto_1
.end method

.method public generateOverflowButtonLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2

    .prologue
    .line 714
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    .line 715
    .local v0, result:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 716
    return-object v0
.end method

.method public getWindowAnimations()I
    .locals 1

    .prologue
    .line 724
    const/4 v0, 0x0

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .locals 4
    .parameter "childIndex"

    .prologue
    .line 733
    if-nez p1, :cond_1

    .line 734
    const/4 v2, 0x0

    .line 745
    :cond_0
    :goto_0
    return v2

    .line 736
    :cond_1
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 737
    .local v1, childBefore:Landroid/view/View;
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 738
    .local v0, child:Landroid/view/View;
    const/4 v2, 0x0

    .line 739
    .local v2, result:Z
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_2

    instance-of v3, v1, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_2

    .line 740
    check-cast v1, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;

    .end local v1           #childBefore:Landroid/view/View;
    invoke-interface {v1}, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    move-result v3

    or-int/2addr v2, v3

    .line 742
    :cond_2
    if-lez p1, :cond_0

    instance-of v3, v0, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_0

    .line 743
    check-cast v0, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;

    .end local v0           #child:Landroid/view/View;
    invoke-interface {v0}, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_0
.end method

.method public initialize(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 728
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 729
    return-void
.end method

.method public invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 720
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public isExpandedFormat()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    return v0
.end method

.method public isOnlyOverFlow()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 827
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 828
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 829
    .local v0, params:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    iget-boolean v1, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 831
    .end local v0           #params:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_0
    return v1
.end method

.method public isOverflowReserved()Z
    .locals 1

    .prologue
    .line 674
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mReserveOverflow:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 111
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuPresenter;->updateMenuView(Z)V

    .line 113
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 115
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->showOverflowMenu()Z

    .line 117
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 669
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 670
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 671
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 46
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 461
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    move/from16 v42, v0

    if-nez v42, :cond_0

    .line 462
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 464
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    .line 466
    .local v7, childCount:I
    const/4 v14, 0x0

    .local v14, index:I
    :goto_0
    if-ge v14, v7, :cond_9

    .line 467
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 468
    .local v6, child:Landroid/view/View;
    const/16 v42, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-direct {v0, v6, v1}, Lcom/android/internal/view/menu/ActionMenuView;->setChildLayoutPosition(Landroid/view/View;I)V

    .line 469
    const/16 v42, 0x0

    move/from16 v0, v42

    invoke-virtual {v6, v0}, Landroid/view/View;->expandTouchWidth(I)V

    .line 466
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 474
    .end local v6           #child:Landroid/view/View;
    .end local v7           #childCount:I
    .end local v14           #index:I
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    .line 475
    .restart local v7       #childCount:I
    add-int v42, p3, p5

    div-int/lit8 v24, v42, 0x2

    .line 476
    .local v24, midVertical:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getDividerWidth()I

    move-result v8

    .line 477
    .local v8, dividerWidth:I
    const/16 v27, 0x0

    .line 478
    .local v27, overflowWidth:I
    const/16 v26, 0x0

    .line 479
    .local v26, nonOverflowWidth:I
    const/16 v25, 0x0

    .line 480
    .local v25, nonOverflowCount:I
    sub-int v42, p4, p2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v43

    sub-int v42, v42, v43

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v43

    sub-int v42, v42, v43

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v43, v0

    mul-int/lit8 v43, v43, 0x2

    sub-int v41, v42, v43

    .line 481
    .local v41, widthRemaining:I
    const/4 v10, 0x0

    .line 482
    .local v10, hasOverflow:Z
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v17

    .line 484
    .local v17, isLayoutRtl:Z
    const/4 v11, 0x0

    .line 485
    .local v11, hasSelectionButton:Z
    const/4 v9, 0x0

    .line 486
    .local v9, hasCustomAction:Z
    const/16 v39, 0x0

    .line 487
    .local v39, visibleItemCount:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    if-ge v13, v7, :cond_8

    .line 488
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v38

    .line 489
    .local v38, v:Landroid/view/View;
    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getVisibility()I

    move-result v42

    const/16 v43, 0x8

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_2

    .line 487
    :cond_1
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 493
    :cond_2
    add-int/lit8 v39, v39, 0x1

    .line 494
    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v28

    check-cast v28, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 495
    .local v28, p:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v42, v0

    if-eqz v42, :cond_5

    .line 496
    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getMeasuredWidth()I

    move-result v27

    .line 497
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/view/menu/ActionMenuView;->hasDividerBeforeChildAt(I)Z

    move-result v42

    if-eqz v42, :cond_3

    .line 498
    add-int v27, v27, v8

    .line 501
    :cond_3
    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 504
    .local v12, height:I
    if-eqz v17, :cond_4

    .line 505
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v42

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v43, v0

    add-int v42, v42, v43

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v43, v0

    add-int v21, v42, v43

    .line 506
    .local v21, l:I
    add-int v29, v21, v27

    .line 511
    .local v29, r:I
    :goto_3
    div-int/lit8 v42, v12, 0x2

    sub-int v37, v24, v42

    .line 512
    .local v37, t:I
    add-int v5, v37, v12

    .line 513
    .local v5, b:I
    move-object/from16 v0, v38

    move/from16 v1, v21

    move/from16 v2, v37

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/view/View;->layout(IIII)V

    .line 515
    sub-int v41, v41, v27

    .line 516
    const/4 v10, 0x1

    .line 517
    goto :goto_2

    .line 508
    .end local v5           #b:I
    .end local v21           #l:I
    .end local v29           #r:I
    .end local v37           #t:I
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v42

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v43

    sub-int v42, v42, v43

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v43, v0

    sub-int v42, v42, v43

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v43, v0

    sub-int v29, v42, v43

    .line 509
    .restart local v29       #r:I
    sub-int v21, v29, v27

    .restart local v21       #l:I
    goto :goto_3

    .line 518
    .end local v12           #height:I
    .end local v21           #l:I
    .end local v29           #r:I
    :cond_5
    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getMeasuredWidth()I

    move-result v42

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v43, v0

    add-int v42, v42, v43

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v43, v0

    add-int v32, v42, v43

    .line 519
    .local v32, size:I
    add-int v26, v26, v32

    .line 520
    sub-int v41, v41, v32

    .line 521
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/view/menu/ActionMenuView;->hasDividerBeforeChildAt(I)Z

    move-result v42

    if-eqz v42, :cond_6

    .line 522
    add-int v26, v26, v8

    .line 524
    :cond_6
    add-int/lit8 v25, v25, 0x1

    .line 527
    move-object/from16 v0, v38

    instance-of v0, v0, Lcom/meizu/widget/SelectionButton;

    move/from16 v42, v0

    if-eqz v42, :cond_7

    .line 528
    const/4 v11, 0x1

    .line 530
    :cond_7
    move-object/from16 v0, v38

    instance-of v0, v0, Lcom/android/internal/view/menu/ActionMenuItemView;

    move/from16 v16, v0

    .line 532
    .local v16, isGeneratedItem:Z
    move-object/from16 v0, v38

    instance-of v0, v0, Lcom/meizu/widget/SelectionButton;

    move/from16 v19, v0

    .line 534
    .local v19, isSelectionButton:Z
    move-object/from16 v0, v38

    instance-of v15, v0, Lcom/android/internal/view/menu/KeyBackButton;

    .line 536
    .local v15, isBackButton:Z
    move-object/from16 v0, v38

    instance-of v0, v0, Lcom/meizu/widget/MzActionMenuItem;

    move/from16 v18, v0

    .line 538
    .local v18, isMzActionMenuItem:Z
    if-nez v16, :cond_1

    if-nez v19, :cond_1

    if-nez v15, :cond_1

    if-nez v18, :cond_1

    .line 540
    const/4 v9, 0x1

    goto/16 :goto_2

    .line 544
    .end local v15           #isBackButton:Z
    .end local v16           #isGeneratedItem:Z
    .end local v18           #isMzActionMenuItem:Z
    .end local v19           #isSelectionButton:Z
    .end local v28           #p:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v32           #size:I
    .end local v38           #v:Landroid/view/View;
    :cond_8
    const/16 v42, 0x1

    move/from16 v0, v39

    move/from16 v1, v42

    if-ne v0, v1, :cond_b

    const/16 v42, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v42

    move-object/from16 v0, v42

    instance-of v0, v0, Lcom/android/internal/view/menu/KeyBackButton;

    move/from16 v42, v0

    if-eqz v42, :cond_b

    .line 545
    const/16 v42, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v38

    .line 546
    .restart local v38       #v:Landroid/view/View;
    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 547
    .restart local v12       #height:I
    div-int/lit8 v42, v12, 0x2

    sub-int v37, v24, v42

    .line 548
    .restart local v37       #t:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v42, v0

    add-int p2, p2, v42

    .line 549
    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getMeasuredWidth()I

    move-result v42

    add-int v42, v42, p2

    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getMeasuredHeight()I

    move-result v43

    add-int v43, v43, v37

    move-object/from16 v0, v38

    move/from16 v1, p2

    move/from16 v2, v37

    move/from16 v3, v42

    move/from16 v4, v43

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 550
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mShouldDectePaddingAjustment:Z

    move/from16 v42, v0

    if-eqz v42, :cond_a

    .line 551
    const/16 v42, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move/from16 v2, v42

    invoke-direct {v0, v1, v2}, Lcom/android/internal/view/menu/ActionMenuView;->setChildLayoutPosition(Landroid/view/View;I)V

    .line 555
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExpandedTouchWidth:I

    move/from16 v42, v0

    move-object/from16 v0, v38

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/view/View;->expandTouchWidth(I)V

    .line 665
    .end local v8           #dividerWidth:I
    .end local v9           #hasCustomAction:Z
    .end local v10           #hasOverflow:Z
    .end local v11           #hasSelectionButton:Z
    .end local v12           #height:I
    .end local v13           #i:I
    .end local v17           #isLayoutRtl:Z
    .end local v24           #midVertical:I
    .end local v25           #nonOverflowCount:I
    .end local v26           #nonOverflowWidth:I
    .end local v27           #overflowWidth:I
    .end local v37           #t:I
    .end local v38           #v:Landroid/view/View;
    .end local v39           #visibleItemCount:I
    .end local v41           #widthRemaining:I
    :cond_9
    :goto_5
    return-void

    .line 553
    .restart local v8       #dividerWidth:I
    .restart local v9       #hasCustomAction:Z
    .restart local v10       #hasOverflow:Z
    .restart local v11       #hasSelectionButton:Z
    .restart local v12       #height:I
    .restart local v13       #i:I
    .restart local v17       #isLayoutRtl:Z
    .restart local v24       #midVertical:I
    .restart local v25       #nonOverflowCount:I
    .restart local v26       #nonOverflowWidth:I
    .restart local v27       #overflowWidth:I
    .restart local v37       #t:I
    .restart local v38       #v:Landroid/view/View;
    .restart local v39       #visibleItemCount:I
    .restart local v41       #widthRemaining:I
    :cond_a
    const/16 v42, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move/from16 v2, v42

    invoke-direct {v0, v1, v2}, Lcom/android/internal/view/menu/ActionMenuView;->setChildLayoutPosition(Landroid/view/View;I)V

    goto :goto_4

    .line 560
    .end local v12           #height:I
    .end local v37           #t:I
    .end local v38           #v:Landroid/view/View;
    :cond_b
    if-nez v9, :cond_c

    if-lez v39, :cond_c

    const/16 v42, 0x5

    move/from16 v0, v39

    move/from16 v1, v42

    if-gt v0, v1, :cond_c

    .line 562
    sub-int v42, p4, p2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v43

    sub-int v42, v42, v43

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v43

    sub-int v41, v42, v43

    .line 563
    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v41

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/view/menu/ActionMenuView;->layoutMenuItems(III)V

    goto :goto_5

    .line 567
    :cond_c
    const/16 v42, 0x1

    move/from16 v0, v42

    if-ne v7, v0, :cond_d

    if-nez v10, :cond_d

    .line 569
    const/16 v42, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v38

    .line 570
    .restart local v38       #v:Landroid/view/View;
    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getMeasuredWidth()I

    move-result v40

    .line 571
    .local v40, width:I
    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 572
    .restart local v12       #height:I
    sub-int v42, p4, p2

    div-int/lit8 v23, v42, 0x2

    .line 573
    .local v23, midHorizontal:I
    div-int/lit8 v42, v40, 0x2

    sub-int v21, v23, v42

    .line 574
    .restart local v21       #l:I
    div-int/lit8 v42, v12, 0x2

    sub-int v37, v24, v42

    .line 575
    .restart local v37       #t:I
    add-int v42, v21, v40

    add-int v43, v37, v12

    move-object/from16 v0, v38

    move/from16 v1, v21

    move/from16 v2, v37

    move/from16 v3, v42

    move/from16 v4, v43

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_5

    .line 579
    .end local v12           #height:I
    .end local v21           #l:I
    .end local v23           #midHorizontal:I
    .end local v37           #t:I
    .end local v38           #v:Landroid/view/View;
    .end local v40           #width:I
    :cond_d
    const/16 v42, 0x2

    move/from16 v0, v42

    if-ne v7, v0, :cond_10

    if-eqz v11, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMenuShowGravity:I

    move/from16 v42, v0

    if-lez v42, :cond_10

    .line 580
    const/16 v42, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v38

    .line 581
    .restart local v38       #v:Landroid/view/View;
    const/16 v20, 0x0

    .line 582
    .local v20, itemView:Lcom/android/internal/view/menu/ActionMenuItemView;
    move-object/from16 v0, v38

    instance-of v0, v0, Lcom/android/internal/view/menu/ActionMenuItemView;

    move/from16 v42, v0

    if-eqz v42, :cond_e

    move-object/from16 v20, v38

    .line 583
    check-cast v20, Lcom/android/internal/view/menu/ActionMenuItemView;

    .line 585
    :cond_e
    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 586
    .local v22, lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getVisibility()I

    move-result v42

    const/16 v43, 0x8

    move/from16 v0, v42

    move/from16 v1, v43

    if-eq v0, v1, :cond_9

    .line 589
    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getMeasuredWidth()I

    move-result v40

    .line 590
    .restart local v40       #width:I
    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 591
    .restart local v12       #height:I
    move/from16 v21, p2

    .line 592
    .restart local v21       #l:I
    div-int/lit8 v42, v12, 0x2

    sub-int v37, v24, v42

    .line 594
    .restart local v37       #t:I
    const/16 v42, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    .line 595
    .local v30, selectionButton:Landroid/view/View;
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getMeasuredWidth()I

    move-result v31

    .line 597
    .local v31, selectionButtonWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMenuShowGravity:I

    move/from16 v42, v0

    if-lez v42, :cond_f

    .line 598
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMenuShowGravity:I

    move/from16 v42, v0

    packed-switch v42, :pswitch_data_0

    .line 623
    :goto_6
    :pswitch_0
    add-int v42, v21, v40

    add-int v43, v37, v12

    move-object/from16 v0, v38

    move/from16 v1, v21

    move/from16 v2, v37

    move/from16 v3, v42

    move/from16 v4, v43

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 625
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v42

    sub-int v42, v42, v31

    const/16 v43, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v44

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getMeasuredHeight()I

    move-result v45

    move-object/from16 v0, v30

    move/from16 v1, v42

    move/from16 v2, v43

    move/from16 v3, v44

    move/from16 v4, v45

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_5

    .line 600
    :pswitch_1
    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v21, v0

    .line 601
    goto :goto_6

    .line 604
    :pswitch_2
    sub-int v42, p4, p2

    sub-int v42, v42, v31

    div-int/lit8 v23, v42, 0x2

    .line 605
    .restart local v23       #midHorizontal:I
    div-int/lit8 v42, v40, 0x2

    sub-int v21, v23, v42

    .line 606
    goto :goto_6

    .line 609
    .end local v23           #midHorizontal:I
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v42

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v43

    sub-int v42, v42, v43

    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v43, v0

    sub-int v42, v42, v43

    sub-int v29, v42, v31

    .line 610
    .restart local v29       #r:I
    sub-int v21, v29, v40

    .line 611
    goto :goto_6

    .line 618
    .end local v29           #r:I
    :cond_f
    sub-int v42, p4, p2

    sub-int v42, v42, v31

    div-int/lit8 v23, v42, 0x2

    .line 619
    .restart local v23       #midHorizontal:I
    div-int/lit8 v42, v40, 0x2

    sub-int v21, v23, v42

    .line 620
    div-int/lit8 v42, v12, 0x2

    sub-int v37, v24, v42

    goto :goto_6

    .line 629
    .end local v12           #height:I
    .end local v20           #itemView:Lcom/android/internal/view/menu/ActionMenuItemView;
    .end local v21           #l:I
    .end local v22           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v23           #midHorizontal:I
    .end local v30           #selectionButton:Landroid/view/View;
    .end local v31           #selectionButtonWidth:I
    .end local v37           #t:I
    .end local v38           #v:Landroid/view/View;
    .end local v40           #width:I
    :cond_10
    if-eqz v10, :cond_12

    const/16 v42, 0x0

    :goto_7
    sub-int v33, v25, v42

    .line 630
    .local v33, spacerCount:I
    const/16 v43, 0x0

    if-lez v33, :cond_13

    div-int v42, v41, v33

    :goto_8
    move/from16 v0, v43

    move/from16 v1, v42

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v34

    .line 632
    .local v34, spacerSize:I
    if-eqz v17, :cond_15

    .line 633
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v42

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v43

    sub-int v42, v42, v43

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v43, v0

    sub-int v36, v42, v43

    .line 634
    .local v36, startRight:I
    const/4 v13, 0x0

    :goto_9
    if-ge v13, v7, :cond_9

    .line 635
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v38

    .line 636
    .restart local v38       #v:Landroid/view/View;
    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 637
    .restart local v22       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getVisibility()I

    move-result v42

    const/16 v43, 0x8

    move/from16 v0, v42

    move/from16 v1, v43

    if-eq v0, v1, :cond_11

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v42, v0

    if-eqz v42, :cond_14

    .line 634
    :cond_11
    :goto_a
    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    .line 629
    .end local v22           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v33           #spacerCount:I
    .end local v34           #spacerSize:I
    .end local v36           #startRight:I
    .end local v38           #v:Landroid/view/View;
    :cond_12
    const/16 v42, 0x1

    goto :goto_7

    .line 630
    .restart local v33       #spacerCount:I
    :cond_13
    const/16 v42, 0x0

    goto :goto_8

    .line 641
    .restart local v22       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .restart local v34       #spacerSize:I
    .restart local v36       #startRight:I
    .restart local v38       #v:Landroid/view/View;
    :cond_14
    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v42, v0

    sub-int v36, v36, v42

    .line 642
    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getMeasuredWidth()I

    move-result v40

    .line 643
    .restart local v40       #width:I
    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 644
    .restart local v12       #height:I
    div-int/lit8 v42, v12, 0x2

    sub-int v37, v24, v42

    .line 645
    .restart local v37       #t:I
    sub-int v42, v36, v40

    add-int v43, v37, v12

    move-object/from16 v0, v38

    move/from16 v1, v42

    move/from16 v2, v37

    move/from16 v3, v36

    move/from16 v4, v43

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 646
    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v42, v0

    add-int v42, v42, v40

    add-int v42, v42, v34

    sub-int v36, v36, v42

    goto :goto_a

    .line 649
    .end local v12           #height:I
    .end local v22           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v36           #startRight:I
    .end local v37           #t:I
    .end local v38           #v:Landroid/view/View;
    .end local v40           #width:I
    :cond_15
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v42

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v43, v0

    add-int v35, v42, v43

    .line 650
    .local v35, startLeft:I
    const/4 v13, 0x0

    :goto_b
    if-ge v13, v7, :cond_9

    .line 651
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v38

    .line 652
    .restart local v38       #v:Landroid/view/View;
    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 653
    .restart local v22       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getVisibility()I

    move-result v42

    const/16 v43, 0x8

    move/from16 v0, v42

    move/from16 v1, v43

    if-eq v0, v1, :cond_16

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v42, v0

    if-eqz v42, :cond_17

    .line 650
    :cond_16
    :goto_c
    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    .line 657
    :cond_17
    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v42, v0

    add-int v35, v35, v42

    .line 658
    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getMeasuredWidth()I

    move-result v40

    .line 659
    .restart local v40       #width:I
    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 660
    .restart local v12       #height:I
    div-int/lit8 v42, v12, 0x2

    sub-int v37, v24, v42

    .line 661
    .restart local v37       #t:I
    add-int v42, v35, v40

    add-int v43, v37, v12

    move-object/from16 v0, v38

    move/from16 v1, v35

    move/from16 v2, v37

    move/from16 v3, v42

    move/from16 v4, v43

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 662
    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v42, v0

    add-int v42, v42, v40

    add-int v42, v42, v34

    add-int v35, v35, v42

    goto :goto_c

    .line 598
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 10
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 122
    iget-boolean v4, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    .line 123
    .local v4, wasFormatted:Z
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    const/high16 v9, 0x4000

    if-ne v6, v9, :cond_2

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    .line 125
    iget-boolean v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    if-eq v4, v6, :cond_0

    .line 126
    iput v8, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItemsWidth:I

    .line 131
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 132
    .local v5, widthSize:I
    iget-boolean v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItemsWidth:I

    if-eq v5, v6, :cond_1

    .line 133
    iput v5, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItemsWidth:I

    .line 134
    iget-object v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v6, v7}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 137
    :cond_1
    iget-boolean v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    if-eqz v6, :cond_3

    .line 138
    invoke-direct {p0, p1, p2}, Lcom/android/internal/view/menu/ActionMenuView;->onMeasureExactFormat(II)V

    .line 149
    :goto_1
    return-void

    .end local v5           #widthSize:I
    :cond_2
    move v6, v8

    .line 123
    goto :goto_0

    .line 141
    .restart local v5       #widthSize:I
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 142
    .local v1, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v1, :cond_4

    .line 143
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 144
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 145
    .local v3, lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    iput v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 142
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 147
    .end local v0           #child:Landroid/view/View;
    .end local v3           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_1
.end method

.method public onSmartBarConfigurationChanged()V
    .locals 0

    .prologue
    .line 1045
    invoke-direct {p0}, Lcom/android/internal/view/menu/ActionMenuView;->updateSmartBarConfiguration()V

    .line 1046
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 1047
    return-void
.end method

.method public setMaxItemHeight(I)V
    .locals 0
    .parameter "maxItemHeight"

    .prologue
    .line 104
    iput p1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMaxItemHeight:I

    .line 105
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 106
    return-void
.end method

.method public setMenuShowGravity(I)V
    .locals 0
    .parameter "showGravity"

    .prologue
    .line 796
    iput p1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMenuShowGravity:I

    .line 797
    return-void
.end method

.method public setOverflowReserved(Z)V
    .locals 0
    .parameter "reserveOverflow"

    .prologue
    .line 678
    iput-boolean p1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mReserveOverflow:Z

    .line 679
    return-void
.end method

.method public setPresenter(Lcom/android/internal/view/menu/ActionMenuPresenter;)V
    .locals 0
    .parameter "presenter"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    .line 97
    return-void
.end method
