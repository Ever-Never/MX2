.class final Lcom/meizu/widget/RecipientEdit$RecipientAdapter$SnsPartitionFilter;
.super Landroid/widget/Filter;
.source "RecipientEdit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/RecipientEdit$RecipientAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SnsPartitionFilter"
.end annotation


# instance fields
.field mQueryByNetwork:Z

.field final synthetic this$1:Lcom/meizu/widget/RecipientEdit$RecipientAdapter;


# direct methods
.method private constructor <init>(Lcom/meizu/widget/RecipientEdit$RecipientAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 3115
    iput-object p1, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$SnsPartitionFilter;->this$1:Lcom/meizu/widget/RecipientEdit$RecipientAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/widget/RecipientEdit$RecipientAdapter;Lcom/meizu/widget/RecipientEdit$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3115
    invoke-direct {p0, p1}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$SnsPartitionFilter;-><init>(Lcom/meizu/widget/RecipientEdit$RecipientAdapter;)V

    return-void
.end method


# virtual methods
.method public convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "resultValue"

    .prologue
    .line 3138
    const/4 v0, 0x0

    return-object v0
.end method

.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 5
    .parameter "constraint"

    .prologue
    .line 3120
    if-nez p1, :cond_1

    const-string v1, ""

    .line 3121
    .local v1, filter:Ljava/lang/String;
    :goto_0
    new-instance v2, Landroid/widget/Filter$FilterResults;

    invoke-direct {v2}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 3122
    .local v2, results:Landroid/widget/Filter$FilterResults;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3123
    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$SnsPartitionFilter;->this$1:Lcom/meizu/widget/RecipientEdit$RecipientAdapter;

    iget-boolean v4, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$SnsPartitionFilter;->mQueryByNetwork:Z

    #calls: Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->onSnsFiltering(Ljava/lang/String;Z)Landroid/database/Cursor;
    invoke-static {v3, v1, v4}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->access$3400(Lcom/meizu/widget/RecipientEdit$RecipientAdapter;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    .line 3124
    .local v0, c:Landroid/database/Cursor;
    iput-object v0, v2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 3126
    .end local v0           #c:Landroid/database/Cursor;
    :cond_0
    return-object v2

    .line 3120
    .end local v1           #filter:Ljava/lang/String;
    .end local v2           #results:Landroid/widget/Filter$FilterResults;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .parameter "constraint"
    .parameter "results"

    .prologue
    .line 3131
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Landroid/database/Cursor;

    .line 3132
    .local v0, cursor:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$SnsPartitionFilter;->this$1:Lcom/meizu/widget/RecipientEdit$RecipientAdapter;

    #calls: Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->onSnsLoadFinished(Ljava/lang/CharSequence;Landroid/database/Cursor;)V
    invoke-static {v1, p1, v0}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->access$3700(Lcom/meizu/widget/RecipientEdit$RecipientAdapter;Ljava/lang/CharSequence;Landroid/database/Cursor;)V

    .line 3133
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$SnsPartitionFilter;->this$1:Lcom/meizu/widget/RecipientEdit$RecipientAdapter;

    invoke-virtual {v1}, Lcom/meizu/widget/CompositeCursorAdapterMz;->getCount()I

    move-result v1

    iput v1, p2, Landroid/widget/Filter$FilterResults;->count:I

    .line 3134
    return-void
.end method
