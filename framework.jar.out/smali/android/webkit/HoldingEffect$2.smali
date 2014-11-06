.class Landroid/webkit/HoldingEffect$2;
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
    .line 128
    iput-object p1, p0, Landroid/webkit/HoldingEffect$2;->this$0:Landroid/webkit/HoldingEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 131
    iget-object v0, p0, Landroid/webkit/HoldingEffect$2;->this$0:Landroid/webkit/HoldingEffect;

    #calls: Landroid/webkit/HoldingEffect;->show(Z)V
    invoke-static {v0, v1}, Landroid/webkit/HoldingEffect;->access$300(Landroid/webkit/HoldingEffect;Z)V

    .line 132
    iget-object v0, p0, Landroid/webkit/HoldingEffect$2;->this$0:Landroid/webkit/HoldingEffect;

    #getter for: Landroid/webkit/HoldingEffect;->mWebView:Landroid/webkit/WebViewClassic;
    invoke-static {v0}, Landroid/webkit/HoldingEffect;->access$400(Landroid/webkit/HoldingEffect;)Landroid/webkit/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->onHoldingBack()V

    .line 133
    iget-object v0, p0, Landroid/webkit/HoldingEffect$2;->this$0:Landroid/webkit/HoldingEffect;

    #setter for: Landroid/webkit/HoldingEffect;->mState:I
    invoke-static {v0, v1}, Landroid/webkit/HoldingEffect;->access$002(Landroid/webkit/HoldingEffect;I)I

    .line 134
    return-void
.end method
