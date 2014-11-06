.class final Lcom/meizu/server/FileProtectManagerService$FileProtectData;
.super Ljava/lang/Object;
.source "FileProtectManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/server/FileProtectManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FileProtectData"
.end annotation


# instance fields
.field duration:I

.field globalFilePath:Ljava/lang/String;

.field notifier:Lmeizu/app/INotifier;

.field pid:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
