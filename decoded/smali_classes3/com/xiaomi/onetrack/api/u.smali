.class Lcom/xiaomi/onetrack/api/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/onetrack/api/c;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/api/c;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/onetrack/api/u;->a:Lcom/xiaomi/onetrack/api/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/onetrack/api/u;->a:Lcom/xiaomi/onetrack/api/c;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/api/c;->i()Lcom/xiaomi/onetrack/api/ak;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/onetrack/c/j;->a(Lcom/xiaomi/onetrack/api/ak;)V

    return-void
.end method
