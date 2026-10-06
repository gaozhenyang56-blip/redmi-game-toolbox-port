.class public final synthetic Lcom/xiaomi/continuity/infra/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<II:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static bridge synthetic a(Lcom/xiaomi/continuity/infra/ServiceConnector$VoidJob;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1}, Lcom/xiaomi/continuity/infra/ServiceConnector$VoidJob;->run(Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/xiaomi/continuity/infra/ServiceConnector$VoidJob;Ljava/lang/Object;)Ljava/lang/Void;
    .locals 0

    invoke-interface {p0, p1}, Lcom/xiaomi/continuity/infra/ServiceConnector$VoidJob;->runNoResult(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method
