.class Lcom/meizu/widget/StaggeredGridView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "StaggeredGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/widget/StaggeredGridView;->populate(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/widget/StaggeredGridView;


# direct methods
.method constructor <init>(Lcom/meizu/widget/StaggeredGridView;)V
    .locals 0
    .parameter

    .prologue
    .line 1419
    iput-object p1, p0, Lcom/meizu/widget/StaggeredGridView$4;->this$0:Lcom/meizu/widget/StaggeredGridView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1427
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1428
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView$4;->this$0:Lcom/meizu/widget/StaggeredGridView;

    const/4 v1, 0x0

    #setter for: Lcom/meizu/widget/StaggeredGridView;->mFadeOuting:Z
    invoke-static {v0, v1}, Lcom/meizu/widget/StaggeredGridView;->access$802(Lcom/meizu/widget/StaggeredGridView;Z)Z

    .line 1429
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView$4;->this$0:Lcom/meizu/widget/StaggeredGridView;

    invoke-virtual {v0}, Lcom/meizu/widget/StaggeredGridView;->requestLayout()V

    .line 1430
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1422
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 1423
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView$4;->this$0:Lcom/meizu/widget/StaggeredGridView;

    const/4 v1, 0x1

    #setter for: Lcom/meizu/widget/StaggeredGridView;->mFadeOuting:Z
    invoke-static {v0, v1}, Lcom/meizu/widget/StaggeredGridView;->access$802(Lcom/meizu/widget/StaggeredGridView;Z)Z

    .line 1424
    return-void
.end method
