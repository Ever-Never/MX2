.class Landroid/content/ContentProvider$Transport;
.super Landroid/content/ContentProviderNative;
.source "ContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Transport"
.end annotation


# instance fields
.field mAppOpsManager:Landroid/app/AppOpsManager;

.field mReadList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mReadOp:I

.field mWriteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mWriteOp:I

.field final synthetic this$0:Landroid/content/ContentProvider;


# direct methods
.method constructor <init>(Landroid/content/ContentProvider;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 190
    iput-object p1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-direct {p0}, Landroid/content/ContentProviderNative;-><init>()V

    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 192
    iput v1, p0, Landroid/content/ContentProvider$Transport;->mReadOp:I

    .line 193
    iput v1, p0, Landroid/content/ContentProvider$Transport;->mWriteOp:I

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/ContentProvider$Transport;->mReadList:Ljava/util/ArrayList;

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/ContentProvider$Transport;->mWriteList:Ljava/util/ArrayList;

    return-void
.end method

.method private checkAppOpsLimit(Ljava/util/ArrayList;Z)Z
    .locals 13
    .parameter
    .parameter "read"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 638
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 639
    .local v3, callingPkg:Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 640
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->mReadList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->mReadList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 641
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->mReadList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 642
    .local v1, readop:I
    const/4 v0, -0x1

    if-eq v1, v0, :cond_1

    .line 645
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/app/AppOpsManager;->getPermissionGroupOp(I)I

    move-result v12

    .line 647
    .local v12, opgroup:I
    const/4 v0, -0x1

    if-eq v12, v0, :cond_1

    .line 650
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 652
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->sendOperationBroadcast(IILjava/lang/String;IZ)V

    .line 655
    const/4 v0, 0x1

    .line 683
    .end local v1           #readop:I
    .end local v3           #callingPkg:Ljava/lang/String;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #opgroup:I
    :goto_0
    return v0

    .line 661
    .restart local v3       #callingPkg:Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->mWriteList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->mWriteList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 662
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->mWriteList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11       #i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 663
    .local v5, writeop:I
    const/4 v0, -0x1

    if-eq v5, v0, :cond_3

    .line 666
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v0, v5}, Landroid/app/AppOpsManager;->getPermissionGroupOp(I)I

    move-result v12

    .line 668
    .restart local v12       #opgroup:I
    const/4 v0, -0x1

    if-eq v12, v0, :cond_3

    .line 671
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v5, v2, v3}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 673
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v7, v3

    invoke-virtual/range {v4 .. v9}, Landroid/app/AppOpsManager;->sendOperationBroadcast(IILjava/lang/String;IZ)V

    .line 676
    const/4 v0, 0x1

    goto :goto_0

    .line 683
    .end local v3           #callingPkg:Ljava/lang/String;
    .end local v5           #writeop:I
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #opgroup:I
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private enforceReadPermission(Landroid/net/Uri;)Landroid/content/ContentProvider$Perm_Check_Ret;
    .locals 21
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 379
    .local v7, context:Landroid/content/Context;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v14

    .line 380
    .local v14, pid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v17

    .line 381
    .local v17, uid:I
    const/4 v11, 0x0

    .line 384
    .local v11, missingPerm:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    move-object/from16 v18, v0

    #getter for: Landroid/content/ContentProvider;->mMyUid:I
    invoke-static/range {v18 .. v18}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;)I

    move-result v18

    invoke-static/range {v17 .. v18}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 385
    sget-object v18, Landroid/content/ContentProvider$Perm_Check_Ret;->Accept:Landroid/content/ContentProvider$Perm_Check_Ret;

    .line 441
    :goto_0
    return-object v18

    .line 388
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    move-object/from16 v18, v0

    #getter for: Landroid/content/ContentProvider;->mExported:Z
    invoke-static/range {v18 .. v18}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentProvider;->getReadPermission()Ljava/lang/String;

    move-result-object v6

    .line 390
    .local v6, componentPerm:Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 391
    move/from16 v0, v17

    invoke-virtual {v7, v6, v14, v0}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v5

    .line 392
    .local v5, check_ret:I
    if-nez v5, :cond_1

    .line 393
    sget-object v18, Landroid/content/ContentProvider$Perm_Check_Ret;->Accept:Landroid/content/ContentProvider$Perm_Check_Ret;

    goto :goto_0

    .line 394
    :cond_1
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_2

    .line 395
    sget-object v18, Landroid/content/ContentProvider$Perm_Check_Ret;->Limited:Landroid/content/ContentProvider$Perm_Check_Ret;

    goto :goto_0

    .line 397
    :cond_2
    move-object v11, v6

    .line 398
    const-string v18, "PermChecker_ContentProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "enforceReadPermission:  pid: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " uid: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " componentPerm:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    .end local v5           #check_ret:I
    :cond_3
    if-nez v6, :cond_4

    const/4 v3, 0x1

    .line 408
    .local v3, allowDefaultRead:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentProvider;->getPathPermissions()[Landroid/content/pm/PathPermission;

    move-result-object v16

    .line 409
    .local v16, pps:[Landroid/content/pm/PathPermission;
    if-eqz v16, :cond_8

    .line 410
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v12

    .line 411
    .local v12, path:Ljava/lang/String;
    move-object/from16 v4, v16

    .local v4, arr$:[Landroid/content/pm/PathPermission;
    array-length v10, v4

    .local v10, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_2
    if-ge v9, v10, :cond_8

    aget-object v15, v4, v9

    .line 412
    .local v15, pp:Landroid/content/pm/PathPermission;
    invoke-virtual {v15}, Landroid/content/pm/PathPermission;->getReadPermission()Ljava/lang/String;

    move-result-object v13

    .line 413
    .local v13, pathPerm:Ljava/lang/String;
    if-eqz v13, :cond_7

    invoke-virtual {v15, v12}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 414
    move/from16 v0, v17

    invoke-virtual {v7, v13, v14, v0}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v5

    .line 415
    .restart local v5       #check_ret:I
    if-nez v5, :cond_5

    .line 416
    sget-object v18, Landroid/content/ContentProvider$Perm_Check_Ret;->Accept:Landroid/content/ContentProvider$Perm_Check_Ret;

    goto/16 :goto_0

    .line 406
    .end local v3           #allowDefaultRead:Z
    .end local v4           #arr$:[Landroid/content/pm/PathPermission;
    .end local v5           #check_ret:I
    .end local v9           #i$:I
    .end local v10           #len$:I
    .end local v12           #path:Ljava/lang/String;
    .end local v13           #pathPerm:Ljava/lang/String;
    .end local v15           #pp:Landroid/content/pm/PathPermission;
    .end local v16           #pps:[Landroid/content/pm/PathPermission;
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 417
    .restart local v3       #allowDefaultRead:Z
    .restart local v4       #arr$:[Landroid/content/pm/PathPermission;
    .restart local v5       #check_ret:I
    .restart local v9       #i$:I
    .restart local v10       #len$:I
    .restart local v12       #path:Ljava/lang/String;
    .restart local v13       #pathPerm:Ljava/lang/String;
    .restart local v15       #pp:Landroid/content/pm/PathPermission;
    .restart local v16       #pps:[Landroid/content/pm/PathPermission;
    :cond_5
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_6

    .line 418
    sget-object v18, Landroid/content/ContentProvider$Perm_Check_Ret;->Limited:Landroid/content/ContentProvider$Perm_Check_Ret;

    goto/16 :goto_0

    .line 423
    :cond_6
    const/4 v3, 0x0

    .line 424
    move-object v11, v13

    .line 425
    const-string v18, "PermChecker_ContentProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "enforceReadPermission:  pid: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " uid: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " pathPerm:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    .end local v5           #check_ret:I
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 435
    .end local v4           #arr$:[Landroid/content/pm/PathPermission;
    .end local v9           #i$:I
    .end local v10           #len$:I
    .end local v12           #path:Ljava/lang/String;
    .end local v13           #pathPerm:Ljava/lang/String;
    .end local v15           #pp:Landroid/content/pm/PathPermission;
    :cond_8
    if-eqz v3, :cond_9

    sget-object v18, Landroid/content/ContentProvider$Perm_Check_Ret;->Accept:Landroid/content/ContentProvider$Perm_Check_Ret;

    goto/16 :goto_0

    .line 439
    .end local v3           #allowDefaultRead:Z
    .end local v6           #componentPerm:Ljava/lang/String;
    .end local v16           #pps:[Landroid/content/pm/PathPermission;
    :cond_9
    const/16 v18, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v7, v0, v14, v1, v2}, Landroid/content/Context;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v18

    if-nez v18, :cond_a

    .line 441
    sget-object v18, Landroid/content/ContentProvider$Perm_Check_Ret;->Accept:Landroid/content/ContentProvider$Perm_Check_Ret;

    goto/16 :goto_0

    .line 444
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    move-object/from16 v18, v0

    #getter for: Landroid/content/ContentProvider;->mExported:Z
    invoke-static/range {v18 .. v18}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;)Z

    move-result v18

    if-eqz v18, :cond_b

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " requires "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", or grantUriPermission()"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 447
    .local v8, failReason:Ljava/lang/String;
    :goto_3
    new-instance v18, Ljava/lang/SecurityException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Permission Denial: reading "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " uri "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " from pid="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", uid="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 444
    .end local v8           #failReason:Ljava/lang/String;
    :cond_b
    const-string v8, " requires the provider be exported, or grantUriPermission()"

    goto :goto_3
.end method

.method private enforceWritePermission(Landroid/net/Uri;)Landroid/content/ContentProvider$Perm_Check_Ret;
    .locals 21
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 463
    .local v7, context:Landroid/content/Context;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v14

    .line 464
    .local v14, pid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v17

    .line 465
    .local v17, uid:I
    const/4 v11, 0x0

    .line 468
    .local v11, missingPerm:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    move-object/from16 v18, v0

    #getter for: Landroid/content/ContentProvider;->mMyUid:I
    invoke-static/range {v18 .. v18}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;)I

    move-result v18

    invoke-static/range {v17 .. v18}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 469
    sget-object v18, Landroid/content/ContentProvider$Perm_Check_Ret;->Accept:Landroid/content/ContentProvider$Perm_Check_Ret;

    .line 525
    :goto_0
    return-object v18

    .line 472
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    move-object/from16 v18, v0

    #getter for: Landroid/content/ContentProvider;->mExported:Z
    invoke-static/range {v18 .. v18}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentProvider;->getWritePermission()Ljava/lang/String;

    move-result-object v6

    .line 475
    .local v6, componentPerm:Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 476
    move/from16 v0, v17

    invoke-virtual {v7, v6, v14, v0}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v5

    .line 477
    .local v5, check_ret:I
    if-nez v5, :cond_1

    .line 478
    sget-object v18, Landroid/content/ContentProvider$Perm_Check_Ret;->Accept:Landroid/content/ContentProvider$Perm_Check_Ret;

    goto :goto_0

    .line 479
    :cond_1
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_2

    .line 480
    sget-object v18, Landroid/content/ContentProvider$Perm_Check_Ret;->Limited:Landroid/content/ContentProvider$Perm_Check_Ret;

    goto :goto_0

    .line 482
    :cond_2
    move-object v11, v6

    .line 483
    const-string v18, "PermChecker_ContentProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "enforceWritePermission:  pid: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " uid: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " componentPerm:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    .end local v5           #check_ret:I
    :cond_3
    if-nez v6, :cond_4

    const/4 v3, 0x1

    .line 493
    .local v3, allowDefaultWrite:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentProvider;->getPathPermissions()[Landroid/content/pm/PathPermission;

    move-result-object v16

    .line 494
    .local v16, pps:[Landroid/content/pm/PathPermission;
    if-eqz v16, :cond_8

    .line 495
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v12

    .line 496
    .local v12, path:Ljava/lang/String;
    move-object/from16 v4, v16

    .local v4, arr$:[Landroid/content/pm/PathPermission;
    array-length v10, v4

    .local v10, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_2
    if-ge v9, v10, :cond_8

    aget-object v15, v4, v9

    .line 497
    .local v15, pp:Landroid/content/pm/PathPermission;
    invoke-virtual {v15}, Landroid/content/pm/PathPermission;->getWritePermission()Ljava/lang/String;

    move-result-object v13

    .line 498
    .local v13, pathPerm:Ljava/lang/String;
    if-eqz v13, :cond_7

    invoke-virtual {v15, v12}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 499
    move/from16 v0, v17

    invoke-virtual {v7, v13, v14, v0}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v5

    .line 500
    .restart local v5       #check_ret:I
    if-nez v5, :cond_5

    .line 501
    sget-object v18, Landroid/content/ContentProvider$Perm_Check_Ret;->Accept:Landroid/content/ContentProvider$Perm_Check_Ret;

    goto/16 :goto_0

    .line 491
    .end local v3           #allowDefaultWrite:Z
    .end local v4           #arr$:[Landroid/content/pm/PathPermission;
    .end local v5           #check_ret:I
    .end local v9           #i$:I
    .end local v10           #len$:I
    .end local v12           #path:Ljava/lang/String;
    .end local v13           #pathPerm:Ljava/lang/String;
    .end local v15           #pp:Landroid/content/pm/PathPermission;
    .end local v16           #pps:[Landroid/content/pm/PathPermission;
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 502
    .restart local v3       #allowDefaultWrite:Z
    .restart local v4       #arr$:[Landroid/content/pm/PathPermission;
    .restart local v5       #check_ret:I
    .restart local v9       #i$:I
    .restart local v10       #len$:I
    .restart local v12       #path:Ljava/lang/String;
    .restart local v13       #pathPerm:Ljava/lang/String;
    .restart local v15       #pp:Landroid/content/pm/PathPermission;
    .restart local v16       #pps:[Landroid/content/pm/PathPermission;
    :cond_5
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_6

    .line 503
    sget-object v18, Landroid/content/ContentProvider$Perm_Check_Ret;->Limited:Landroid/content/ContentProvider$Perm_Check_Ret;

    goto/16 :goto_0

    .line 507
    :cond_6
    const/4 v3, 0x0

    .line 508
    move-object v11, v13

    .line 509
    const-string v18, "PermChecker_ContentProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "enforceWritePermission:  pid: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " uid: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " pathPerm:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    .end local v5           #check_ret:I
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 519
    .end local v4           #arr$:[Landroid/content/pm/PathPermission;
    .end local v9           #i$:I
    .end local v10           #len$:I
    .end local v12           #path:Ljava/lang/String;
    .end local v13           #pathPerm:Ljava/lang/String;
    .end local v15           #pp:Landroid/content/pm/PathPermission;
    :cond_8
    if-eqz v3, :cond_9

    sget-object v18, Landroid/content/ContentProvider$Perm_Check_Ret;->Accept:Landroid/content/ContentProvider$Perm_Check_Ret;

    goto/16 :goto_0

    .line 523
    .end local v3           #allowDefaultWrite:Z
    .end local v6           #componentPerm:Ljava/lang/String;
    .end local v16           #pps:[Landroid/content/pm/PathPermission;
    :cond_9
    const/16 v18, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v7, v0, v14, v1, v2}, Landroid/content/Context;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v18

    if-nez v18, :cond_a

    .line 525
    sget-object v18, Landroid/content/ContentProvider$Perm_Check_Ret;->Accept:Landroid/content/ContentProvider$Perm_Check_Ret;

    goto/16 :goto_0

    .line 528
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    move-object/from16 v18, v0

    #getter for: Landroid/content/ContentProvider;->mExported:Z
    invoke-static/range {v18 .. v18}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;)Z

    move-result v18

    if-eqz v18, :cond_b

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " requires "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", or grantUriPermission()"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 531
    .local v8, failReason:Ljava/lang/String;
    :goto_3
    new-instance v18, Ljava/lang/SecurityException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Permission Denial: writing "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " uri "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " from pid="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", uid="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 528
    .end local v8           #failReason:Ljava/lang/String;
    :cond_b
    const-string v8, " requires the provider be exported, or grantUriPermission()"

    goto :goto_3
.end method

.method private isCallingFromOwnerApp(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Z)Z
    .locals 10
    .parameter
    .parameter
    .parameter "ownerPackage"
    .parameter "read"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)Z"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, believeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 612
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 613
    .local v1, callingUid:I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 615
    .local v0, callingPid:I
    :try_start_0
    iget-object v7, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #getter for: Landroid/content/ContentProvider;->mContext:Landroid/content/Context;
    invoke-static {v7}, Landroid/content/ContentProvider;->access$300(Landroid/content/ContentProvider;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v1, v0, v8}, Landroid/content/pm/PackageManager;->getInstalledPackagesExtralPm(III)Ljava/util/List;

    move-result-object v5

    .line 618
    .local v5, packageinfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 619
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 620
    .local v4, pInfo:Landroid/content/pm/PackageInfo;
    iget-object v7, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 621
    iget-object v7, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_0

    .line 624
    :cond_1
    const/4 v6, 0x1

    .line 634
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #pInfo:Landroid/content/pm/PackageInfo;
    .end local v5           #packageinfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_2
    :goto_0
    return v6

    .line 629
    :catch_0
    move-exception v2

    .line 630
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "PermChecker_ContentProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ex: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isCurentLockApp(Landroid/net/Uri;Z)Z
    .locals 20
    .parameter "uri"
    .parameter "read"

    .prologue
    .line 546
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v16

    .line 548
    .local v16, uid:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    move-object/from16 v17, v0

    #getter for: Landroid/content/ContentProvider;->mMyUid:I
    invoke-static/range {v17 .. v17}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;)I

    move-result v17

    invoke-static/range {v16 .. v17}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 549
    const/16 v17, 0x0

    .line 605
    :goto_0
    return v17

    .line 552
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    move-object/from16 v17, v0

    #getter for: Landroid/content/ContentProvider;->acm:Landroid/content/pm/AccessControlManager;
    invoke-static/range {v17 .. v17}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;)Landroid/content/pm/AccessControlManager;

    move-result-object v17

    if-nez v17, :cond_1

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    move-object/from16 v17, v0

    #getter for: Landroid/content/ContentProvider;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Landroid/content/ContentProvider;->access$300(Landroid/content/ContentProvider;)Landroid/content/Context;

    move-result-object v17

    const-string v19, "access_control"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/AccessControlManager;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    #setter for: Landroid/content/ContentProvider;->acm:Landroid/content/pm/AccessControlManager;
    invoke-static {v0, v1}, Landroid/content/ContentProvider;->access$202(Landroid/content/ContentProvider;Landroid/content/pm/AccessControlManager;)Landroid/content/pm/AccessControlManager;

    .line 556
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    move-object/from16 v17, v0

    #getter for: Landroid/content/ContentProvider;->acm:Landroid/content/pm/AccessControlManager;
    invoke-static/range {v17 .. v17}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;)Landroid/content/pm/AccessControlManager;

    move-result-object v17

    if-nez v17, :cond_2

    .line 557
    const/16 v17, 0x0

    goto :goto_0

    .line 560
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v14

    .line 561
    .local v14, name:Ljava/lang/String;
    if-nez v14, :cond_3

    .line 562
    const-string v17, "PermChecker_ContentProvider"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "uri: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " authority is null!"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    const/16 v17, 0x0

    goto :goto_0

    .line 565
    :cond_3
    const/4 v9, 0x0

    .line 567
    .local v9, cpi:Landroid/content/pm/ProviderInfo;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v17

    const/16 v18, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v19

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v14, v1, v2}, Landroid/content/pm/IPackageManager;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 573
    :goto_1
    if-eqz v9, :cond_8

    .line 575
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 576
    .local v6, callPackageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 577
    .local v5, believeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, v9, Landroid/content/pm/ProviderInfo;->believepackages:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    .line 578
    iget-object v0, v9, Landroid/content/pm/ProviderInfo;->believepackages:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "\\s+"

    const-string v19, ""

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 579
    .local v3, all:Ljava/lang/String;
    const-string v17, "\\|"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 580
    .local v13, list:[Ljava/lang/String;
    if-eqz v13, :cond_4

    .line 581
    move-object v4, v13

    .local v4, arr$:[Ljava/lang/String;
    array-length v12, v4

    .local v12, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_2
    if-ge v11, v12, :cond_4

    aget-object v15, v4, v11

    .line 583
    .local v15, pkg:Ljava/lang/String;
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 581
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 569
    .end local v3           #all:Ljava/lang/String;
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v5           #believeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #callPackageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11           #i$:I
    .end local v12           #len$:I
    .end local v13           #list:[Ljava/lang/String;
    .end local v15           #pkg:Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 570
    .local v10, ex:Landroid/os/RemoteException;
    const-string v17, "PermChecker_ContentProvider"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "remoteEx: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 588
    .end local v10           #ex:Landroid/os/RemoteException;
    .restart local v5       #believeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6       #callPackageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    iget-object v0, v9, Landroid/content/pm/ProviderInfo;->ownerPackage:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p2

    invoke-direct {v0, v6, v5, v1, v2}, Landroid/content/ContentProvider$Transport;->isCallingFromOwnerApp(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Z)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 589
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 591
    :cond_5
    sget-object v17, Landroid/os/Build;->MeizuSecurity:Ljava/lang/Boolean;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v6, v1}, Landroid/content/ContentProvider$Transport;->checkAppOpsLimit(Ljava/util/ArrayList;Z)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 592
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 594
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    move-object/from16 v17, v0

    #getter for: Landroid/content/ContentProvider;->acm:Landroid/content/pm/AccessControlManager;
    invoke-static/range {v17 .. v17}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;)Landroid/content/pm/AccessControlManager;

    move-result-object v17

    iget-object v0, v9, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/content/pm/AccessControlManager;->checkAccessControl(Ljava/lang/String;)Z

    move-result v7

    .line 595
    .local v7, contorl:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    move-object/from16 v17, v0

    #getter for: Landroid/content/ContentProvider;->acm:Landroid/content/pm/AccessControlManager;
    invoke-static/range {v17 .. v17}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;)Landroid/content/pm/AccessControlManager;

    move-result-object v17

    iget-object v0, v9, Landroid/content/pm/ProviderInfo;->ownerPackage:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/content/pm/AccessControlManager;->checkAccessControl(Ljava/lang/String;)Z

    move-result v8

    .line 597
    .local v8, contorl2:Z
    if-nez v7, :cond_7

    if-eqz v8, :cond_8

    .line 598
    :cond_7
    const-string v17, "PermChecker_ContentProvider"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "isCurentLockApp- cpi.packageName: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v9, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " cpi.ownerPackage: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v9, Landroid/content/pm/ProviderInfo;->ownerPackage:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 605
    .end local v5           #believeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #callPackageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #contorl:Z
    .end local v8           #contorl2:Z
    :cond_8
    const/16 v17, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 255
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v2, Landroid/content/ContentProvider$Perm_Check_Ret;->Unknow:Landroid/content/ContentProvider$Perm_Check_Ret;

    .line 256
    .local v2, ret:Landroid/content/ContentProvider$Perm_Check_Ret;
    const/4 v3, 0x0

    .line 257
    .local v3, withOutInternal:Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentProviderOperation;

    .line 258
    .local v1, operation:Landroid/content/ContentProviderOperation;
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation;->isReadOperation()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 259
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Landroid/net/Uri;)Landroid/content/ContentProvider$Perm_Check_Ret;

    move-result-object v2

    .line 262
    :cond_1
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation;->isWriteOperation()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 263
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Landroid/net/Uri;)Landroid/content/ContentProvider$Perm_Check_Ret;

    move-result-object v2

    .line 268
    :cond_2
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation;->isReadOperation()Z

    move-result v5

    invoke-direct {p0, v4, v5}, Landroid/content/ContentProvider$Transport;->isCurentLockApp(Landroid/net/Uri;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 269
    const/4 v3, 0x1

    goto :goto_0

    .line 274
    .end local v1           #operation:Landroid/content/ContentProviderOperation;
    :cond_3
    sget-object v4, Landroid/content/ContentProvider$Perm_Check_Ret;->Limited:Landroid/content/ContentProvider$Perm_Check_Ret;

    if-eq v2, v4, :cond_4

    if-eqz v3, :cond_5

    .line 275
    :cond_4
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v4, p1}, Landroid/content/ContentProvider;->applyBatchWithoutInternalPerm(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v4

    .line 278
    :goto_1
    return-object v4

    :cond_5
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v4, p1}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v4

    goto :goto_1
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 2
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    .line 241
    sget-object v0, Landroid/content/ContentProvider$Perm_Check_Ret;->Unknow:Landroid/content/ContentProvider$Perm_Check_Ret;

    .line 244
    .local v0, ret:Landroid/content/ContentProvider$Perm_Check_Ret;
    sget-object v1, Landroid/content/ContentProvider$Perm_Check_Ret;->Limited:Landroid/content/ContentProvider$Perm_Check_Ret;

    invoke-direct {p0, p1}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Landroid/net/Uri;)Landroid/content/ContentProvider$Perm_Check_Ret;

    move-result-object v0

    if-eq v1, v0, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/content/ContentProvider$Transport;->isCurentLockApp(Landroid/net/Uri;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 245
    :cond_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentProvider;->bulkInsertWithoutInternalPerm(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v1

    .line 249
    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v1

    goto :goto_0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .parameter "method"
    .parameter "arg"
    .parameter "extras"

    .prologue
    .line 345
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public createCancellationSignal()Landroid/os/ICancellationSignal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 365
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v0

    return-object v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 283
    sget-object v0, Landroid/content/ContentProvider$Perm_Check_Ret;->Unknow:Landroid/content/ContentProvider$Perm_Check_Ret;

    .line 286
    .local v0, ret:Landroid/content/ContentProvider$Perm_Check_Ret;
    sget-object v1, Landroid/content/ContentProvider$Perm_Check_Ret;->Limited:Landroid/content/ContentProvider$Perm_Check_Ret;

    invoke-direct {p0, p1}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Landroid/net/Uri;)Landroid/content/ContentProvider$Perm_Check_Ret;

    move-result-object v0

    if-eq v1, v0, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/content/ContentProvider$Transport;->isCurentLockApp(Landroid/net/Uri;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 287
    :cond_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p1, p2, p3}, Landroid/content/ContentProvider;->deleteWithoutInternalPerm(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 291
    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p1, p2, p3}, Landroid/content/ContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method getContentProvider()Landroid/content/ContentProvider;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    return-object v0
.end method

.method public getProviderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    invoke-virtual {p0}, Landroid/content/ContentProvider$Transport;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "uri"
    .parameter "mimeTypeFilter"

    .prologue
    .line 350
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentProvider;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 223
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1}, Landroid/content/ContentProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    .line 228
    sget-object v0, Landroid/content/ContentProvider$Perm_Check_Ret;->Unknow:Landroid/content/ContentProvider$Perm_Check_Ret;

    .line 231
    .local v0, ret:Landroid/content/ContentProvider$Perm_Check_Ret;
    sget-object v1, Landroid/content/ContentProvider$Perm_Check_Ret;->Limited:Landroid/content/ContentProvider$Perm_Check_Ret;

    invoke-direct {p0, p1}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Landroid/net/Uri;)Landroid/content/ContentProvider$Perm_Check_Ret;

    move-result-object v0

    if-eq v1, v0, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/content/ContentProvider$Transport;->isCurentLockApp(Landroid/net/Uri;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 232
    :cond_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentProvider;->insertWithoutInternalPerm(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 236
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method public openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 2
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 328
    sget-object v0, Landroid/content/ContentProvider$Perm_Check_Ret;->Unknow:Landroid/content/ContentProvider$Perm_Check_Ret;

    .line 329
    .local v0, ret:Landroid/content/ContentProvider$Perm_Check_Ret;
    if-eqz p2, :cond_1

    const-string/jumbo v1, "rw"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 331
    sget-object v1, Landroid/content/ContentProvider$Perm_Check_Ret;->Limited:Landroid/content/ContentProvider$Perm_Check_Ret;

    invoke-direct {p0, p1}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Landroid/net/Uri;)Landroid/content/ContentProvider$Perm_Check_Ret;

    move-result-object v0

    if-eq v1, v0, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/content/ContentProvider$Transport;->isCurentLockApp(Landroid/net/Uri;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 332
    :cond_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentProvider;->openAssetFileWithoutInternalPerm(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 340
    :goto_0
    return-object v1

    .line 336
    :cond_1
    sget-object v1, Landroid/content/ContentProvider$Perm_Check_Ret;->Limited:Landroid/content/ContentProvider$Perm_Check_Ret;

    invoke-direct {p0, p1}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Landroid/net/Uri;)Landroid/content/ContentProvider$Perm_Check_Ret;

    move-result-object v0

    if-eq v1, v0, :cond_2

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/content/ContentProvider$Transport;->isCurentLockApp(Landroid/net/Uri;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 337
    :cond_2
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentProvider;->openAssetFileWithoutInternalPerm(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    goto :goto_0

    .line 340
    :cond_3
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    goto :goto_0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 311
    sget-object v0, Landroid/content/ContentProvider$Perm_Check_Ret;->Unknow:Landroid/content/ContentProvider$Perm_Check_Ret;

    .line 312
    .local v0, ret:Landroid/content/ContentProvider$Perm_Check_Ret;
    if-eqz p2, :cond_1

    const-string/jumbo v1, "rw"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 313
    sget-object v1, Landroid/content/ContentProvider$Perm_Check_Ret;->Limited:Landroid/content/ContentProvider$Perm_Check_Ret;

    invoke-direct {p0, p1}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Landroid/net/Uri;)Landroid/content/ContentProvider$Perm_Check_Ret;

    move-result-object v0

    if-eq v1, v0, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/content/ContentProvider$Transport;->isCurentLockApp(Landroid/net/Uri;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 314
    :cond_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentProvider;->openFileWithoutInternalPerm(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 322
    :goto_0
    return-object v1

    .line 318
    :cond_1
    sget-object v1, Landroid/content/ContentProvider$Perm_Check_Ret;->Limited:Landroid/content/ContentProvider$Perm_Check_Ret;

    invoke-direct {p0, p1}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Landroid/net/Uri;)Landroid/content/ContentProvider$Perm_Check_Ret;

    move-result-object v0

    if-eq v1, v0, :cond_2

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/content/ContentProvider$Transport;->isCurentLockApp(Landroid/net/Uri;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 319
    :cond_2
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentProvider;->openFileWithoutInternalPerm(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    goto :goto_0

    .line 322
    :cond_3
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    goto :goto_0
.end method

.method public openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;
    .locals 2
    .parameter "uri"
    .parameter "mimeType"
    .parameter "opts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 356
    sget-object v0, Landroid/content/ContentProvider$Perm_Check_Ret;->Unknow:Landroid/content/ContentProvider$Perm_Check_Ret;

    .line 357
    .local v0, ret:Landroid/content/ContentProvider$Perm_Check_Ret;
    sget-object v1, Landroid/content/ContentProvider$Perm_Check_Ret;->Limited:Landroid/content/ContentProvider$Perm_Check_Ret;

    invoke-direct {p0, p1}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Landroid/net/Uri;)Landroid/content/ContentProvider$Perm_Check_Ret;

    move-result-object v0

    if-eq v1, v0, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/content/ContentProvider$Transport;->isCurentLockApp(Landroid/net/Uri;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 358
    :cond_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p1, p2, p3}, Landroid/content/ContentProvider;->openTypedAssetFileWithoutInternalPerm(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 360
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p1, p2, p3}, Landroid/content/ContentProvider;->openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    .locals 8
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "cancellationSignal"

    .prologue
    .line 209
    sget-object v7, Landroid/content/ContentProvider$Perm_Check_Ret;->Unknow:Landroid/content/ContentProvider$Perm_Check_Ret;

    .line 211
    .local v7, ret:Landroid/content/ContentProvider$Perm_Check_Ret;
    sget-object v0, Landroid/content/ContentProvider$Perm_Check_Ret;->Limited:Landroid/content/ContentProvider$Perm_Check_Ret;

    invoke-direct {p0, p1}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Landroid/net/Uri;)Landroid/content/ContentProvider$Perm_Check_Ret;

    move-result-object v7

    if-eq v0, v7, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/content/ContentProvider$Transport;->isCurentLockApp(Landroid/net/Uri;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    :cond_0
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProvider;->queryWithoutInternalPerm(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 217
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p6}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 297
    sget-object v0, Landroid/content/ContentProvider$Perm_Check_Ret;->Unknow:Landroid/content/ContentProvider$Perm_Check_Ret;

    .line 300
    .local v0, ret:Landroid/content/ContentProvider$Perm_Check_Ret;
    sget-object v1, Landroid/content/ContentProvider$Perm_Check_Ret;->Limited:Landroid/content/ContentProvider$Perm_Check_Ret;

    invoke-direct {p0, p1}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Landroid/net/Uri;)Landroid/content/ContentProvider$Perm_Check_Ret;

    move-result-object v0

    if-eq v1, v0, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/content/ContentProvider$Transport;->isCurentLockApp(Landroid/net/Uri;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 301
    :cond_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/content/ContentProvider;->updateWithoutInternalPerm(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 305
    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/content/ContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method
