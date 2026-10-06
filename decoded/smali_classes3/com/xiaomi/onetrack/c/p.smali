.class Lcom/xiaomi/onetrack/c/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xiaomi/onetrack/c/m;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/c/m;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/onetrack/c/p;->b:Lcom/xiaomi/onetrack/c/m;

    iput-object p2, p0, Lcom/xiaomi/onetrack/c/p;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/onetrack/c/p;->b:Lcom/xiaomi/onetrack/c/m;

    iget-object v4, p0, Lcom/xiaomi/onetrack/c/p;->a:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/onetrack/c/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
