.class public Lcom/xiaomi/push/service/u0$a;
.super Lcom/xiaomi/push/service/XMPushService$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/service/u0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService$j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "RecordTimeManager clear"

    return-object v0
.end method

.method public b()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/push/service/u0;->a()Lcom/xiaomi/push/service/u0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/u0;->b()V

    return-void
.end method
