.class Landroid/widget/ScrollView$2;
.super Ljava/lang/Object;
.source "ScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ScrollView;


# direct methods
.method constructor <init>(Landroid/widget/ScrollView;)V
    .locals 0
    .parameter

    .prologue
    .line 1915
    iput-object p1, p0, Landroid/widget/ScrollView$2;->this$0:Landroid/widget/ScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 1917
    iget-object v0, p0, Landroid/widget/ScrollView$2;->this$0:Landroid/widget/ScrollView;

    iget-object v1, p0, Landroid/widget/ScrollView$2;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mCheckDelaySpringBack:Ljava/lang/Runnable;
    invoke-static {v1}, Landroid/widget/ScrollView;->access$000(Landroid/widget/ScrollView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1919
    iget-object v0, p0, Landroid/widget/ScrollView$2;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mHoldIndicator:Lcom/meizu/widget/MzListHoldIndicator;
    invoke-static {v0}, Landroid/widget/ScrollView;->access$100(Landroid/widget/ScrollView;)Lcom/meizu/widget/MzListHoldIndicator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ScrollView$2;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mHoldIndicator:Lcom/meizu/widget/MzListHoldIndicator;
    invoke-static {v0}, Landroid/widget/ScrollView;->access$100(Landroid/widget/ScrollView;)Lcom/meizu/widget/MzListHoldIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/widget/MzListHoldIndicator;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1920
    iget-object v0, p0, Landroid/widget/ScrollView$2;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mHoldIndicator:Lcom/meizu/widget/MzListHoldIndicator;
    invoke-static {v0}, Landroid/widget/ScrollView;->access$100(Landroid/widget/ScrollView;)Lcom/meizu/widget/MzListHoldIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/widget/MzListHoldIndicator;->hide()V

    .line 1923
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView$2;->this$0:Landroid/widget/ScrollView;

    #calls: Landroid/widget/ScrollView;->getScrollRange()I
    invoke-static {v0}, Landroid/widget/ScrollView;->access$200(Landroid/widget/ScrollView;)I

    move-result v6

    .line 1925
    .local v6, bottom:I
    iget-object v0, p0, Landroid/widget/ScrollView$2;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mScroller:Lcom/meizu/widget/MzOverScroller;
    invoke-static {v0}, Landroid/widget/ScrollView;->access$500(Landroid/widget/ScrollView;)Lcom/meizu/widget/MzOverScroller;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/ScrollView$2;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/view/View;->mScrollX:I
    invoke-static {v1}, Landroid/widget/ScrollView;->access$300(Landroid/widget/ScrollView;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/ScrollView$2;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v2}, Landroid/widget/ScrollView;->access$400(Landroid/widget/ScrollView;)I

    move-result v2

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/meizu/widget/MzOverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1926
    iget-object v0, p0, Landroid/widget/ScrollView$2;->this$0:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 1927
    iget-object v0, p0, Landroid/widget/ScrollView$2;->this$0:Landroid/widget/ScrollView;

    const/4 v1, 0x1

    #setter for: Landroid/widget/ScrollView;->mOverFling:Z
    invoke-static {v0, v1}, Landroid/widget/ScrollView;->access$602(Landroid/widget/ScrollView;Z)Z

    .line 1930
    :cond_1
    iget-object v0, p0, Landroid/widget/ScrollView$2;->this$0:Landroid/widget/ScrollView;

    iput-boolean v3, v0, Landroid/widget/ScrollView;->mShouldDelaySpringBack:Z

    .line 1931
    iget-object v0, p0, Landroid/widget/ScrollView$2;->this$0:Landroid/widget/ScrollView;

    #setter for: Landroid/widget/ScrollView;->mWaitingForDelaySpringBack:Z
    invoke-static {v0, v3}, Landroid/widget/ScrollView;->access$702(Landroid/widget/ScrollView;Z)Z

    .line 1932
    return-void
.end method
