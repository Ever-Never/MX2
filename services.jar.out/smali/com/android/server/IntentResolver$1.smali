.class final Lcom/android/server/IntentResolver$1;
.super Ljava/lang/Object;
.source "IntentResolver.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/IntentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 608
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7
    .parameter "o1"
    .parameter "o2"

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 610
    move-object v4, p1

    check-cast v4, Landroid/content/IntentFilter;

    invoke-virtual {v4}, Landroid/content/IntentFilter;->getPriority()I

    move-result v2

    .local v2, q1:I
    move-object v4, p2

    .line 611
    check-cast v4, Landroid/content/IntentFilter;

    invoke-virtual {v4}, Landroid/content/IntentFilter;->getPriority()I

    move-result v3

    .line 612
    .local v3, q2:I
    check-cast p1, Landroid/content/IntentFilter;

    .end local p1
    invoke-virtual {p1}, Landroid/content/IntentFilter;->isSuperPriority()Z

    move-result v0

    .line 613
    .local v0, isSuper1:Z
    check-cast p2, Landroid/content/IntentFilter;

    .end local p2
    invoke-virtual {p2}, Landroid/content/IntentFilter;->isSuperPriority()Z

    move-result v1

    .line 614
    .local v1, isSuper2:Z
    if-eq v0, v1, :cond_1

    .line 615
    if-eqz v0, :cond_0

    move v4, v5

    .line 617
    :goto_0
    return v4

    :cond_0
    move v4, v6

    .line 615
    goto :goto_0

    .line 617
    :cond_1
    if-le v2, v3, :cond_2

    :goto_1
    move v4, v5

    goto :goto_0

    :cond_2
    if-ge v2, v3, :cond_3

    move v5, v6

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method
