.class Landroid/widget/TextView$6;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 0
    .parameter

    .prologue
    .line 9517
    iput-object p1, p0, Landroid/widget/TextView$6;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 9536
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 9524
    iget-object v0, p0, Landroid/widget/TextView$6;->this$0:Landroid/widget/TextView;

    const/4 v1, 0x0

    #setter for: Landroid/widget/TextView;->isShakeAnimating:Z
    invoke-static {v0, v1}, Landroid/widget/TextView;->access$1302(Landroid/widget/TextView;Z)Z

    .line 9525
    iget-object v0, p0, Landroid/widget/TextView$6;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 9526
    iget-object v0, p0, Landroid/widget/TextView$6;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mShakeListener:Landroid/widget/TextView$ShakeListener;
    invoke-static {v0}, Landroid/widget/TextView;->access$1400(Landroid/widget/TextView;)Landroid/widget/TextView$ShakeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9527
    iget-object v0, p0, Landroid/widget/TextView$6;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mShakeListener:Landroid/widget/TextView$ShakeListener;
    invoke-static {v0}, Landroid/widget/TextView;->access$1400(Landroid/widget/TextView;)Landroid/widget/TextView$ShakeListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/TextView$ShakeListener;->onAnimationEnd()V

    .line 9529
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$6;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mClearText:Z
    invoke-static {v0}, Landroid/widget/TextView;->access$1500(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9530
    iget-object v0, p0, Landroid/widget/TextView$6;->this$0:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9532
    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 9540
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 9520
    return-void
.end method
