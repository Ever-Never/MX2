.class Landroid/widget/AbsListView$CheckForLongPress;
.super Landroid/widget/AbsListView$WindowRunnnable;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckForLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method private constructor <init>(Landroid/widget/AbsListView;)V
    .locals 1
    .parameter

    .prologue
    .line 3044
    iput-object p1, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AbsListView$WindowRunnnable;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3044
    invoke-direct {p0, p1}, Landroid/widget/AbsListView$CheckForLongPress;-><init>(Landroid/widget/AbsListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 3046
    iget-object v7, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    iget v5, v7, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 3047
    .local v5, motionPosition:I
    iget-object v7, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    iget-object v8, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    iget v8, v8, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v8, v5, v8

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3048
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 3049
    iget-object v7, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    iget v4, v7, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 3050
    .local v4, longPressPosition:I
    iget-object v7, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    iget-object v7, v7, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v8, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    iget v8, v8, Landroid/widget/AbsListView;->mMotionPosition:I

    invoke-interface {v7, v8}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 3052
    .local v2, longPressId:J
    const/4 v1, 0x0

    .line 3053
    .local v1, handled:Z
    const/4 v6, 0x1

    .line 3054
    .local v6, perforLongPress:Z
    iget-object v7, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    iget v7, v7, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_0

    .line 3056
    iget-object v7, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mItemDragListener:Landroid/widget/AbsListView$OnItemDragListener;
    invoke-static {v7}, Landroid/widget/AbsListView;->access$600(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$OnItemDragListener;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mItemDragListener:Landroid/widget/AbsListView$OnItemDragListener;
    invoke-static {v7}, Landroid/widget/AbsListView;->access$600(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$OnItemDragListener;

    move-result-object v7

    instance-of v7, v7, Landroid/widget/AbsListView$DragItemFilter;

    if-eqz v7, :cond_0

    .line 3057
    iget-object v7, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mItemDragListener:Landroid/widget/AbsListView$OnItemDragListener;
    invoke-static {v7}, Landroid/widget/AbsListView;->access$600(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$OnItemDragListener;

    move-result-object v7

    check-cast v7, Landroid/widget/AbsListView$DragItemFilter;

    invoke-interface {v7, v0, v4, v2, v3}, Landroid/widget/AbsListView$DragItemFilter;->isItemDragable(Landroid/view/View;IJ)Z

    move-result v7

    if-nez v7, :cond_0

    .line 3059
    const/4 v6, 0x0

    .line 3063
    :cond_0
    if-eqz v6, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView$WindowRunnnable;->sameWindow()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    iget-boolean v7, v7, Landroid/widget/AdapterView;->mDataChanged:Z

    if-nez v7, :cond_1

    .line 3064
    iget-object v7, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v7, v0, v4, v2, v3}, Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v1

    .line 3066
    :cond_1
    if-eqz v1, :cond_3

    .line 3067
    iget-object v7, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    const/4 v8, -0x1

    iput v8, v7, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3068
    iget-object v7, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v7, v9}, Landroid/view/View;->setPressed(Z)V

    .line 3069
    invoke-virtual {v0, v9}, Landroid/view/View;->setPressed(Z)V

    .line 3074
    .end local v1           #handled:Z
    .end local v2           #longPressId:J
    .end local v4           #longPressPosition:I
    .end local v6           #perforLongPress:Z
    :cond_2
    :goto_0
    return-void

    .line 3071
    .restart local v1       #handled:Z
    .restart local v2       #longPressId:J
    .restart local v4       #longPressPosition:I
    .restart local v6       #perforLongPress:Z
    :cond_3
    iget-object v7, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    const/4 v8, 0x2

    iput v8, v7, Landroid/widget/AbsListView;->mTouchMode:I

    goto :goto_0
.end method
