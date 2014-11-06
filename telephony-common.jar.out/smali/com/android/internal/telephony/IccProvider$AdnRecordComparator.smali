.class Lcom/android/internal/telephony/IccProvider$AdnRecordComparator;
.super Ljava/lang/Object;
.source "IccProvider.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdnRecordComparator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/IccProvider;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/IccProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 760
    iput-object p1, p0, Lcom/android/internal/telephony/IccProvider$AdnRecordComparator;->this$0:Lcom/android/internal/telephony/IccProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 9
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 762
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/AdnRecord;

    .local v0, adn0:Lcom/android/internal/telephony/AdnRecord;
    move-object v1, p2

    .line 763
    check-cast v1, Lcom/android/internal/telephony/AdnRecord;

    .line 764
    .local v1, adn1:Lcom/android/internal/telephony/AdnRecord;
    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecord;->getSortKey()Ljava/lang/String;

    move-result-object v6

    .line 765
    .local v6, name0:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/internal/telephony/AdnRecord;->getSortKey()Ljava/lang/String;

    move-result-object v7

    .line 768
    .local v7, name1:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 769
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 770
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 771
    .local v4, ch1:C
    const/16 v8, 0x61

    if-lt v4, v8, :cond_0

    const/16 v8, 0x7a

    if-gt v4, v8, :cond_0

    const/4 v5, 0x1

    .line 772
    .local v5, ch1Cansort:Z
    :goto_0
    if-nez v5, :cond_1

    const/4 v8, 0x1

    .line 781
    .end local v4           #ch1:C
    .end local v5           #ch1Cansort:Z
    :goto_1
    return v8

    .line 771
    .restart local v4       #ch1:C
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 774
    .restart local v5       #ch1Cansort:Z
    :cond_1
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 775
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 776
    .local v2, ch0:C
    const/16 v8, 0x61

    if-lt v2, v8, :cond_2

    const/16 v8, 0x7a

    if-gt v2, v8, :cond_2

    const/4 v3, 0x1

    .line 777
    .local v3, ch0Cansort:Z
    :goto_2
    if-nez v3, :cond_3

    const/4 v8, -0x1

    goto :goto_1

    .line 776
    .end local v3           #ch0Cansort:Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 779
    .restart local v3       #ch0Cansort:Z
    :cond_3
    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    goto :goto_1

    .line 781
    .end local v2           #ch0:C
    .end local v3           #ch0Cansort:Z
    .end local v4           #ch1:C
    .end local v5           #ch1Cansort:Z
    :cond_4
    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x0

    goto :goto_1

    :cond_5
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v8, -0x1

    goto :goto_1

    :cond_6
    const/4 v8, 0x1

    goto :goto_1
.end method
