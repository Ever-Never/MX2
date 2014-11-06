.class final Landroid/widget/ListView$ScrollSelectionRunnable;
.super Ljava/lang/Object;
.source "ListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ScrollSelectionRunnable"
.end annotation


# static fields
.field private static final SCROLL_DURATION:I = 0x19

.field private static final SCROLL_SPEED:I = 0x23


# instance fields
.field private mStart:Z

.field private mUpSelect:Z

.field final synthetic this$0:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Landroid/widget/ListView;)V
    .locals 1
    .parameter

    .prologue
    .line 4531
    iput-object p1, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4533
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->mUpSelect:Z

    .line 4534
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->mStart:Z

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 4585
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->mStart:Z

    .line 4586
    iget-object v0, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4587
    return-void
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 4581
    iget-boolean v0, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->mStart:Z

    return v0
.end method

.method public run()V
    .locals 7

    .prologue
    .line 4546
    const/16 v3, 0x23

    .line 4547
    .local v3, speed:I
    const/4 v0, 0x0

    .line 4548
    .local v0, atEdge:Z
    const/4 v1, 0x0

    .line 4550
    .local v1, atEnd:Z
    iget-boolean v4, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->mUpSelect:Z

    if-eqz v4, :cond_3

    .line 4551
    iget-object v4, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    invoke-virtual {v4, v3, v3}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v0

    .line 4552
    iget-object v4, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    const/4 v5, 0x1

    #calls: Landroid/widget/ListView;->findCandidateScrollSelection(Z)I
    invoke-static {v4, v5}, Landroid/widget/ListView;->access$200(Landroid/widget/ListView;Z)I

    move-result v2

    .line 4553
    .local v2, candidatePosition:I
    iget-object v4, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    #getter for: Landroid/widget/ListView;->mLastUpSelectPosition:I
    invoke-static {v4}, Landroid/widget/ListView;->access$300(Landroid/widget/ListView;)I

    move-result v4

    if-eq v4, v2, :cond_0

    .line 4554
    iget-object v4, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    iget-object v5, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    #getter for: Landroid/widget/ListView;->mLastUpSelectPosition:I
    invoke-static {v5}, Landroid/widget/ListView;->access$300(Landroid/widget/ListView;)I

    move-result v5

    #calls: Landroid/widget/ListView;->upSelect(II)V
    invoke-static {v4, v5, v2}, Landroid/widget/ListView;->access$400(Landroid/widget/ListView;II)V

    .line 4557
    :cond_0
    if-eqz v0, :cond_1

    iget-object v4, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    iget v4, v4, Landroid/widget/AdapterView;->mFirstPosition:I

    if-nez v4, :cond_1

    .line 4558
    const/4 v1, 0x1

    .line 4559
    iget-object v4, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    iget-object v5, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    #calls: Landroid/widget/ListView;->correctTooLow(I)V
    invoke-static {v4, v5}, Landroid/widget/ListView;->access$500(Landroid/widget/ListView;I)V

    .line 4575
    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 4576
    iget-object v4, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    const-wide/16 v5, 0x19

    invoke-virtual {v4, p0, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4578
    :cond_2
    return-void

    .line 4562
    .end local v2           #candidatePosition:I
    :cond_3
    mul-int/lit8 v3, v3, -0x1

    .line 4563
    iget-object v4, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    invoke-virtual {v4, v3, v3}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v0

    .line 4564
    iget-object v4, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    const/4 v5, 0x0

    #calls: Landroid/widget/ListView;->findCandidateScrollSelection(Z)I
    invoke-static {v4, v5}, Landroid/widget/ListView;->access$200(Landroid/widget/ListView;Z)I

    move-result v2

    .line 4565
    .restart local v2       #candidatePosition:I
    iget-object v4, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    #getter for: Landroid/widget/ListView;->mLastDownSelectPosition:I
    invoke-static {v4}, Landroid/widget/ListView;->access$600(Landroid/widget/ListView;)I

    move-result v4

    if-eq v4, v2, :cond_4

    .line 4566
    iget-object v4, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    iget-object v5, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    #getter for: Landroid/widget/ListView;->mLastDownSelectPosition:I
    invoke-static {v5}, Landroid/widget/ListView;->access$600(Landroid/widget/ListView;)I

    move-result v5

    #calls: Landroid/widget/ListView;->downSelect(II)V
    invoke-static {v4, v5, v2}, Landroid/widget/ListView;->access$700(Landroid/widget/ListView;II)V

    .line 4569
    :cond_4
    if-eqz v0, :cond_1

    iget-object v4, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    iget v4, v4, Landroid/widget/AdapterView;->mFirstPosition:I

    iget-object v5, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    iget v5, v5, Landroid/widget/AdapterView;->mItemCount:I

    if-ne v4, v5, :cond_1

    .line 4570
    const/4 v1, 0x1

    .line 4571
    iget-object v4, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    iget-object v5, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    #calls: Landroid/widget/ListView;->correctTooHigh(I)V
    invoke-static {v4, v5}, Landroid/widget/ListView;->access$800(Landroid/widget/ListView;I)V

    goto :goto_0
.end method

.method public startScrollSelecte(Z)V
    .locals 1
    .parameter "up"

    .prologue
    .line 4539
    iput-boolean p1, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->mUpSelect:Z

    .line 4540
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->mStart:Z

    .line 4541
    iget-object v0, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 4542
    return-void
.end method
