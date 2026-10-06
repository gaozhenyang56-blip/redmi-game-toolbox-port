.class public Lcom/xiaomi/mipush/sdk/y0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzi/q3;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/y0;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/y0;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/m0;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/m0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/m0;->t()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lzi/q8;Lzi/q7;Lzi/d8;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/y0;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/d0;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/d0;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaomi/mipush/sdk/d0;->z(Lzi/c9;Lzi/q7;Lzi/d8;)V

    return-void
.end method
