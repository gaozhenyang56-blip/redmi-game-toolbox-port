.class Lcom/xiaomi/mipush/sdk/m;
.super Lcom/xiaomi/push/service/e0$a;
.source "SourceFile"


# instance fields
.field final synthetic c:Landroid/content/Context;


# direct methods
.method constructor <init>(ILjava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p3, p0, Lcom/xiaomi/mipush/sdk/m;->c:Landroid/content/Context;

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/push/service/e0$a;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/m;->c:Landroid/content/Context;

    invoke-static {v0}, Lzi/p4;->k(Landroid/content/Context;)V

    return-void
.end method
