.class Lcom/meizu/widget/StaggeredGridView$6;
.super Ljava/lang/Object;
.source "StaggeredGridView.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/widget/StaggeredGridView;->obtainView(ILandroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/widget/StaggeredGridView;

.field final synthetic val$tPosition:I


# direct methods
.method constructor <init>(Lcom/meizu/widget/StaggeredGridView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2319
    iput-object p1, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    iput p2, p0, Lcom/meizu/widget/StaggeredGridView$6;->val$tPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 11
    .parameter "item"
    .parameter "event"

    .prologue
    const/4 v10, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v9, 0x3f80

    const/4 v6, 0x1

    .line 2323
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    iget v3, v3, Lcom/meizu/widget/StaggeredGridView;->mDragAndDropPosition:I

    if-ne v3, v10, :cond_0

    move v3, v5

    .line 2430
    :goto_0
    return v3

    .line 2326
    :cond_0
    const/4 v1, 0x0

    .line 2327
    .local v1, child:Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_1
    :goto_1
    move v3, v6

    .line 2430
    goto :goto_0

    .line 2329
    :sswitch_0
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mItemDragListener:Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;
    invoke-static {v3}, Lcom/meizu/widget/StaggeredGridView;->access$1100(Lcom/meizu/widget/StaggeredGridView;)Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2330
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mItemDragListener:Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;
    invoke-static {v3}, Lcom/meizu/widget/StaggeredGridView;->access$1100(Lcom/meizu/widget/StaggeredGridView;)Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;->onActionItemDragStart()V

    .line 2331
    :cond_2
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    invoke-virtual {v3, v5}, Landroid/view/View;->notifyDragDropAnimType(I)V

    move v3, v6

    .line 2332
    goto :goto_0

    :sswitch_1
    move v3, v6

    .line 2335
    goto :goto_0

    :sswitch_2
    move v3, v6

    .line 2338
    goto :goto_0

    :sswitch_3
    move v3, v6

    .line 2341
    goto :goto_0

    .line 2343
    :sswitch_4
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mItemDragListener:Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;
    invoke-static {v3}, Lcom/meizu/widget/StaggeredGridView;->access$1100(Lcom/meizu/widget/StaggeredGridView;)Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    iget v3, v3, Lcom/meizu/widget/StaggeredGridView;->mDragAndDropPosition:I

    iget v4, p0, Lcom/meizu/widget/StaggeredGridView$6;->val$tPosition:I

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mItemDragListener:Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;
    invoke-static {v3}, Lcom/meizu/widget/StaggeredGridView;->access$1100(Lcom/meizu/widget/StaggeredGridView;)Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;

    move-result-object v3

    instance-of v3, v3, Lcom/meizu/widget/StaggeredGridView$OnItemDragSwapListener;

    if-eqz v3, :cond_3

    .line 2345
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mItemDragListener:Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;
    invoke-static {v3}, Lcom/meizu/widget/StaggeredGridView;->access$1100(Lcom/meizu/widget/StaggeredGridView;)Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;

    move-result-object v3

    check-cast v3, Lcom/meizu/widget/StaggeredGridView$OnItemDragSwapListener;

    iget-object v4, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    iget v4, v4, Lcom/meizu/widget/StaggeredGridView;->mDragAndDropPosition:I

    iget v5, p0, Lcom/meizu/widget/StaggeredGridView$6;->val$tPosition:I

    invoke-interface {v3, v4, v5}, Lcom/meizu/widget/StaggeredGridView$OnItemDragSwapListener;->onActionItemSwap(II)V

    move v3, v6

    .line 2346
    goto :goto_0

    :cond_3
    move v3, v5

    .line 2348
    goto :goto_0

    .line 2351
    :sswitch_5
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    iget-object v3, v3, Lcom/meizu/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_4

    .line 2352
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    iget-object v3, v3, Lcom/meizu/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v3, v5}, Landroid/view/ActionMode;->setDragDismissAnimating(Z)V

    .line 2355
    :cond_4
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    iget-object v7, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    iget v7, v7, Lcom/meizu/widget/StaggeredGridView;->mDragAndDropPosition:I

    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I
    invoke-static {v8}, Lcom/meizu/widget/StaggeredGridView;->access$1200(Lcom/meizu/widget/StaggeredGridView;)I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2356
    if-eqz v1, :cond_6

    .line 2357
    instance-of v3, v1, Lcom/meizu/widget/StaggeredGridView$DragShadowItem;

    if-eqz v3, :cond_a

    move-object v3, v1

    .line 2358
    check-cast v3, Lcom/meizu/widget/StaggeredGridView$DragShadowItem;

    invoke-interface {v3}, Lcom/meizu/widget/StaggeredGridView$DragShadowItem;->getDragView()Landroid/view/View;

    move-result-object v2

    .line 2359
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_5

    .line 2360
    invoke-virtual {v2, v9}, Landroid/view/View;->setAlpha(F)V

    .line 2362
    :cond_5
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mChangeChildAlphaWhenDragView:Z
    invoke-static {v3}, Lcom/meizu/widget/StaggeredGridView;->access$1300(Lcom/meizu/widget/StaggeredGridView;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2363
    invoke-virtual {v1, v9}, Landroid/view/View;->setAlpha(F)V

    .line 2370
    .end local v2           #v:Landroid/view/View;
    :cond_6
    :goto_2
    invoke-virtual {p2}, Landroid/view/DragEvent;->getResult()Z

    move-result v3

    if-nez v3, :cond_b

    .line 2371
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    iget-object v5, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    iget v5, v5, Lcom/meizu/widget/StaggeredGridView;->mDragAndDropPosition:I

    invoke-virtual {v3, v5, v6}, Lcom/meizu/widget/StaggeredGridView;->setItemChecked(IZ)V

    .line 2380
    :cond_7
    :goto_3
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    iput v10, v3, Lcom/meizu/widget/StaggeredGridView;->mDragAndDropPosition:I

    .line 2382
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mItemDragListener:Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;
    invoke-static {v3}, Lcom/meizu/widget/StaggeredGridView;->access$1100(Lcom/meizu/widget/StaggeredGridView;)Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 2383
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mItemDragListener:Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;
    invoke-static {v3}, Lcom/meizu/widget/StaggeredGridView;->access$1100(Lcom/meizu/widget/StaggeredGridView;)Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;

    move-result-object v5

    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mShadowBuilder:Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;
    invoke-static {v3}, Lcom/meizu/widget/StaggeredGridView;->access$1400(Lcom/meizu/widget/StaggeredGridView;)Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;

    move-result-object v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mShadowBuilder:Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;
    invoke-static {v3}, Lcom/meizu/widget/StaggeredGridView;->access$1400(Lcom/meizu/widget/StaggeredGridView;)Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View$DragShadowBuilder;->getView()Landroid/view/View;

    move-result-object v3

    :goto_4
    invoke-interface {v5, v3}, Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;->onActionItemDragEnd(Landroid/view/View;)V

    .line 2386
    :cond_8
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    invoke-virtual {v3}, Lcom/meizu/widget/StaggeredGridView;->getCheckedItemCount()I

    move-result v3

    if-gtz v3, :cond_9

    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    iget-object v3, v3, Lcom/meizu/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_9

    .line 2387
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    iget-object v3, v3, Lcom/meizu/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v3}, Landroid/view/ActionMode;->finish()V

    .line 2389
    :cond_9
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Landroid/view/View;->mDragSurface:Landroid/view/Surface;
    invoke-static {v3}, Lcom/meizu/widget/StaggeredGridView;->access$1500(Lcom/meizu/widget/StaggeredGridView;)Landroid/view/Surface;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2390
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Landroid/view/View;->mDragSurface:Landroid/view/Surface;
    invoke-static {v3}, Lcom/meizu/widget/StaggeredGridView;->access$1600(Lcom/meizu/widget/StaggeredGridView;)Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Surface;->release()V

    .line 2391
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #setter for: Landroid/view/View;->mDragSurface:Landroid/view/Surface;
    invoke-static {v3, v4}, Lcom/meizu/widget/StaggeredGridView;->access$1702(Lcom/meizu/widget/StaggeredGridView;Landroid/view/Surface;)Landroid/view/Surface;

    goto/16 :goto_1

    .line 2366
    :cond_a
    invoke-virtual {v1, v9}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    .line 2372
    :cond_b
    if-eqz v1, :cond_7

    .line 2373
    const v3, 0x1020001

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2374
    .local v0, checkbox:Landroid/view/View;
    if-eqz v0, :cond_c

    instance-of v3, v0, Landroid/widget/Checkable;

    if-eqz v3, :cond_c

    .line 2375
    check-cast v0, Landroid/widget/Checkable;

    .end local v0           #checkbox:Landroid/view/View;
    invoke-interface {v0, v5}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 2377
    :cond_c
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    invoke-virtual {v3}, Lcom/meizu/widget/StaggeredGridView;->invalidateViews()V

    goto :goto_3

    :cond_d
    move-object v3, v4

    .line 2383
    goto :goto_4

    .line 2396
    :sswitch_6
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    iget-object v7, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    iget v7, v7, Lcom/meizu/widget/StaggeredGridView;->mDragAndDropPosition:I

    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I
    invoke-static {v8}, Lcom/meizu/widget/StaggeredGridView;->access$1200(Lcom/meizu/widget/StaggeredGridView;)I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2397
    if-eqz v1, :cond_10

    .line 2398
    instance-of v3, v1, Lcom/meizu/widget/StaggeredGridView$DragShadowItem;

    if-eqz v3, :cond_13

    move-object v3, v1

    .line 2399
    check-cast v3, Lcom/meizu/widget/StaggeredGridView$DragShadowItem;

    invoke-interface {v3}, Lcom/meizu/widget/StaggeredGridView$DragShadowItem;->getDragView()Landroid/view/View;

    move-result-object v2

    .line 2400
    .restart local v2       #v:Landroid/view/View;
    if-eqz v2, :cond_e

    .line 2401
    invoke-virtual {v2, v9}, Landroid/view/View;->setAlpha(F)V

    .line 2403
    :cond_e
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mChangeChildAlphaWhenDragView:Z
    invoke-static {v3}, Lcom/meizu/widget/StaggeredGridView;->access$1300(Lcom/meizu/widget/StaggeredGridView;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 2404
    invoke-virtual {v1, v9}, Landroid/view/View;->setAlpha(F)V

    .line 2410
    .end local v2           #v:Landroid/view/View;
    :cond_f
    :goto_5
    const v3, 0x1020001

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2411
    .restart local v0       #checkbox:Landroid/view/View;
    if-eqz v0, :cond_10

    instance-of v3, v0, Landroid/widget/Checkable;

    if-eqz v3, :cond_10

    .line 2412
    check-cast v0, Landroid/widget/Checkable;

    .end local v0           #checkbox:Landroid/view/View;
    invoke-interface {v0, v5}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 2415
    :cond_10
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    invoke-virtual {v3}, Lcom/meizu/widget/StaggeredGridView;->requestLayout()V

    .line 2418
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    invoke-virtual {v3}, Lcom/meizu/widget/StaggeredGridView;->getCheckedItemCount()I

    move-result v3

    if-gtz v3, :cond_11

    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    iget-object v3, v3, Lcom/meizu/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_11

    .line 2419
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    iget-object v3, v3, Lcom/meizu/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v3}, Landroid/view/ActionMode;->finish()V

    .line 2420
    :cond_11
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    iput v10, v3, Lcom/meizu/widget/StaggeredGridView;->mDragAndDropPosition:I

    .line 2421
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mItemDragListener:Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;
    invoke-static {v3}, Lcom/meizu/widget/StaggeredGridView;->access$1100(Lcom/meizu/widget/StaggeredGridView;)Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;

    move-result-object v3

    if-eqz v3, :cond_12

    .line 2422
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mItemDragListener:Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;
    invoke-static {v3}, Lcom/meizu/widget/StaggeredGridView;->access$1100(Lcom/meizu/widget/StaggeredGridView;)Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;

    move-result-object v5

    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mShadowBuilder:Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;
    invoke-static {v3}, Lcom/meizu/widget/StaggeredGridView;->access$1400(Lcom/meizu/widget/StaggeredGridView;)Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;

    move-result-object v3

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mShadowBuilder:Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;
    invoke-static {v3}, Lcom/meizu/widget/StaggeredGridView;->access$1400(Lcom/meizu/widget/StaggeredGridView;)Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View$DragShadowBuilder;->getView()Landroid/view/View;

    move-result-object v3

    :goto_6
    invoke-interface {v5, v3}, Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;->onActionItemDragEnd(Landroid/view/View;)V

    .line 2424
    :cond_12
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Landroid/view/View;->mDragSurface:Landroid/view/Surface;
    invoke-static {v3}, Lcom/meizu/widget/StaggeredGridView;->access$1800(Lcom/meizu/widget/StaggeredGridView;)Landroid/view/Surface;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2425
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Landroid/view/View;->mDragSurface:Landroid/view/Surface;
    invoke-static {v3}, Lcom/meizu/widget/StaggeredGridView;->access$1900(Lcom/meizu/widget/StaggeredGridView;)Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Surface;->release()V

    .line 2426
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView$6;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #setter for: Landroid/view/View;->mDragSurface:Landroid/view/Surface;
    invoke-static {v3, v4}, Lcom/meizu/widget/StaggeredGridView;->access$2002(Lcom/meizu/widget/StaggeredGridView;Landroid/view/Surface;)Landroid/view/Surface;

    goto/16 :goto_1

    .line 2407
    :cond_13
    invoke-virtual {v1, v9}, Landroid/view/View;->setAlpha(F)V

    goto :goto_5

    :cond_14
    move-object v3, v4

    .line 2422
    goto :goto_6

    .line 2327
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_2
        0x6 -> :sswitch_3
        0x64 -> :sswitch_6
    .end sparse-switch
.end method
