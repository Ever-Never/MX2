.class Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$1;
.super Landroid/os/Handler;
.source "KeyguardMusicController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;


# direct methods
.method constructor <init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 108
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 153
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 111
    :pswitch_1
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mClientGeneration:I
    invoke-static {v2}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->access$000(Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;)I

    move-result v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v3, :cond_0

    .line 112
    invoke-static {}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->access$100()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "LockMusic"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_UPDATE_STATE, state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mCurrentPlayState:I
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->access$200(Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_1
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mCurrentPlayState:I
    invoke-static {v2}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->access$200(Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;)I

    move-result v2

    iget v3, p1, Landroid/os/Message;->arg2:I

    if-eq v2, v3, :cond_0

    .line 114
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;

    iget v3, p1, Landroid/os/Message;->arg2:I

    #setter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mCurrentPlayState:I
    invoke-static {v2, v3}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->access$202(Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;I)I

    .line 115
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;

    #calls: Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->handlePlaystateChanded()V
    invoke-static {v2}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->access$300(Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;)V

    goto :goto_0

    .line 120
    :pswitch_2
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mClientGeneration:I
    invoke-static {v2}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->access$000(Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;)I

    move-result v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v3, :cond_0

    .line 121
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 122
    .local v0, data:Landroid/os/Bundle;
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mMetadata:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$Metadata;
    invoke-static {v2}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->access$400(Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$Metadata;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;

    const/16 v4, 0xd

    #calls: Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->getMdString(Landroid/os/Bundle;I)Ljava/lang/String;
    invoke-static {v3, v0, v4}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->access$600(Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;Landroid/os/Bundle;I)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$Metadata;->artist:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$Metadata;->access$502(Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$Metadata;Ljava/lang/String;)Ljava/lang/String;

    .line 123
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mMetadata:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$Metadata;
    invoke-static {v2}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->access$400(Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$Metadata;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;

    const/4 v4, 0x7

    #calls: Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->getMdString(Landroid/os/Bundle;I)Ljava/lang/String;
    invoke-static {v3, v0, v4}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->access$600(Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;Landroid/os/Bundle;I)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$Metadata;->trackTitle:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$Metadata;->access$702(Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$Metadata;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mMetadata:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$Metadata;
    invoke-static {v2}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->access$400(Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$Metadata;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;

    const/4 v4, 0x1

    #calls: Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->getMdString(Landroid/os/Bundle;I)Ljava/lang/String;
    invoke-static {v3, v0, v4}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->access$600(Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;Landroid/os/Bundle;I)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$Metadata;->albumTitle:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$Metadata;->access$802(Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$Metadata;Ljava/lang/String;)Ljava/lang/String;

    .line 125
    invoke-static {}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->access$100()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "LockMusic"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_SET_METADATA, title = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mMetadata:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$Metadata;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->access$400(Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$Metadata;

    move-result-object v4

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$Metadata;->trackTitle:Ljava/lang/String;
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$Metadata;->access$700(Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$Metadata;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_2
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->access$900(Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x13f

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 127
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;

    #calls: Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->handleMetaChanged()V
    invoke-static {v2}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->access$1000(Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;)V

    goto/16 :goto_0

    .line 131
    .end local v0           #data:Landroid/os/Bundle;
    :pswitch_3
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mForceShowMusic:Z
    invoke-static {v2}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->access$1100(Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;)Z

    move-result v1

    .line 132
    .local v1, oldForceShowMusic:Z
    iget v2, p1, Landroid/os/Message;->arg2:I

    if-eqz v2, :cond_5

    .line 134
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mForceShowMusic:Z
    invoke-static {v2}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->access$1100(Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 135
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;

    #calls: Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->handleMusicClientClear()V
    invoke-static {v2}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->access$1200(Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;)V

    .line 136
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;

    #setter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mCurrentPlayState:I
    invoke-static {v2, v4}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->access$202(Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;I)I

    .line 141
    :cond_3
    :goto_1
    invoke-static {}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->access$100()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "LockMusic"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_SET_GENERATION_ID, New genId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " old genId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mClientGeneration:I
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->access$000(Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " clearing:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " oldForceShowMusic:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_4
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;

    iget v3, p1, Landroid/os/Message;->arg1:I

    #setter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mClientGeneration:I
    invoke-static {v2, v3}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->access$002(Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;I)I

    .line 144
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/PendingIntent;

    #setter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mClientIntent:Landroid/app/PendingIntent;
    invoke-static {v3, v2}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->access$1302(Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    goto/16 :goto_0

    .line 139
    :cond_5
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;

    invoke-virtual {v2}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->cleanForceShowMusic()V

    goto :goto_1

    .line 147
    .end local v1           #oldForceShowMusic:Z
    :pswitch_4
    invoke-static {}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->access$100()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "LockMusic"

    const-string v3, "MSG_CLEAR_MUSIC_TIMEOUT, clear "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_6
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;

    #calls: Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->handleMusicClientClear()V
    invoke-static {v2}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->access$1200(Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;)V

    .line 149
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;

    #setter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mCurrentPlayState:I
    invoke-static {v2, v4}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->access$202(Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;I)I

    .line 150
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$1;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;

    invoke-virtual {v2}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->cleanForceShowMusic()V

    goto/16 :goto_0

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x13b
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
