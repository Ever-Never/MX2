.class Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$5;
.super Landroid/os/Handler;
.source "KeyguardViewContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;


# direct methods
.method constructor <init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 509
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$5;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 512
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 517
    :goto_0
    return-void

    .line 514
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$5;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;

    const/4 v1, 0x1

    #calls: Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->updateWallpaper(Z)V
    invoke-static {v0, v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->access$000(Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;Z)V

    goto :goto_0

    .line 512
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method
