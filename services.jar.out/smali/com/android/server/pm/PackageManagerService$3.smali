.class final Lcom/android/server/pm/PackageManagerService$3;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 6051
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .locals 8
    .parameter "r1"
    .parameter "r2"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 6053
    iget v2, p1, Landroid/content/pm/ResolveInfo;->priority:I

    .line 6054
    .local v2, v1:I
    iget v3, p2, Landroid/content/pm/ResolveInfo;->priority:I

    .line 6055
    .local v3, v2:I
    iget-boolean v0, p1, Landroid/content/pm/ResolveInfo;->superPriority:Z

    .line 6056
    .local v0, s1:Z
    iget-boolean v1, p2, Landroid/content/pm/ResolveInfo;->superPriority:Z

    .line 6057
    .local v1, s2:Z
    if-eq v0, v1, :cond_2

    .line 6058
    if-eqz v0, :cond_1

    .line 6081
    :cond_0
    :goto_0
    return v4

    :cond_1
    move v4, v5

    .line 6058
    goto :goto_0

    .line 6061
    :cond_2
    if-eq v2, v3, :cond_3

    .line 6062
    if-gt v2, v3, :cond_0

    move v4, v5

    goto :goto_0

    .line 6064
    :cond_3
    iget v2, p1, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 6065
    iget v3, p2, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 6066
    if-eq v2, v3, :cond_4

    .line 6067
    if-gt v2, v3, :cond_0

    move v4, v5

    goto :goto_0

    .line 6069
    :cond_4
    iget-boolean v6, p1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v7, p2, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v6, v7, :cond_5

    .line 6070
    iget-boolean v6, p1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-nez v6, :cond_0

    move v4, v5

    goto :goto_0

    .line 6072
    :cond_5
    iget v2, p1, Landroid/content/pm/ResolveInfo;->match:I

    .line 6073
    iget v3, p2, Landroid/content/pm/ResolveInfo;->match:I

    .line 6075
    if-eq v2, v3, :cond_6

    .line 6076
    if-gt v2, v3, :cond_0

    move v4, v5

    goto :goto_0

    .line 6078
    :cond_6
    iget-boolean v6, p1, Landroid/content/pm/ResolveInfo;->system:Z

    iget-boolean v7, p2, Landroid/content/pm/ResolveInfo;->system:Z

    if-eq v6, v7, :cond_7

    .line 6079
    iget-boolean v6, p1, Landroid/content/pm/ResolveInfo;->system:Z

    if-nez v6, :cond_0

    move v4, v5

    goto :goto_0

    .line 6081
    :cond_7
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6051
    check-cast p1, Landroid/content/pm/ResolveInfo;

    .end local p1
    check-cast p2, Landroid/content/pm/ResolveInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$3;->compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result v0

    return v0
.end method
