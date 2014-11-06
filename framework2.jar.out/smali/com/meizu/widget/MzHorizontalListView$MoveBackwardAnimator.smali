.class Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator;
.super Ljava/lang/Object;
.source "MzHorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/MzHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MoveBackwardAnimator"
.end annotation


# instance fields
.field mEnd:I

.field mStart:I

.field final synthetic this$0:Lcom/meizu/widget/MzHorizontalListView;


# direct methods
.method private constructor <init>(Lcom/meizu/widget/MzHorizontalListView;)V
    .locals 0
    .parameter

    .prologue
    .line 414
    iput-object p1, p0, Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator;->this$0:Lcom/meizu/widget/MzHorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/widget/MzHorizontalListView;Lcom/meizu/widget/MzHorizontalListView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 414
    invoke-direct {p0, p1}, Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator;-><init>(Lcom/meizu/widget/MzHorizontalListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/16 v8, 0x96

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 428
    iget-object v2, p0, Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator;->this$0:Lcom/meizu/widget/MzHorizontalListView;

    #setter for: Lcom/meizu/widget/MzHorizontalListView;->mIsAnimating:Z
    invoke-static {v2, v6}, Lcom/meizu/widget/MzHorizontalListView;->access$402(Lcom/meizu/widget/MzHorizontalListView;Z)Z

    .line 429
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 432
    .local v1, set:Landroid/animation/AnimatorSet;
    new-array v2, v6, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator;->this$0:Lcom/meizu/widget/MzHorizontalListView;

    iget-object v4, p0, Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator;->this$0:Lcom/meizu/widget/MzHorizontalListView;

    #getter for: Lcom/meizu/widget/MzHorizontalListView;->mDragPosition:I
    invoke-static {v4}, Lcom/meizu/widget/MzHorizontalListView;->access$1100(Lcom/meizu/widget/MzHorizontalListView;)I

    move-result v4

    iget v5, p0, Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator;->mEnd:I

    #calls: Lcom/meizu/widget/MzHorizontalListView;->makeAnimator(III)Landroid/animation/ObjectAnimator;
    invoke-static {v3, v4, v5, v8}, Lcom/meizu/widget/MzHorizontalListView;->access$1600(Lcom/meizu/widget/MzHorizontalListView;III)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 434
    iget v0, p0, Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator;->mStart:I

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator;->mEnd:I

    if-gt v0, v2, :cond_0

    .line 435
    new-array v2, v6, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator;->this$0:Lcom/meizu/widget/MzHorizontalListView;

    add-int/lit8 v4, v0, -0x1

    #calls: Lcom/meizu/widget/MzHorizontalListView;->makeAnimator(III)Landroid/animation/ObjectAnimator;
    invoke-static {v3, v0, v4, v8}, Lcom/meizu/widget/MzHorizontalListView;->access$1600(Lcom/meizu/widget/MzHorizontalListView;III)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 434
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 438
    :cond_0
    new-instance v2, Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator$1;

    invoke-direct {v2, p0}, Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator$1;-><init>(Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 464
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 465
    return-void
.end method

.method public start(II)V
    .locals 3
    .parameter "start"
    .parameter "end"

    .prologue
    .line 419
    iput p1, p0, Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator;->mStart:I

    .line 420
    iput p2, p0, Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator;->mEnd:I

    .line 422
    iget-object v0, p0, Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator;->this$0:Lcom/meizu/widget/MzHorizontalListView;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 423
    iget-object v0, p0, Lcom/meizu/widget/MzHorizontalListView$MoveBackwardAnimator;->this$0:Lcom/meizu/widget/MzHorizontalListView;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 424
    return-void
.end method
