.class Lcom/meizu/widget/RecipientEdit$RecipientAdapter$2;
.super Ljava/lang/Object;
.source "RecipientEdit.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->newHeaderView(Landroid/content/Context;ILandroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/widget/RecipientEdit$RecipientAdapter;


# direct methods
.method constructor <init>(Lcom/meizu/widget/RecipientEdit$RecipientAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 3203
    iput-object p1, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$2;->this$1:Lcom/meizu/widget/RecipientEdit$RecipientAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3206
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$2;->this$1:Lcom/meizu/widget/RecipientEdit$RecipientAdapter;

    #getter for: Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mSnsSearch:Z
    invoke-static {v2}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->access$4200(Lcom/meizu/widget/RecipientEdit$RecipientAdapter;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3207
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$2;->this$1:Lcom/meizu/widget/RecipientEdit$RecipientAdapter;

    #setter for: Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mSnsLoading:Z
    invoke-static {v2, v0}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->access$4302(Lcom/meizu/widget/RecipientEdit$RecipientAdapter;Z)Z

    .line 3208
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$2;->this$1:Lcom/meizu/widget/RecipientEdit$RecipientAdapter;

    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$2;->this$1:Lcom/meizu/widget/RecipientEdit$RecipientAdapter;

    #getter for: Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mSnsFirstSearch:Z
    invoke-static {v3}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->access$4400(Lcom/meizu/widget/RecipientEdit$RecipientAdapter;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    #calls: Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->startSnsSearch(Z)V
    invoke-static {v2, v0}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->access$4500(Lcom/meizu/widget/RecipientEdit$RecipientAdapter;Z)V

    .line 3209
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$2;->this$1:Lcom/meizu/widget/RecipientEdit$RecipientAdapter;

    invoke-virtual {v0}, Lcom/meizu/widget/CompositeCursorAdapterMz;->notifyDataSetChanged()V

    .line 3215
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 3208
    goto :goto_0

    .line 3211
    :cond_1
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$2;->this$1:Lcom/meizu/widget/RecipientEdit$RecipientAdapter;

    #setter for: Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mGlobalSearchDelayed:Z
    invoke-static {v0, v1}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->access$3902(Lcom/meizu/widget/RecipientEdit$RecipientAdapter;Z)Z

    .line 3212
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$2;->this$1:Lcom/meizu/widget/RecipientEdit$RecipientAdapter;

    #calls: Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->startGlobalSearch()V
    invoke-static {v0}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->access$4000(Lcom/meizu/widget/RecipientEdit$RecipientAdapter;)V

    .line 3213
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$2;->this$1:Lcom/meizu/widget/RecipientEdit$RecipientAdapter;

    invoke-virtual {v0}, Lcom/meizu/widget/CompositeCursorAdapterMz;->notifyDataSetChanged()V

    goto :goto_1
.end method
