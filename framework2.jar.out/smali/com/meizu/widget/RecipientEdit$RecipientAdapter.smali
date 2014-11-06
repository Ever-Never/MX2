.class Lcom/meizu/widget/RecipientEdit$RecipientAdapter;
.super Lcom/meizu/widget/CompositeCursorAdapterMz;
.source "RecipientEdit.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/RecipientEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecipientAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/widget/RecipientEdit$RecipientAdapter$SnsPartitionFilter;,
        Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartitionFilter;,
        Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DefaultPartitionFilter;,
        Lcom/meizu/widget/RecipientEdit$RecipientAdapter$SnsPartition;,
        Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;,
        Lcom/meizu/widget/RecipientEdit$RecipientAdapter$GroupPartition;,
        Lcom/meizu/widget/RecipientEdit$RecipientAdapter$FlagPartition;
    }
.end annotation


# static fields
.field private static final LIMIT_COUNT:I = 0x14


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mCloseDelayed:Z

.field protected final mContentResolver:Landroid/content/ContentResolver;

.field private mDefaultData:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDirectories:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;",
            ">;"
        }
    .end annotation
.end field

.field private mDirectoryData:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGlobalSearchDelayed:Z

.field mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mOnlyGlobal:Z

.field private mPreferredDirectory:Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;

.field private mPreferredDirectoryIndex:I

.field private mSnsFirstSearch:Z

.field private mSnsLoading:Z

.field private mSnsPartition:Lcom/meizu/widget/RecipientEdit$RecipientAdapter$SnsPartition;

.field private mSnsPartitionIndex:I

.field private mSnsSearch:Z

.field final synthetic this$0:Lcom/meizu/widget/RecipientEdit;


# direct methods
.method public constructor <init>(Lcom/meizu/widget/RecipientEdit;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 3177
    iput-object p1, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->this$0:Lcom/meizu/widget/RecipientEdit;

    .line 3178
    invoke-direct {p0, p2}, Lcom/meizu/widget/CompositeCursorAdapterMz;-><init>(Landroid/content/Context;)V

    .line 3159
    new-instance v0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$1;

    invoke-direct {v0, p0}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$1;-><init>(Lcom/meizu/widget/RecipientEdit$RecipientAdapter;)V

    iput-object v0, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 3179
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mContentResolver:Landroid/content/ContentResolver;

    .line 3180
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mDefaultData:Ljava/util/LinkedHashMap;

    .line 3181
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mDirectoryData:Ljava/util/HashSet;

    .line 3182
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mDirectories:Ljava/util/HashMap;

    .line 3183
    return-void
.end method

.method static synthetic access$3000(Lcom/meizu/widget/RecipientEdit$RecipientAdapter;)Ljava/util/LinkedHashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2994
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mDefaultData:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/meizu/widget/RecipientEdit$RecipientAdapter;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2994
    invoke-direct {p0, p1}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->getGroupData(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Lcom/meizu/widget/RecipientEdit$RecipientAdapter;Ljava/lang/String;ZJ)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 2994
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->onFiltering(Ljava/lang/String;ZJ)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Lcom/meizu/widget/RecipientEdit$RecipientAdapter;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 2994
    invoke-direct {p0, p1, p2}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->onSnsFiltering(Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(Lcom/meizu/widget/RecipientEdit$RecipientAdapter;Ljava/lang/CharSequence;Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 2994
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->onDefaultLoadFinished(Ljava/lang/CharSequence;Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/meizu/widget/RecipientEdit$RecipientAdapter;Ljava/lang/CharSequence;JLandroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 2994
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->onDirectoryLoadFinished(Ljava/lang/CharSequence;JLandroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/meizu/widget/RecipientEdit$RecipientAdapter;Ljava/lang/CharSequence;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 2994
    invoke-direct {p0, p1, p2}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->onSnsLoadFinished(Ljava/lang/CharSequence;Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/meizu/widget/RecipientEdit$RecipientAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 2994
    iget-boolean v0, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mGlobalSearchDelayed:Z

    return v0
.end method

.method static synthetic access$3902(Lcom/meizu/widget/RecipientEdit$RecipientAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2994
    iput-boolean p1, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mGlobalSearchDelayed:Z

    return p1
.end method

.method static synthetic access$4000(Lcom/meizu/widget/RecipientEdit$RecipientAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2994
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->startGlobalSearch()V

    return-void
.end method

.method static synthetic access$4200(Lcom/meizu/widget/RecipientEdit$RecipientAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 2994
    iget-boolean v0, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mSnsSearch:Z

    return v0
.end method

.method static synthetic access$4302(Lcom/meizu/widget/RecipientEdit$RecipientAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2994
    iput-boolean p1, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mSnsLoading:Z

    return p1
.end method

.method static synthetic access$4400(Lcom/meizu/widget/RecipientEdit$RecipientAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 2994
    iget-boolean v0, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mSnsFirstSearch:Z

    return v0
.end method

.method static synthetic access$4500(Lcom/meizu/widget/RecipientEdit$RecipientAdapter;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2994
    invoke-direct {p0, p1}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->startSnsSearch(Z)V

    return-void
.end method

.method private canGlobalSearch(Ljava/lang/CharSequence;)Z
    .locals 12
    .parameter "constraint"

    .prologue
    const/4 v8, 0x0

    .line 3716
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 3717
    .local v6, oldDirectories:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;>;"
    iget-object v9, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mDirectories:Ljava/util/HashMap;

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 3718
    iget-object v9, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mDirectories:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    .line 3719
    iget-object v9, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mDirectoryData:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->clear()V

    .line 3720
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mPreferredDirectory:Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;

    .line 3721
    const/4 v9, -0x1

    iput v9, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mPreferredDirectoryIndex:I

    .line 3724
    iget-object v9, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/meizu/widget/RecipientEdit;->access$5200(Lcom/meizu/widget/RecipientEdit;)Landroid/content/Context;

    move-result-object v9

    const-string v10, "connectivity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 3726
    .local v0, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    .line 3727
    .local v5, info:Landroid/net/NetworkInfo;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    if-nez v9, :cond_1

    .line 3763
    :cond_0
    :goto_0
    return v8

    .line 3731
    :cond_1
    iget-object v9, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mDirectoryLock:Ljava/lang/Object;
    invoke-static {v9}, Lcom/meizu/widget/RecipientEdit;->access$300(Lcom/meizu/widget/RecipientEdit;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 3732
    :try_start_0
    iget-object v10, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mDirectoryList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/meizu/widget/RecipientEdit;->access$5300(Lcom/meizu/widget/RecipientEdit;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/widget/RecipientEdit$DirectoryObject;

    .line 3733
    .local v1, directory:Lcom/meizu/widget/RecipientEdit$DirectoryObject;
    iget-wide v3, v1, Lcom/meizu/widget/RecipientEdit$DirectoryObject;->directoryId:J

    .line 3734
    .local v3, id:J
    invoke-direct {p0, v3, v4}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->getPartitionByDirectoryId(J)Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;

    move-result-object v7

    .line 3735
    .local v7, partition:Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;
    if-nez v7, :cond_2

    .line 3736
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #partition:Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;
    check-cast v7, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;

    .line 3738
    .restart local v7       #partition:Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;
    :cond_2
    if-nez v7, :cond_3

    .line 3739
    new-instance v7, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;

    .end local v7           #partition:Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;
    invoke-direct {v7, p0}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;-><init>(Lcom/meizu/widget/RecipientEdit$RecipientAdapter;)V

    .line 3742
    .restart local v7       #partition:Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;
    :cond_3
    iput-wide v3, v7, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;->directoryId:J

    .line 3743
    iput-object p1, v7, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;->constraint:Ljava/lang/CharSequence;

    .line 3744
    iget-object v10, v1, Lcom/meizu/widget/RecipientEdit$DirectoryObject;->displayName:Ljava/lang/String;

    iput-object v10, v7, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;->displayName:Ljava/lang/String;

    .line 3745
    iget-object v10, v1, Lcom/meizu/widget/RecipientEdit$DirectoryObject;->accountName:Ljava/lang/String;

    iput-object v10, v7, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;->accountName:Ljava/lang/String;

    .line 3746
    iget-object v10, v1, Lcom/meizu/widget/RecipientEdit$DirectoryObject;->accountType:Ljava/lang/String;

    iput-object v10, v7, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;->accountType:Ljava/lang/String;

    .line 3747
    iget-object v10, v1, Lcom/meizu/widget/RecipientEdit$DirectoryObject;->directoryType:Ljava/lang/String;

    iput-object v10, v7, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;->directoryType:Ljava/lang/String;

    .line 3752
    iget-object v10, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mAccount:Landroid/accounts/Account;

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mAccount:Landroid/accounts/Account;

    iget-object v10, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v11, v7, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;->accountName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mAccount:Landroid/accounts/Account;

    iget-object v10, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v11, v7, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;->accountType:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 3754
    iput-object v7, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mPreferredDirectory:Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;

    .line 3756
    :cond_4
    iget-object v10, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mDirectories:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 3758
    .end local v1           #directory:Lcom/meizu/widget/RecipientEdit$DirectoryObject;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #id:J
    .end local v7           #partition:Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_5
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3760
    iget-object v9, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mDirectories:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 3761
    const/4 v8, 0x1

    goto :goto_0
.end method

.method private cancelLoading()V
    .locals 1

    .prologue
    .line 3822
    invoke-virtual {p0}, Lcom/meizu/widget/CompositeCursorAdapterMz;->getPartitionCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/meizu/widget/CompositeCursorAdapterMz;->getPartitionCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/meizu/widget/CompositeCursorAdapterMz;->getPartition(I)Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    move-result-object v0

    instance-of v0, v0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$FlagPartition;

    if-eqz v0, :cond_0

    .line 3824
    invoke-virtual {p0}, Lcom/meizu/widget/CompositeCursorAdapterMz;->getPartitionCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/meizu/widget/CompositeCursorAdapterMz;->removePartition(I)V

    .line 3826
    :cond_0
    return-void
.end method

.method private getGroupData(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13
    .parameter "filter"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v10, 0x1

    .line 3473
    sget-object v0, Landroid/provider/ContactsContract$Groups;->CONTENT_SUMMARY_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3474
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mInputType:I
    invoke-static {v0}, Lcom/meizu/widget/RecipientEdit;->access$3300(Lcom/meizu/widget/RecipientEdit;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 3482
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "is_primary"

    invoke-static {v10}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "mimetype"

    const-string v5, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 3489
    :goto_0
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "title"

    aput-object v0, v2, v11

    const-string v0, "summary_data_count"

    aput-object v0, v2, v10

    const-string v0, "_id"

    aput-object v0, v2, v12

    .line 3491
    .local v2, projection:[Ljava/lang/String;
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mContentResolver:Landroid/content/ContentResolver;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3493
    .local v6, groupCursor:Landroid/database/Cursor;
    if-eqz v6, :cond_7

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_7

    .line 3494
    new-instance v8, Landroid/database/MatrixCursor;

    invoke-direct {v8, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3495
    .local v8, newCursor:Landroid/database/MatrixCursor;
    const/4 v0, -0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 3496
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3497
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 3498
    invoke-virtual {v8}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v9

    .line 3499
    .local v9, row:Landroid/database/MatrixCursor$RowBuilder;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    array-length v0, v2

    if-ge v7, v0, :cond_0

    .line 3500
    const-string v0, "title"

    aget-object v3, v2, v7

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3501
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3499
    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 3476
    .end local v2           #projection:[Ljava/lang/String;
    .end local v6           #groupCursor:Landroid/database/Cursor;
    .end local v7           #i:I
    .end local v8           #newCursor:Landroid/database/MatrixCursor;
    .end local v9           #row:Landroid/database/MatrixCursor$RowBuilder;
    :pswitch_0
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "mimetype"

    const-string v5, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 3479
    goto :goto_0

    .line 3502
    .restart local v2       #projection:[Ljava/lang/String;
    .restart local v6       #groupCursor:Landroid/database/Cursor;
    .restart local v7       #i:I
    .restart local v8       #newCursor:Landroid/database/MatrixCursor;
    .restart local v9       #row:Landroid/database/MatrixCursor$RowBuilder;
    :cond_2
    :try_start_1
    const-string v0, "summary_data_count"

    aget-object v3, v2, v7

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3503
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 3514
    .end local v7           #i:I
    .end local v8           #newCursor:Landroid/database/MatrixCursor;
    .end local v9           #row:Landroid/database/MatrixCursor$RowBuilder;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 3515
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 3504
    .restart local v7       #i:I
    .restart local v8       #newCursor:Landroid/database/MatrixCursor;
    .restart local v9       #row:Landroid/database/MatrixCursor$RowBuilder;
    :cond_4
    :try_start_2
    const-string v0, "_id"

    aget-object v3, v2, v7

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3505
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 3514
    .end local v7           #i:I
    .end local v9           #row:Landroid/database/MatrixCursor$RowBuilder;
    :cond_5
    if-eqz v6, :cond_6

    .line 3515
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v8           #newCursor:Landroid/database/MatrixCursor;
    :cond_6
    :goto_3
    return-object v8

    .line 3514
    :cond_7
    if-eqz v6, :cond_8

    .line 3515
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_8
    move-object v8, v3

    goto :goto_3

    .line 3474
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private getHistoryData(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "filter"

    .prologue
    const/4 v8, 0x0

    .line 3452
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mDbLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->access$4800(Lcom/meizu/widget/RecipientEdit;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 3453
    :try_start_0
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mIsSaveHistory:Z
    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->access$4900(Lcom/meizu/widget/RecipientEdit;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3454
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 3455
    .local v9, selection:Ljava/lang/StringBuilder;
    const-string v1, "email LIKE "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3456
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 3457
    const-string v7, "frequence DESC, last_time DESC"

    .line 3459
    .local v7, orderBy:Ljava/lang/String;
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mDbHelper:Lcom/meizu/widget/RecipientDbHelper;
    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->access$5000(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientDbHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3460
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "email"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "email"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "display_name"

    aput-object v4, v2, v3

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3464
    .local v8, cursor:Landroid/database/Cursor;
    monitor-exit v10

    .line 3468
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v7           #orderBy:Ljava/lang/String;
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v9           #selection:Ljava/lang/StringBuilder;
    :goto_0
    return-object v8

    .line 3466
    :cond_0
    monitor-exit v10

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getPartitionByDirectoryId(J)Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;
    .locals 5
    .parameter "id"

    .prologue
    .line 3786
    invoke-virtual {p0}, Lcom/meizu/widget/CompositeCursorAdapterMz;->getPartitionCount()I

    move-result v0

    .line 3787
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 3788
    invoke-virtual {p0, v1}, Lcom/meizu/widget/CompositeCursorAdapterMz;->getPartition(I)Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    move-result-object v2

    .line 3789
    .local v2, partition:Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;
    instance-of v3, v2, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;

    if-eqz v3, :cond_0

    move-object v3, v2

    .line 3790
    check-cast v3, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;

    iget-wide v3, v3, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;->directoryId:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    .line 3791
    check-cast v2, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;

    .line 3795
    .end local v2           #partition:Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;
    :goto_1
    return-object v2

    .line 3787
    .restart local v2       #partition:Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3795
    .end local v2           #partition:Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private onDefaultLoadFinished(Ljava/lang/CharSequence;Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;)V
    .locals 9
    .parameter "constraint"
    .parameter "groupCursor"
    .parameter "contactCursor"
    .parameter "snsCursor"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3535
    invoke-virtual {p0, v6}, Lcom/meizu/widget/CompositeCursorAdapterMz;->setNotificationsEnabled(Z)V

    .line 3536
    if-nez p1, :cond_6

    const-string v0, ""

    .line 3537
    .local v0, filter:Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    .line 3540
    .local v1, hasLocalContacts:Z
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-gtz v4, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_2

    .line 3542
    :cond_1
    const/4 v1, 0x1

    .line 3543
    iput-boolean v6, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mOnlyGlobal:Z

    .line 3545
    invoke-virtual {p0}, Lcom/meizu/widget/CompositeCursorAdapterMz;->close()V

    .line 3547
    new-instance v4, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$GroupPartition;

    invoke-direct {v4, p0}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$GroupPartition;-><init>(Lcom/meizu/widget/RecipientEdit$RecipientAdapter;)V

    invoke-virtual {p0, v4}, Lcom/meizu/widget/CompositeCursorAdapterMz;->addPartition(Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;)V

    .line 3548
    invoke-virtual {p0, v6, p2}, Lcom/meizu/widget/CompositeCursorAdapterMz;->changeCursor(ILandroid/database/Cursor;)V

    .line 3550
    invoke-virtual {p0, v6, v6}, Lcom/meizu/widget/CompositeCursorAdapterMz;->addPartition(ZZ)V

    .line 3551
    invoke-virtual {p0, v7, p3}, Lcom/meizu/widget/CompositeCursorAdapterMz;->changeCursor(ILandroid/database/Cursor;)V

    .line 3554
    :cond_2
    iput-boolean v6, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mSnsSearch:Z

    .line 3555
    iput-boolean v6, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mSnsFirstSearch:Z

    .line 3556
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mInputType:I
    invoke-static {v4}, Lcom/meizu/widget/RecipientEdit;->access$3300(Lcom/meizu/widget/RecipientEdit;)I

    move-result v4

    and-int/lit8 v4, v4, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_7

    const-string v4, "@"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 3557
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mDirectories:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 3558
    iput-boolean v6, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mOnlyGlobal:Z

    .line 3560
    if-nez v1, :cond_3

    .line 3561
    invoke-virtual {p0}, Lcom/meizu/widget/CompositeCursorAdapterMz;->close()V

    .line 3564
    :cond_3
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mSnsPartition:Lcom/meizu/widget/RecipientEdit$RecipientAdapter$SnsPartition;

    if-nez v4, :cond_4

    .line 3565
    new-instance v4, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$SnsPartition;

    invoke-direct {v4, p0}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$SnsPartition;-><init>(Lcom/meizu/widget/RecipientEdit$RecipientAdapter;)V

    iput-object v4, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mSnsPartition:Lcom/meizu/widget/RecipientEdit$RecipientAdapter$SnsPartition;

    .line 3567
    :cond_4
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mSnsPartition:Lcom/meizu/widget/RecipientEdit$RecipientAdapter$SnsPartition;

    iput-object p1, v4, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$SnsPartition;->constraint:Ljava/lang/CharSequence;

    .line 3568
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mSnsPartition:Lcom/meizu/widget/RecipientEdit$RecipientAdapter$SnsPartition;

    invoke-virtual {p0, v4}, Lcom/meizu/widget/CompositeCursorAdapterMz;->addPartition(Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;)V

    .line 3569
    invoke-virtual {p0}, Lcom/meizu/widget/CompositeCursorAdapterMz;->getPartitionCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mSnsPartitionIndex:I

    .line 3572
    iget v4, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mSnsPartitionIndex:I

    invoke-virtual {p0, v4, p4}, Lcom/meizu/widget/CompositeCursorAdapterMz;->changeCursor(ILandroid/database/Cursor;)V

    .line 3573
    iput-boolean v7, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mSnsSearch:Z

    .line 3574
    iput-boolean v6, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mSnsLoading:Z

    .line 3575
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->showLoading()V

    .line 3625
    :cond_5
    :goto_1
    invoke-virtual {p0, v7}, Lcom/meizu/widget/CompositeCursorAdapterMz;->setNotificationsEnabled(Z)V

    .line 3626
    return-void

    .line 3536
    .end local v0           #filter:Ljava/lang/String;
    .end local v1           #hasLocalContacts:Z
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3576
    .restart local v0       #filter:Ljava/lang/String;
    .restart local v1       #hasLocalContacts:Z
    :cond_7
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mOpenGlobalAddressBook:Z
    invoke-static {v4}, Lcom/meizu/widget/RecipientEdit;->access$5100(Lcom/meizu/widget/RecipientEdit;)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f

    invoke-direct {p0, p1}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->canGlobalSearch(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 3577
    iput-object v8, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mSnsPartition:Lcom/meizu/widget/RecipientEdit$RecipientAdapter$SnsPartition;

    .line 3579
    iput-boolean v6, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mCloseDelayed:Z

    .line 3580
    if-nez v1, :cond_b

    iget-boolean v4, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mOnlyGlobal:Z

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mAutoGlobalSearch:Z
    invoke-static {v4}, Lcom/meizu/widget/RecipientEdit;->access$3800(Lcom/meizu/widget/RecipientEdit;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 3582
    :cond_8
    iput-boolean v7, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mOnlyGlobal:Z

    .line 3583
    invoke-virtual {p0}, Lcom/meizu/widget/CompositeCursorAdapterMz;->close()V

    .line 3588
    :cond_9
    :goto_2
    iget-boolean v4, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mCloseDelayed:Z

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mPreferredDirectory:Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;

    if-eqz v4, :cond_a

    .line 3589
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mPreferredDirectory:Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;

    invoke-virtual {p0, v4}, Lcom/meizu/widget/CompositeCursorAdapterMz;->addPartition(Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;)V

    .line 3590
    invoke-virtual {p0}, Lcom/meizu/widget/CompositeCursorAdapterMz;->getPartitionCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mPreferredDirectoryIndex:I

    .line 3593
    :cond_a
    iput-boolean v6, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mGlobalSearchDelayed:Z

    .line 3594
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mAutoGlobalSearch:Z
    invoke-static {v4}, Lcom/meizu/widget/RecipientEdit;->access$3800(Lcom/meizu/widget/RecipientEdit;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 3595
    iget-boolean v4, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mOnlyGlobal:Z

    if-eqz v4, :cond_c

    .line 3596
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->startGlobalSearch()V

    goto :goto_1

    .line 3584
    :cond_b
    iget-boolean v4, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mOnlyGlobal:Z

    if-eqz v4, :cond_9

    .line 3585
    iput-boolean v7, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mCloseDelayed:Z

    goto :goto_2

    .line 3598
    :cond_c
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;
    invoke-static {v4}, Lcom/meizu/widget/RecipientEdit;->access$000(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/AutoCompleteTextView;->getPopup()Landroid/widget/ListPopupWindow;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListPopupWindow;->getPopupWindow()Landroid/widget/PopupWindow;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->this$0:Lcom/meizu/widget/RecipientEdit;

    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;
    invoke-static {v6}, Lcom/meizu/widget/RecipientEdit;->access$000(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/AutoCompleteTextView;->getDropDownVerticalOffset()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v3

    .line 3601
    .local v3, maxHeight:I
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->this$0:Lcom/meizu/widget/RecipientEdit;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050228

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 3603
    .local v2, listItemHeight:I
    invoke-virtual {p0}, Lcom/meizu/widget/CompositeCursorAdapterMz;->getCount()I

    move-result v4

    mul-int/2addr v4, v2

    if-le v3, v4, :cond_d

    .line 3604
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->startGlobalSearch()V

    goto/16 :goto_1

    .line 3606
    :cond_d
    iput-boolean v7, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mGlobalSearchDelayed:Z

    .line 3607
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->showLoading()V

    goto/16 :goto_1

    .line 3613
    .end local v2           #listItemHeight:I
    .end local v3           #maxHeight:I
    :cond_e
    iput-boolean v7, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mGlobalSearchDelayed:Z

    .line 3614
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->showLoading()V

    goto/16 :goto_1

    .line 3617
    :cond_f
    iput-object v8, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mSnsPartition:Lcom/meizu/widget/RecipientEdit$RecipientAdapter$SnsPartition;

    .line 3618
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mDirectories:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 3620
    if-nez v1, :cond_5

    .line 3621
    invoke-virtual {p0}, Lcom/meizu/widget/CompositeCursorAdapterMz;->close()V

    goto/16 :goto_1
.end method

.method private onDirectoryLoadFinished(Ljava/lang/CharSequence;JLandroid/database/Cursor;)V
    .locals 9
    .parameter "constraint"
    .parameter "directoryId"
    .parameter "cursor"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3630
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mDirectories:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;

    .line 3631
    .local v3, partition:Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;
    if-eqz v3, :cond_4

    .line 3635
    iget-object v5, v3, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;->constraint:Ljava/lang/CharSequence;

    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3636
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mDirectories:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3637
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-static {}, Lcom/meizu/widget/RecipientEdit;->access$4700()[Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3638
    .local v2, newCursor:Landroid/database/MatrixCursor;
    if-eqz p4, :cond_1

    invoke-interface {p4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_1

    .line 3639
    const/4 v5, -0x1

    invoke-interface {p4, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 3640
    :cond_0
    :goto_0
    invoke-interface {p4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3641
    invoke-interface {p4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3642
    .local v1, name:Ljava/lang/String;
    invoke-interface {p4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3644
    .local v0, data:Ljava/lang/String;
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mDefaultData:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mDirectoryData:Ljava/util/HashSet;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3645
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mDirectoryData:Ljava/util/HashSet;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3646
    invoke-virtual {v2}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v4

    .line 3647
    .local v4, row:Landroid/database/MatrixCursor$RowBuilder;
    invoke-virtual {v4, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 3648
    invoke-virtual {v4, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_0

    .line 3653
    .end local v0           #data:Ljava/lang/String;
    .end local v1           #name:Ljava/lang/String;
    .end local v4           #row:Landroid/database/MatrixCursor$RowBuilder;
    :cond_1
    invoke-virtual {v2}, Landroid/database/MatrixCursor;->getCount()I

    move-result v5

    if-lez v5, :cond_7

    .line 3654
    invoke-virtual {p0, v7}, Lcom/meizu/widget/CompositeCursorAdapterMz;->setNotificationsEnabled(Z)V

    .line 3655
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->cancelLoading()V

    .line 3656
    iget-boolean v5, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mCloseDelayed:Z

    if-eqz v5, :cond_2

    .line 3657
    iput-boolean v7, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mCloseDelayed:Z

    .line 3658
    invoke-virtual {p0}, Lcom/meizu/widget/CompositeCursorAdapterMz;->close()V

    .line 3659
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mPreferredDirectory:Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;

    if-eqz v5, :cond_2

    .line 3660
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mPreferredDirectory:Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;

    invoke-virtual {p0, v5}, Lcom/meizu/widget/CompositeCursorAdapterMz;->addPartition(Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;)V

    .line 3661
    iput v7, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mPreferredDirectoryIndex:I

    .line 3665
    :cond_2
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mPreferredDirectory:Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;

    if-ne v3, v5, :cond_6

    .line 3666
    iget v5, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mPreferredDirectoryIndex:I

    invoke-virtual {p0, v5, v2}, Lcom/meizu/widget/CompositeCursorAdapterMz;->changeCursor(ILandroid/database/Cursor;)V

    .line 3673
    :goto_1
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mDirectories:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 3674
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->showLoading()V

    .line 3676
    :cond_3
    invoke-virtual {p0, v8}, Lcom/meizu/widget/CompositeCursorAdapterMz;->setNotificationsEnabled(Z)V

    .line 3692
    .end local v2           #newCursor:Landroid/database/MatrixCursor;
    :cond_4
    :goto_2
    if-eqz p4, :cond_5

    .line 3693
    invoke-interface {p4}, Landroid/database/Cursor;->close()V

    .line 3695
    :cond_5
    return-void

    .line 3668
    .restart local v2       #newCursor:Landroid/database/MatrixCursor;
    :cond_6
    invoke-virtual {p0, v3}, Lcom/meizu/widget/CompositeCursorAdapterMz;->addPartition(Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;)V

    .line 3669
    invoke-virtual {p0}, Lcom/meizu/widget/CompositeCursorAdapterMz;->getPartitionCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5, v2}, Lcom/meizu/widget/CompositeCursorAdapterMz;->changeCursor(ILandroid/database/Cursor;)V

    goto :goto_1

    .line 3679
    :cond_7
    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mDirectories:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3680
    iget-boolean v5, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mCloseDelayed:Z

    if-eqz v5, :cond_8

    .line 3681
    iput-boolean v7, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mCloseDelayed:Z

    .line 3682
    invoke-virtual {p0}, Lcom/meizu/widget/CompositeCursorAdapterMz;->close()V

    goto :goto_2

    .line 3684
    :cond_8
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->cancelLoading()V

    goto :goto_2
.end method

.method private onFiltering(Ljava/lang/String;ZJ)Landroid/database/Cursor;
    .locals 19
    .parameter "filter"
    .parameter "isGlobal"
    .parameter "directoryId"

    .prologue
    .line 3299
    const/4 v2, 0x0

    .line 3300
    .local v2, uri:Landroid/net/Uri;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 3301
    .local v18, sortOrder:Ljava/lang/StringBuilder;
    const-string v1, "sort_key"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3303
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mInputType:I
    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->access$3300(Lcom/meizu/widget/RecipientEdit;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 3321
    if-eqz p2, :cond_3

    .line 3322
    sget-object v12, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 3323
    .local v12, globalUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mInputType:I
    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->access$3300(Lcom/meizu/widget/RecipientEdit;)I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 3324
    sget-object v12, Landroid/provider/ContactsContract$CommonDataKinds$PhoneAndEmail;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 3327
    :cond_0
    invoke-virtual {v12}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "convert_letters"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 3354
    .end local v12           #globalUri:Landroid/net/Uri;
    :goto_0
    if-eqz p2, :cond_1

    .line 3355
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "directory"

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "limit"

    const/16 v4, 0x14

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 3361
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/meizu/widget/RecipientEdit;->access$4700()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3364
    .local v7, contactCursor:Landroid/database/Cursor;
    if-nez p2, :cond_10

    .line 3365
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mInputType:I
    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->access$3300(Lcom/meizu/widget/RecipientEdit;)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_c

    .line 3367
    if-eqz v7, :cond_a

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_a

    .line 3368
    const-string v1, "@"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_8

    move-object/from16 v11, p1

    .line 3370
    .local v11, filterSubStr:Ljava/lang/String;
    :goto_1
    const/4 v1, -0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 3371
    :cond_2
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 3372
    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 3373
    .local v9, email:Ljava/lang/String;
    const-string v1, "@"

    invoke-virtual {v9, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_9

    move-object v10, v9

    .line 3375
    .local v10, emailSubStr:Ljava/lang/String;
    :goto_3
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3376
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mDefaultData:Ljava/util/LinkedHashMap;

    const/4 v3, 0x1

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 3305
    .end local v7           #contactCursor:Landroid/database/Cursor;
    .end local v9           #email:Ljava/lang/String;
    .end local v10           #emailSubStr:Ljava/lang/String;
    .end local v11           #filterSubStr:Ljava/lang/String;
    :pswitch_0
    const-string v1, " ,is_primary DESC"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3306
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "convert_letters"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 3310
    goto/16 :goto_0

    .line 3313
    :pswitch_1
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "use_custom_order"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "remove_duplicate_entries"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 3318
    goto/16 :goto_0

    .line 3331
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mInputType:I
    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->access$3300(Lcom/meizu/widget/RecipientEdit;)I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_4

    const-string v1, "@"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3332
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$SocialProfile;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto/16 :goto_0

    .line 3334
    :cond_4
    const/4 v1, 0x3

    new-array v15, v1, [Ljava/lang/String;

    .line 3335
    .local v15, mimeTypes:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mInputType:I
    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->access$3300(Lcom/meizu/widget/RecipientEdit;)I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_5

    .line 3336
    const/4 v1, 0x0

    const-string v3, "vnd.android.cursor.item/phone_v2"

    aput-object v3, v15, v1

    .line 3338
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mInputType:I
    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->access$3300(Lcom/meizu/widget/RecipientEdit;)I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_6

    .line 3339
    const/4 v1, 0x1

    const-string v3, "vnd.android.cursor.item/email_v2"

    aput-object v3, v15, v1

    .line 3341
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mInputType:I
    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->access$3300(Lcom/meizu/widget/RecipientEdit;)I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_7

    .line 3342
    const/4 v1, 0x2

    const-string v3, "vnd.android.cursor.item/social_profile"

    aput-object v3, v15, v1

    .line 3345
    :cond_7
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "convert_letters"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 3349
    invoke-static {v2, v15}, Landroid/provider/ContactsContract$Data;->buildUriWithRequestMimetypes(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto/16 :goto_0

    .line 3368
    .end local v15           #mimeTypes:[Ljava/lang/String;
    .restart local v7       #contactCursor:Landroid/database/Cursor;
    :cond_8
    const/4 v1, 0x0

    const-string v3, "@"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1

    .line 3373
    .restart local v9       #email:Ljava/lang/String;
    .restart local v11       #filterSubStr:Ljava/lang/String;
    :cond_9
    const/4 v1, 0x0

    const-string v3, "@"

    invoke-virtual {v9, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v9, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_3

    .line 3384
    .end local v9           #email:Ljava/lang/String;
    .end local v11           #filterSubStr:Ljava/lang/String;
    :cond_a
    invoke-direct/range {p0 .. p1}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->getHistoryData(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 3385
    .local v13, historyCursor:Landroid/database/Cursor;
    if-eqz v13, :cond_c

    .line 3386
    const/4 v1, -0x1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 3387
    :goto_4
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 3388
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mDefaultData:Ljava/util/LinkedHashMap;

    const/4 v3, 0x0

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 3391
    :cond_b
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 3396
    .end local v13           #historyCursor:Landroid/database/Cursor;
    :cond_c
    if-eqz v7, :cond_e

    .line 3397
    const/4 v1, -0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 3398
    :goto_5
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 3399
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mDefaultData:Ljava/util/LinkedHashMap;

    const/4 v3, 0x1

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 3404
    :cond_d
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3407
    :cond_e
    new-instance v16, Landroid/database/MatrixCursor;

    invoke-static {}, Lcom/meizu/widget/RecipientEdit;->access$4700()[Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3408
    .local v16, newCursor:Landroid/database/MatrixCursor;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mDefaultData:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 3409
    .local v14, it:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 3410
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 3411
    .local v8, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {v16 .. v16}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v17

    .line 3412
    .local v17, row:Landroid/database/MatrixCursor$RowBuilder;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 3413
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_6

    .line 3416
    .end local v8           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v17           #row:Landroid/database/MatrixCursor$RowBuilder;
    :cond_f
    move-object/from16 v7, v16

    .line 3419
    .end local v14           #it:Ljava/util/Iterator;
    .end local v16           #newCursor:Landroid/database/MatrixCursor;
    :cond_10
    return-object v7

    .line 3303
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onSnsFiltering(Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 10
    .parameter "filter"
    .parameter "queryByNetwork"

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 3423
    invoke-virtual {p1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 3424
    const-string v0, "content://com.meizu.sns/filter/bilateral"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3425
    .local v1, uri:Landroid/net/Uri;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3426
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "filter_words"

    invoke-virtual {v0, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 3431
    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "query_by_network"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 3435
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const-string v4, "screen_name"

    aput-object v4, v2, v9

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3436
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 3437
    new-instance v7, Landroid/database/MatrixCursor;

    invoke-static {}, Lcom/meizu/widget/RecipientEdit;->access$4700()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3438
    .local v7, newCursor:Landroid/database/MatrixCursor;
    const/4 v0, -0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 3439
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3440
    invoke-virtual {v7}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v8

    .line 3441
    .local v8, row:Landroid/database/MatrixCursor$RowBuilder;
    const-string v0, ""

    invoke-virtual {v8, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 3442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_0

    .end local v7           #newCursor:Landroid/database/MatrixCursor;
    .end local v8           #row:Landroid/database/MatrixCursor$RowBuilder;
    :cond_1
    move-object v7, v3

    .line 3446
    :cond_2
    return-object v7
.end method

.method private onSnsLoadFinished(Ljava/lang/CharSequence;Landroid/database/Cursor;)V
    .locals 2
    .parameter "constraint"
    .parameter "cursor"

    .prologue
    const/4 v1, 0x0

    .line 3698
    iget-boolean v0, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mSnsSearch:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mSnsPartition:Lcom/meizu/widget/RecipientEdit$RecipientAdapter$SnsPartition;

    if-eqz v0, :cond_0

    .line 3702
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mSnsPartition:Lcom/meizu/widget/RecipientEdit$RecipientAdapter$SnsPartition;

    iget-object v0, v0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$SnsPartition;->constraint:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3703
    iput-boolean v1, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mSnsLoading:Z

    .line 3704
    iget v0, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mSnsPartitionIndex:I

    invoke-virtual {p0, v0, p2}, Lcom/meizu/widget/CompositeCursorAdapterMz;->changeCursor(ILandroid/database/Cursor;)V

    .line 3706
    iget-boolean v0, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mSnsFirstSearch:Z

    if-eqz v0, :cond_1

    .line 3707
    iput-boolean v1, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mSnsFirstSearch:Z

    .line 3713
    :cond_0
    :goto_0
    return-void

    .line 3709
    :cond_1
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->cancelLoading()V

    goto :goto_0
.end method

.method private showLoading()V
    .locals 2

    .prologue
    .line 3811
    invoke-virtual {p0}, Lcom/meizu/widget/CompositeCursorAdapterMz;->getPartitionCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/meizu/widget/CompositeCursorAdapterMz;->getPartitionCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/meizu/widget/CompositeCursorAdapterMz;->getPartition(I)Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    move-result-object v0

    instance-of v0, v0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$FlagPartition;

    if-eqz v0, :cond_0

    .line 3818
    :goto_0
    return-void

    .line 3816
    :cond_0
    new-instance v0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$FlagPartition;

    invoke-direct {v0, p0}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$FlagPartition;-><init>(Lcom/meizu/widget/RecipientEdit$RecipientAdapter;)V

    invoke-virtual {p0, v0}, Lcom/meizu/widget/CompositeCursorAdapterMz;->addPartition(Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;)V

    .line 3817
    invoke-virtual {p0}, Lcom/meizu/widget/CompositeCursorAdapterMz;->getPartitionCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/meizu/widget/CompositeCursorAdapterMz;->changeCursor(ILandroid/database/Cursor;)V

    goto :goto_0
.end method

.method private startGlobalSearch()V
    .locals 6

    .prologue
    .line 3768
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mDirectories:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 3769
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/meizu/widget/CompositeCursorAdapterMz;->setNotificationsEnabled(Z)V

    .line 3770
    invoke-direct {p0}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->showLoading()V

    .line 3771
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/meizu/widget/CompositeCursorAdapterMz;->setNotificationsEnabled(Z)V

    .line 3774
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mDirectories:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;

    .line 3775
    .local v1, partition:Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;
    iget-object v2, v1, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;->filter:Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartitionFilter;

    if-nez v2, :cond_0

    .line 3776
    new-instance v2, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartitionFilter;

    const/4 v3, -0x1

    iget-wide v4, v1, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;->directoryId:J

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartitionFilter;-><init>(Lcom/meizu/widget/RecipientEdit$RecipientAdapter;IJ)V

    iput-object v2, v1, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;->filter:Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartitionFilter;

    .line 3780
    :cond_0
    iget-object v2, v1, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;->filter:Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartitionFilter;

    iget-object v3, v1, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;->constraint:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3783
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #partition:Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;
    :cond_1
    return-void
.end method

.method private startSnsSearch(Z)V
    .locals 3
    .parameter "queryByNetwork"

    .prologue
    .line 3799
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mSnsPartition:Lcom/meizu/widget/RecipientEdit$RecipientAdapter$SnsPartition;

    if-eqz v0, :cond_1

    .line 3800
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mSnsPartition:Lcom/meizu/widget/RecipientEdit$RecipientAdapter$SnsPartition;

    iget-object v0, v0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$SnsPartition;->filter:Lcom/meizu/widget/RecipientEdit$RecipientAdapter$SnsPartitionFilter;

    if-nez v0, :cond_0

    .line 3801
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mSnsPartition:Lcom/meizu/widget/RecipientEdit$RecipientAdapter$SnsPartition;

    new-instance v1, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$SnsPartitionFilter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$SnsPartitionFilter;-><init>(Lcom/meizu/widget/RecipientEdit$RecipientAdapter;Lcom/meizu/widget/RecipientEdit$1;)V

    iput-object v1, v0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$SnsPartition;->filter:Lcom/meizu/widget/RecipientEdit$RecipientAdapter$SnsPartitionFilter;

    .line 3804
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mSnsPartition:Lcom/meizu/widget/RecipientEdit$RecipientAdapter$SnsPartition;

    iget-object v0, v0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$SnsPartition;->filter:Lcom/meizu/widget/RecipientEdit$RecipientAdapter$SnsPartitionFilter;

    iput-boolean p1, v0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$SnsPartitionFilter;->mQueryByNetwork:Z

    .line 3805
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mSnsPartition:Lcom/meizu/widget/RecipientEdit$RecipientAdapter$SnsPartition;

    iget-object v0, v0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$SnsPartition;->filter:Lcom/meizu/widget/RecipientEdit$RecipientAdapter$SnsPartitionFilter;

    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mSnsPartition:Lcom/meizu/widget/RecipientEdit$RecipientAdapter$SnsPartition;

    iget-object v1, v1, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$SnsPartition;->constraint:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 3807
    :cond_1
    return-void
.end method


# virtual methods
.method protected bindHeaderView(Landroid/view/View;ILandroid/database/Cursor;)V
    .locals 4
    .parameter "view"
    .parameter "partition"
    .parameter "cursor"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3223
    const v1, 0x1020014

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3224
    .local v0, text:Landroid/widget/TextView;
    iget-boolean v1, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mSnsSearch:Z

    if-eqz v1, :cond_3

    .line 3225
    iget-boolean v1, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mSnsFirstSearch:Z

    if-eqz v1, :cond_1

    .line 3226
    iget-boolean v1, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mSnsLoading:Z

    if-eqz v1, :cond_0

    .line 3227
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 3228
    const v1, 0x10405be

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 3251
    :goto_0
    return-void

    .line 3230
    :cond_0
    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 3231
    const v1, 0x10405bd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 3234
    :cond_1
    iget-boolean v1, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mSnsLoading:Z

    if-eqz v1, :cond_2

    .line 3235
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 3236
    const v1, 0x10405c0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 3238
    :cond_2
    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 3239
    const v1, 0x10405bf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 3243
    :cond_3
    iget-boolean v1, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mGlobalSearchDelayed:Z

    if-eqz v1, :cond_4

    .line 3244
    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 3245
    const v1, 0x10405bc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 3247
    :cond_4
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 3248
    const v1, 0x10405bb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 11
    .parameter "view"
    .parameter "partitionIndex"
    .parameter "cursor"
    .parameter "position"

    .prologue
    const/16 v7, 0x8

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 3262
    const v6, 0x1020014

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 3263
    .local v4, text1:Landroid/widget/TextView;
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 3264
    invoke-interface {p3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3265
    .local v1, name:Ljava/lang/String;
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3266
    const v6, 0x1020015

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 3267
    .local v5, text2:Landroid/widget/TextView;
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 3268
    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 3269
    const v6, 0x1020006

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 3270
    .local v0, icon:Landroid/widget/ImageView;
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3272
    invoke-virtual {p0, p2}, Lcom/meizu/widget/CompositeCursorAdapterMz;->getPartition(I)Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    move-result-object v2

    .line 3273
    .local v2, partition:Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;
    if-nez p2, :cond_1

    instance-of v6, v2, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$GroupPartition;

    if-eqz v6, :cond_1

    .line 3275
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/meizu/widget/RecipientEdit;->access$4600(Lcom/meizu/widget/RecipientEdit;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x10405b9

    new-array v8, v9, [Ljava/lang/Object;

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 3277
    .local v3, str:Ljava/lang/String;
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3295
    .end local v3           #str:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 3279
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3280
    invoke-interface {p3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3281
    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3282
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3287
    :goto_1
    instance-of v6, v2, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;

    if-eqz v6, :cond_3

    .line 3288
    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3289
    const v6, 0x108055b

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 3284
    :cond_2
    invoke-interface {p3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 3290
    :cond_3
    instance-of v6, v2, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$SnsPartition;

    if-eqz v6, :cond_0

    .line 3291
    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3292
    const v6, 0x1080579

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
    .line 3187
    new-instance v0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DefaultPartitionFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DefaultPartitionFilter;-><init>(Lcom/meizu/widget/RecipientEdit$RecipientAdapter;Lcom/meizu/widget/RecipientEdit$1;)V

    return-object v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 3830
    const/4 v0, 0x1

    return v0
.end method

.method public isGroupData(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 3522
    invoke-virtual {p0, p1}, Lcom/meizu/widget/CompositeCursorAdapterMz;->getPartitionForPosition(I)I

    move-result v0

    .line 3523
    .local v0, partitionIndex:I
    invoke-virtual {p0, v0}, Lcom/meizu/widget/CompositeCursorAdapterMz;->getPartition(I)Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    move-result-object v1

    instance-of v1, v1, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$GroupPartition;

    if-eqz v1, :cond_0

    .line 3524
    const/4 v1, 0x1

    .line 3526
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected newHeaderView(Landroid/content/Context;ILandroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "partition"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 3200
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 3201
    .local v0, inflate:Landroid/view/LayoutInflater;
    const v2, 0x10900c3

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 3203
    .local v1, view:Landroid/view/View;
    new-instance v2, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$2;

    invoke-direct {v2, p0}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$2;-><init>(Lcom/meizu/widget/RecipientEdit$RecipientAdapter;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3218
    return-object v1
.end method

.method protected newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "partition"
    .parameter "cursor"
    .parameter "position"
    .parameter "parent"

    .prologue
    .line 3256
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 3257
    .local v0, inflate:Landroid/view/LayoutInflater;
    const v1, 0x10900c2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public setAccount(Landroid/accounts/Account;)V
    .locals 0
    .parameter "account"

    .prologue
    .line 3195
    iput-object p1, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mAccount:Landroid/accounts/Account;

    .line 3196
    return-void
.end method
