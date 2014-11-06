.class public Lcom/android/internal/widget/MzActionBarContainer;
.super Lcom/android/internal/widget/ActionBarContainer;
.source "MzActionBarContainer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MzActionBarContainer"


# instance fields
.field private mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

.field private mBackIcon:Landroid/graphics/drawable/Drawable;

.field private mCellWidth:I

.field private mContentHeight:I

.field private mDefaultSplitBackground:Landroid/graphics/drawable/Drawable;

.field private mEnableBackButton:Z

.field private mExpandedTouchWidth:I

.field private mExtraPadding:I

.field private mMenuView:Landroid/view/View;

.field private mOrientatinPortrait:Z

.field private mShouldDectePaddingAjustment:Z

.field private mSmartBarConfig:Lcom/meizu/widget/SmartBarConfiguration;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarContainer;-><init>(Landroid/content/Context;)V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mDefaultSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 171
    iput-boolean v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mEnableBackButton:Z

    .line 232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mOrientatinPortrait:Z

    .line 275
    iput-boolean v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mShouldDectePaddingAjustment:Z

    .line 311
    iput v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mContentHeight:I

    .line 27
    invoke-direct {p0, p1}, Lcom/android/internal/widget/MzActionBarContainer;->init(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ActionBarContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mDefaultSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 171
    iput-boolean v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mEnableBackButton:Z

    .line 232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mOrientatinPortrait:Z

    .line 275
    iput-boolean v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mShouldDectePaddingAjustment:Z

    .line 311
    iput v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mContentHeight:I

    .line 22
    invoke-direct {p0, p1}, Lcom/android/internal/widget/MzActionBarContainer;->init(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/internal/widget/MzActionBarContainer;->updateSmartBarConfiguration()V

    .line 37
    return-void
.end method

.method private removeBackButton(Landroid/view/View;)V
    .locals 1
    .parameter "button"

    .prologue
    .line 197
    if-eqz p1, :cond_0

    .line 198
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 199
    .local v0, parent:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 203
    .end local v0           #parent:Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private setChildLayoutPosition(Landroid/view/View;I)V
    .locals 5
    .parameter "child"
    .parameter "layoutPosition"

    .prologue
    .line 254
    instance-of v3, p1, Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v3, :cond_0

    move-object v3, p1

    .line 255
    check-cast v3, Lcom/android/internal/view/menu/ActionMenuView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 256
    .local v2, overflowButton:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 257
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    instance-of v3, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    if-eqz v3, :cond_0

    .line 258
    check-cast v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .end local v1           #lp:Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 259
    .local v0, isOverflowButton:Z
    if-eqz v0, :cond_0

    .line 260
    move-object p1, v2

    .line 265
    .end local v0           #isOverflowButton:Z
    .end local v2           #overflowButton:Landroid/view/View;
    :cond_0
    instance-of v3, p1, Lcom/meizu/widget/LayoutPositionState;

    if-eqz v3, :cond_1

    .line 266
    check-cast p1, Lcom/meizu/widget/LayoutPositionState;

    .end local p1
    invoke-interface {p1, p2}, Lcom/meizu/widget/LayoutPositionState;->setLayoutPosition(I)V

    .line 268
    :cond_1
    return-void
.end method

.method private updateSmartBarConfiguration()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 277
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/widget/SmartBarConfiguration;->get(Landroid/content/Context;)Lcom/meizu/widget/SmartBarConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mSmartBarConfig:Lcom/meizu/widget/SmartBarConfiguration;

    .line 278
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mSmartBarConfig:Lcom/meizu/widget/SmartBarConfiguration;

    invoke-virtual {v1}, Lcom/meizu/widget/SmartBarConfiguration;->getHorizontalPadding()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mExtraPadding:I

    .line 279
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mSmartBarConfig:Lcom/meizu/widget/SmartBarConfiguration;

    invoke-virtual {v1}, Lcom/meizu/widget/SmartBarConfiguration;->getButtonWidth()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mCellWidth:I

    .line 280
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mSmartBarConfig:Lcom/meizu/widget/SmartBarConfiguration;

    invoke-virtual {v1}, Lcom/meizu/widget/SmartBarConfiguration;->getExpandedTouchWidth()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mExpandedTouchWidth:I

    .line 282
    sget-object v1, Landroid/os/Build;->IS_MX:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->IS_MX2:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 283
    :cond_0
    iput-boolean v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mShouldDectePaddingAjustment:Z

    .line 289
    :goto_0
    return-void

    .line 285
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
    iput-boolean v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mShouldDectePaddingAjustment:Z

    goto :goto_0
.end method

.method private updateSplitBackground()V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mMenuView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mDefaultSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 294
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getSplitBackgroind()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mDefaultSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 295
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10807a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/android/internal/widget/ActionBarContainer;->setSplitBackground(Landroid/graphics/drawable/Drawable;)V

    .line 301
    :cond_1
    :goto_0
    return-void

    .line 297
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mDefaultSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 298
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mDefaultSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Lcom/android/internal/widget/ActionBarContainer;->setSplitBackground(Landroid/graphics/drawable/Drawable;)V

    .line 299
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mDefaultSplitBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    const/4 v0, 0x1

    .line 234
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 236
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mOrientatinPortrait:Z

    .line 237
    return-void

    .line 236
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLayout(ZIIII)V
    .locals 13
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 112
    iget-object v10, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_1

    iget-object v10, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v10}, Lcom/android/internal/widget/ScrollingTabContainerView;->isShowAtBottom()Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v6, 0x1

    .line 115
    .local v6, hasTabAtBottom:Z
    :goto_0
    if-eqz v6, :cond_2

    .line 116
    invoke-super/range {p0 .. p5}, Lcom/android/internal/widget/ActionBarContainer;->onLayout(ZIIII)V

    .line 159
    :cond_0
    :goto_1
    return-void

    .line 112
    .end local v6           #hasTabAtBottom:Z
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 118
    .restart local v6       #hasTabAtBottom:Z
    :cond_2
    const/4 v1, 0x0

    .line 119
    .local v1, backButtonWidth:I
    const/4 v0, 0x0

    .line 120
    .local v0, backButtonHeight:I
    iget-object v10, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    if-eqz v10, :cond_3

    .line 121
    iget-object v10, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    iget v11, p0, Lcom/android/internal/widget/MzActionBarContainer;->mExtraPadding:I

    add-int v1, v10, v11

    .line 122
    iget-object v10, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 125
    :cond_3
    invoke-super/range {p0 .. p5}, Lcom/android/internal/widget/ActionBarContainer;->onLayout(ZIIII)V

    .line 127
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 129
    .local v3, childCount:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    if-ge v7, v3, :cond_4

    .line 130
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 131
    .local v2, child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v10

    add-int v4, v10, v1

    .line 132
    .local v4, childLeft:I
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v10

    add-int v5, v10, v1

    .line 133
    .local v5, childRight:I
    invoke-virtual {v2, v4}, Landroid/view/View;->setLeft(I)V

    .line 134
    invoke-virtual {v2, v5}, Landroid/view/View;->setRight(I)V

    .line 129
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 137
    .end local v2           #child:Landroid/view/View;
    .end local v4           #childLeft:I
    .end local v5           #childRight:I
    :cond_4
    iget-object v10, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    if-eqz v10, :cond_5

    .line 138
    iget-object v10, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    iget v11, p0, Lcom/android/internal/widget/MzActionBarContainer;->mExtraPadding:I

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12, v1, v0}, Landroid/view/View;->layout(IIII)V

    .line 139
    iget-boolean v10, p0, Lcom/android/internal/widget/MzActionBarContainer;->mShouldDectePaddingAjustment:Z

    if-eqz v10, :cond_6

    .line 140
    iget-object v10, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    const/4 v11, 0x1

    invoke-direct {p0, v10, v11}, Lcom/android/internal/widget/MzActionBarContainer;->setChildLayoutPosition(Landroid/view/View;I)V

    .line 144
    :goto_3
    iget-object v10, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    iget v11, p0, Lcom/android/internal/widget/MzActionBarContainer;->mExpandedTouchWidth:I

    invoke-virtual {v10, v11}, Landroid/view/View;->expandTouchWidth(I)V

    .line 147
    :cond_5
    iget-object v10, p0, Lcom/android/internal/widget/MzActionBarContainer;->mMenuView:Landroid/view/View;

    if-eqz v10, :cond_0

    .line 148
    iget v10, p0, Lcom/android/internal/widget/MzActionBarContainer;->mExtraPadding:I

    sub-int v8, p4, v10

    .line 149
    .local v8, menuRight:I
    iget-object v10, p0, Lcom/android/internal/widget/MzActionBarContainer;->mMenuView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 150
    .local v9, menuWidth:I
    iget-object v10, p0, Lcom/android/internal/widget/MzActionBarContainer;->mMenuView:Landroid/view/View;

    sub-int v11, v8, v9

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12, v8, v0}, Landroid/view/View;->layout(IIII)V

    .line 151
    iget-boolean v10, p0, Lcom/android/internal/widget/MzActionBarContainer;->mShouldDectePaddingAjustment:Z

    if-eqz v10, :cond_7

    .line 152
    iget-object v10, p0, Lcom/android/internal/widget/MzActionBarContainer;->mMenuView:Landroid/view/View;

    const/4 v11, 0x2

    invoke-direct {p0, v10, v11}, Lcom/android/internal/widget/MzActionBarContainer;->setChildLayoutPosition(Landroid/view/View;I)V

    .line 156
    :goto_4
    iget-object v10, p0, Lcom/android/internal/widget/MzActionBarContainer;->mMenuView:Landroid/view/View;

    iget v11, p0, Lcom/android/internal/widget/MzActionBarContainer;->mExpandedTouchWidth:I

    invoke-virtual {v10, v11}, Landroid/view/View;->expandTouchWidth(I)V

    goto :goto_1

    .line 142
    .end local v8           #menuRight:I
    .end local v9           #menuWidth:I
    :cond_6
    iget-object v10, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lcom/android/internal/widget/MzActionBarContainer;->setChildLayoutPosition(Landroid/view/View;I)V

    goto :goto_3

    .line 154
    .restart local v8       #menuRight:I
    .restart local v9       #menuWidth:I
    :cond_7
    iget-object v10, p0, Lcom/android/internal/widget/MzActionBarContainer;->mMenuView:Landroid/view/View;

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lcom/android/internal/widget/MzActionBarContainer;->setChildLayoutPosition(Landroid/view/View;I)V

    goto :goto_4
.end method

.method public onMeasure(II)V
    .locals 19
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Lcom/android/internal/widget/ScrollingTabContainerView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Lcom/android/internal/widget/ScrollingTabContainerView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Lcom/android/internal/widget/ScrollingTabContainerView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/widget/ScrollingTabContainerView;->isShowAtBottom()Z

    move-result v17

    if-eqz v17, :cond_2

    const/4 v8, 0x1

    .line 44
    .local v8, hasTabAtBottom:Z
    :goto_0
    if-eqz v8, :cond_4

    .line 45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Lcom/android/internal/widget/ScrollingTabContainerView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 46
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Lcom/android/internal/widget/ScrollingTabContainerView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mOrientatinPortrait:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    const/16 v17, 0x1

    :goto_1
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setBackButtonEnable(Z)V

    .line 49
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/widget/MzActionBarContainer;->removeBackButton(Landroid/view/View;)V

    .line 52
    :cond_1
    invoke-super/range {p0 .. p2}, Lcom/android/internal/widget/ActionBarContainer;->onMeasure(II)V

    .line 108
    :goto_2
    return-void

    .line 41
    .end local v8           #hasTabAtBottom:Z
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 46
    .restart local v8       #hasTabAtBottom:Z
    :cond_3
    const/16 v17, 0x0

    goto :goto_1

    .line 54
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Lcom/android/internal/widget/ScrollingTabContainerView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 55
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Lcom/android/internal/widget/ScrollingTabContainerView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/widget/ScrollingTabContainerView;->setBackButtonEnable(Z)V

    .line 57
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    .line 58
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mCellWidth:I

    move/from16 v17, v0

    const/high16 v18, 0x4000

    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    .line 59
    .local v16, widthSpec:I
    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 60
    .local v10, heightSpec:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1, v10}, Landroid/view/View;->measure(II)V

    .line 63
    .end local v10           #heightSpec:I
    .end local v16           #widthSpec:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mMenuView:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    .line 64
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mCellWidth:I

    move/from16 v17, v0

    const/high16 v18, 0x4000

    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    .line 65
    .restart local v16       #widthSpec:I
    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 66
    .restart local v10       #heightSpec:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mMenuView:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1, v10}, Landroid/view/View;->measure(II)V

    .line 69
    .end local v10           #heightSpec:I
    .end local v16           #widthSpec:I
    :cond_7
    const/4 v2, 0x0

    .line 70
    .local v2, backButtonWidth:I
    const/4 v3, 0x0

    .line 71
    .local v3, backButtonWidthExtra:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    .line 72
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 73
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mExtraPadding:I

    move/from16 v17, v0

    add-int v3, v2, v17

    .line 76
    :cond_8
    const/4 v12, 0x0

    .line 77
    .local v12, menuWidth:I
    const/4 v13, 0x0

    .line 78
    .local v13, menuWidthExtra:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mMenuView:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_9

    .line 79
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mMenuView:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    .line 80
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mExtraPadding:I

    move/from16 v17, v0

    add-int v13, v2, v17

    .line 83
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mContentHeight:I

    move/from16 v17, v0

    if-lez v17, :cond_a

    .line 84
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mContentHeight:I

    move/from16 v17, v0

    const/high16 v18, 0x4000

    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 87
    :cond_a
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v17

    sub-int v17, v17, v3

    sub-int v6, v17, v13

    .line 88
    .local v6, contentWidth:I
    const/high16 v17, 0x4000

    move/from16 v0, v17

    invoke-static {v6, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 90
    .local v7, contentWidthSpec:I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-super {v0, v7, v1}, Lcom/android/internal/widget/ActionBarContainer;->onMeasure(II)V

    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    .line 93
    const/high16 v17, 0x4000

    move/from16 v0, v17

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 94
    .local v5, buttonWidthSpec:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    const/high16 v18, 0x4000

    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 95
    .local v4, buttonHeightSpec:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v4}, Landroid/view/View;->measure(II)V

    .line 98
    .end local v4           #buttonHeightSpec:I
    .end local v5           #buttonWidthSpec:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mMenuView:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_c

    .line 99
    const/high16 v17, 0x4000

    move/from16 v0, v17

    invoke-static {v12, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 100
    .local v14, menuWidthSpec:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    const/high16 v18, 0x4000

    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 101
    .local v11, menuHeightSpec:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mMenuView:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v11}, Landroid/view/View;->measure(II)V

    .line 104
    .end local v11           #menuHeightSpec:I
    .end local v14           #menuWidthSpec:I
    :cond_c
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    .line 105
    .local v15, width:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 106
    .local v9, height:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v9}, Landroid/view/View;->setMeasuredDimension(II)V

    goto/16 :goto_2
.end method

.method public onSmartBarConfigurationChanged()V
    .locals 0

    .prologue
    .line 271
    invoke-direct {p0}, Lcom/android/internal/widget/MzActionBarContainer;->updateSmartBarConfiguration()V

    .line 272
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarContainer;->requestLayout()V

    .line 273
    return-void
.end method

.method public requestLayout()V
    .locals 0

    .prologue
    .line 163
    invoke-super {p0}, Landroid/view/View;->requestLayout()V

    .line 164
    return-void
.end method

.method public setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "backIcon"

    .prologue
    .line 244
    if-eqz p1, :cond_0

    .line 245
    iput-object p1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackIcon:Landroid/graphics/drawable/Drawable;

    .line 247
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/KeyBackButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 251
    :cond_0
    return-void
.end method

.method public setBackButtonEnable(ZZ)V
    .locals 4
    .parameter "enable"
    .parameter "addBackButton"

    .prologue
    const/4 v3, -0x2

    .line 177
    iput-boolean p1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mEnableBackButton:Z

    .line 178
    if-eqz p2, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mEnableBackButton:Z

    if-eqz v1, :cond_2

    .line 179
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    if-nez v1, :cond_0

    .line 180
    new-instance v1, Lcom/android/internal/view/menu/KeyBackButton;

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/view/menu/KeyBackButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    .line 181
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x108063d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 183
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    invoke-virtual {v1, v0}, Lcom/android/internal/view/menu/KeyBackButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 187
    .end local v0           #icon:Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    invoke-direct {p0, v1}, Lcom/android/internal/widget/MzActionBarContainer;->removeBackButton(Landroid/view/View;)V

    .line 188
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    invoke-virtual {p0, v1, v3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 193
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/widget/MzActionBarContainer;->updateSplitBackground()V

    .line 194
    return-void

    .line 189
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    if-eqz v1, :cond_1

    .line 190
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    invoke-direct {p0, v1}, Lcom/android/internal/widget/MzActionBarContainer;->removeBackButton(Landroid/view/View;)V

    .line 191
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    goto :goto_0
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 313
    iput p1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mContentHeight:I

    .line 314
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarContainer;->requestLayout()V

    .line 315
    return-void
.end method

.method public setMenu(Landroid/view/View;)V
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v4, -0x2

    .line 207
    if-eqz p1, :cond_1

    .line 208
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 209
    .local v3, parent:Landroid/view/ViewGroup;
    if-eqz v3, :cond_0

    .line 210
    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 214
    :cond_0
    invoke-virtual {p0, p1, v4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 215
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    move-object v4, p1

    .line 216
    check-cast v4, Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 217
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 218
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 219
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    instance-of v4, v2, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    if-eqz v4, :cond_1

    .line 220
    check-cast v2, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .end local v2           #lp:Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v1, v2, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 221
    .local v1, isOverflowButton:Z
    if-eqz v1, :cond_1

    instance-of v4, v0, Landroid/widget/ImageView;

    if-eqz v4, :cond_1

    .line 222
    check-cast v0, Landroid/widget/ImageView;

    .end local v0           #child:Landroid/view/View;
    const v4, 0x10805f7

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 228
    .end local v1           #isOverflowButton:Z
    .end local v3           #parent:Landroid/view/ViewGroup;
    :cond_1
    iput-object p1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mMenuView:Landroid/view/View;

    .line 229
    invoke-direct {p0}, Lcom/android/internal/widget/MzActionBarContainer;->updateSplitBackground()V

    .line 230
    return-void
.end method

.method public setSplitBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "bg"

    .prologue
    .line 305
    invoke-super {p0, p1}, Lcom/android/internal/widget/ActionBarContainer;->setSplitBackground(Landroid/graphics/drawable/Drawable;)V

    .line 306
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mDefaultSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 307
    iput-object p1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mDefaultSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 309
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 168
    invoke-super {p0, p1}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 169
    return-void
.end method
