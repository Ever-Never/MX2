.class Lcom/meizu/widget/StaggeredGridView$RecycleBin;
.super Ljava/lang/Object;
.source "StaggeredGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/StaggeredGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecycleBin"
.end annotation


# instance fields
.field private mMaxScrap:I

.field private mScrapViews:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTransientStateViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mViewTypeCount:I

.field final synthetic this$0:Lcom/meizu/widget/StaggeredGridView;


# direct methods
.method private constructor <init>(Lcom/meizu/widget/StaggeredGridView;)V
    .locals 0
    .parameter

    .prologue
    .line 3209
    iput-object p1, p0, Lcom/meizu/widget/StaggeredGridView$RecycleBin;->this$0:Lcom/meizu/widget/StaggeredGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/widget/StaggeredGridView;Lcom/meizu/widget/StaggeredGridView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3209
    invoke-direct {p0, p1}, Lcom/meizu/widget/StaggeredGridView$RecycleBin;-><init>(Lcom/meizu/widget/StaggeredGridView;)V

    return-void
.end method


# virtual methods
.method public addScrap(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 3252
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/meizu/widget/StaggeredGridView$LayoutParams;

    .line 3253
    .local v1, lp:Lcom/meizu/widget/StaggeredGridView$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3254
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-nez v3, :cond_0

    .line 3255
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/meizu/widget/StaggeredGridView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    .line 3257
    :cond_0
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    iget v4, v1, Lcom/meizu/widget/StaggeredGridView$LayoutParams;->position:I

    invoke-virtual {v3, v4, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3270
    :cond_1
    :goto_0
    return-void

    .line 3261
    :cond_2
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView$RecycleBin;->this$0:Lcom/meizu/widget/StaggeredGridView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 3262
    .local v0, childCount:I
    iget v3, p0, Lcom/meizu/widget/StaggeredGridView$RecycleBin;->mMaxScrap:I

    if-le v0, v3, :cond_3

    .line 3263
    iput v0, p0, Lcom/meizu/widget/StaggeredGridView$RecycleBin;->mMaxScrap:I

    .line 3266
    :cond_3
    iget-object v3, p0, Lcom/meizu/widget/StaggeredGridView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    iget v4, v1, Lcom/meizu/widget/StaggeredGridView$LayoutParams;->viewType:I

    aget-object v2, v3, v4

    .line 3267
    .local v2, scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Lcom/meizu/widget/StaggeredGridView$RecycleBin;->mMaxScrap:I

    if-ge v3, v4, :cond_1

    .line 3268
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 3236
    iget v1, p0, Lcom/meizu/widget/StaggeredGridView$RecycleBin;->mViewTypeCount:I

    .line 3237
    .local v1, typeCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 3238
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3237
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3240
    :cond_0
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-eqz v2, :cond_1

    .line 3241
    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 3243
    :cond_1
    return-void
.end method

.method public clearTransientViews()V
    .locals 1

    .prologue
    .line 3246
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 3247
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 3249
    :cond_0
    return-void
.end method

.method public getScrapView(IJ)Landroid/view/View;
    .locals 5
    .parameter "type"
    .parameter "id"

    .prologue
    .line 3285
    iget-object v4, p0, Lcom/meizu/widget/StaggeredGridView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v2, v4, p1

    .line 3286
    .local v2, scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3287
    const/4 v1, 0x0

    .line 3306
    :goto_0
    return-object v1

    .line 3290
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3303
    .local v3, size:I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .line 3304
    .local v0, index:I
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 3305
    .local v1, result:Landroid/view/View;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getTransientStateView(I)Landroid/view/View;
    .locals 2
    .parameter "position"

    .prologue
    .line 3273
    iget-object v1, p0, Lcom/meizu/widget/StaggeredGridView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-nez v1, :cond_1

    .line 3274
    const/4 v0, 0x0

    .line 3281
    :cond_0
    :goto_0
    return-object v0

    .line 3277
    :cond_1
    iget-object v1, p0, Lcom/meizu/widget/StaggeredGridView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 3278
    .local v0, result:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 3279
    iget-object v1, p0, Lcom/meizu/widget/StaggeredGridView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0
.end method

.method public setViewTypeCount(I)V
    .locals 5
    .parameter "viewTypeCount"

    .prologue
    .line 3217
    const/4 v2, 0x1

    if-ge p1, v2, :cond_0

    .line 3218
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Must have at least one view type ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " types reported)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3221
    :cond_0
    iget v2, p0, Lcom/meizu/widget/StaggeredGridView$RecycleBin;->mViewTypeCount:I

    if-ne p1, v2, :cond_1

    .line 3233
    :goto_0
    return-void

    .line 3226
    :cond_1
    new-array v1, p1, [Ljava/util/ArrayList;

    .line 3228
    .local v1, scrapViews:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p1, :cond_2

    .line 3229
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    .line 3228
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3231
    :cond_2
    iput p1, p0, Lcom/meizu/widget/StaggeredGridView$RecycleBin;->mViewTypeCount:I

    .line 3232
    iput-object v1, p0, Lcom/meizu/widget/StaggeredGridView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    goto :goto_0
.end method
