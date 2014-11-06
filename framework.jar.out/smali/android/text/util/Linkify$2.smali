.class final Landroid/text/util/Linkify$2;
.super Ljava/lang/Object;
.source "Linkify.java"

# interfaces
.implements Landroid/text/util/Linkify$MatchFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/util/Linkify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final acceptMatch(Ljava/lang/CharSequence;II)Z
    .locals 12
    .parameter "s"
    .parameter "start"
    .parameter "end"

    .prologue
    const v11, 0xffe5

    const/16 v10, 0x2e

    const/16 v9, 0x24

    const/4 v6, 0x0

    .line 125
    add-int/lit8 v3, p3, 0x1

    .line 126
    .local v3, next:I
    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v3, v7, :cond_1

    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-ne v10, v7, :cond_1

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 159
    :cond_0
    :goto_0
    return v6

    .line 130
    :cond_1
    add-int/lit8 v4, p2, -0x1

    .line 131
    .local v4, pre1:I
    if-ltz v4, :cond_2

    .line 132
    const/16 v7, 0x20

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-ne v7, v8, :cond_3

    .line 133
    add-int/lit8 v5, v4, -0x1

    .line 134
    .local v5, pre2:I
    if-ltz v5, :cond_2

    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-eq v9, v7, :cond_0

    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eq v11, v7, :cond_0

    .line 150
    .end local v4           #pre1:I
    .end local v5           #pre2:I
    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 151
    .local v0, digitCount:I
    move v2, p2

    .local v2, i:I
    :goto_2
    if-ge v2, p3, :cond_0

    .line 152
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 153
    add-int/lit8 v0, v0, 0x1

    .line 154
    const/4 v7, 0x5

    if-lt v0, v7, :cond_4

    .line 155
    const/4 v6, 0x1

    goto :goto_0

    .line 137
    .end local v0           #digitCount:I
    .end local v2           #i:I
    .restart local v4       #pre1:I
    :cond_3
    :try_start_1
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-eq v9, v7, :cond_0

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-eq v11, v7, :cond_0

    .line 139
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-ne v10, v7, :cond_2

    .line 140
    add-int/lit8 v5, v4, -0x1

    .line 141
    .restart local v5       #pre2:I
    if-ltz v5, :cond_2

    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_0

    .line 146
    .end local v4           #pre1:I
    .end local v5           #pre2:I
    :catch_0
    move-exception v1

    .line 147
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 151
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #digitCount:I
    .restart local v2       #i:I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method
