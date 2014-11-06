.class Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "GridMenuPopupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/GridMenuPopupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GridMenuAdapter"
.end annotation


# instance fields
.field private mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mExpandedIndex:I

.field final synthetic this$0:Lcom/android/internal/view/menu/GridMenuPopupHelper;


# direct methods
.method public constructor <init>(Lcom/android/internal/view/menu/GridMenuPopupHelper;Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 1
    .parameter
    .parameter "menu"

    .prologue
    .line 389
    iput-object p1, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;->this$0:Lcom/android/internal/view/menu/GridMenuPopupHelper;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 386
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;->mExpandedIndex:I

    .line 390
    iput-object p2, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 391
    invoke-virtual {p0}, Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;->findExpandedIndex()V

    .line 392
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;)Lcom/android/internal/view/menu/MenuBuilder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 421
    const/4 v0, 0x0

    return v0
.end method

.method findExpandedIndex()V
    .locals 6

    .prologue
    .line 441
    iget-object v5, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;->this$0:Lcom/android/internal/view/menu/GridMenuPopupHelper;

    #getter for: Lcom/android/internal/view/menu/GridMenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;
    invoke-static {v5}, Lcom/android/internal/view/menu/GridMenuPopupHelper;->access$300(Lcom/android/internal/view/menu/GridMenuPopupHelper;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/view/menu/MenuBuilder;->getExpandedItem()Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v1

    .line 442
    .local v1, expandedItem:Lcom/android/internal/view/menu/MenuItemImpl;
    if-eqz v1, :cond_1

    .line 443
    iget-object v5, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;->this$0:Lcom/android/internal/view/menu/GridMenuPopupHelper;

    #getter for: Lcom/android/internal/view/menu/GridMenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;
    invoke-static {v5}, Lcom/android/internal/view/menu/GridMenuPopupHelper;->access$300(Lcom/android/internal/view/menu/GridMenuPopupHelper;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v4

    .line 444
    .local v4, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 445
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 446
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 447
    .local v3, item:Lcom/android/internal/view/menu/MenuItemImpl;
    if-ne v3, v1, :cond_0

    .line 448
    iput v2, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;->mExpandedIndex:I

    .line 454
    .end local v0           #count:I
    .end local v2           #i:I
    .end local v3           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    .end local v4           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :goto_1
    return-void

    .line 445
    .restart local v0       #count:I
    .restart local v2       #i:I
    .restart local v3       #item:Lcom/android/internal/view/menu/MenuItemImpl;
    .restart local v4       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 453
    .end local v0           #count:I
    .end local v2           #i:I
    .end local v3           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    .end local v4           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :cond_1
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;->mExpandedIndex:I

    goto :goto_1
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 395
    iget-object v1, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;->this$0:Lcom/android/internal/view/menu/GridMenuPopupHelper;

    #getter for: Lcom/android/internal/view/menu/GridMenuPopupHelper;->mOverflowOnly:Z
    invoke-static {v1}, Lcom/android/internal/view/menu/GridMenuPopupHelper;->access$100(Lcom/android/internal/view/menu/GridMenuPopupHelper;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 397
    .local v0, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :goto_0
    iget v1, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;->mExpandedIndex:I

    if-gez v1, :cond_1

    .line 398
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 400
    :goto_1
    return v1

    .line 395
    .end local v0           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :cond_0
    iget-object v1, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 400
    .restart local v0       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;
    .locals 2
    .parameter "position"

    .prologue
    .line 404
    iget-object v1, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;->this$0:Lcom/android/internal/view/menu/GridMenuPopupHelper;

    #getter for: Lcom/android/internal/view/menu/GridMenuPopupHelper;->mOverflowOnly:Z
    invoke-static {v1}, Lcom/android/internal/view/menu/GridMenuPopupHelper;->access$100(Lcom/android/internal/view/menu/GridMenuPopupHelper;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 406
    .local v0, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :goto_0
    iget v1, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;->mExpandedIndex:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;->mExpandedIndex:I

    if-lt p1, v1, :cond_0

    .line 407
    add-int/lit8 p1, p1, 0x1

    .line 409
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    return-object v1

    .line 404
    .end local v0           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :cond_1
    iget-object v1, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 384
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 415
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 426
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v0

    .line 427
    .local v0, item:Lcom/android/internal/view/menu/MenuItemImpl;
    if-nez p2, :cond_0

    .line 428
    iget-object v2, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;->this$0:Lcom/android/internal/view/menu/GridMenuPopupHelper;

    #getter for: Lcom/android/internal/view/menu/GridMenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/android/internal/view/menu/GridMenuPopupHelper;->access$200(Lcom/android/internal/view/menu/GridMenuPopupHelper;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x10900a3

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object v1, p2

    .line 431
    check-cast v1, Lcom/android/internal/view/menu/MenuView$ItemView;

    .line 432
    .local v1, itemView:Lcom/android/internal/view/menu/MenuView$ItemView;
    iget-object v2, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;->this$0:Lcom/android/internal/view/menu/GridMenuPopupHelper;

    iget-boolean v2, v2, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mForceShowIcon:Z

    if-eqz v2, :cond_1

    move-object v2, p2

    .line 433
    check-cast v2, Lcom/android/internal/view/menu/GridMenuItemView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/view/menu/GridMenuItemView;->setForceShowIcon(Z)V

    .line 435
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Lcom/android/internal/view/menu/MenuView$ItemView;->initialize(Lcom/android/internal/view/menu/MenuItemImpl;I)V

    .line 437
    return-object p2
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 459
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v0

    .line 460
    .local v0, item:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->isCategoryHeader()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;->findExpandedIndex()V

    .line 466
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 467
    return-void
.end method
