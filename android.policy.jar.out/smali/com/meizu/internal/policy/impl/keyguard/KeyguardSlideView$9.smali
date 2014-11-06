.class Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$9;
.super Ljava/lang/Object;
.source "KeyguardSlideView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->updateGlowView(Z)V
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
    .line 910
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$9;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 915
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$9;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mAlarmView:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->access$1300(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 916
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 918
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 912
    return-void
.end method
