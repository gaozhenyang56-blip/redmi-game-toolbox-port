.class Lcom/xiaomi/push/service/p;
.super Lzi/h$a;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xiaomi/push/service/a0;

.field final synthetic c:I


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/xiaomi/push/service/a0;I)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/service/p;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/push/service/p;->b:Lcom/xiaomi/push/service/a0;

    iput p3, p0, Lcom/xiaomi/push/service/p;->c:I

    invoke-direct {p0}, Lzi/h$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/service/p;->a:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/push/service/p;->b:Lcom/xiaomi/push/service/a0;

    iget v1, p0, Lcom/xiaomi/push/service/p;->c:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/a0;->m(I)V

    return-void
.end method
