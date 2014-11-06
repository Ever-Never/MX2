.class Landroid/preference/ListPreference$DropdownPopup;
.super Landroid/widget/ListPopupWindow;
.source "ListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/ListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropdownPopup"
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field final synthetic this$0:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>(Landroid/preference/ListPreference;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyleRes"

    .prologue
    .line 472
    iput-object p1, p0, Landroid/preference/ListPreference$DropdownPopup;->this$0:Landroid/preference/ListPreference;

    .line 473
    const v0, 0x10102ff

    invoke-direct {p0, p2, p3, v0, p4}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 475
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 476
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ListPopupWindow;->setPromptPosition(I)V

    .line 477
    new-instance v0, Landroid/preference/ListPreference$DropdownPopup$1;

    invoke-direct {v0, p0, p1}, Landroid/preference/ListPreference$DropdownPopup$1;-><init>(Landroid/preference/ListPreference$DropdownPopup;Landroid/preference/ListPreference;)V

    invoke-virtual {p0, v0}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 486
    return-void
.end method


# virtual methods
.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0
    .parameter "adapter"

    .prologue
    .line 490
    invoke-super {p0, p1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 491
    iput-object p1, p0, Landroid/preference/ListPreference$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    .line 492
    return-void
.end method

.method public show()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x0

    .line 496
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 497
    .local v3, background:Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    .line 498
    .local v4, hOffset:I
    if-eqz v3, :cond_8

    .line 499
    iget-object v10, p0, Landroid/preference/ListPreference$DropdownPopup;->this$0:Landroid/preference/ListPreference;

    #getter for: Landroid/preference/ListPreference;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v10}, Landroid/preference/ListPreference;->access$100(Landroid/preference/ListPreference;)Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 500
    iget-object v10, p0, Landroid/preference/ListPreference$DropdownPopup;->this$0:Landroid/preference/ListPreference;

    #getter for: Landroid/preference/ListPreference;->mAnchorView:Landroid/view/View;
    invoke-static {v10}, Landroid/preference/ListPreference;->access$200(Landroid/preference/ListPreference;)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->isLayoutRtl()Z

    move-result v10

    if-eqz v10, :cond_7

    iget-object v10, p0, Landroid/preference/ListPreference$DropdownPopup;->this$0:Landroid/preference/ListPreference;

    #getter for: Landroid/preference/ListPreference;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v10}, Landroid/preference/ListPreference;->access$100(Landroid/preference/ListPreference;)Landroid/graphics/Rect;

    move-result-object v10

    iget v4, v10, Landroid/graphics/Rect;->right:I

    .line 505
    :goto_0
    iget-object v10, p0, Landroid/preference/ListPreference$DropdownPopup;->this$0:Landroid/preference/ListPreference;

    #getter for: Landroid/preference/ListPreference;->mAnchorView:Landroid/view/View;
    invoke-static {v10}, Landroid/preference/ListPreference;->access$200(Landroid/preference/ListPreference;)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 506
    .local v0, anchorViewPaddingLeft:I
    iget-object v10, p0, Landroid/preference/ListPreference$DropdownPopup;->this$0:Landroid/preference/ListPreference;

    #getter for: Landroid/preference/ListPreference;->mAnchorView:Landroid/view/View;
    invoke-static {v10}, Landroid/preference/ListPreference;->access$200(Landroid/preference/ListPreference;)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    .line 507
    .local v1, anchorViewPaddingRight:I
    iget-object v10, p0, Landroid/preference/ListPreference$DropdownPopup;->this$0:Landroid/preference/ListPreference;

    #getter for: Landroid/preference/ListPreference;->mAnchorView:Landroid/view/View;
    invoke-static {v10}, Landroid/preference/ListPreference;->access$200(Landroid/preference/ListPreference;)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 510
    .local v2, anchorViewWidth:I
    iget-object v10, p0, Landroid/preference/ListPreference$DropdownPopup;->this$0:Landroid/preference/ListPreference;

    #getter for: Landroid/preference/ListPreference;->mDropDownWidth:I
    invoke-static {v10}, Landroid/preference/ListPreference;->access$300(Landroid/preference/ListPreference;)I

    move-result v10

    if-lez v10, :cond_0

    iget-object v10, p0, Landroid/preference/ListPreference$DropdownPopup;->this$0:Landroid/preference/ListPreference;

    #getter for: Landroid/preference/ListPreference;->mDropDownWidth:I
    invoke-static {v10}, Landroid/preference/ListPreference;->access$300(Landroid/preference/ListPreference;)I

    move-result v10

    sub-int v11, v2, v0

    sub-int/2addr v11, v1

    if-le v10, v11, :cond_1

    .line 511
    :cond_0
    iget-object v10, p0, Landroid/preference/ListPreference$DropdownPopup;->this$0:Landroid/preference/ListPreference;

    sub-int v11, v2, v0

    sub-int/2addr v11, v1

    #setter for: Landroid/preference/ListPreference;->mDropDownWidth:I
    invoke-static {v10, v11}, Landroid/preference/ListPreference;->access$302(Landroid/preference/ListPreference;I)I

    .line 513
    :cond_1
    iget-object v10, p0, Landroid/preference/ListPreference$DropdownPopup;->this$0:Landroid/preference/ListPreference;

    #getter for: Landroid/preference/ListPreference;->mDropDownWidth:I
    invoke-static {v10}, Landroid/preference/ListPreference;->access$300(Landroid/preference/ListPreference;)I

    move-result v10

    invoke-virtual {p0, v10}, Landroid/widget/ListPopupWindow;->setContentWidth(I)V

    .line 516
    iget-object v10, p0, Landroid/preference/ListPreference$DropdownPopup;->this$0:Landroid/preference/ListPreference;

    #getter for: Landroid/preference/ListPreference;->mAnchorView:Landroid/view/View;
    invoke-static {v10}, Landroid/preference/ListPreference;->access$200(Landroid/preference/ListPreference;)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->isLayoutRtl()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 517
    sub-int v10, v2, v1

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getWidth()I

    move-result v11

    sub-int/2addr v10, v11

    add-int/2addr v4, v10

    .line 521
    :goto_1
    iget-object v10, p0, Landroid/preference/ListPreference$DropdownPopup;->this$0:Landroid/preference/ListPreference;

    #getter for: Landroid/preference/ListPreference;->mAnchorView:Landroid/view/View;
    invoke-static {v10}, Landroid/preference/ListPreference;->access$200(Landroid/preference/ListPreference;)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v10

    iget-object v11, p0, Landroid/preference/ListPreference$DropdownPopup;->this$0:Landroid/preference/ListPreference;

    #getter for: Landroid/preference/ListPreference;->mDropDownWidth:I
    invoke-static {v11}, Landroid/preference/ListPreference;->access$300(Landroid/preference/ListPreference;)I

    move-result v11

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v4

    invoke-virtual {p0, v10}, Landroid/widget/ListPopupWindow;->setHorizontalOffset(I)V

    .line 523
    invoke-virtual {p0, v14}, Landroid/widget/ListPopupWindow;->setLayoutMode(I)V

    .line 526
    iget-object v10, p0, Landroid/preference/ListPreference$DropdownPopup;->this$0:Landroid/preference/ListPreference;

    #getter for: Landroid/preference/ListPreference;->mMaxDropDownHeight:I
    invoke-static {v10}, Landroid/preference/ListPreference;->access$400(Landroid/preference/ListPreference;)I

    move-result v10

    if-lez v10, :cond_5

    .line 527
    const/4 v7, 0x0

    .line 528
    .local v7, listHeight:I
    iget-object v10, p0, Landroid/preference/ListPreference$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v10, :cond_4

    iget-object v10, p0, Landroid/preference/ListPreference$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v10}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    if-lez v10, :cond_4

    .line 529
    const/4 v8, 0x0

    .line 531
    .local v8, position:I
    :cond_2
    iget-object v10, p0, Landroid/preference/ListPreference$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v11, 0x0

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v12

    invoke-interface {v10, v8, v11, v12}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 532
    .local v5, itemView:Landroid/view/View;
    if-eqz v5, :cond_3

    .line 533
    invoke-virtual {v5, v13, v13}, Landroid/view/View;->measure(II)V

    .line 534
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v7, v10

    .line 536
    :cond_3
    add-int/lit8 v8, v8, 0x1

    .line 537
    iget-object v10, p0, Landroid/preference/ListPreference$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v10}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    if-lt v8, v10, :cond_2

    .line 540
    .end local v5           #itemView:Landroid/view/View;
    .end local v8           #position:I
    :cond_4
    iget-object v10, p0, Landroid/preference/ListPreference$DropdownPopup;->this$0:Landroid/preference/ListPreference;

    #getter for: Landroid/preference/ListPreference;->mMaxDropDownHeight:I
    invoke-static {v10}, Landroid/preference/ListPreference;->access$400(Landroid/preference/ListPreference;)I

    move-result v10

    if-le v7, v10, :cond_5

    .line 541
    iget-object v10, p0, Landroid/preference/ListPreference$DropdownPopup;->this$0:Landroid/preference/ListPreference;

    #getter for: Landroid/preference/ListPreference;->mMaxDropDownHeight:I
    invoke-static {v10}, Landroid/preference/ListPreference;->access$400(Landroid/preference/ListPreference;)I

    move-result v10

    invoke-virtual {p0, v10}, Landroid/widget/ListPopupWindow;->setHeight(I)V

    .line 545
    .end local v7           #listHeight:I
    :cond_5
    invoke-virtual {p0, v14}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 546
    invoke-super {p0}, Landroid/widget/ListPopupWindow;->show()V

    .line 547
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 549
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v10

    invoke-virtual {v10, v13}, Landroid/widget/ListView;->setTopShadowEnable(Z)V

    .line 550
    iget-object v10, p0, Landroid/preference/ListPreference$DropdownPopup;->this$0:Landroid/preference/ListPreference;

    #calls: Landroid/preference/ListPreference;->getValueIndex()I
    invoke-static {v10}, Landroid/preference/ListPreference;->access$500(Landroid/preference/ListPreference;)I

    move-result v10

    invoke-virtual {p0, v10}, Landroid/widget/ListPopupWindow;->setSelection(I)V

    .line 552
    iget-object v10, p0, Landroid/preference/ListPreference$DropdownPopup;->this$0:Landroid/preference/ListPreference;

    #getter for: Landroid/preference/ListPreference;->mAnchorView:Landroid/view/View;
    invoke-static {v10}, Landroid/preference/ListPreference;->access$200(Landroid/preference/ListPreference;)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v9

    .line 553
    .local v9, vto:Landroid/view/ViewTreeObserver;
    if-eqz v9, :cond_6

    .line 554
    new-instance v6, Landroid/preference/ListPreference$DropdownPopup$2;

    invoke-direct {v6, p0}, Landroid/preference/ListPreference$DropdownPopup$2;-><init>(Landroid/preference/ListPreference$DropdownPopup;)V

    .line 569
    .local v6, layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    invoke-virtual {v9, v6}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 570
    new-instance v10, Landroid/preference/ListPreference$DropdownPopup$3;

    invoke-direct {v10, p0, v6}, Landroid/preference/ListPreference$DropdownPopup$3;-><init>(Landroid/preference/ListPreference$DropdownPopup;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0, v10}, Landroid/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 582
    .end local v6           #layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    :cond_6
    return-void

    .line 500
    .end local v0           #anchorViewPaddingLeft:I
    .end local v1           #anchorViewPaddingRight:I
    .end local v2           #anchorViewWidth:I
    .end local v9           #vto:Landroid/view/ViewTreeObserver;
    :cond_7
    iget-object v10, p0, Landroid/preference/ListPreference$DropdownPopup;->this$0:Landroid/preference/ListPreference;

    #getter for: Landroid/preference/ListPreference;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v10}, Landroid/preference/ListPreference;->access$100(Landroid/preference/ListPreference;)Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->left:I

    neg-int v4, v10

    goto/16 :goto_0

    .line 502
    :cond_8
    iget-object v10, p0, Landroid/preference/ListPreference$DropdownPopup;->this$0:Landroid/preference/ListPreference;

    #getter for: Landroid/preference/ListPreference;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v10}, Landroid/preference/ListPreference;->access$100(Landroid/preference/ListPreference;)Landroid/graphics/Rect;

    move-result-object v10

    iget-object v11, p0, Landroid/preference/ListPreference$DropdownPopup;->this$0:Landroid/preference/ListPreference;

    #getter for: Landroid/preference/ListPreference;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v11}, Landroid/preference/ListPreference;->access$100(Landroid/preference/ListPreference;)Landroid/graphics/Rect;

    move-result-object v11

    iput v13, v11, Landroid/graphics/Rect;->right:I

    iput v13, v10, Landroid/graphics/Rect;->left:I

    goto/16 :goto_0

    .line 519
    .restart local v0       #anchorViewPaddingLeft:I
    .restart local v1       #anchorViewPaddingRight:I
    .restart local v2       #anchorViewWidth:I
    :cond_9
    add-int/2addr v4, v0

    goto/16 :goto_1
.end method
