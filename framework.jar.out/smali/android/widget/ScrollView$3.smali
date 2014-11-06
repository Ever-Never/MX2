.class Landroid/widget/ScrollView$3;
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
    .line 1966
    iput-object p1, p0, Landroid/widget/ScrollView$3;->this$0:Landroid/widget/ScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1969
    iget-object v0, p0, Landroid/widget/ScrollView$3;->this$0:Landroid/widget/ScrollView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/ScrollView;->mShouldDelaySpringBack:Z

    .line 1970
    iget-object v0, p0, Landroid/widget/ScrollView$3;->this$0:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    #setter for: Landroid/widget/ScrollView;->mWaitingForSpringBack:Z
    invoke-static {v0, v1}, Landroid/widget/ScrollView;->access$802(Landroid/widget/ScrollView;Z)Z

    .line 1971
    iget-object v0, p0, Landroid/widget/ScrollView$3;->this$0:Landroid/widget/ScrollView;

    iget-object v1, p0, Landroid/widget/ScrollView$3;->this$0:Landroid/widget/ScrollView;

    iget-object v1, v1, Landroid/widget/ScrollView;->mDelaySpringBack:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1972
    iget-object v0, p0, Landroid/widget/ScrollView$3;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mHoldIndicator:Lcom/meizu/widget/MzListHoldIndicator;
    invoke-static {v0}, Landroid/widget/ScrollView;->access$100(Landroid/widget/ScrollView;)Lcom/meizu/widget/MzListHoldIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/widget/MzListHoldIndicator;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1973
    iget-object v0, p0, Landroid/widget/ScrollView$3;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mHoldIndicator:Lcom/meizu/widget/MzListHoldIndicator;
    invoke-static {v0}, Landroid/widget/ScrollView;->access$100(Landroid/widget/ScrollView;)Lcom/meizu/widget/MzListHoldIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/widget/MzListHoldIndicator;->show()V

    .line 1975
    :cond_0
    return-void
.end method
