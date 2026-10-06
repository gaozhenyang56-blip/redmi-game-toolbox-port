.class Lcom/xiaomi/analytics/BaseLogger$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmi/c$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/analytics/BaseLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSdkCorePrepared(Loi/a;)V
    .locals 0

    invoke-static {p1}, Lcom/xiaomi/analytics/BaseLogger;->a(Loi/a;)Loi/a;

    invoke-static {}, Lcom/xiaomi/analytics/BaseLogger;->b()V

    return-void
.end method
