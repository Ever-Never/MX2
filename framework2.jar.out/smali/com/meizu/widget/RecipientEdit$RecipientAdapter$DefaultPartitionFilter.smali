.class final Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DefaultPartitionFilter;
.super Landroid/widget/Filter;
.source "RecipientEdit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/RecipientEdit$RecipientAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DefaultPartitionFilter"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/widget/RecipientEdit$RecipientAdapter;


# direct methods
.method private constructor <init>(Lcom/meizu/widget/RecipientEdit$RecipientAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 3036
    iput-object p1, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DefaultPartitionFilter;->this$1:Lcom/meizu/widget/RecipientEdit$RecipientAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/widget/RecipientEdit$RecipientAdapter;Lcom/meizu/widget/RecipientEdit$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3036
    invoke-direct {p0, p1}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DefaultPartitionFilter;-><init>(Lcom/meizu/widget/RecipientEdit$RecipientAdapter;)V

    return-void
.end method


# virtual methods
.method public convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "resultValue"

    .prologue
    .line 3072
    const/4 v0, 0x0

    return-object v0
.end method

.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 9
    .parameter "constraint"

    .prologue
    const/4 v8, 0x0

    .line 3040
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DefaultPartitionFilter;->this$1:Lcom/meizu/widget/RecipientEdit$RecipientAdapter;

    #getter for: Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mDefaultData:Ljava/util/LinkedHashMap;
    invoke-static {v5}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->access$3000(Lcom/meizu/widget/RecipientEdit$RecipientAdapter;)Ljava/util/LinkedHashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->clear()V

    .line 3041
    if-nez p1, :cond_1

    const-string v1, ""

    .line 3042
    .local v1, filter:Ljava/lang/String;
    :goto_0
    new-instance v3, Landroid/widget/Filter$FilterResults;

    invoke-direct {v3}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 3043
    .local v3, results:Landroid/widget/Filter$FilterResults;
    const/4 v2, 0x0

    .line 3044
    .local v2, groupCursor:Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 3045
    .local v0, contactCursor:Landroid/database/Cursor;
    const/4 v4, 0x0

    .line 3046
    .local v4, snsCursor:Landroid/database/Cursor;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3048
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DefaultPartitionFilter;->this$1:Lcom/meizu/widget/RecipientEdit$RecipientAdapter;

    #calls: Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->getGroupData(Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v5, v1}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->access$3100(Lcom/meizu/widget/RecipientEdit$RecipientAdapter;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 3050
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DefaultPartitionFilter;->this$1:Lcom/meizu/widget/RecipientEdit$RecipientAdapter;

    const-wide/16 v6, -0x1

    #calls: Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->onFiltering(Ljava/lang/String;ZJ)Landroid/database/Cursor;
    invoke-static {v5, v1, v8, v6, v7}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->access$3200(Lcom/meizu/widget/RecipientEdit$RecipientAdapter;Ljava/lang/String;ZJ)Landroid/database/Cursor;

    move-result-object v0

    .line 3052
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DefaultPartitionFilter;->this$1:Lcom/meizu/widget/RecipientEdit$RecipientAdapter;

    iget-object v5, v5, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mInputType:I
    invoke-static {v5}, Lcom/meizu/widget/RecipientEdit;->access$3300(Lcom/meizu/widget/RecipientEdit;)I

    move-result v5

    and-int/lit8 v5, v5, 0x4

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    const-string v5, "@"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3053
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DefaultPartitionFilter;->this$1:Lcom/meizu/widget/RecipientEdit$RecipientAdapter;

    #calls: Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->onSnsFiltering(Ljava/lang/String;Z)Landroid/database/Cursor;
    invoke-static {v5, v1, v8}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->access$3400(Lcom/meizu/widget/RecipientEdit$RecipientAdapter;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v4

    .line 3057
    :cond_0
    const/4 v5, 0x3

    new-array v5, v5, [Landroid/database/Cursor;

    aput-object v2, v5, v8

    const/4 v6, 0x1

    aput-object v0, v5, v6

    const/4 v6, 0x2

    aput-object v4, v5, v6

    iput-object v5, v3, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 3058
    return-object v3

    .line 3041
    .end local v0           #contactCursor:Landroid/database/Cursor;
    .end local v1           #filter:Ljava/lang/String;
    .end local v2           #groupCursor:Landroid/database/Cursor;
    .end local v3           #results:Landroid/widget/Filter$FilterResults;
    .end local v4           #snsCursor:Landroid/database/Cursor;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 5
    .parameter "constraint"
    .parameter "results"

    .prologue
    .line 3063
    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 3064
    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v1, [Landroid/database/Cursor;

    move-object v0, v1

    check-cast v0, [Landroid/database/Cursor;

    .line 3065
    .local v0, cursors:[Landroid/database/Cursor;
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DefaultPartitionFilter;->this$1:Lcom/meizu/widget/RecipientEdit$RecipientAdapter;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    const/4 v4, 0x2

    aget-object v4, v0, v4

    #calls: Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->onDefaultLoadFinished(Ljava/lang/CharSequence;Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;)V
    invoke-static {v1, p1, v2, v3, v4}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->access$3500(Lcom/meizu/widget/RecipientEdit$RecipientAdapter;Ljava/lang/CharSequence;Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;)V

    .line 3067
    .end local v0           #cursors:[Landroid/database/Cursor;
    :cond_0
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DefaultPartitionFilter;->this$1:Lcom/meizu/widget/RecipientEdit$RecipientAdapter;

    invoke-virtual {v1}, Lcom/meizu/widget/CompositeCursorAdapterMz;->getCount()I

    move-result v1

    iput v1, p2, Landroid/widget/Filter$FilterResults;->count:I

    .line 3068
    return-void
.end method
