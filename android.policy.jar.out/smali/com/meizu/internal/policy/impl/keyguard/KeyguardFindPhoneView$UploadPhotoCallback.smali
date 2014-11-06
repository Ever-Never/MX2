.class Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$UploadPhotoCallback;
.super Lcom/meizu/flyme/service/find/IPhoneLocationServiceCallback$Stub;
.source "KeyguardFindPhoneView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UploadPhotoCallback"
.end annotation


# instance fields
.field mFilePath:Ljava/lang/String;

.field final synthetic this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;


# direct methods
.method public constructor <init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "path"

    .prologue
    .line 933
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$UploadPhotoCallback;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    invoke-direct {p0}, Lcom/meizu/flyme/service/find/IPhoneLocationServiceCallback$Stub;-><init>()V

    .line 934
    iput-object p2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$UploadPhotoCallback;->mFilePath:Ljava/lang/String;

    .line 935
    return-void
.end method


# virtual methods
.method public onUpload(Z)V
    .locals 4
    .parameter "success"

    .prologue
    .line 937
    invoke-static {}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$1100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "FindPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUpload, success is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", and delete file :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$UploadPhotoCallback;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    :cond_0
    if-eqz p1, :cond_1

    .line 939
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$UploadPhotoCallback;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 940
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 941
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_1

    .line 942
    invoke-static {}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$1100()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "FindPhone"

    const-string v2, "Could not delete photo"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    .end local v0           #f:Ljava/io/File;
    :cond_1
    return-void
.end method
