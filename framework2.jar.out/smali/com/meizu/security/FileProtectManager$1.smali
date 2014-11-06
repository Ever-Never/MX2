.class Lcom/meizu/security/FileProtectManager$1;
.super Landroid/os/Handler;
.source "FileProtectManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/security/FileProtectManager;->getNotifier()Lcom/meizu/security/FileProtectManager$Notifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/security/FileProtectManager;


# direct methods
.method constructor <init>(Lcom/meizu/security/FileProtectManager;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/meizu/security/FileProtectManager$1;->this$0:Lcom/meizu/security/FileProtectManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 126
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 128
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/security/FileProtectManager$1;->this$0:Lcom/meizu/security/FileProtectManager;

    #getter for: Lcom/meizu/security/FileProtectManager;->mGrantChangedListener:Lcom/meizu/security/FileProtectManager$OnGrantChangedListener;
    invoke-static {v0}, Lcom/meizu/security/FileProtectManager;->access$000(Lcom/meizu/security/FileProtectManager;)Lcom/meizu/security/FileProtectManager$OnGrantChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/meizu/security/FileProtectManager$1;->this$0:Lcom/meizu/security/FileProtectManager;

    #getter for: Lcom/meizu/security/FileProtectManager;->mGrantChangedListener:Lcom/meizu/security/FileProtectManager$OnGrantChangedListener;
    invoke-static {v0}, Lcom/meizu/security/FileProtectManager;->access$000(Lcom/meizu/security/FileProtectManager;)Lcom/meizu/security/FileProtectManager$OnGrantChangedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/meizu/security/FileProtectManager$OnGrantChangedListener;->onUngranted()V

    goto :goto_0

    .line 134
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/security/FileProtectManager$1;->this$0:Lcom/meizu/security/FileProtectManager;

    #getter for: Lcom/meizu/security/FileProtectManager;->mGrantChangedListener:Lcom/meizu/security/FileProtectManager$OnGrantChangedListener;
    invoke-static {v0}, Lcom/meizu/security/FileProtectManager;->access$000(Lcom/meizu/security/FileProtectManager;)Lcom/meizu/security/FileProtectManager$OnGrantChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/meizu/security/FileProtectManager$1;->this$0:Lcom/meizu/security/FileProtectManager;

    #getter for: Lcom/meizu/security/FileProtectManager;->mGrantChangedListener:Lcom/meizu/security/FileProtectManager$OnGrantChangedListener;
    invoke-static {v0}, Lcom/meizu/security/FileProtectManager;->access$000(Lcom/meizu/security/FileProtectManager;)Lcom/meizu/security/FileProtectManager$OnGrantChangedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/meizu/security/FileProtectManager$OnGrantChangedListener;->onGranted()V

    goto :goto_0

    .line 140
    :pswitch_2
    iget-object v0, p0, Lcom/meizu/security/FileProtectManager$1;->this$0:Lcom/meizu/security/FileProtectManager;

    #getter for: Lcom/meizu/security/FileProtectManager;->mGrantChangedListener:Lcom/meizu/security/FileProtectManager$OnGrantChangedListener;
    invoke-static {v0}, Lcom/meizu/security/FileProtectManager;->access$000(Lcom/meizu/security/FileProtectManager;)Lcom/meizu/security/FileProtectManager$OnGrantChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/meizu/security/FileProtectManager$1;->this$0:Lcom/meizu/security/FileProtectManager;

    #getter for: Lcom/meizu/security/FileProtectManager;->mGrantChangedListener:Lcom/meizu/security/FileProtectManager$OnGrantChangedListener;
    invoke-static {v0}, Lcom/meizu/security/FileProtectManager;->access$000(Lcom/meizu/security/FileProtectManager;)Lcom/meizu/security/FileProtectManager$OnGrantChangedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/meizu/security/FileProtectManager$OnGrantChangedListener;->onFailedGranted()V

    goto :goto_0

    .line 146
    :pswitch_3
    iget-object v0, p0, Lcom/meizu/security/FileProtectManager$1;->this$0:Lcom/meizu/security/FileProtectManager;

    #getter for: Lcom/meizu/security/FileProtectManager;->mSetLockPasswordResultListener:Lcom/meizu/security/FileProtectManager$OnSetLockPasswordResultListener;
    invoke-static {v0}, Lcom/meizu/security/FileProtectManager;->access$100(Lcom/meizu/security/FileProtectManager;)Lcom/meizu/security/FileProtectManager$OnSetLockPasswordResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/meizu/security/FileProtectManager$1;->this$0:Lcom/meizu/security/FileProtectManager;

    #getter for: Lcom/meizu/security/FileProtectManager;->mSetLockPasswordResultListener:Lcom/meizu/security/FileProtectManager$OnSetLockPasswordResultListener;
    invoke-static {v0}, Lcom/meizu/security/FileProtectManager;->access$100(Lcom/meizu/security/FileProtectManager;)Lcom/meizu/security/FileProtectManager$OnSetLockPasswordResultListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v1, v0}, Lcom/meizu/security/FileProtectManager$OnSetLockPasswordResultListener;->onSetLockPasswordResult(Z)V

    goto :goto_0

    .line 152
    :pswitch_4
    iget-object v0, p0, Lcom/meizu/security/FileProtectManager$1;->this$0:Lcom/meizu/security/FileProtectManager;

    #getter for: Lcom/meizu/security/FileProtectManager;->mCheckPasswordResultListener:Lcom/meizu/security/FileProtectManager$OnCheckPasswordResultListener;
    invoke-static {v0}, Lcom/meizu/security/FileProtectManager;->access$200(Lcom/meizu/security/FileProtectManager;)Lcom/meizu/security/FileProtectManager$OnCheckPasswordResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/meizu/security/FileProtectManager$1;->this$0:Lcom/meizu/security/FileProtectManager;

    #getter for: Lcom/meizu/security/FileProtectManager;->mCheckPasswordResultListener:Lcom/meizu/security/FileProtectManager$OnCheckPasswordResultListener;
    invoke-static {v0}, Lcom/meizu/security/FileProtectManager;->access$200(Lcom/meizu/security/FileProtectManager;)Lcom/meizu/security/FileProtectManager$OnCheckPasswordResultListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v1, v0}, Lcom/meizu/security/FileProtectManager$OnCheckPasswordResultListener;->OnCheckPasswordResult(Z)V

    goto :goto_0

    .line 158
    :pswitch_5
    iget-object v0, p0, Lcom/meizu/security/FileProtectManager$1;->this$0:Lcom/meizu/security/FileProtectManager;

    #getter for: Lcom/meizu/security/FileProtectManager;->mAddGlobalUnlockFileResultListener:Lcom/meizu/security/FileProtectManager$OnAddGlobalUnlockFileResultListener;
    invoke-static {v0}, Lcom/meizu/security/FileProtectManager;->access$300(Lcom/meizu/security/FileProtectManager;)Lcom/meizu/security/FileProtectManager$OnAddGlobalUnlockFileResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/meizu/security/FileProtectManager$1;->this$0:Lcom/meizu/security/FileProtectManager;

    #getter for: Lcom/meizu/security/FileProtectManager;->mAddGlobalUnlockFileResultListener:Lcom/meizu/security/FileProtectManager$OnAddGlobalUnlockFileResultListener;
    invoke-static {v0}, Lcom/meizu/security/FileProtectManager;->access$300(Lcom/meizu/security/FileProtectManager;)Lcom/meizu/security/FileProtectManager$OnAddGlobalUnlockFileResultListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v1, v0}, Lcom/meizu/security/FileProtectManager$OnAddGlobalUnlockFileResultListener;->OnAddGlobalUnlockFileResult(Z)V

    goto/16 :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
