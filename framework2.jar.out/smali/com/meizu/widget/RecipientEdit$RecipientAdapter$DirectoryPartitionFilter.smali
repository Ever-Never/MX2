.class final Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartitionFilter;
.super Landroid/widget/Filter;
.source "RecipientEdit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/RecipientEdit$RecipientAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DirectoryPartitionFilter"
.end annotation


# instance fields
.field private final mDirectoryId:J

.field private final mPartitionIndex:I

.field final synthetic this$1:Lcom/meizu/widget/RecipientEdit$RecipientAdapter;


# direct methods
.method public constructor <init>(Lcom/meizu/widget/RecipientEdit$RecipientAdapter;IJ)V
    .locals 0
    .parameter
    .parameter "partitionIndex"
    .parameter "directoryId"

    .prologue
    .line 3083
    iput-object p1, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartitionFilter;->this$1:Lcom/meizu/widget/RecipientEdit$RecipientAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    .line 3084
    iput p2, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartitionFilter;->mPartitionIndex:I

    .line 3085
    iput-wide p3, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartitionFilter;->mDirectoryId:J

    .line 3086
    return-void
.end method


# virtual methods
.method public convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "resultValue"

    .prologue
    .line 3108
    const/4 v0, 0x0

    return-object v0
.end method

.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 7
    .parameter "constraint"

    .prologue
    .line 3090
    if-nez p1, :cond_1

    const-string v1, ""

    .line 3091
    .local v1, filter:Ljava/lang/String;
    :goto_0
    new-instance v2, Landroid/widget/Filter$FilterResults;

    invoke-direct {v2}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 3092
    .local v2, results:Landroid/widget/Filter$FilterResults;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3093
    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartitionFilter;->this$1:Lcom/meizu/widget/RecipientEdit$RecipientAdapter;

    const/4 v4, 0x1

    iget-wide v5, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartitionFilter;->mDirectoryId:J

    #calls: Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->onFiltering(Ljava/lang/String;ZJ)Landroid/database/Cursor;
    invoke-static {v3, v1, v4, v5, v6}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->access$3200(Lcom/meizu/widget/RecipientEdit$RecipientAdapter;Ljava/lang/String;ZJ)Landroid/database/Cursor;

    move-result-object v0

    .line 3094
    .local v0, contactCursor:Landroid/database/Cursor;
    iput-object v0, v2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 3096
    .end local v0           #contactCursor:Landroid/database/Cursor;
    :cond_0
    return-object v2

    .line 3090
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
    .locals 4
    .parameter "constraint"
    .parameter "results"

    .prologue
    .line 3101
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Landroid/database/Cursor;

    .line 3102
    .local v0, cursor:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartitionFilter;->this$1:Lcom/meizu/widget/RecipientEdit$RecipientAdapter;

    iget-wide v2, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartitionFilter;->mDirectoryId:J

    #calls: Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->onDirectoryLoadFinished(Ljava/lang/CharSequence;JLandroid/database/Cursor;)V
    invoke-static {v1, p1, v2, v3, v0}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->access$3600(Lcom/meizu/widget/RecipientEdit$RecipientAdapter;Ljava/lang/CharSequence;JLandroid/database/Cursor;)V

    .line 3103
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartitionFilter;->this$1:Lcom/meizu/widget/RecipientEdit$RecipientAdapter;

    invoke-virtual {v1}, Lcom/meizu/widget/CompositeCursorAdapterMz;->getCount()I

    move-result v1

    iput v1, p2, Landroid/widget/Filter$FilterResults;->count:I

    .line 3104
    return-void
.end method
