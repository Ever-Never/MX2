.class Lcom/meizu/widget/RecipientEdit$RecipientObserver$1;
.super Ljava/lang/Object;
.source "RecipientEdit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/RecipientEdit$RecipientObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/widget/RecipientEdit$RecipientObserver;


# direct methods
.method constructor <init>(Lcom/meizu/widget/RecipientEdit$RecipientObserver;)V
    .locals 0
    .parameter

    .prologue
    .line 4010
    iput-object p1, p0, Lcom/meizu/widget/RecipientEdit$RecipientObserver$1;->this$1:Lcom/meizu/widget/RecipientEdit$RecipientObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 4013
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit$RecipientObserver$1;->this$1:Lcom/meizu/widget/RecipientEdit$RecipientObserver;

    iget-object v4, v4, Lcom/meizu/widget/RecipientEdit$RecipientObserver;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/meizu/widget/RecipientEdit;->access$900(Lcom/meizu/widget/RecipientEdit;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 4014
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit$RecipientObserver$1;->this$1:Lcom/meizu/widget/RecipientEdit$RecipientObserver;

    iget-object v4, v4, Lcom/meizu/widget/RecipientEdit$RecipientObserver;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/meizu/widget/RecipientEdit;->access$900(Lcom/meizu/widget/RecipientEdit;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4015
    .local v3, phoneOrEmail:Ljava/lang/String;
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit$RecipientObserver$1;->this$1:Lcom/meizu/widget/RecipientEdit$RecipientObserver;

    iget-object v4, v4, Lcom/meizu/widget/RecipientEdit$RecipientObserver;->this$0:Lcom/meizu/widget/RecipientEdit;

    #calls: Lcom/meizu/widget/RecipientEdit;->queryDisplayName(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v3}, Lcom/meizu/widget/RecipientEdit;->access$5600(Lcom/meizu/widget/RecipientEdit;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4016
    .local v1, name:Ljava/lang/String;
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit$RecipientObserver$1;->this$1:Lcom/meizu/widget/RecipientEdit$RecipientObserver;

    iget-object v4, v4, Lcom/meizu/widget/RecipientEdit$RecipientObserver;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mRecipientMap:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/meizu/widget/RecipientEdit;->access$5700(Lcom/meizu/widget/RecipientEdit;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4018
    .local v2, oldName:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit$RecipientObserver$1;->this$1:Lcom/meizu/widget/RecipientEdit$RecipientObserver;

    iget-object v4, v4, Lcom/meizu/widget/RecipientEdit$RecipientObserver;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mIsSaveHistory:Z
    invoke-static {v4}, Lcom/meizu/widget/RecipientEdit;->access$4900(Lcom/meizu/widget/RecipientEdit;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4019
    move-object v1, v2

    .line 4022
    :cond_0
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 4024
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit$RecipientObserver$1;->this$1:Lcom/meizu/widget/RecipientEdit$RecipientObserver;

    iget-object v4, v4, Lcom/meizu/widget/RecipientEdit$RecipientObserver;->this$0:Lcom/meizu/widget/RecipientEdit;

    new-instance v5, Lcom/meizu/widget/RecipientEdit$RecipientRunnable;

    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit$RecipientObserver$1;->this$1:Lcom/meizu/widget/RecipientEdit$RecipientObserver;

    iget-object v6, v6, Lcom/meizu/widget/RecipientEdit$RecipientObserver;->this$0:Lcom/meizu/widget/RecipientEdit;

    invoke-direct {v5, v6, v3, v1}, Lcom/meizu/widget/RecipientEdit$RecipientRunnable;-><init>(Lcom/meizu/widget/RecipientEdit;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 4013
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4027
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #oldName:Ljava/lang/String;
    .end local v3           #phoneOrEmail:Ljava/lang/String;
    :cond_2
    return-void
.end method
