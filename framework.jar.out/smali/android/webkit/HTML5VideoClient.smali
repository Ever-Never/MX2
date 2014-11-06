.class public interface abstract Landroid/webkit/HTML5VideoClient;
.super Ljava/lang/Object;
.source "HTML5VideoClient.java"

# interfaces
.implements Landroid/webkit/ScaleGestureDetector$VideoScaleListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/HTML5VideoClient$Creator;
    }
.end annotation


# virtual methods
.method public abstract destory()V
.end method

.method public abstract end(ZZ)V
.end method

.method public abstract enterFullScreenVideo(ILjava/lang/String;)V
.end method

.method public abstract exitFullScreenVideo()V
.end method

.method public abstract getCurrentPosition()I
.end method

.method public abstract getCurrentState()I
.end method

.method public abstract getDuration()I
.end method

.method public abstract isInFullScreen()Z
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract onClick(Landroid/view/MotionEvent;)Z
.end method

.method public abstract onKeyEvent(Landroid/view/KeyEvent;)Z
.end method

.method public abstract onPrepared()V
.end method

.method public abstract onWebViewPause()V
.end method

.method public abstract onWebViewResume()V
.end method

.method public abstract pause()V
.end method

.method public abstract pauseAndDispatch()V
.end method

.method public abstract play(Ljava/lang/String;II)V
.end method

.method public abstract putInBackground()V
.end method

.method public abstract reset()V
.end method

.method public abstract seek(I)V
.end method

.method public abstract setBaseLayer(IZ)V
.end method

.method public abstract setPlayerBuffering(Z)V
.end method

.method public abstract start()V
.end method
