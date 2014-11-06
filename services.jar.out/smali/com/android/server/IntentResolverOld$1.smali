.class final Lcom/android/server/IntentResolverOld$1;
.super Ljava/lang/Object;
.source "IntentResolverOld.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/IntentResolverOld;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 581
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

    .line 583
    move-object v4, p1

    check-cast v4, Landroid/content/IntentFilter;

    invoke-virtual {v4}, Landroid/content/IntentFilter;->getPriority()I

    move-result v2

    .local v2, q1:I
    move-object v4, p2

    .line 584
    check-cast v4, Landroid/content/IntentFilter;

    invoke-virtual {v4}, Landroid/content/IntentFilter;->getPriority()I

    move-result v3

    .line 585
    .local v3, q2:I
    check-cast p1, Landroid/content/IntentFilter;

    .end local p1
    invoke-virtual {p1}, Landroid/content/IntentFilter;->isSuperPriority()Z

    move-result v0

    .line 586
    .local v0, isSuper1:Z
    check-cast p2, Landroid/content/IntentFilter;

    .end local p2
    invoke-virtual {p2}, Landroid/content/IntentFilter;->isSuperPriority()Z

    move-result v1

    .line 587
    .local v1, isSuper2:Z
    if-eq v0, v1, :cond_1

    .line 588
    if-eqz v0, :cond_0

    move v4, v5

    .line 590
    :goto_0
    return v4

    :cond_0
    move v4, v6

    .line 588
    goto :goto_0

    .line 590
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
