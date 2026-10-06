.class Lcom/xiaomi/onetrack/api/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/onetrack/api/c;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/api/c;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/onetrack/api/p;->a:Lcom/xiaomi/onetrack/api/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/onetrack/api/p;->a:Lcom/xiaomi/onetrack/api/c;

    iget-object v0, v0, Lcom/xiaomi/onetrack/api/c;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/s;->a(Lcom/xiaomi/onetrack/Configuration;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/l;->b(Ljava/lang/String;)V

    return-void
.end method
