.class public abstract Lcom/meizu/widget/CompositeCursorAdapterMz;
.super Landroid/widget/BaseAdapter;
.source "CompositeCursorAdapterMz.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;
    }
.end annotation


# static fields
.field private static final INITIAL_CAPACITY:I = 0x2


# instance fields
.field private mCacheValid:Z

.field private final mContext:Landroid/content/Context;

.field private mCount:I

.field private mNotificationNeeded:Z

.field private mNotificationsEnabled:Z

.field private mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

.field private mSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 72
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/meizu/widget/CompositeCursorAdapterMz;-><init>(Landroid/content/Context;I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "initialCapacity"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 65
    iput v0, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mSize:I

    .line 66
    iput v0, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mCount:I

    .line 67
    iput-boolean v1, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mCacheValid:Z

    .line 68
    iput-boolean v1, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mNotificationsEnabled:Z

    .line 76
    iput-object p1, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mContext:Landroid/content/Context;

    .line 77
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    iput-object v0, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    .line 78
    return-void
.end method


# virtual methods
.method public addPartition(Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;)V
    .locals 5
    .parameter "partition"

    .prologue
    const/4 v4, 0x0

    .line 94
    iget v2, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mSize:I

    iget-object v3, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    array-length v3, v3

    if-lt v2, v3, :cond_0

    .line 95
    iget v2, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mSize:I

    add-int/lit8 v1, v2, 0x2

    .line 96
    .local v1, newCapacity:I
    new-array v0, v1, [Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    .line 97
    .local v0, newAdapters:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;
    iget-object v2, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    iget v3, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mSize:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    iput-object v0, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    .line 100
    .end local v0           #newAdapters:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;
    .end local v1           #newCapacity:I
    :cond_0
    iget-object v2, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    iget v3, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mSize:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mSize:I

    aput-object p1, v2, v3

    .line 101
    invoke-virtual {p0}, Lcom/meizu/widget/CompositeCursorAdapterMz;->invalidate()V

    .line 102
    invoke-virtual {p0}, Lcom/meizu/widget/CompositeCursorAdapterMz;->notifyDataSetChanged()V

    .line 103
    return-void
.end method

.method public addPartition(ZZ)V
    .locals 1
    .parameter "showIfEmpty"
    .parameter "hasHeader"

    .prologue
    .line 90
    new-instance v0, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    invoke-direct {v0, p1, p2}, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;-><init>(ZZ)V

    invoke-virtual {p0, v0}, Lcom/meizu/widget/CompositeCursorAdapterMz;->addPartition(Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;)V

    .line 91
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 2

    .prologue
    .line 478
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mSize:I

    if-ge v0, v1, :cond_1

    .line 479
    iget-object v1, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->hasHeader:Z

    if-eqz v1, :cond_0

    .line 480
    const/4 v1, 0x0

    .line 483
    :goto_1
    return v1

    .line 478
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 483
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method protected bindHeaderView(Landroid/view/View;ILandroid/database/Cursor;)V
    .locals 0
    .parameter "view"
    .parameter "partition"
    .parameter "cursor"

    .prologue
    .line 385
    return-void
.end method

.method protected abstract bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
.end method

.method public changeCursor(ILandroid/database/Cursor;)V
    .locals 3
    .parameter "partition"
    .parameter "cursor"

    .prologue
    .line 217
    iget-object v1, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v1, v1, p1

    iget-object v0, v1, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->cursor:Landroid/database/Cursor;

    .line 218
    .local v0, prevCursor:Landroid/database/Cursor;
    if-eq v0, p2, :cond_2

    .line 219
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 220
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 222
    :cond_0
    iget-object v1, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v1, v1, p1

    iput-object p2, v1, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->cursor:Landroid/database/Cursor;

    .line 223
    if-eqz p2, :cond_1

    .line 224
    iget-object v1, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v1, v1, p1

    const-string v2, "_id"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->idColumnIndex:I

    .line 226
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/widget/CompositeCursorAdapterMz;->invalidate()V

    .line 227
    invoke-virtual {p0}, Lcom/meizu/widget/CompositeCursorAdapterMz;->notifyDataSetChanged()V

    .line 229
    :cond_2
    return-void
.end method

.method public clearPartitions()V
    .locals 3

    .prologue
    .line 122
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mSize:I

    if-ge v0, v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->cursor:Landroid/database/Cursor;

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/widget/CompositeCursorAdapterMz;->invalidate()V

    .line 126
    invoke-virtual {p0}, Lcom/meizu/widget/CompositeCursorAdapterMz;->notifyDataSetChanged()V

    .line 127
    return-void
.end method

.method public close()V
    .locals 4

    .prologue
    .line 133
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mSize:I

    if-ge v1, v2, :cond_1

    .line 134
    iget-object v2, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v2, v2, v1

    iget-object v0, v2, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->cursor:Landroid/database/Cursor;

    .line 135
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 136
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 137
    iget-object v2, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->cursor:Landroid/database/Cursor;

    .line 133
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mSize:I

    .line 141
    invoke-virtual {p0}, Lcom/meizu/widget/CompositeCursorAdapterMz;->invalidate()V

    .line 142
    invoke-virtual {p0}, Lcom/meizu/widget/CompositeCursorAdapterMz;->notifyDataSetChanged()V

    .line 143
    return-void
.end method

.method protected ensureCacheValid()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 171
    iget-boolean v4, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mCacheValid:Z

    if-eqz v4, :cond_0

    .line 189
    :goto_0
    return-void

    .line 175
    :cond_0
    iput v3, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mCount:I

    .line 176
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget v4, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mSize:I

    if-ge v2, v4, :cond_4

    .line 177
    iget-object v4, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v4, v4, v2

    iget-object v1, v4, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->cursor:Landroid/database/Cursor;

    .line 178
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 179
    .local v0, count:I
    :goto_2
    iget-object v4, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v4, v4, v2

    iget-boolean v4, v4, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->hasHeader:Z

    if-eqz v4, :cond_2

    .line 180
    if-nez v0, :cond_1

    iget-object v4, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v4, v4, v2

    iget-boolean v4, v4, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->showIfEmpty:Z

    if-eqz v4, :cond_2

    .line 181
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 184
    :cond_2
    iget-object v4, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v4, v4, v2

    iput v0, v4, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->count:I

    .line 185
    iget v4, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mCount:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mCount:I

    .line 176
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0           #count:I
    :cond_3
    move v0, v3

    .line 178
    goto :goto_2

    .line 188
    .end local v1           #cursor:Landroid/database/Cursor;
    :cond_4
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mCacheValid:Z

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/meizu/widget/CompositeCursorAdapterMz;->ensureCacheValid()V

    .line 203
    iget v0, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mCount:I

    return v0
.end method

.method public getCursor(I)Landroid/database/Cursor;
    .locals 1
    .parameter "partition"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->cursor:Landroid/database/Cursor;

    return-object v0
.end method

.method protected getHeaderView(ILandroid/database/Cursor;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "partition"
    .parameter "cursor"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 366
    if-eqz p3, :cond_0

    move-object v0, p3

    .line 369
    .local v0, view:Landroid/view/View;
    :goto_0
    invoke-virtual {p0, v0, p1, p2}, Lcom/meizu/widget/CompositeCursorAdapterMz;->bindHeaderView(Landroid/view/View;ILandroid/database/Cursor;)V

    .line 370
    return-object v0

    .line 366
    .end local v0           #view:Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, p1, p2, p4}, Lcom/meizu/widget/CompositeCursorAdapterMz;->newHeaderView(Landroid/content/Context;ILandroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 6
    .parameter "position"

    .prologue
    const/4 v0, 0x0

    .line 419
    invoke-virtual {p0}, Lcom/meizu/widget/CompositeCursorAdapterMz;->ensureCacheValid()V

    .line 420
    const/4 v4, 0x0

    .line 421
    .local v4, start:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget v5, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mSize:I

    if-ge v2, v5, :cond_1

    .line 422
    iget-object v5, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->count:I

    add-int v1, v4, v5

    .line 423
    .local v1, end:I
    if-lt p1, v4, :cond_3

    if-ge p1, v1, :cond_3

    .line 424
    sub-int v3, p1, v4

    .line 425
    .local v3, offset:I
    iget-object v5, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v5, v5, v2

    iget-boolean v5, v5, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->hasHeader:Z

    if-eqz v5, :cond_0

    .line 426
    add-int/lit8 v3, v3, -0x1

    .line 428
    :cond_0
    const/4 v5, -0x1

    if-ne v3, v5, :cond_2

    .line 438
    .end local v1           #end:I
    .end local v3           #offset:I
    :cond_1
    :goto_1
    return-object v0

    .line 431
    .restart local v1       #end:I
    .restart local v3       #offset:I
    :cond_2
    iget-object v5, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v5, v5, v2

    iget-object v0, v5, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->cursor:Landroid/database/Cursor;

    .line 432
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_1

    .line 435
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v3           #offset:I
    :cond_3
    move v4, v1

    .line 421
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 9
    .parameter "position"

    .prologue
    const/4 v8, -0x1

    const-wide/16 v5, 0x0

    .line 445
    invoke-virtual {p0}, Lcom/meizu/widget/CompositeCursorAdapterMz;->ensureCacheValid()V

    .line 446
    const/4 v4, 0x0

    .line 447
    .local v4, start:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget v7, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mSize:I

    if-ge v2, v7, :cond_1

    .line 448
    iget-object v7, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v7, v7, v2

    iget v7, v7, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->count:I

    add-int v1, v4, v7

    .line 449
    .local v1, end:I
    if-lt p1, v4, :cond_3

    if-ge p1, v1, :cond_3

    .line 450
    sub-int v3, p1, v4

    .line 451
    .local v3, offset:I
    iget-object v7, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v7, v7, v2

    iget-boolean v7, v7, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->hasHeader:Z

    if-eqz v7, :cond_0

    .line 452
    add-int/lit8 v3, v3, -0x1

    .line 454
    :cond_0
    if-ne v3, v8, :cond_2

    .line 470
    .end local v1           #end:I
    .end local v3           #offset:I
    :cond_1
    :goto_1
    return-wide v5

    .line 457
    .restart local v1       #end:I
    .restart local v3       #offset:I
    :cond_2
    iget-object v7, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v7, v7, v2

    iget v7, v7, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->idColumnIndex:I

    if-eq v7, v8, :cond_1

    .line 461
    iget-object v7, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v7, v7, v2

    iget-object v0, v7, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->cursor:Landroid/database/Cursor;

    .line 462
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 465
    iget-object v5, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->idColumnIndex:I

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    goto :goto_1

    .line 467
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v3           #offset:I
    :cond_3
    move v4, v1

    .line 447
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 5
    .parameter "position"

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/meizu/widget/CompositeCursorAdapterMz;->ensureCacheValid()V

    .line 313
    const/4 v3, 0x0

    .line 314
    .local v3, start:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v4, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mSize:I

    if-ge v1, v4, :cond_2

    .line 315
    iget-object v4, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->count:I

    add-int v0, v3, v4

    .line 316
    .local v0, end:I
    if-lt p1, v3, :cond_1

    if-ge p1, v0, :cond_1

    .line 317
    sub-int v2, p1, v3

    .line 318
    .local v2, offset:I
    iget-object v4, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v4, v4, v1

    iget-boolean v4, v4, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->hasHeader:Z

    if-eqz v4, :cond_0

    if-nez v2, :cond_0

    .line 319
    const/4 v4, -0x1

    .line 321
    :goto_1
    return v4

    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/meizu/widget/CompositeCursorAdapterMz;->getItemViewType(II)I

    move-result v4

    goto :goto_1

    .line 323
    .end local v2           #offset:I
    :cond_1
    move v3, v0

    .line 314
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 326
    .end local v0           #end:I
    :cond_2
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v4
.end method

.method protected getItemViewType(II)I
    .locals 1
    .parameter "partition"
    .parameter "position"

    .prologue
    .line 307
    const/4 v0, 0x1

    return v0
.end method

.method public getItemViewTypeCount()I
    .locals 1

    .prologue
    .line 299
    const/4 v0, 0x1

    return v0
.end method

.method public getOffsetInPartition(I)I
    .locals 5
    .parameter "position"

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/meizu/widget/CompositeCursorAdapterMz;->ensureCacheValid()V

    .line 261
    const/4 v3, 0x0

    .line 262
    .local v3, start:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v4, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mSize:I

    if-ge v1, v4, :cond_2

    .line 263
    iget-object v4, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->count:I

    add-int v0, v3, v4

    .line 264
    .local v0, end:I
    if-lt p1, v3, :cond_1

    if-ge p1, v0, :cond_1

    .line 265
    sub-int v2, p1, v3

    .line 266
    .local v2, offset:I
    iget-object v4, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v4, v4, v1

    iget-boolean v4, v4, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->hasHeader:Z

    if-eqz v4, :cond_0

    .line 267
    add-int/lit8 v2, v2, -0x1

    .line 273
    .end local v0           #end:I
    .end local v2           #offset:I
    :cond_0
    :goto_1
    return v2

    .line 271
    .restart local v0       #end:I
    :cond_1
    move v3, v0

    .line 262
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 273
    .end local v0           #end:I
    :cond_2
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public getPartition(I)Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;
    .locals 1
    .parameter "partitionIndex"

    .prologue
    .line 156
    iget v0, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mSize:I

    if-lt p1, v0, :cond_0

    .line 157
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getPartitionCount()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mSize:I

    return v0
.end method

.method public getPartitionForPosition(I)I
    .locals 4
    .parameter "position"

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/meizu/widget/CompositeCursorAdapterMz;->ensureCacheValid()V

    .line 244
    const/4 v2, 0x0

    .line 245
    .local v2, start:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v3, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mSize:I

    if-ge v1, v3, :cond_1

    .line 246
    iget-object v3, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->count:I

    add-int v0, v2, v3

    .line 247
    .local v0, end:I
    if-lt p1, v2, :cond_0

    if-ge p1, v0, :cond_0

    .line 252
    .end local v0           #end:I
    .end local v1           #i:I
    :goto_1
    return v1

    .line 250
    .restart local v0       #end:I
    .restart local v1       #i:I
    :cond_0
    move v2, v0

    .line 245
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 252
    .end local v0           #end:I
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getPositionForPartition(I)I
    .locals 3
    .parameter "partition"

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/meizu/widget/CompositeCursorAdapterMz;->ensureCacheValid()V

    .line 281
    const/4 v1, 0x0

    .line 282
    .local v1, position:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 283
    iget-object v2, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->count:I

    add-int/2addr v1, v2

    .line 282
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 285
    :cond_0
    return v1
.end method

.method protected getView(ILandroid/database/Cursor;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "partition"
    .parameter "cursor"
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 393
    if-eqz p4, :cond_0

    .line 394
    move-object v6, p4

    .line 398
    .local v6, view:Landroid/view/View;
    :goto_0
    invoke-virtual {p0, v6, p1, p2, p3}, Lcom/meizu/widget/CompositeCursorAdapterMz;->bindView(Landroid/view/View;ILandroid/database/Cursor;I)V

    .line 399
    return-object v6

    .line 396
    .end local v6           #view:Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mContext:Landroid/content/Context;

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/widget/CompositeCursorAdapterMz;->newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .restart local v6       #view:Landroid/view/View;
    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/meizu/widget/CompositeCursorAdapterMz;->ensureCacheValid()V

    .line 331
    const/4 v7, 0x0

    .line 332
    .local v7, start:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v0, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mSize:I

    if-ge v1, v0, :cond_4

    .line 333
    iget-object v0, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v0, v0, v1

    iget v0, v0, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->count:I

    add-int v6, v7, v0

    .line 334
    .local v6, end:I
    if-lt p1, v7, :cond_3

    if-ge p1, v6, :cond_3

    .line 335
    sub-int v3, p1, v7

    .line 336
    .local v3, offset:I
    iget-object v0, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v0, v0, v1

    iget-boolean v0, v0, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->hasHeader:Z

    if-eqz v0, :cond_0

    .line 337
    add-int/lit8 v3, v3, -0x1

    .line 340
    :cond_0
    const/4 v0, -0x1

    if-ne v3, v0, :cond_1

    .line 341
    iget-object v0, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->cursor:Landroid/database/Cursor;

    invoke-virtual {p0, v1, v0, p2, p3}, Lcom/meizu/widget/CompositeCursorAdapterMz;->getHeaderView(ILandroid/database/Cursor;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 349
    .local v8, view:Landroid/view/View;
    :goto_1
    if-nez v8, :cond_5

    .line 350
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "View should not be null, partition: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " position: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 343
    .end local v8           #view:Landroid/view/View;
    :cond_1
    iget-object v0, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 344
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t move cursor to position "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_2
    iget-object v0, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v0, v0, v1

    iget-object v2, v0, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->cursor:Landroid/database/Cursor;

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/widget/CompositeCursorAdapterMz;->getView(ILandroid/database/Cursor;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .restart local v8       #view:Landroid/view/View;
    goto :goto_1

    .line 355
    .end local v3           #offset:I
    .end local v8           #view:Landroid/view/View;
    :cond_3
    move v7, v6

    .line 332
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 358
    .end local v6           #end:I
    :cond_4
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 353
    .restart local v3       #offset:I
    .restart local v6       #end:I
    .restart local v8       #view:Landroid/view/View;
    :cond_5
    return-object v8
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/meizu/widget/CompositeCursorAdapterMz;->getItemViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasHeader(I)Z
    .locals 1
    .parameter "partition"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v0, v0, p1

    iget-boolean v0, v0, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->hasHeader:Z

    return v0
.end method

.method protected invalidate()V
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mCacheValid:Z

    .line 164
    return-void
.end method

.method public isEnabled(I)Z
    .locals 6
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    .line 491
    invoke-virtual {p0}, Lcom/meizu/widget/CompositeCursorAdapterMz;->ensureCacheValid()V

    .line 492
    const/4 v3, 0x0

    .line 493
    .local v3, start:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v5, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mSize:I

    if-ge v1, v5, :cond_0

    .line 494
    iget-object v5, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v5, v5, v1

    iget v5, v5, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->count:I

    add-int v0, v3, v5

    .line 495
    .local v0, end:I
    if-lt p1, v3, :cond_2

    if-ge p1, v0, :cond_2

    .line 496
    sub-int v2, p1, v3

    .line 497
    .local v2, offset:I
    iget-object v5, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v5, v5, v1

    iget-boolean v5, v5, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->hasHeader:Z

    if-eqz v5, :cond_1

    if-nez v2, :cond_1

    .line 506
    .end local v0           #end:I
    .end local v2           #offset:I
    :cond_0
    :goto_1
    return v4

    .line 500
    .restart local v0       #end:I
    .restart local v2       #offset:I
    :cond_1
    invoke-virtual {p0, v1, v2}, Lcom/meizu/widget/CompositeCursorAdapterMz;->isEnabled(II)Z

    move-result v4

    goto :goto_1

    .line 503
    .end local v2           #offset:I
    :cond_2
    move v3, v0

    .line 493
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected isEnabled(II)Z
    .locals 1
    .parameter "partition"
    .parameter "position"

    .prologue
    .line 514
    const/4 v0, 0x1

    return v0
.end method

.method public isPartitionEmpty(I)Z
    .locals 2
    .parameter "partition"

    .prologue
    .line 235
    iget-object v1, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v1, v1, p1

    iget-object v0, v1, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->cursor:Landroid/database/Cursor;

    .line 236
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected newHeaderView(Landroid/content/Context;ILandroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "context"
    .parameter "partition"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 378
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 530
    iget-boolean v0, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mNotificationsEnabled:Z

    if-eqz v0, :cond_0

    .line 531
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mNotificationNeeded:Z

    .line 532
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 536
    :goto_0
    return-void

    .line 534
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mNotificationNeeded:Z

    goto :goto_0
.end method

.method public removePartition(I)V
    .locals 5
    .parameter "partitionIndex"

    .prologue
    .line 106
    iget-object v1, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v1, v1, p1

    iget-object v0, v1, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->cursor:Landroid/database/Cursor;

    .line 107
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    iget v4, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mSize:I

    sub-int/2addr v4, p1

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    iget v1, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mSize:I

    .line 114
    invoke-virtual {p0}, Lcom/meizu/widget/CompositeCursorAdapterMz;->invalidate()V

    .line 115
    invoke-virtual {p0}, Lcom/meizu/widget/CompositeCursorAdapterMz;->notifyDataSetChanged()V

    .line 116
    return-void
.end method

.method public setHasHeader(IZ)V
    .locals 1
    .parameter "partitionIndex"
    .parameter "flag"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v0, v0, p1

    iput-boolean p2, v0, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->hasHeader:Z

    .line 147
    invoke-virtual {p0}, Lcom/meizu/widget/CompositeCursorAdapterMz;->invalidate()V

    .line 148
    return-void
.end method

.method public setNotificationsEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 522
    iput-boolean p1, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mNotificationsEnabled:Z

    .line 523
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mNotificationNeeded:Z

    if-eqz v0, :cond_0

    .line 524
    invoke-virtual {p0}, Lcom/meizu/widget/CompositeCursorAdapterMz;->notifyDataSetChanged()V

    .line 526
    :cond_0
    return-void
.end method

.method public setShowIfEmpty(IZ)V
    .locals 1
    .parameter "partitionIndex"
    .parameter "flag"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/meizu/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;

    aget-object v0, v0, p1

    iput-boolean p2, v0, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->showIfEmpty:Z

    .line 152
    invoke-virtual {p0}, Lcom/meizu/widget/CompositeCursorAdapterMz;->invalidate()V

    .line 153
    return-void
.end method
