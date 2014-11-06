.class Lcom/meizu/widget/StaggeredGridView$3;
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
    .line 1404
    iput-object p1, p0, Lcom/meizu/widget/StaggeredGridView$3;->this$0:Lcom/meizu/widget/StaggeredGridView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1412
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1413
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView$3;->this$0:Lcom/meizu/widget/StaggeredGridView;

    const/4 v1, 0x0

    #setter for: Lcom/meizu/widget/StaggeredGridView;->mUpdateing:Z
    invoke-static {v0, v1}, Lcom/meizu/widget/StaggeredGridView;->access$702(Lcom/meizu/widget/StaggeredGridView;Z)Z

    .line 1414
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1407
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 1408
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView$3;->this$0:Lcom/meizu/widget/StaggeredGridView;

    const/4 v1, 0x1

    #setter for: Lcom/meizu/widget/StaggeredGridView;->mUpdateing:Z
    invoke-static {v0, v1}, Lcom/meizu/widget/StaggeredGridView;->access$702(Lcom/meizu/widget/StaggeredGridView;Z)Z

    .line 1409
    return-void
.end method
