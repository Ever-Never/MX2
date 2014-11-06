.class Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick$luxWithTime;
.super Ljava/lang/Object;
.source "AmbientLuxBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "luxWithTime"
.end annotation


# instance fields
.field mLuxValue:F

.field mtime:J

.field final synthetic this$1:Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;


# direct methods
.method public constructor <init>(Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;FJ)V
    .locals 0
    .parameter
    .parameter "lux"
    .parameter "time"

    .prologue
    .line 570
    iput-object p1, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick$luxWithTime;->this$1:Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 571
    iput p2, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick$luxWithTime;->mLuxValue:F

    .line 572
    iput-wide p3, p0, Lcom/android/server/power/AmbientLuxBox$AmbientLuxBox_Quick$luxWithTime;->mtime:J

    .line 573
    return-void
.end method
