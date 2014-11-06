.class Landroid/widget/AbsListView$8;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0
    .parameter

    .prologue
    .line 8232
    iput-object p1, p0, Landroid/widget/AbsListView$8;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 8234
    iget-object v0, p0, Landroid/widget/AbsListView$8;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$4900(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$FlingRunnable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 8235
    iget-object v0, p0, Landroid/widget/AbsListView$8;->this$0:Landroid/widget/AbsListView;

    new-instance v1, Landroid/widget/AbsListView$FlingRunnable;

    iget-object v2, p0, Landroid/widget/AbsListView$8;->this$0:Landroid/widget/AbsListView;

    invoke-direct {v1, v2}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    #setter for: Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;
    invoke-static {v0, v1}, Landroid/widget/AbsListView;->access$4902(Landroid/widget/AbsListView;Landroid/widget/AbsListView$FlingRunnable;)Landroid/widget/AbsListView$FlingRunnable;

    .line 8238
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$8;->this$0:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/AbsListView$8;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mCheckDelaySpringBack:Ljava/lang/Runnable;
    invoke-static {v1}, Landroid/widget/AbsListView;->access$5000(Landroid/widget/AbsListView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8240
    iget-object v0, p0, Landroid/widget/AbsListView$8;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 8241
    iget-object v0, p0, Landroid/widget/AbsListView$8;->this$0:Landroid/widget/AbsListView;

    #calls: Landroid/widget/AbsListView;->createScrollingCache()V
    invoke-static {v0}, Landroid/widget/AbsListView;->access$5100(Landroid/widget/AbsListView;)V

    .line 8242
    iget-object v0, p0, Landroid/widget/AbsListView$8;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$4900(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$FlingRunnable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    .line 8244
    iget-object v0, p0, Landroid/widget/AbsListView$8;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mHoldIndicator:Lcom/meizu/widget/MzListHoldIndicator;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$5200(Landroid/widget/AbsListView;)Lcom/meizu/widget/MzListHoldIndicator;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView$8;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mHoldIndicator:Lcom/meizu/widget/MzListHoldIndicator;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$5200(Landroid/widget/AbsListView;)Lcom/meizu/widget/MzListHoldIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/widget/MzListHoldIndicator;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8245
    iget-object v0, p0, Landroid/widget/AbsListView$8;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mHoldIndicator:Lcom/meizu/widget/MzListHoldIndicator;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$5200(Landroid/widget/AbsListView;)Lcom/meizu/widget/MzListHoldIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/widget/MzListHoldIndicator;->hide()V

    .line 8248
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView$8;->this$0:Landroid/widget/AbsListView;

    iput-boolean v3, v0, Landroid/widget/AbsListView;->mShouldDelaySpringBack:Z

    .line 8249
    iget-object v0, p0, Landroid/widget/AbsListView$8;->this$0:Landroid/widget/AbsListView;

    #setter for: Landroid/widget/AbsListView;->mWaitingForDelaySpringBack:Z
    invoke-static {v0, v3}, Landroid/widget/AbsListView;->access$5302(Landroid/widget/AbsListView;Z)Z

    .line 8250
    return-void
.end method
