.class Lzi/i5;
.super Lcom/xiaomi/push/service/XMPushService$j;
.source "SourceFile"


# instance fields
.field final synthetic b:Lzi/h5;


# direct methods
.method constructor <init>(Lzi/h5;I)V
    .locals 0

    iput-object p1, p0, Lzi/i5;->b:Lzi/h5;

    invoke-direct {p0, p2}, Lcom/xiaomi/push/service/XMPushService$j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "Handling bind stats"

    return-object v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lzi/i5;->b:Lzi/h5;

    invoke-static {v0}, Lzi/h5;->c(Lzi/h5;)V

    return-void
.end method
