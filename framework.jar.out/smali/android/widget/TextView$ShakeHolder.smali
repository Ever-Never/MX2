.class Landroid/widget/TextView$ShakeHolder;
.super Ljava/lang/Object;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShakeHolder"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TextView;

.field private translateX:F


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1
    .parameter

    .prologue
    .line 9487
    iput-object p1, p0, Landroid/widget/TextView$ShakeHolder;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9477
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/TextView$ShakeHolder;->translateX:F

    .line 9488
    return-void
.end method


# virtual methods
.method public getTranslateX()F
    .locals 1

    .prologue
    .line 9480
    iget v0, p0, Landroid/widget/TextView$ShakeHolder;->translateX:F

    return v0
.end method

.method public setTranslateX(F)V
    .locals 0
    .parameter "translateX"

    .prologue
    .line 9484
    iput p1, p0, Landroid/widget/TextView$ShakeHolder;->translateX:F

    .line 9485
    return-void
.end method
