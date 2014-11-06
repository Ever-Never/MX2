.class final Landroid/util/DateTimeUrlHelper$1;
.super Ljava/lang/Object;
.source "DateTimeUrlHelper.java"

# interfaces
.implements Landroid/text/util/Linkify$TransformFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/DateTimeUrlHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 621
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final transformUrl(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "match"
    .parameter "url"

    .prologue
    .line 623
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    .line 624
    .local v0, matchingRegion:Ljava/lang/String;
    invoke-static {v0}, Landroid/util/DateTimeUrlHelper;->parserDateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
