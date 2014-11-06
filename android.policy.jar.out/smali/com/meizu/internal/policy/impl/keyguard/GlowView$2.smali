.class Lcom/meizu/internal/policy/impl/keyguard/GlowView$2;
.super Ljava/lang/Object;
.source "GlowView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/internal/policy/impl/keyguard/GlowView;->startAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/internal/policy/impl/keyguard/GlowView;


# direct methods
.method constructor <init>(Lcom/meizu/internal/policy/impl/keyguard/GlowView;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView$2;->this$0:Lcom/meizu/internal/policy/impl/keyguard/GlowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .parameter "animation"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView$2;->this$0:Lcom/meizu/internal/policy/impl/keyguard/GlowView;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/GlowView$2;->this$0:Lcom/meizu/internal/policy/impl/keyguard/GlowView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/GlowView;->mGlowViewList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->access$100(Lcom/meizu/internal/policy/impl/keyguard/GlowView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    #calls: Lcom/meizu/internal/policy/impl/keyguard/GlowView;->updateGlowView(Ljava/util/ArrayList;J)V
    invoke-static {v0, v1, v2, v3}, Lcom/meizu/internal/policy/impl/keyguard/GlowView;->access$600(Lcom/meizu/internal/policy/impl/keyguard/GlowView;Ljava/util/ArrayList;J)V

    .line 171
    return-void
.end method
