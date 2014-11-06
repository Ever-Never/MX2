.class Lcom/meizu/widget/RecipientEdit$RecipientAdapter$1;
.super Ljava/lang/Object;
.source "RecipientEdit.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/RecipientEdit$RecipientAdapter;
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
    .line 3159
    iput-object p1, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$1;->this$1:Lcom/meizu/widget/RecipientEdit$RecipientAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 3174
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 3162
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$1;->this$1:Lcom/meizu/widget/RecipientEdit$RecipientAdapter;

    iget-object v0, v0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mAutoGlobalSearch:Z
    invoke-static {v0}, Lcom/meizu/widget/RecipientEdit;->access$3800(Lcom/meizu/widget/RecipientEdit;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$1;->this$1:Lcom/meizu/widget/RecipientEdit$RecipientAdapter;

    #getter for: Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mGlobalSearchDelayed:Z
    invoke-static {v0}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->access$3900(Lcom/meizu/widget/RecipientEdit$RecipientAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$1;->this$1:Lcom/meizu/widget/RecipientEdit$RecipientAdapter;

    invoke-virtual {v1}, Lcom/meizu/widget/CompositeCursorAdapterMz;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3164
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$1;->this$1:Lcom/meizu/widget/RecipientEdit$RecipientAdapter;

    const/4 v1, 0x0

    #setter for: Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mGlobalSearchDelayed:Z
    invoke-static {v0, v1}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->access$3902(Lcom/meizu/widget/RecipientEdit$RecipientAdapter;Z)Z

    .line 3165
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$1;->this$1:Lcom/meizu/widget/RecipientEdit$RecipientAdapter;

    #calls: Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->startGlobalSearch()V
    invoke-static {v0}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->access$4000(Lcom/meizu/widget/RecipientEdit$RecipientAdapter;)V

    .line 3166
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$1;->this$1:Lcom/meizu/widget/RecipientEdit$RecipientAdapter;

    invoke-virtual {v0}, Lcom/meizu/widget/CompositeCursorAdapterMz;->notifyDataSetChanged()V

    .line 3168
    :cond_0
    return-void
.end method
