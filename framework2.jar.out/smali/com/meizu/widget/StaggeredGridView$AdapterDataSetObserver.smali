.class Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "StaggeredGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/StaggeredGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/widget/StaggeredGridView;


# direct methods
.method private constructor <init>(Lcom/meizu/widget/StaggeredGridView;)V
    .locals 0
    .parameter

    .prologue
    .line 3320
    iput-object p1, p0, Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/meizu/widget/StaggeredGridView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/widget/StaggeredGridView;Lcom/meizu/widget/StaggeredGridView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3320
    invoke-direct {p0, p1}, Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;-><init>(Lcom/meizu/widget/StaggeredGridView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 13

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 3323
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #setter for: Lcom/meizu/widget/StaggeredGridView;->mDataChanged:Z
    invoke-static {v8, v11}, Lcom/meizu/widget/StaggeredGridView;->access$502(Lcom/meizu/widget/StaggeredGridView;Z)Z

    .line 3325
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mScroller:Landroid/widget/OverScroller;
    invoke-static {v8}, Lcom/meizu/widget/StaggeredGridView;->access$2500(Lcom/meizu/widget/StaggeredGridView;)Landroid/widget/OverScroller;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v8

    if-nez v8, :cond_0

    .line 3326
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v8}, Lcom/meizu/widget/StaggeredGridView;->access$2600(Lcom/meizu/widget/StaggeredGridView;)Landroid/view/VelocityTracker;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->clear()V

    .line 3327
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mScroller:Landroid/widget/OverScroller;
    invoke-static {v8}, Lcom/meizu/widget/StaggeredGridView;->access$2500(Lcom/meizu/widget/StaggeredGridView;)Landroid/widget/OverScroller;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 3330
    :cond_0
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mFadeOutViewAnimatorSet:Landroid/animation/AnimatorSet;
    invoke-static {v8}, Lcom/meizu/widget/StaggeredGridView;->access$2700(Lcom/meizu/widget/StaggeredGridView;)Landroid/animation/AnimatorSet;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 3331
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mFadeOutViewAnimatorSet:Landroid/animation/AnimatorSet;
    invoke-static {v8}, Lcom/meizu/widget/StaggeredGridView;->access$2700(Lcom/meizu/widget/StaggeredGridView;)Landroid/animation/AnimatorSet;

    move-result-object v8

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->end()V

    .line 3334
    :cond_1
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mUpdateAnimatorSet:Landroid/animation/AnimatorSet;
    invoke-static {v8}, Lcom/meizu/widget/StaggeredGridView;->access$2800(Lcom/meizu/widget/StaggeredGridView;)Landroid/animation/AnimatorSet;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 3335
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mUpdateAnimatorSet:Landroid/animation/AnimatorSet;
    invoke-static {v8}, Lcom/meizu/widget/StaggeredGridView;->access$2800(Lcom/meizu/widget/StaggeredGridView;)Landroid/animation/AnimatorSet;

    move-result-object v8

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->end()V

    .line 3338
    :cond_2
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/meizu/widget/StaggeredGridView;

    iget-object v9, p0, Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v9}, Lcom/meizu/widget/StaggeredGridView;->access$3000(Lcom/meizu/widget/StaggeredGridView;)Landroid/widget/ListAdapter;

    move-result-object v9

    invoke-interface {v9}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    #setter for: Lcom/meizu/widget/StaggeredGridView;->mItemCount:I
    invoke-static {v8, v9}, Lcom/meizu/widget/StaggeredGridView;->access$2902(Lcom/meizu/widget/StaggeredGridView;I)I

    .line 3339
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mChildRectsForAnimation:Ljava/util/Map;
    invoke-static {v8}, Lcom/meizu/widget/StaggeredGridView;->access$3100(Lcom/meizu/widget/StaggeredGridView;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->clear()V

    .line 3340
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/meizu/widget/StaggeredGridView;

    iget-object v8, v8, Lcom/meizu/widget/StaggeredGridView;->mDeleteViews:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 3341
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/meizu/widget/StaggeredGridView;

    iget v8, v8, Lcom/meizu/widget/StaggeredGridView;->mChoiceMode:I

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v8}, Lcom/meizu/widget/StaggeredGridView;->access$3000(Lcom/meizu/widget/StaggeredGridView;)Landroid/widget/ListAdapter;

    move-result-object v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v8}, Lcom/meizu/widget/StaggeredGridView;->access$3000(Lcom/meizu/widget/StaggeredGridView;)Landroid/widget/ListAdapter;

    move-result-object v8

    invoke-interface {v8}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 3343
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/meizu/widget/StaggeredGridView;

    invoke-virtual {v8}, Lcom/meizu/widget/StaggeredGridView;->confirmCheckedPositionsById()V

    .line 3345
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/meizu/widget/StaggeredGridView;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 3347
    .local v0, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_5

    .line 3348
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/meizu/widget/StaggeredGridView;

    invoke-virtual {v8, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3349
    .local v7, view:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getX()F

    move-result v8

    float-to-int v3, v8

    .line 3350
    .local v3, left:I
    invoke-virtual {v7}, Landroid/view/View;->getY()F

    move-result v8

    float-to-int v6, v8

    .line 3351
    .local v6, top:I
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v8, v3

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v9, v6

    invoke-direct {v4, v3, v6, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 3352
    .local v4, localRect:Landroid/graphics/Rect;
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/meizu/widget/StaggeredGridView$LayoutParams;

    .line 3353
    .local v5, params:Lcom/meizu/widget/StaggeredGridView$LayoutParams;
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mChildRectsForAnimation:Ljava/util/Map;
    invoke-static {v8}, Lcom/meizu/widget/StaggeredGridView;->access$3100(Lcom/meizu/widget/StaggeredGridView;)Ljava/util/Map;

    move-result-object v8

    iget-wide v9, v5, Lcom/meizu/widget/StaggeredGridView$LayoutParams;->id:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    new-instance v10, Lcom/meizu/widget/StaggeredGridView$ViewRectPair;

    invoke-direct {v10, v7, v4}, Lcom/meizu/widget/StaggeredGridView$ViewRectPair;-><init>(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3355
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mDeleteItemId:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/meizu/widget/StaggeredGridView;->access$3200(Lcom/meizu/widget/StaggeredGridView;)Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mDeleteItemId:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/meizu/widget/StaggeredGridView;->access$3200(Lcom/meizu/widget/StaggeredGridView;)Ljava/util/ArrayList;

    move-result-object v8

    iget-wide v9, v5, Lcom/meizu/widget/StaggeredGridView$LayoutParams;->id:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3356
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mShadowBuilder:Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;
    invoke-static {v8}, Lcom/meizu/widget/StaggeredGridView;->access$1400(Lcom/meizu/widget/StaggeredGridView;)Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;

    move-result-object v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mShadowBuilder:Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;
    invoke-static {v8}, Lcom/meizu/widget/StaggeredGridView;->access$1400(Lcom/meizu/widget/StaggeredGridView;)Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;->getDragingState()I

    move-result v8

    if-eq v8, v11, :cond_4

    .line 3357
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/meizu/widget/StaggeredGridView;

    iget-object v8, v8, Lcom/meizu/widget/StaggeredGridView;->mDeleteViews:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3347
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3360
    :cond_4
    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 3365
    .end local v0           #childCount:I
    .end local v2           #i:I
    .end local v3           #left:I
    .end local v4           #localRect:Landroid/graphics/Rect;
    .end local v5           #params:Lcom/meizu/widget/StaggeredGridView$LayoutParams;
    .end local v6           #top:I
    .end local v7           #view:Landroid/view/View;
    :cond_5
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #setter for: Lcom/meizu/widget/StaggeredGridView;->mSync:Z
    invoke-static {v8, v11}, Lcom/meizu/widget/StaggeredGridView;->access$3302(Lcom/meizu/widget/StaggeredGridView;Z)Z

    .line 3366
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/meizu/widget/StaggeredGridView;

    iget-object v9, p0, Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I
    invoke-static {v9}, Lcom/meizu/widget/StaggeredGridView;->access$1200(Lcom/meizu/widget/StaggeredGridView;)I

    move-result v9

    #setter for: Lcom/meizu/widget/StaggeredGridView;->mSyncPosition:I
    invoke-static {v8, v9}, Lcom/meizu/widget/StaggeredGridView;->access$3402(Lcom/meizu/widget/StaggeredGridView;I)I

    .line 3367
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/meizu/widget/StaggeredGridView;

    invoke-virtual {v8, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3368
    .restart local v7       #view:Landroid/view/View;
    if-eqz v7, :cond_6

    .line 3369
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/meizu/widget/StaggeredGridView;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    #setter for: Lcom/meizu/widget/StaggeredGridView;->mSpecificTop:I
    invoke-static {v8, v9}, Lcom/meizu/widget/StaggeredGridView;->access$3502(Lcom/meizu/widget/StaggeredGridView;I)I

    .line 3375
    :goto_2
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mRecycler:Lcom/meizu/widget/StaggeredGridView$RecycleBin;
    invoke-static {v8}, Lcom/meizu/widget/StaggeredGridView;->access$1000(Lcom/meizu/widget/StaggeredGridView;)Lcom/meizu/widget/StaggeredGridView$RecycleBin;

    move-result-object v8

    invoke-virtual {v8}, Lcom/meizu/widget/StaggeredGridView$RecycleBin;->clearTransientViews()V

    .line 3379
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;
    invoke-static {v8}, Lcom/meizu/widget/StaggeredGridView;->access$3700(Lcom/meizu/widget/StaggeredGridView;)Landroid/util/SparseArray;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/SparseArray;->clear()V

    .line 3380
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #calls: Lcom/meizu/widget/StaggeredGridView;->recycleAllViews()V
    invoke-static {v8}, Lcom/meizu/widget/StaggeredGridView;->access$3800(Lcom/meizu/widget/StaggeredGridView;)V

    .line 3383
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mColCount:I
    invoke-static {v8}, Lcom/meizu/widget/StaggeredGridView;->access$3900(Lcom/meizu/widget/StaggeredGridView;)I

    move-result v1

    .line 3384
    .local v1, colCount:I
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3
    if-ge v2, v1, :cond_7

    .line 3385
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mItemBottoms:[I
    invoke-static {v8}, Lcom/meizu/widget/StaggeredGridView;->access$4000(Lcom/meizu/widget/StaggeredGridView;)[I

    move-result-object v8

    iget-object v9, p0, Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I
    invoke-static {v9}, Lcom/meizu/widget/StaggeredGridView;->access$4100(Lcom/meizu/widget/StaggeredGridView;)[I

    move-result-object v9

    aget v9, v9, v2

    aput v9, v8, v2

    .line 3384
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 3371
    .end local v1           #colCount:I
    .end local v2           #i:I
    :cond_6
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/meizu/widget/StaggeredGridView;

    iget-object v9, p0, Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/meizu/widget/StaggeredGridView;

    invoke-virtual {v9}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    iget-object v10, p0, Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mItemMargin:I
    invoke-static {v10}, Lcom/meizu/widget/StaggeredGridView;->access$3600(Lcom/meizu/widget/StaggeredGridView;)I

    move-result v10

    add-int/2addr v9, v10

    #setter for: Lcom/meizu/widget/StaggeredGridView;->mSpecificTop:I
    invoke-static {v8, v9}, Lcom/meizu/widget/StaggeredGridView;->access$3502(Lcom/meizu/widget/StaggeredGridView;I)I

    goto :goto_2

    .line 3389
    .restart local v1       #colCount:I
    .restart local v2       #i:I
    :cond_7
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I
    invoke-static {v8}, Lcom/meizu/widget/StaggeredGridView;->access$1200(Lcom/meizu/widget/StaggeredGridView;)I

    move-result v8

    iget-object v9, p0, Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mItemCount:I
    invoke-static {v9}, Lcom/meizu/widget/StaggeredGridView;->access$2900(Lcom/meizu/widget/StaggeredGridView;)I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-gt v8, v9, :cond_8

    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v8}, Lcom/meizu/widget/StaggeredGridView;->access$3000(Lcom/meizu/widget/StaggeredGridView;)Landroid/widget/ListAdapter;

    move-result-object v8

    iget-object v9, p0, Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I
    invoke-static {v9}, Lcom/meizu/widget/StaggeredGridView;->access$1200(Lcom/meizu/widget/StaggeredGridView;)I

    move-result v9

    invoke-interface {v8, v9}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    iget-object v10, p0, Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mFirstAdapterId:J
    invoke-static {v10}, Lcom/meizu/widget/StaggeredGridView;->access$4200(Lcom/meizu/widget/StaggeredGridView;)J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-eqz v8, :cond_9

    .line 3390
    :cond_8
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #setter for: Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I
    invoke-static {v8, v12}, Lcom/meizu/widget/StaggeredGridView;->access$1202(Lcom/meizu/widget/StaggeredGridView;I)I

    .line 3391
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/meizu/widget/StaggeredGridView;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    .line 3392
    .restart local v6       #top:I
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mItemTops:[I
    invoke-static {v8}, Lcom/meizu/widget/StaggeredGridView;->access$4100(Lcom/meizu/widget/StaggeredGridView;)[I

    move-result-object v8

    invoke-static {v8, v6}, Ljava/util/Arrays;->fill([II)V

    .line 3393
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mItemBottoms:[I
    invoke-static {v8}, Lcom/meizu/widget/StaggeredGridView;->access$4000(Lcom/meizu/widget/StaggeredGridView;)[I

    move-result-object v8

    invoke-static {v8, v6}, Ljava/util/Arrays;->fill([II)V

    .line 3395
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mRestoreOffsets:[I
    invoke-static {v8}, Lcom/meizu/widget/StaggeredGridView;->access$4300(Lcom/meizu/widget/StaggeredGridView;)[I

    move-result-object v8

    if-eqz v8, :cond_9

    .line 3397
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/meizu/widget/StaggeredGridView;

    const/4 v9, 0x0

    #setter for: Lcom/meizu/widget/StaggeredGridView;->mRestoreOffsets:[I
    invoke-static {v8, v9}, Lcom/meizu/widget/StaggeredGridView;->access$4302(Lcom/meizu/widget/StaggeredGridView;[I)[I

    .line 3403
    .end local v6           #top:I
    :cond_9
    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/meizu/widget/StaggeredGridView;

    invoke-virtual {v8}, Lcom/meizu/widget/StaggeredGridView;->requestLayout()V

    .line 3404
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 3408
    return-void
.end method
