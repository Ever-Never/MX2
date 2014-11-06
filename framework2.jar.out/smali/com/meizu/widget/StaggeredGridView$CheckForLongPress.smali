.class Lcom/meizu/widget/StaggeredGridView$CheckForLongPress;
.super Lcom/meizu/widget/StaggeredGridView$WindowRunnnable;
.source "StaggeredGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/StaggeredGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckForLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/widget/StaggeredGridView;


# direct methods
.method private constructor <init>(Lcom/meizu/widget/StaggeredGridView;)V
    .locals 1
    .parameter

    .prologue
    .line 3752
    iput-object p1, p0, Lcom/meizu/widget/StaggeredGridView$CheckForLongPress;->this$0:Lcom/meizu/widget/StaggeredGridView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/widget/StaggeredGridView$WindowRunnnable;-><init>(Lcom/meizu/widget/StaggeredGridView;Lcom/meizu/widget/StaggeredGridView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/widget/StaggeredGridView;Lcom/meizu/widget/StaggeredGridView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3752
    invoke-direct {p0, p1}, Lcom/meizu/widget/StaggeredGridView$CheckForLongPress;-><init>(Lcom/meizu/widget/StaggeredGridView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 3754
    iget-object v7, p0, Lcom/meizu/widget/StaggeredGridView$CheckForLongPress;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mMotionPosition:I
    invoke-static {v7}, Lcom/meizu/widget/StaggeredGridView;->access$4800(Lcom/meizu/widget/StaggeredGridView;)I

    move-result v5

    .line 3755
    .local v5, motionPosition:I
    iget-object v7, p0, Lcom/meizu/widget/StaggeredGridView$CheckForLongPress;->this$0:Lcom/meizu/widget/StaggeredGridView;

    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView$CheckForLongPress;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I
    invoke-static {v8}, Lcom/meizu/widget/StaggeredGridView;->access$1200(Lcom/meizu/widget/StaggeredGridView;)I

    move-result v8

    sub-int v8, v5, v8

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3756
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 3757
    iget-object v7, p0, Lcom/meizu/widget/StaggeredGridView$CheckForLongPress;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mMotionPosition:I
    invoke-static {v7}, Lcom/meizu/widget/StaggeredGridView;->access$4800(Lcom/meizu/widget/StaggeredGridView;)I

    move-result v4

    .line 3758
    .local v4, longPressPosition:I
    iget-object v7, p0, Lcom/meizu/widget/StaggeredGridView$CheckForLongPress;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v7}, Lcom/meizu/widget/StaggeredGridView;->access$3000(Lcom/meizu/widget/StaggeredGridView;)Landroid/widget/ListAdapter;

    move-result-object v7

    iget-object v8, p0, Lcom/meizu/widget/StaggeredGridView$CheckForLongPress;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mMotionPosition:I
    invoke-static {v8}, Lcom/meizu/widget/StaggeredGridView;->access$4800(Lcom/meizu/widget/StaggeredGridView;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 3760
    .local v2, longPressId:J
    const/4 v1, 0x0

    .line 3761
    .local v1, handled:Z
    const/4 v6, 0x1

    .line 3762
    .local v6, perforLongPress:Z
    iget-object v7, p0, Lcom/meizu/widget/StaggeredGridView$CheckForLongPress;->this$0:Lcom/meizu/widget/StaggeredGridView;

    iget v7, v7, Lcom/meizu/widget/StaggeredGridView;->mChoiceMode:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_0

    .line 3764
    iget-object v7, p0, Lcom/meizu/widget/StaggeredGridView$CheckForLongPress;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mItemDragListener:Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;
    invoke-static {v7}, Lcom/meizu/widget/StaggeredGridView;->access$1100(Lcom/meizu/widget/StaggeredGridView;)Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/meizu/widget/StaggeredGridView$CheckForLongPress;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mItemDragListener:Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;
    invoke-static {v7}, Lcom/meizu/widget/StaggeredGridView;->access$1100(Lcom/meizu/widget/StaggeredGridView;)Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;

    move-result-object v7

    instance-of v7, v7, Lcom/meizu/widget/StaggeredGridView$DragItemFilter;

    if-eqz v7, :cond_0

    .line 3765
    iget-object v7, p0, Lcom/meizu/widget/StaggeredGridView$CheckForLongPress;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mItemDragListener:Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;
    invoke-static {v7}, Lcom/meizu/widget/StaggeredGridView;->access$1100(Lcom/meizu/widget/StaggeredGridView;)Lcom/meizu/widget/StaggeredGridView$OnItemDragListener;

    move-result-object v7

    check-cast v7, Lcom/meizu/widget/StaggeredGridView$DragItemFilter;

    invoke-interface {v7, v0, v4, v2, v3}, Lcom/meizu/widget/StaggeredGridView$DragItemFilter;->isItemDragable(Landroid/view/View;IJ)Z

    move-result v7

    if-nez v7, :cond_0

    .line 3767
    const/4 v6, 0x0

    .line 3771
    :cond_0
    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/meizu/widget/StaggeredGridView$WindowRunnnable;->sameWindow()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/meizu/widget/StaggeredGridView$CheckForLongPress;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mDataChanged:Z
    invoke-static {v7}, Lcom/meizu/widget/StaggeredGridView;->access$500(Lcom/meizu/widget/StaggeredGridView;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 3772
    iget-object v7, p0, Lcom/meizu/widget/StaggeredGridView$CheckForLongPress;->this$0:Lcom/meizu/widget/StaggeredGridView;

    invoke-virtual {v7, v0, v4, v2, v3}, Lcom/meizu/widget/StaggeredGridView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v1

    .line 3774
    :cond_1
    if-eqz v1, :cond_3

    .line 3775
    iget-object v7, p0, Lcom/meizu/widget/StaggeredGridView$CheckForLongPress;->this$0:Lcom/meizu/widget/StaggeredGridView;

    const/4 v8, 0x6

    #setter for: Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I
    invoke-static {v7, v8}, Lcom/meizu/widget/StaggeredGridView;->access$402(Lcom/meizu/widget/StaggeredGridView;I)I

    .line 3776
    iget-object v7, p0, Lcom/meizu/widget/StaggeredGridView$CheckForLongPress;->this$0:Lcom/meizu/widget/StaggeredGridView;

    invoke-virtual {v7, v9}, Landroid/view/View;->setPressed(Z)V

    .line 3777
    invoke-virtual {v0, v9}, Landroid/view/View;->setPressed(Z)V

    .line 3782
    .end local v1           #handled:Z
    .end local v2           #longPressId:J
    .end local v4           #longPressPosition:I
    .end local v6           #perforLongPress:Z
    :cond_2
    :goto_0
    return-void

    .line 3779
    .restart local v1       #handled:Z
    .restart local v2       #longPressId:J
    .restart local v4       #longPressPosition:I
    .restart local v6       #perforLongPress:Z
    :cond_3
    iget-object v7, p0, Lcom/meizu/widget/StaggeredGridView$CheckForLongPress;->this$0:Lcom/meizu/widget/StaggeredGridView;

    const/4 v8, 0x5

    #setter for: Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I
    invoke-static {v7, v8}, Lcom/meizu/widget/StaggeredGridView;->access$402(Lcom/meizu/widget/StaggeredGridView;I)I

    goto :goto_0
.end method
