.class public abstract Lcom/xiaomi/micloudkeybag/OnKeyBagCallFinishedListener;
.super Lcom/xiaomi/micloudkeybag/IOnKeyBagCallFinishedListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/xiaomi/micloudkeybag/IOnKeyBagCallFinishedListener$Stub;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/xiaomi/micloudkeybag/IOnKeyBagCallFinishedListener$Stub;-><init>()V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/micloudkeybag/OnKeyBagCallFinishedListener;->a:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public H5(IZ)V
    .locals 0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Not implemented!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public I7(I[B)V
    .locals 0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Not implemented!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public l3(I[B)V
    .locals 0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Not implemented!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
