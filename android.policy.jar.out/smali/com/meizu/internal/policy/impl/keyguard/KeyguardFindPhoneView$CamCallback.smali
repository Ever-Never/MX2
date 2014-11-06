.class public Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$CamCallback;
.super Ljava/lang/Object;
.source "KeyguardFindPhoneView.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CamCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;


# direct methods
.method public constructor <init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)V
    .locals 0
    .parameter

    .prologue
    .line 859
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$CamCallback;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 18
    .parameter "data"
    .parameter "camera"

    .prologue
    .line 862
    invoke-static {}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$1100()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "FindPhone"

    const-string v3, "..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$CamCallback;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mIsTake:Z
    invoke-static {v2}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$2800(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 864
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$CamCallback;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    const/4 v3, 0x1

    #setter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mIsTake:Z
    invoke-static {v2, v3}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$2802(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;Z)Z

    .line 865
    invoke-static {}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$1100()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "FindPhone"

    const-string v3, "save 1...."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v15

    .line 867
    .local v15, size:Landroid/hardware/Camera$Size;
    invoke-static {}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$1100()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "FindPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "save 2.... size w: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v15, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " size h: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v15, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    :cond_2
    new-instance v1, Landroid/graphics/YuvImage;

    const/16 v3, 0x11

    iget v4, v15, Landroid/hardware/Camera$Size;->width:I

    iget v5, v15, Landroid/hardware/Camera$Size;->height:I

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 869
    .local v1, yuvimage:Landroid/graphics/YuvImage;
    invoke-static {}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$1100()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "FindPhone"

    const-string v3, "get yuvimage"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    :cond_3
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 871
    .local v13, outputSteam:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, v15, Landroid/hardware/Camera$Size;->width:I

    iget v6, v15, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v13}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    move-result v17

    .line 872
    .local v17, yuvOk:Z
    invoke-static {}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$1100()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "FindPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "yuvimage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    :cond_4
    if-eqz v17, :cond_7

    .line 874
    const/4 v11, 0x0

    .line 876
    .local v11, out:Ljava/io/FileOutputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$CamCallback;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    #calls: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->getPhotoPath()Ljava/lang/String;
    invoke-static {v2}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$2900(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Ljava/lang/String;

    move-result-object v14

    .line 877
    .local v14, photoPath:Ljava/lang/String;
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 878
    .end local v11           #out:Ljava/io/FileOutputStream;
    .local v12, out:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/io/OutputStream;->write([B)V

    .line 879
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    .line 880
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 881
    .local v10, f:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 882
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Ljava/io/File;->setReadable(ZZ)Z

    .line 883
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 884
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Ljava/io/File;->setWritable(ZZ)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 894
    :cond_5
    const/4 v8, 0x0

    .line 896
    .local v8, exif:Landroid/media/ExifInterface;
    :try_start_2
    new-instance v9, Landroid/media/ExifInterface;

    invoke-direct {v9, v14}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 897
    .end local v8           #exif:Landroid/media/ExifInterface;
    .local v9, exif:Landroid/media/ExifInterface;
    :try_start_3
    const-string v2, "Orientation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$CamCallback;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$CamCallback;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mOrientation:I
    invoke-static {v5}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$3000(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)I

    move-result v5

    #calls: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->getExifInterfaceOrientation(I)I
    invoke-static {v4, v5}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$3100(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    invoke-virtual {v9}, Landroid/media/ExifInterface;->saveAttributes()V

    .line 899
    invoke-static {}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$1100()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "FindPhone"

    const-string v3, "rotation photo success "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_6
    move-object v8, v9

    .line 908
    .end local v9           #exif:Landroid/media/ExifInterface;
    .restart local v8       #exif:Landroid/media/ExifInterface;
    :goto_0
    :try_start_4
    new-instance v16, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$UploadPhotoCallback;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$CamCallback;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v14}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$UploadPhotoCallback;-><init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;Ljava/lang/String;)V

    .line 909
    .local v16, uploadPhotoCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$UploadPhotoCallback;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$CamCallback;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mFindPhoneService:Lcom/meizu/flyme/service/find/IPhoneLocationService;
    invoke-static {v2}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$1700(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Lcom/meizu/flyme/service/find/IPhoneLocationService;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-interface {v2, v14, v0}, Lcom/meizu/flyme/service/find/IPhoneLocationService;->submitPhoto(Ljava/lang/String;Lcom/meizu/flyme/service/find/IPhoneLocationServiceCallback;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 914
    .end local v16           #uploadPhotoCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$UploadPhotoCallback;
    :goto_1
    :try_start_5
    invoke-static {}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$1100()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "FindPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ok..................: photoPath is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 919
    .end local v8           #exif:Landroid/media/ExifInterface;
    .end local v10           #f:Ljava/io/File;
    .end local v12           #out:Ljava/io/FileOutputStream;
    .end local v14           #photoPath:Ljava/lang/String;
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$CamCallback;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$3200(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 920
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$CamCallback;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$3200(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V

    .line 921
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$CamCallback;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$3200(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Landroid/hardware/Camera;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 922
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$CamCallback;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$3200(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    .line 923
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$CamCallback;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    const/4 v3, 0x0

    #setter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2, v3}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$3202(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    .line 928
    .end local v1           #yuvimage:Landroid/graphics/YuvImage;
    .end local v13           #outputSteam:Ljava/io/ByteArrayOutputStream;
    .end local v15           #size:Landroid/hardware/Camera$Size;
    .end local v17           #yuvOk:Z
    :cond_8
    :goto_3
    return-void

    .line 900
    .restart local v1       #yuvimage:Landroid/graphics/YuvImage;
    .restart local v8       #exif:Landroid/media/ExifInterface;
    .restart local v10       #f:Ljava/io/File;
    .restart local v12       #out:Ljava/io/FileOutputStream;
    .restart local v13       #outputSteam:Ljava/io/ByteArrayOutputStream;
    .restart local v14       #photoPath:Ljava/lang/String;
    .restart local v15       #size:Landroid/hardware/Camera$Size;
    .restart local v17       #yuvOk:Z
    :catch_0
    move-exception v7

    .line 901
    .local v7, e:Ljava/io/IOException;
    :goto_4
    :try_start_6
    const-string v2, "FindPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rotation photo fail,err: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 915
    .end local v7           #e:Ljava/io/IOException;
    .end local v8           #exif:Landroid/media/ExifInterface;
    .end local v10           #f:Ljava/io/File;
    :catch_1
    move-exception v7

    move-object v11, v12

    .line 916
    .end local v12           #out:Ljava/io/FileOutputStream;
    .end local v14           #photoPath:Ljava/lang/String;
    .local v7, e:Ljava/lang/Exception;
    .restart local v11       #out:Ljava/io/FileOutputStream;
    :goto_5
    const-string v2, "FindPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "err: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 910
    .end local v7           #e:Ljava/lang/Exception;
    .end local v11           #out:Ljava/io/FileOutputStream;
    .restart local v8       #exif:Landroid/media/ExifInterface;
    .restart local v10       #f:Ljava/io/File;
    .restart local v12       #out:Ljava/io/FileOutputStream;
    .restart local v14       #photoPath:Ljava/lang/String;
    :catch_2
    move-exception v7

    .line 912
    .local v7, e:Landroid/os/RemoteException;
    :try_start_7
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_1

    .line 926
    .end local v1           #yuvimage:Landroid/graphics/YuvImage;
    .end local v7           #e:Landroid/os/RemoteException;
    .end local v8           #exif:Landroid/media/ExifInterface;
    .end local v10           #f:Ljava/io/File;
    .end local v12           #out:Ljava/io/FileOutputStream;
    .end local v13           #outputSteam:Ljava/io/ByteArrayOutputStream;
    .end local v14           #photoPath:Ljava/lang/String;
    .end local v15           #size:Landroid/hardware/Camera$Size;
    .end local v17           #yuvOk:Z
    :cond_9
    const-string v2, "FindPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreviewFrame,mIsTake:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$CamCallback;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mIsTake:Z
    invoke-static {v4}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$2800(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 915
    .restart local v1       #yuvimage:Landroid/graphics/YuvImage;
    .restart local v11       #out:Ljava/io/FileOutputStream;
    .restart local v13       #outputSteam:Ljava/io/ByteArrayOutputStream;
    .restart local v15       #size:Landroid/hardware/Camera$Size;
    .restart local v17       #yuvOk:Z
    :catch_3
    move-exception v7

    goto :goto_5

    .line 900
    .end local v11           #out:Ljava/io/FileOutputStream;
    .restart local v9       #exif:Landroid/media/ExifInterface;
    .restart local v10       #f:Ljava/io/File;
    .restart local v12       #out:Ljava/io/FileOutputStream;
    .restart local v14       #photoPath:Ljava/lang/String;
    :catch_4
    move-exception v7

    move-object v8, v9

    .end local v9           #exif:Landroid/media/ExifInterface;
    .restart local v8       #exif:Landroid/media/ExifInterface;
    goto :goto_4
.end method
