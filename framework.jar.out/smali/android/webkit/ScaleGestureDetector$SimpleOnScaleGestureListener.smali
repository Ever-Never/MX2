.class public Landroid/webkit/ScaleGestureDetector$SimpleOnScaleGestureListener;
.super Ljava/lang/Object;
.source "ScaleGestureDetector.java"

# interfaces
.implements Landroid/webkit/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/ScaleGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleOnScaleGestureListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/webkit/ScaleGestureDetector;)Z
    .locals 1
    .parameter "detector"

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public onScaleBegin(Landroid/webkit/ScaleGestureDetector;)Z
    .locals 1
    .parameter "detector"

    .prologue
    .line 123
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/webkit/ScaleGestureDetector;)V
    .locals 0
    .parameter "detector"

    .prologue
    .line 128
    return-void
.end method
