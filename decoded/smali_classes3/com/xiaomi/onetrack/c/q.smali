.class Lcom/xiaomi/onetrack/c/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/xiaomi/onetrack/c/m;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/c/m;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/onetrack/c/q;->e:Lcom/xiaomi/onetrack/c/m;

    iput-object p2, p0, Lcom/xiaomi/onetrack/c/q;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/onetrack/c/q;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/onetrack/c/q;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaomi/onetrack/c/q;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/onetrack/c/q;->e:Lcom/xiaomi/onetrack/c/m;

    iget-object v1, p0, Lcom/xiaomi/onetrack/c/q;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/onetrack/c/q;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/onetrack/c/q;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/onetrack/c/q;->d:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/onetrack/c/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
