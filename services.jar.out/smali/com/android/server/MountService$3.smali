.class Lcom/android/server/MountService$3;
.super Landroid/content/BroadcastReceiver;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;)V
    .locals 0
    .parameter

    .prologue
    .line 638
    iput-object p1, p0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 26
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 643
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 644
    .local v3, action:Ljava/lang/String;
    const-string v21, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/MountService;->mContext:Landroid/content/Context;
    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->access$1100(Lcom/android/server/MountService;)Landroid/content/Context;

    move-result-object v21

    const-string v23, "power"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/os/PowerManager;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/server/MountService;->mPower:Landroid/os/PowerManager;

    .line 648
    :try_start_0
    const-string v16, "externalvolumeremoved"

    .line 649
    .local v16, state:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->access$1200(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v21

    const-string v22, "externalvolume"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "listdisks"

    aput-object v25, v23, v24

    invoke-virtual/range {v21 .. v23}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v21

    const/16 v22, 0x6e

    invoke-static/range {v21 .. v22}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;

    move-result-object v19

    .line 653
    .local v19, vols:[Ljava/lang/String;
    const/4 v9, 0x0

    .line 654
    .local v9, label:Ljava/lang/String;
    move-object/from16 v4, v19

    .local v4, arr$:[Ljava/lang/String;
    array-length v10, v4

    .local v10, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v10, :cond_6

    aget-object v20, v4, v6

    .line 655
    .local v20, volstr:Ljava/lang/String;
    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 657
    .local v17, tok:[Ljava/lang/String;
    const/16 v21, 0x0

    aget-object v9, v17, v21

    .line 658
    const/16 v21, 0x1

    aget-object v21, v17, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 659
    .local v15, st:I
    if-nez v15, :cond_0

    .line 660
    const-string v16, "externalvolumeremoved"

    .line 654
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 661
    :cond_0
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v15, v0, :cond_1

    .line 662
    const-string v16, "externalvolumeunmounted"

    goto :goto_1

    .line 663
    :cond_1
    const/16 v21, 0x4

    move/from16 v0, v21

    if-ne v15, v0, :cond_4

    .line 664
    const-string v16, "externalvolumemounted"

    .line 665
    const-string v21, "MountService"

    const-string v22, "Media already mounted on daemon connection"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 703
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v6           #i$:I
    .end local v9           #label:Ljava/lang/String;
    .end local v10           #len$:I
    .end local v15           #st:I
    .end local v16           #state:Ljava/lang/String;
    .end local v17           #tok:[Ljava/lang/String;
    .end local v19           #vols:[Ljava/lang/String;
    .end local v20           #volstr:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 704
    .local v5, e:Ljava/lang/Exception;
    const-string v21, "MountService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "e = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    .end local v5           #e:Ljava/lang/Exception;
    :cond_2
    const-string v21, "meizu.intent.action.AUTO_INSTALL_SUCCESSFUL"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 707
    const-string v21, "MountService"

    const-string v22, "AUTO_INSTALL_SUCCESSFUL !!"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    new-instance v18, Ljava/io/File;

    const-string v21, "/data/app/autoVerify/"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 709
    .local v18, verifyDir:Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v21

    if-nez v21, :cond_3

    .line 710
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->mkdir()Z

    .line 740
    .end local v18           #verifyDir:Ljava/io/File;
    :cond_3
    :goto_2
    return-void

    .line 667
    .restart local v4       #arr$:[Ljava/lang/String;
    .restart local v6       #i$:I
    .restart local v9       #label:Ljava/lang/String;
    .restart local v10       #len$:I
    .restart local v15       #st:I
    .restart local v16       #state:Ljava/lang/String;
    .restart local v17       #tok:[Ljava/lang/String;
    .restart local v19       #vols:[Ljava/lang/String;
    .restart local v20       #volstr:Ljava/lang/String;
    :cond_4
    const/16 v21, 0x5

    move/from16 v0, v21

    if-ne v15, v0, :cond_5

    .line 668
    :try_start_1
    const-string v16, "externalvolumeunmounting"

    goto :goto_1

    .line 670
    :cond_5
    new-instance v21, Ljava/lang/Exception;

    const-string v22, "Unexpected state %d"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v21

    .line 675
    .end local v15           #st:I
    .end local v17           #tok:[Ljava/lang/String;
    .end local v20           #volstr:Ljava/lang/String;
    :cond_6
    if-eqz v16, :cond_7

    if-eqz v9, :cond_7

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/MountService;->mDiskList:Ljava/util/ArrayList;
    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->access$1300(Lcom/android/server/MountService;)Ljava/util/ArrayList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    add-int/lit8 v7, v21, 0x1

    .line 677
    .local v7, index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/MountService;->mContext:Landroid/content/Context;
    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->access$1100(Lcom/android/server/MountService;)Landroid/content/Context;

    move-result-object v21

    const v22, 0x10405d5

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-virtual/range {v21 .. v23}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 681
    .local v12, name:Ljava/lang/String;
    new-instance v8, Landroid/os/storage/DiskInfo;

    invoke-direct {v8, v12, v9}, Landroid/os/storage/DiskInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    .local v8, info:Landroid/os/storage/DiskInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/MountService;->mDiskList:Ljava/util/ArrayList;
    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->access$1300(Lcom/android/server/MountService;)Ljava/util/ArrayList;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    #calls: Lcom/android/server/MountService;->updateExternalVolumeState(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v12, v1}, Lcom/android/server/MountService;->access$1400(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    .end local v7           #index:I
    .end local v8           #info:Landroid/os/storage/DiskInfo;
    .end local v12           #name:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->access$1200(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v21

    const-string v22, "externalvolume"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "listpartition"

    aput-object v25, v23, v24

    invoke-virtual/range {v21 .. v23}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v21

    const/16 v22, 0x6e

    invoke-static/range {v21 .. v22}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;

    move-result-object v13

    .line 690
    .local v13, parts:[Ljava/lang/String;
    const/4 v11, 0x0

    .line 691
    .local v11, mountPoint:Ljava/lang/String;
    move-object v4, v13

    array-length v10, v4

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v10, :cond_2

    aget-object v14, v4, v6

    .line 692
    .local v14, partstr:Ljava/lang/String;
    const-string v21, " "

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 694
    .restart local v17       #tok:[Ljava/lang/String;
    const/16 v21, 0x0

    aget-object v9, v17, v21

    .line 695
    const/16 v21, 0x1

    aget-object v11, v17, v21

    .line 696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    #calls: Lcom/android/server/MountService;->findDiskIndex(Ljava/lang/String;)I
    invoke-static {v0, v9}, Lcom/android/server/MountService;->access$1500(Lcom/android/server/MountService;Ljava/lang/String;)I

    move-result v7

    .line 697
    .restart local v7       #index:I
    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v7, v0, :cond_8

    .line 698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/MountService;->mDiskList:Ljava/util/ArrayList;
    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->access$1300(Lcom/android/server/MountService;)Ljava/util/ArrayList;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/os/storage/DiskInfo;

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Landroid/os/storage/DiskInfo;->findPartition(Ljava/lang/String;)I

    move-result v21

    if-gez v21, :cond_8

    .line 699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/MountService;->mDiskList:Ljava/util/ArrayList;
    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->access$1300(Lcom/android/server/MountService;)Ljava/util/ArrayList;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/os/storage/DiskInfo;

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Landroid/os/storage/DiskInfo;->add(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 691
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 712
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v6           #i$:I
    .end local v7           #index:I
    .end local v9           #label:Ljava/lang/String;
    .end local v10           #len$:I
    .end local v11           #mountPoint:Ljava/lang/String;
    .end local v13           #parts:[Ljava/lang/String;
    .end local v14           #partstr:Ljava/lang/String;
    .end local v16           #state:Ljava/lang/String;
    .end local v17           #tok:[Ljava/lang/String;
    .end local v19           #vols:[Ljava/lang/String;
    :cond_9
    const-string v21, "meizu.intent.action.HOME_LAUNCHED"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 713
    new-instance v18, Ljava/io/File;

    const-string v21, "/data/app/autoVerify/"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 714
    .restart local v18       #verifyDir:Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v21

    if-nez v21, :cond_3

    .line 715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectoryMzInternal()Ljava/io/File;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v22, "mounted"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_a

    .line 717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    #setter for: Lcom/android/server/MountService;->mPendingAutoInstall:Z
    invoke-static/range {v21 .. v22}, Lcom/android/server/MountService;->access$1602(Lcom/android/server/MountService;Z)Z

    goto/16 :goto_2

    .line 719
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    #calls: Lcom/android/server/MountService;->startAutoInstall()V
    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->access$1700(Lcom/android/server/MountService;)V

    goto/16 :goto_2

    .line 722
    .end local v18           #verifyDir:Ljava/io/File;
    :cond_b
    const-string v21, "meizu.intent.action.SECURITY_STATE_CHANGED"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 723
    const-string v21, "securityLock"

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/MountService;->isUsbMassStorageConnected()Z

    move-result v21

    if-eqz v21, :cond_3

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/MountService;->isUsbMassStorageEnabled()Z

    move-result v21

    if-eqz v21, :cond_3

    .line 726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    #setter for: Lcom/android/server/MountService;->mDisableUmsByLock:Z
    invoke-static/range {v21 .. v22}, Lcom/android/server/MountService;->access$1802(Lcom/android/server/MountService;Z)Z

    .line 727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/MountService;->setUsbMassStorageEnabled(Z)V

    goto/16 :goto_2

    .line 732
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/MountService;->mDisableUmsByLock:Z
    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->access$1800(Lcom/android/server/MountService;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/MountService;->isUsbMassStorageConnected()Z

    move-result v21

    if-eqz v21, :cond_3

    .line 734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    #setter for: Lcom/android/server/MountService;->mDisableUmsByLock:Z
    invoke-static/range {v21 .. v22}, Lcom/android/server/MountService;->access$1802(Lcom/android/server/MountService;Z)Z

    .line 735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/MountService;->setUsbMassStorageEnabled(Z)V

    goto/16 :goto_2
.end method
