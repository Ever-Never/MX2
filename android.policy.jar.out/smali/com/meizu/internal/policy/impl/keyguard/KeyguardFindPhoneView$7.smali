.class Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$7;
.super Landroid/os/Handler;
.source "KeyguardFindPhoneView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;


# direct methods
.method constructor <init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)V
    .locals 0
    .parameter

    .prologue
    .line 787
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$7;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const-wide/16 v6, 0x190

    const/16 v5, 0x3ec

    const/4 v4, 0x0

    .line 790
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 830
    :cond_0
    :goto_0
    return-void

    .line 792
    :pswitch_0
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$7;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mFlymeText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$2600(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$7;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mFlymeName:Ljava/lang/String;
    invoke-static {v2}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$2300(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 793
    invoke-static {}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$1100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "FindPhone"

    const-string v2, "mFlymeText.setText(mFlymeName)"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 796
    :pswitch_1
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$7;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    #calls: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->updateUserName()V
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$2700(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)V

    goto :goto_0

    .line 803
    :pswitch_2
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$7;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    iget-object v1, v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$7;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    iget-object v2, v2, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 804
    invoke-static {}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$1100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "FindPhone"

    const-string v2, "receive MSG_CHECK_CAMERA_SMILE, but wait"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 808
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 809
    .local v0, count:I
    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    .line 817
    invoke-static {}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$1100()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "FindPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive MSG_WAI, but wait. count is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 819
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$7;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    iget-object v1, v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$7;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    iget-object v2, v2, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5, v0, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 822
    :cond_2
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$7;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    #setter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mIsTake:Z
    invoke-static {v1, v4}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$2802(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;Z)Z

    .line 826
    invoke-static {}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$1100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "FindPhone"

    const-string v2, "receive MSG_WAIT and is not smile mode. but take photo"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 790
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
