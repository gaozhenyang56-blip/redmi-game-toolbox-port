.class public interface abstract Lcom/miui/securitycenter/memory/IMemoryCheck;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/securitycenter/memory/IMemoryCheck$Stub;,
        Lcom/miui/securitycenter/memory/IMemoryCheck$Default;
    }
.end annotation


# virtual methods
.method public abstract C1(Ljava/lang/String;II)V
.end method

.method public abstract E4(Ljava/lang/String;I)I
.end method

.method public abstract G1(Lcom/miui/securitycenter/memory/IMemoryScanCallback;)V
.end method

.method public abstract G6(Ljava/lang/String;I)V
.end method

.method public abstract M6()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract j3(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract r2()Ljava/util/Map;
.end method

.method public abstract x3(Ljava/util/List;Lcom/miui/securitycenter/memory/IMemoryCleanupCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/miui/securitycenter/memory/IMemoryCleanupCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract y0(Ljava/lang/String;)I
.end method
