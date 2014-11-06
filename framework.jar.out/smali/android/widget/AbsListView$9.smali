.class Landroid/widget/AbsListView$9;
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
    .line 8338
    iput-object p1, p0, Landroid/widget/AbsListView$9;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 8341
    iget-object v0, p0, Landroid/widget/AbsListView$9;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/AbsListView;->mShouldDelaySpringBack:Z

    .line 8342
    iget-object v0, p0, Landroid/widget/AbsListView$9;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/widget/AbsListView;->mWaitingForSpringBack:Z

    .line 8343
    iget-object v0, p0, Landroid/widget/AbsListView$9;->this$0:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/AbsListView$9;->this$0:Landroid/widget/AbsListView;

    iget-object v1, v1, Landroid/widget/AbsListView;->mDelaySpringBack:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8344
    iget-object v0, p0, Landroid/widget/AbsListView$9;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mHoldIndicator:Lcom/meizu/widget/MzListHoldIndicator;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$5200(Landroid/widget/AbsListView;)Lcom/meizu/widget/MzListHoldIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/widget/MzListHoldIndicator;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8345
    iget-object v0, p0, Landroid/widget/AbsListView$9;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mHoldIndicator:Lcom/meizu/widget/MzListHoldIndicator;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$5200(Landroid/widget/AbsListView;)Lcom/meizu/widget/MzListHoldIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/widget/MzListHoldIndicator;->show()V

    .line 8347
    :cond_0
    return-void
.end method
