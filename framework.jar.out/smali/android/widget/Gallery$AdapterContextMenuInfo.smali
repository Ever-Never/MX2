.class public Landroid/widget/Gallery$AdapterContextMenuInfo;
.super Ljava/lang/Object;
.source "Gallery.java"

# interfaces
.implements Landroid/view/ContextMenu$ContextMenuInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Gallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdapterContextMenuInfo"
.end annotation


# instance fields
.field public id:J

.field public position:I

.field public targetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;IJ)V
    .locals 0
    .parameter "targetView"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 2572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2573
    iput-object p1, p0, Landroid/widget/Gallery$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    .line 2574
    iput p2, p0, Landroid/widget/Gallery$AdapterContextMenuInfo;->position:I

    .line 2575
    iput-wide p3, p0, Landroid/widget/Gallery$AdapterContextMenuInfo;->id:J

    .line 2576
    return-void
.end method
