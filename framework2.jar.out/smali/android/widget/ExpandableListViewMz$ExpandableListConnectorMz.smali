.class Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;
.super Landroid/widget/ExpandableListConnector;
.source "ExpandableListViewMz.java"

# interfaces
.implements Landroid/widget/ListView$DividerFilter;
.implements Lcom/meizu/widget/ListSelectFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ExpandableListViewMz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ExpandableListConnectorMz"
.end annotation


# direct methods
.method public constructor <init>(Landroid/widget/ExpandableListAdapter;)V
    .locals 0
    .parameter "expandableListAdapter"

    .prologue
    .line 1744
    invoke-direct {p0, p1}, Landroid/widget/ExpandableListConnector;-><init>(Landroid/widget/ExpandableListAdapter;)V

    .line 1745
    return-void
.end method


# virtual methods
.method public bottomDeviderEnabled()Z
    .locals 4

    .prologue
    .line 1797
    invoke-virtual {p0}, Landroid/widget/ExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    .line 1798
    .local v0, adapter:Landroid/widget/ExpandableListAdapter;
    instance-of v3, v0, Landroid/widget/ListView$DividerFilter;

    if-eqz v3, :cond_0

    move-object v1, v0

    .line 1800
    check-cast v1, Landroid/widget/ListView$DividerFilter;

    .line 1801
    .local v1, filter:Landroid/widget/ListView$DividerFilter;
    invoke-interface {v1}, Landroid/widget/ListView$DividerFilter;->bottomDeviderEnabled()Z

    move-result v2

    .line 1804
    .end local v1           #filter:Landroid/widget/ListView$DividerFilter;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public dividerEnabled(I)Z
    .locals 5
    .parameter "position"

    .prologue
    .line 1783
    invoke-virtual {p0}, Landroid/widget/ExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    .line 1784
    .local v0, adapter:Landroid/widget/ExpandableListAdapter;
    instance-of v4, v0, Landroid/widget/ListView$DividerFilter;

    if-eqz v4, :cond_0

    move-object v1, v0

    .line 1786
    check-cast v1, Landroid/widget/ListView$DividerFilter;

    .line 1787
    .local v1, filter:Landroid/widget/ListView$DividerFilter;
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v4

    iget-object v2, v4, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    .line 1788
    .local v2, pos:Landroid/widget/ExpandableListPosition;
    iget v4, v2, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v1, v4}, Landroid/widget/ListView$DividerFilter;->dividerEnabled(I)Z

    move-result v3

    .line 1789
    .local v3, result:Z
    invoke-virtual {v2}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 1792
    .end local v1           #filter:Landroid/widget/ListView$DividerFilter;
    .end local v2           #pos:Landroid/widget/ExpandableListPosition;
    .end local v3           #result:Z
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 7
    .parameter "flatListPos"

    .prologue
    .line 1749
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v4

    iget-object v2, v4, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    .line 1752
    .local v2, pos:Landroid/widget/ExpandableListPosition;
    iget v4, v2, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 1753
    invoke-virtual {p0}, Landroid/widget/ExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v4

    iget v5, v2, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v6, v2, Landroid/widget/ExpandableListPosition;->childPos:I

    invoke-interface {v4, v5, v6}, Landroid/widget/ExpandableListAdapter;->isChildSelectable(II)Z

    move-result v3

    .line 1765
    .local v3, retValue:Z
    :goto_0
    invoke-virtual {v2}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 1767
    return v3

    .line 1756
    .end local v3           #retValue:Z
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    .line 1757
    .local v0, adapter:Landroid/widget/ExpandableListAdapter;
    instance-of v4, v0, Landroid/widget/ExpandableListViewMz$ExpandableListAdapterMz;

    if-eqz v4, :cond_1

    move-object v1, v0

    .line 1758
    check-cast v1, Landroid/widget/ExpandableListViewMz$ExpandableListAdapterMz;

    .line 1759
    .local v1, adaptermz:Landroid/widget/ExpandableListViewMz$ExpandableListAdapterMz;
    iget v4, v2, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v1, v4}, Landroid/widget/ExpandableListViewMz$ExpandableListAdapterMz;->isGroupSelectable(I)Z

    move-result v3

    .line 1760
    .restart local v3       #retValue:Z
    goto :goto_0

    .line 1761
    .end local v1           #adaptermz:Landroid/widget/ExpandableListViewMz$ExpandableListAdapterMz;
    .end local v3           #retValue:Z
    :cond_1
    const/4 v3, 0x1

    .restart local v3       #retValue:Z
    goto :goto_0
.end method

.method public isSelectable(I)Z
    .locals 4
    .parameter "position"

    .prologue
    .line 1810
    invoke-virtual {p0}, Landroid/widget/ExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    .line 1811
    .local v0, adapter:Landroid/widget/ExpandableListAdapter;
    instance-of v3, v0, Lcom/meizu/widget/ListSelectFilter;

    if-eqz v3, :cond_0

    move-object v2, v0

    .line 1812
    check-cast v2, Lcom/meizu/widget/ListSelectFilter;

    .line 1813
    .local v2, filter:Lcom/meizu/widget/ListSelectFilter;
    invoke-interface {v2, p1}, Lcom/meizu/widget/ListSelectFilter;->isSelectable(I)Z

    move-result v1

    .line 1816
    .end local v2           #filter:Lcom/meizu/widget/ListSelectFilter;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public topDividerEnabled()Z
    .locals 4

    .prologue
    .line 1771
    invoke-virtual {p0}, Landroid/widget/ExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    .line 1772
    .local v0, adapter:Landroid/widget/ExpandableListAdapter;
    instance-of v3, v0, Landroid/widget/ListView$DividerFilter;

    if-eqz v3, :cond_0

    move-object v1, v0

    .line 1774
    check-cast v1, Landroid/widget/ListView$DividerFilter;

    .line 1775
    .local v1, filter:Landroid/widget/ListView$DividerFilter;
    invoke-interface {v1}, Landroid/widget/ListView$DividerFilter;->topDividerEnabled()Z

    move-result v2

    .line 1778
    .end local v1           #filter:Landroid/widget/ListView$DividerFilter;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method
