.class Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$2;
.super Ljava/lang/Object;
.source "KeyguardSlideView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->fadeOutUnlockDivider(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;


# direct methods
.method constructor <init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;)V
    .locals 0
    .parameter

    .prologue
    .line 408
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$2;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 411
    new-instance v1, Ljava/lang/Float;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 412
    .local v0, alpha:F
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$2;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mUnlockDivider:Landroid/view/View;
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->access$100(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 413
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 414
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$2;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mUnlockDivider:Landroid/view/View;
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->access$100(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 415
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 417
    :cond_0
    return-void
.end method
