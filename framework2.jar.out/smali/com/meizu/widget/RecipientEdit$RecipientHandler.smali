.class Lcom/meizu/widget/RecipientEdit$RecipientHandler;
.super Landroid/os/Handler;
.source "RecipientEdit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/RecipientEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecipientHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/widget/RecipientEdit;


# direct methods
.method public constructor <init>(Lcom/meizu/widget/RecipientEdit;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 3920
    iput-object p1, p0, Lcom/meizu/widget/RecipientEdit$RecipientHandler;->this$0:Lcom/meizu/widget/RecipientEdit;

    .line 3921
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3922
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 3926
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 3934
    :cond_0
    :goto_0
    return-void

    .line 3928
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3929
    .local v0, num:Ljava/lang/String;
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$RecipientHandler;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mSipDestChecker:Lcom/meizu/widget/RecipientStateInfo$SipDestChecker;
    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->access$2400(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientStateInfo$SipDestChecker;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3930
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$RecipientHandler;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mSipDestChecker:Lcom/meizu/widget/RecipientStateInfo$SipDestChecker;
    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->access$2400(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientStateInfo$SipDestChecker;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-interface {v1, v2}, Lcom/meizu/widget/RecipientStateInfo$SipDestChecker;->checkSipDestAddrIsAvailable([Ljava/lang/String;)V

    goto :goto_0

    .line 3926
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
