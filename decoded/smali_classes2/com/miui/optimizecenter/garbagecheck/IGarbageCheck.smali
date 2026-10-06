.class public interface abstract Lcom/miui/optimizecenter/garbagecheck/IGarbageCheck;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/optimizecenter/garbagecheck/IGarbageCheck$Stub;,
        Lcom/miui/optimizecenter/garbagecheck/IGarbageCheck$Default;
    }
.end annotation


# virtual methods
.method public abstract F3(Lcom/miui/optimizecenter/garbagecheck/IGarbageScanCallback;)V
.end method

.method public abstract J(Ljava/util/List;Lcom/miui/optimizecenter/garbagecheck/IGarbageCleanupCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/miui/optimizecenter/garbagecheck/IGarbageCleanupCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract cancel()V
.end method
