.class Lcom/xiaomi/onetrack/api/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/xiaomi/onetrack/api/c;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/api/c;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/onetrack/api/d;->b:Lcom/xiaomi/onetrack/api/c;

    iput-object p2, p0, Lcom/xiaomi/onetrack/api/d;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/onetrack/api/d;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/d;->b:Lcom/xiaomi/onetrack/api/c;

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/CrashAnalysis;->getInstance(Landroid/content/Context;Lcom/xiaomi/onetrack/api/c;)Lcom/xiaomi/onetrack/CrashAnalysis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/CrashAnalysis;->isSupport()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/onetrack/api/d;->b:Lcom/xiaomi/onetrack/api/c;

    new-instance v1, Lcom/xiaomi/onetrack/api/al;

    invoke-direct {v1, v0}, Lcom/xiaomi/onetrack/api/al;-><init>(Lcom/xiaomi/onetrack/api/c;)V

    iput-object v1, v0, Lcom/xiaomi/onetrack/api/c;->e:Lcom/xiaomi/onetrack/api/al;

    iget-object v0, p0, Lcom/xiaomi/onetrack/api/d;->b:Lcom/xiaomi/onetrack/api/c;

    iget-object v0, v0, Lcom/xiaomi/onetrack/api/c;->e:Lcom/xiaomi/onetrack/api/al;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/api/al;->a()V

    :cond_0
    return-void
.end method
