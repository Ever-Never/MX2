.class Lcom/android/internal/telephony/RIL$RILReceiver;
.super Ljava/lang/Object;
.source "RIL.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RILReceiver"
.end annotation


# instance fields
.field buffer:[B

.field final synthetic this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/RIL;)V
    .locals 1
    .parameter

    .prologue
    .line 589
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 590
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    .line 591
    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/16 v13, 0x8

    .line 595
    const/4 v6, 0x0

    .line 598
    .local v6, retryCount:I
    :goto_0
    const/4 v7, 0x0

    .line 602
    .local v7, s:Landroid/net/LocalSocket;
    :try_start_0
    new-instance v8, Landroid/net/LocalSocket;

    invoke-direct {v8}, Landroid/net/LocalSocket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 603
    .end local v7           #s:Landroid/net/LocalSocket;
    .local v8, s:Landroid/net/LocalSocket;
    :try_start_1
    new-instance v3, Landroid/net/LocalSocketAddress;

    const-string v10, "rild"

    sget-object v11, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v3, v10, v11}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 605
    .local v3, l:Landroid/net/LocalSocketAddress;
    invoke-virtual {v8, v3}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 642
    const/4 v6, 0x0

    .line 644
    :try_start_2
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iput-object v8, v10, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    .line 645
    const-string v10, "RILJ"

    const-string v11, "Connected to \'rild\' socket"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 647
    const/4 v4, 0x0

    .line 649
    .local v4, length:I
    :try_start_3
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v10, v10, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v10}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 654
    .local v2, is:Ljava/io/InputStream;
    :goto_1
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    #calls: Lcom/android/internal/telephony/RIL;->readRilMessage(Ljava/io/InputStream;[B)I
    invoke-static {v2, v10}, Lcom/android/internal/telephony/RIL;->access$500(Ljava/io/InputStream;[B)I

    move-result v4

    .line 656
    if-gez v4, :cond_5

    .line 658
    const-string v10, "RILJ"

    const-string v11, "RILJAVA: end of stream reached...."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5

    .line 680
    .end local v2           #is:Ljava/io/InputStream;
    :goto_2
    :try_start_4
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v10}, Lcom/android/internal/telephony/RIL;->isResetCompleted()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 681
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/RIL;->setResetCompleted(Z)V

    .line 682
    const-string v10, "RILJ"

    const-string v11, "acquire ResetWakeLock for reset procedure"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v10}, Lcom/android/internal/telephony/RIL;->acquireResetWakeLock()V

    .line 691
    :goto_3
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v10, v10, Lcom/android/internal/telephony/BaseCommands;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "airplane_mode_on"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 695
    .local v0, airplaneMode:I
    if-lez v0, :cond_0

    .line 696
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v10}, Lcom/android/internal/telephony/RIL;->isResetCompleted()Z

    move-result v10

    if-nez v10, :cond_0

    .line 697
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/RIL;->setResetCompleted(Z)V

    .line 698
    const-string v10, "RILJ"

    const-string v11, "release ResetWakeLock for mobileRadioMode"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v10}, Lcom/android/internal/telephony/RIL;->releaseResetWakeLock()V

    .line 704
    :cond_0
    const-string v10, "RILJ"

    const-string v11, "Disconnected from \'rild\' socket"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    sget-object v11, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/BaseCommands;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 710
    :try_start_5
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v10, v10, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v10}, Landroid/net/LocalSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 714
    :goto_4
    :try_start_6
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v11, 0x0

    iput-object v11, v10, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    .line 715
    invoke-static {}, Lcom/android/internal/telephony/RILRequest;->resetSerial()V

    .line 718
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v11, 0x1

    const/4 v12, 0x0

    #calls: Lcom/android/internal/telephony/RIL;->clearRequestsList(IZ)V
    invoke-static {v10, v11, v12}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;IZ)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 719
    .end local v0           #airplaneMode:I
    .end local v3           #l:Landroid/net/LocalSocketAddress;
    .end local v4           #length:I
    :catch_0
    move-exception v9

    move-object v7, v8

    .line 720
    .end local v8           #s:Landroid/net/LocalSocket;
    .restart local v7       #s:Landroid/net/LocalSocket;
    .local v9, tr:Ljava/lang/Throwable;
    :goto_5
    const-string v10, "RILJ"

    const-string v11, "Uncaught exception"

    invoke-static {v10, v11, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 724
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v11, -0x1

    #calls: Lcom/android/internal/telephony/RIL;->notifyRegistrantsRilConnectionChanged(I)V
    invoke-static {v10, v11}, Lcom/android/internal/telephony/RIL;->access$800(Lcom/android/internal/telephony/RIL;I)V

    .line 725
    return-void

    .line 606
    .end local v9           #tr:Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 608
    .local v1, ex:Ljava/io/IOException;
    :goto_6
    if-eqz v7, :cond_1

    .line 609
    :try_start_7
    invoke-virtual {v7}, Landroid/net/LocalSocket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    .line 618
    :cond_1
    :goto_7
    if-ne v6, v13, :cond_3

    .line 619
    :try_start_8
    const-string v10, "RILJ"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Couldn\'t find \'rild\' socket after "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " times, continuing to retry silently"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    .line 631
    :cond_2
    :goto_8
    const/4 v10, 0x3

    if-le v6, v10, :cond_4

    .line 632
    const-wide/16 v10, 0xfa0

    :try_start_9
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2

    .line 638
    :goto_9
    add-int/lit8 v6, v6, 0x1

    .line 639
    goto/16 :goto_0

    .line 623
    :cond_3
    if-lez v6, :cond_2

    if-ge v6, v13, :cond_2

    .line 624
    :try_start_a
    const-string v10, "RILJ"

    const-string v11, "Couldn\'t find \'rild\' socket; retrying after timeout"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_8

    .line 719
    .end local v1           #ex:Ljava/io/IOException;
    :catch_2
    move-exception v9

    goto :goto_5

    .line 634
    .restart local v1       #ex:Ljava/io/IOException;
    :cond_4
    const-wide/16 v10, 0x12c

    :try_start_b
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_9

    .line 635
    :catch_3
    move-exception v10

    goto :goto_9

    .line 662
    .end local v1           #ex:Ljava/io/IOException;
    .end local v7           #s:Landroid/net/LocalSocket;
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v3       #l:Landroid/net/LocalSocketAddress;
    .restart local v4       #length:I
    .restart local v8       #s:Landroid/net/LocalSocket;
    :cond_5
    :try_start_c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 663
    .local v5, p:Landroid/os/Parcel;
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 664
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 668
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    #calls: Lcom/android/internal/telephony/RIL;->processResponse(Landroid/os/Parcel;)V
    invoke-static {v10, v5}, Lcom/android/internal/telephony/RIL;->access$600(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)V

    .line 669
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_5

    goto/16 :goto_1

    .line 671
    .end local v2           #is:Ljava/io/InputStream;
    .end local v5           #p:Landroid/os/Parcel;
    :catch_4
    move-exception v1

    .line 672
    .restart local v1       #ex:Ljava/io/IOException;
    :try_start_d
    const-string v10, "RILJ"

    const-string v11, "\'rild\' socket closed"

    invoke-static {v10, v11, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 674
    .end local v1           #ex:Ljava/io/IOException;
    :catch_5
    move-exception v9

    .line 675
    .restart local v9       #tr:Ljava/lang/Throwable;
    const-string v10, "RILJ"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Uncaught exception read length="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Exception:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 685
    .end local v9           #tr:Ljava/lang/Throwable;
    :cond_6
    const-string v10, "RILJ"

    const-string v11, "release and acquire resetWakeLock again for interruptted reset procedure"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v10}, Lcom/android/internal/telephony/RIL;->releaseResetWakeLock()V

    .line 687
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v10}, Lcom/android/internal/telephony/RIL;->acquireResetWakeLock()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_0

    goto/16 :goto_3

    .line 611
    .end local v3           #l:Landroid/net/LocalSocketAddress;
    .end local v4           #length:I
    .end local v8           #s:Landroid/net/LocalSocket;
    .restart local v1       #ex:Ljava/io/IOException;
    .restart local v7       #s:Landroid/net/LocalSocket;
    :catch_6
    move-exception v10

    goto/16 :goto_7

    .line 711
    .end local v1           #ex:Ljava/io/IOException;
    .end local v7           #s:Landroid/net/LocalSocket;
    .restart local v0       #airplaneMode:I
    .restart local v3       #l:Landroid/net/LocalSocketAddress;
    .restart local v4       #length:I
    .restart local v8       #s:Landroid/net/LocalSocket;
    :catch_7
    move-exception v10

    goto/16 :goto_4

    .line 606
    .end local v0           #airplaneMode:I
    .end local v3           #l:Landroid/net/LocalSocketAddress;
    .end local v4           #length:I
    :catch_8
    move-exception v1

    move-object v7, v8

    .end local v8           #s:Landroid/net/LocalSocket;
    .restart local v7       #s:Landroid/net/LocalSocket;
    goto/16 :goto_6
.end method
