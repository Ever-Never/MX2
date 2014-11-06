.class Landroid/webkit/HoldingEffect$1;
.super Ljava/lang/Object;
.source "HoldingEffect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HoldingEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/HoldingEffect;


# direct methods
.method constructor <init>(Landroid/webkit/HoldingEffect;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Landroid/webkit/HoldingEffect$1;->this$0:Landroid/webkit/HoldingEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 119
    iget-object v0, p0, Landroid/webkit/HoldingEffect$1;->this$0:Landroid/webkit/HoldingEffect;

    #getter for: Landroid/webkit/HoldingEffect;->mState:I
    invoke-static {v0}, Landroid/webkit/HoldingEffect;->access$000(Landroid/webkit/HoldingEffect;)I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Landroid/webkit/HoldingEffect$1;->this$0:Landroid/webkit/HoldingEffect;

    #getter for: Landroid/webkit/HoldingEffect;->mCurScrollY:F
    invoke-static {v0}, Landroid/webkit/HoldingEffect;->access$100(Landroid/webkit/HoldingEffect;)F

    move-result v0

    iget-object v1, p0, Landroid/webkit/HoldingEffect$1;->this$0:Landroid/webkit/HoldingEffect;

    #getter for: Landroid/webkit/HoldingEffect;->mHoldDistance:I
    invoke-static {v1}, Landroid/webkit/HoldingEffect;->access$200(Landroid/webkit/HoldingEffect;)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 120
    iget-object v0, p0, Landroid/webkit/HoldingEffect$1;->this$0:Landroid/webkit/HoldingEffect;

    const/4 v1, 0x2

    #setter for: Landroid/webkit/HoldingEffect;->mState:I
    invoke-static {v0, v1}, Landroid/webkit/HoldingEffect;->access$002(Landroid/webkit/HoldingEffect;I)I

    .line 121
    iget-object v0, p0, Landroid/webkit/HoldingEffect$1;->this$0:Landroid/webkit/HoldingEffect;

    #calls: Landroid/webkit/HoldingEffect;->show(Z)V
    invoke-static {v0, v2}, Landroid/webkit/HoldingEffect;->access$300(Landroid/webkit/HoldingEffect;Z)V

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Landroid/webkit/HoldingEffect$1;->this$0:Landroid/webkit/HoldingEffect;

    const/4 v1, 0x0

    #setter for: Landroid/webkit/HoldingEffect;->mState:I
    invoke-static {v0, v1}, Landroid/webkit/HoldingEffect;->access$002(Landroid/webkit/HoldingEffect;I)I

    goto :goto_0
.end method
